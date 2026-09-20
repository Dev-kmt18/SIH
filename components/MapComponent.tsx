"use client";

import React, { useEffect, useRef, useState } from "react";
import L from "leaflet";
import { Compass, Eye, Copy, Check, Crosshair } from "lucide-react";
import { ParcelGeoJSONCollection, ParcelGeoJSONFeature } from "@/types/parcel";
import { SADERBAL_PILOT_PARCELS, parcelToGeoJSONFeature } from "@/lib/parcels";

interface MapComponentProps {
  selectedKhasra: string;
  onSelectKhasra: (khasraNo: string) => void;
  lang?: "en" | "hi";
  onCoordinateClick?: (lat: number, lng: number) => void;
  geojsonData?: ParcelGeoJSONCollection | null;
  onSelectParcelId?: (id: string) => void;
}

export default function MapComponent({
  selectedKhasra,
  onSelectKhasra,
  lang = "en",
  onCoordinateClick,
  geojsonData,
  onSelectParcelId
}: MapComponentProps) {
  const mapContainerRef = useRef<HTMLDivElement>(null);
  const mapInstanceRef = useRef<L.Map | null>(null);
  const geojsonLayerRef = useRef<L.GeoJSON | null>(null);
  const markersGroupRef = useRef<L.LayerGroup | null>(null);
  const nationalMarkerRef = useRef<L.Marker | null>(null);
  const [activeBaseLayer, setActiveBaseLayer] = useState<"google_sat" | "google_hybrid" | "esri">("google_sat");
  const [showBoundaries, setShowBoundaries] = useState(true);
  const [mapZoomLevel, setMapZoomLevel] = useState(18);
  const [currentViewMode, setCurrentViewMode] = useState<"srinagar" | "india">("srinagar");

  // Real-time GPS coordinate inspector under cursor
  const [cursorCoords, setCursorCoords] = useState<{ lat: number; lng: number } | null>(null);
  const [copiedCoords, setCopiedCoords] = useState(false);

  // Satellite tile layer references
  const googleSatLayerRef = useRef<L.TileLayer | null>(null);
  const googleHybridLayerRef = useRef<L.TileLayer | null>(null);
  const esriLayerRef = useRef<L.TileLayer | null>(null);

  // Precise coordinates for Saderbal Cadastral Zone & All-India center
  const srinagarCenter: [number, number] = [34.1246, 74.8325];
  const indiaCenter: [number, number] = [22.9734, 78.6569];

  // Helper to re-render parcel centroid badges
  // Per user requirement: "yaha map pr bs border show kr and yr k267 krke show mt kr"
  // Keep the satellite view pristine with only clean house boundary outlines visible
  const refreshLabels = (map: L.Map, geojson: L.GeoJSON) => {
    if (!markersGroupRef.current) return;
    markersGroupRef.current.clearLayers();
  };

  // Helper to get active GeoJSON data (either from Supabase prop or fallback)
  const getActiveFeatures = (): ParcelGeoJSONCollection => {
    if (geojsonData && geojsonData.features && geojsonData.features.length > 0) {
      return geojsonData;
    }
    return {
      type: "FeatureCollection",
      features: SADERBAL_PILOT_PARCELS.map(parcelToGeoJSONFeature)
    };
  };

  // Construct Leaflet GeoJSON layer
  const createGeoJsonLayer = (map: L.Map, data: ParcelGeoJSONCollection) => {
    return L.geoJSON(data as any, {
      style: (feature: any) => {
        const khasraNo = feature.properties?.khasraNo;
        const isSelected = String(khasraNo) === String(selectedKhasra);
        const legalStatus = feature.properties?.legalStatus;
        const encumbranceStatus = feature.properties?.encumbranceStatus;

        // Vibrant cadastral house boundary: always clearly visible on satellite imagery
        let strokeColor = "#00e5ff"; // High-visibility cadastral cyan border
        if (legalStatus === "RECORDED_CASE") strokeColor = "#ef4444"; // Court dispute red
        else if (encumbranceStatus === "MORTGAGED") strokeColor = "#f59e0b"; // Bank lien amber
        else if (legalStatus === "VERIFIED_NO_RECORDED_CASE") strokeColor = "#10e885"; // Verified emerald

        return {
          color: isSelected ? "#f59e0b" : strokeColor,
          weight: isSelected ? 3.5 : 2.0,
          opacity: 1,
          fill: true,
          fillColor: isSelected ? "#f59e0b" : strokeColor,
          fillOpacity: isSelected ? 0.22 : 0.05
        };
      },
      onEachFeature: (feature: any, layer: L.Layer) => {
        const props = feature.properties || {};
        const khasraNo = props.khasraNo;
        const legalStatus = props.legalStatus;
        const encumbranceStatus = props.encumbranceStatus;
        const isDemo = props.isDemoData;

        let statusText = lang === "hi" ? "सत्यापित नहीं" : "Not Verified";
        if (legalStatus === "RECORDED_CASE") {
          statusText = lang === "hi" ? "दर्ज अदालती वाद (Pending Case)" : "Recorded Court Case (Stay Active)";
        } else if (encumbranceStatus === "MORTGAGED") {
          statusText = lang === "hi" ? "बैंक बंधक भार (Mortgage Lien)" : "Bank Mortgage Charge (CERSAI)";
        } else if (legalStatus === "VERIFIED_NO_RECORDED_CASE") {
          statusText = lang === "hi" ? "कोई दर्ज विवाद नहीं (No Case)" : "Verified: No Recorded Dispute";
        }

        const clickHint = lang === "hi" ? "दस्तावेज व पड़ताल हेतु क्लिक करें" : "Click to inspect dossier";
        const khasraTitle = lang === "hi" ? `खसरा संख्या: ${khasraNo}` : `Khasra No: ${khasraNo}`;
        const mouzaText = lang === "hi" ? "मौज़ा सादरबल, श्रीनगर" : "Mouza Saderbal, Srinagar";

        layer.bindTooltip(
          `<div class="text-xs font-sans">
            <div class="flex items-center justify-between gap-2">
              <strong class="text-slate-900 font-bold">${khasraTitle}</strong>
              ${isDemo ? `<span class="bg-amber-100 text-amber-900 border border-amber-300 font-mono text-[9px] px-1 rounded">DEMO DATA</span>` : ""}
            </div>
            <span class="text-slate-600 block text-[11px]">${mouzaText}</span>
            <span class="font-semibold text-slate-800 text-[11px] block mt-0.5">${statusText}</span>
            <span class="text-emerald-700 block mt-1 font-mono text-[10px]">${clickHint}</span>
          </div>`,
          { sticky: true, className: "bg-white p-2 border border-slate-300 shadow-md rounded" }
        );

        layer.on({
          click: (e) => {
            L.DomEvent.stopPropagation(e);
            onSelectKhasra(khasraNo);
            if (onSelectParcelId && (props.parcelId || props.id)) {
              onSelectParcelId(props.parcelId || props.id);
            }
            if (onCoordinateClick) {
              onCoordinateClick(e.latlng.lat, e.latlng.lng);
            }
          },
          mouseover: (e) => {
            const target = e.target;
            const currentSelected = String(feature.properties?.khasraNo) === String(selectedKhasra);
            if (!currentSelected) {
              target.setStyle({
                weight: 2.5,
                fill: true,
                fillColor: "#38bdf8",
                fillOpacity: 0.15
              });
            }
          },
          mouseout: (e) => {
            const target = e.target;
            const currentSelected = String(feature.properties?.khasraNo) === String(selectedKhasra);
            if (!currentSelected && geojsonLayerRef.current) {
              geojsonLayerRef.current.resetStyle(target);
            }
          }
        });
      }
    });
  };

  // 1. MAP INITIALIZATION EFFECT
  useEffect(() => {
    if (!mapContainerRef.current || mapInstanceRef.current) return;

    // Initialize map at zoom 18 for crisp house-level view
    const map = L.map(mapContainerRef.current, {
      center: srinagarCenter,
      zoom: 18,
      minZoom: 4,
      maxZoom: 21,
      zoomControl: false,
      attributionControl: false
    });

    mapInstanceRef.current = map;

    // Google Ultra-HD Satellite
    const googleSatLayer = L.tileLayer(
      "https://mt1.google.com/vt/lyrs=s&x={x}&y={y}&z={z}",
      {
        maxZoom: 21,
        maxNativeZoom: 20,
        attribution: "Google Satellite HD"
      }
    );

    // Google Hybrid
    const googleHybridLayer = L.tileLayer(
      "https://mt1.google.com/vt/lyrs=y&x={x}&y={y}&z={z}",
      {
        maxZoom: 21,
        maxNativeZoom: 20,
        attribution: "Google Hybrid"
      }
    );

    // Esri World Imagery
    const esriLayer = L.tileLayer(
      "https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}",
      {
        maxZoom: 20,
        maxNativeZoom: 19,
        attribution: "Esri World Imagery"
      }
    );

    googleSatLayerRef.current = googleSatLayer;
    googleHybridLayerRef.current = googleHybridLayer;
    esriLayerRef.current = esriLayer;

    googleSatLayer.addTo(map);

    const markersGroup = L.layerGroup().addTo(map);
    markersGroupRef.current = markersGroup;

    // Pulse icon when zoomed out to All-India view
    const srinagarPulseIcon = L.divIcon({
      className: "custom-srinagar-pulse",
      html: `
        <div class="relative flex items-center justify-center cursor-pointer">
          <span class="absolute w-8 h-8 rounded-full bg-amber-400 opacity-75 animate-ping"></span>
          <span class="w-4 h-4 rounded-full bg-[#0f2e5c] border-2 border-amber-300 flex items-center justify-center text-[8px] text-white font-bold">📍</span>
        </div>
      `,
      iconSize: [32, 32],
      iconAnchor: [16, 16]
    });

    const nationalMarker = L.marker(srinagarCenter, { icon: srinagarPulseIcon })
      .bindTooltip(
        `<div class="text-xs font-sans p-1">
          <strong class="text-[#0f2e5c] block font-bold">Srinagar (J&K) Pilot Cadastre</strong>
          <span class="text-slate-600 block">Saderbal / Hazratbal Cadastral Zone</span>
          <span class="text-emerald-700 font-bold text-[10px] block mt-0.5">Click to fly into detailed parcels</span>
        </div>`,
        { permanent: false, direction: "top" }
      )
      .on("click", () => {
        zoomToSrinagar();
      });

    nationalMarkerRef.current = nationalMarker;

    // Initial GeoJSON setup
    const initialData = getActiveFeatures();
    const geojson = createGeoJsonLayer(map, initialData).addTo(map);
    geojsonLayerRef.current = geojson;
    refreshLabels(map, geojson);

    // Live mousemove coordinate tracker
    map.on("mousemove", (e: L.LeafletMouseEvent) => {
      setCursorCoords({ lat: e.latlng.lat, lng: e.latlng.lng });
    });

    // Click anywhere on map to inspect coordinates
    map.on("click", (e: L.LeafletMouseEvent) => {
      if (onCoordinateClick) {
        onCoordinateClick(e.latlng.lat, e.latlng.lng);
      }
    });

    // Zoom listener to toggle view modes
    map.on("zoomend", () => {
      const z = map.getZoom();
      setMapZoomLevel(z);

      if (z < 13) {
        if (!map.hasLayer(nationalMarker)) {
          nationalMarker.addTo(map);
        }
        setCurrentViewMode("india");
      } else {
        if (map.hasLayer(nationalMarker)) {
          map.removeLayer(nationalMarker);
        }
        setCurrentViewMode("srinagar");
      }
      if (geojsonLayerRef.current) {
        refreshLabels(map, geojsonLayerRef.current);
      }
    });

    // Auto-resize observer so map immediately fills full container on toggle
    const resizeObserver = new ResizeObserver(() => {
      if (mapInstanceRef.current) {
        mapInstanceRef.current.invalidateSize();
      }
    });

    if (mapContainerRef.current) {
      resizeObserver.observe(mapContainerRef.current);
    }

    return () => {
      resizeObserver.disconnect();
      map.remove();
      mapInstanceRef.current = null;
    };
  }, []);

  // 2. RE-RENDER GEOJSON WHEN DATA PROP CHANGES
  useEffect(() => {
    if (!mapInstanceRef.current) return;
    const map = mapInstanceRef.current;

    if (geojsonLayerRef.current) {
      map.removeLayer(geojsonLayerRef.current);
    }

    const data = getActiveFeatures();
    const newLayer = createGeoJsonLayer(map, data);

    if (showBoundaries) {
      newLayer.addTo(map);
    }
    geojsonLayerRef.current = newLayer;
    refreshLabels(map, newLayer);
  }, [geojsonData]);

  // 3. UPDATE LABELS ON LANGUAGE CHANGE
  useEffect(() => {
    if (mapInstanceRef.current && geojsonLayerRef.current) {
      refreshLabels(mapInstanceRef.current, geojsonLayerRef.current);
    }
  }, [lang]);

  // 4. UPDATE SELECTION STYLES & PANNING WHEN selectedKhasra CHANGES
  useEffect(() => {
    if (!geojsonLayerRef.current || !mapInstanceRef.current) return;

    geojsonLayerRef.current.eachLayer((layer: any) => {
      if (layer.feature) {
        const isSelected = String(layer.feature.properties?.khasraNo) === String(selectedKhasra);
        const legalStatus = layer.feature.properties?.legalStatus;
        const encumbranceStatus = layer.feature.properties?.encumbranceStatus;

        let strokeColor = "#00e5ff";
        if (legalStatus === "RECORDED_CASE") strokeColor = "#ef4444";
        else if (encumbranceStatus === "MORTGAGED") strokeColor = "#f59e0b";
        else if (legalStatus === "VERIFIED_NO_RECORDED_CASE") strokeColor = "#10e885";

        layer.setStyle({
          color: isSelected ? "#f59e0b" : strokeColor,
          weight: isSelected ? 3.5 : 2.0,
          opacity: 1,
          fill: true,
          fillColor: isSelected ? "#f59e0b" : strokeColor,
          fillOpacity: isSelected ? 0.22 : 0.05
        });

        if (isSelected && layer.getBounds && mapInstanceRef.current && mapInstanceRef.current.getZoom() >= 14) {
          mapInstanceRef.current.panTo(layer.getBounds().getCenter(), {
            animate: true,
            duration: 0.5
          });
          layer.bringToFront();
        }
      }
    });

    if (mapInstanceRef.current && geojsonLayerRef.current) {
      refreshLabels(mapInstanceRef.current, geojsonLayerRef.current);
    }
  }, [selectedKhasra]);

  const toggleBaseLayer = (layerType: "google_sat" | "google_hybrid" | "esri") => {
    if (!mapInstanceRef.current) return;
    if (layerType === activeBaseLayer) return;

    if (activeBaseLayer === "google_sat" && googleSatLayerRef.current) {
      mapInstanceRef.current.removeLayer(googleSatLayerRef.current);
    } else if (activeBaseLayer === "google_hybrid" && googleHybridLayerRef.current) {
      mapInstanceRef.current.removeLayer(googleHybridLayerRef.current);
    } else if (activeBaseLayer === "esri" && esriLayerRef.current) {
      mapInstanceRef.current.removeLayer(esriLayerRef.current);
    }

    if (layerType === "google_sat" && googleSatLayerRef.current) {
      googleSatLayerRef.current.addTo(mapInstanceRef.current);
    } else if (layerType === "google_hybrid" && googleHybridLayerRef.current) {
      googleHybridLayerRef.current.addTo(mapInstanceRef.current);
    } else if (layerType === "esri" && esriLayerRef.current) {
      esriLayerRef.current.addTo(mapInstanceRef.current);
    }

    setActiveBaseLayer(layerType);
  };

  const toggleBoundaries = () => {
    if (!mapInstanceRef.current || !geojsonLayerRef.current) return;
    if (showBoundaries) {
      mapInstanceRef.current.removeLayer(geojsonLayerRef.current);
      if (markersGroupRef.current) markersGroupRef.current.clearLayers();
    } else {
      geojsonLayerRef.current.addTo(mapInstanceRef.current);
      refreshLabels(mapInstanceRef.current, geojsonLayerRef.current);
    }
    setShowBoundaries(!showBoundaries);
  };

  const zoomToSrinagar = () => {
    if (mapInstanceRef.current) {
      mapInstanceRef.current.flyTo(srinagarCenter, 18, { duration: 1.8 });
      setCurrentViewMode("srinagar");
    }
  };

  const zoomToIndia = () => {
    if (mapInstanceRef.current) {
      mapInstanceRef.current.flyTo(indiaCenter, 4, { duration: 2.0 });
      setCurrentViewMode("india");
    }
  };

  const copyCoords = () => {
    if (!cursorCoords) return;
    navigator.clipboard.writeText(`${cursorCoords.lat.toFixed(6)}, ${cursorCoords.lng.toFixed(6)}`);
    setCopiedCoords(true);
    setTimeout(() => setCopiedCoords(false), 1500);
  };

  return (
    <div className="relative w-full h-full min-h-[540px] bg-slate-900 border border-slate-300 overflow-hidden select-none">
      {/* Map Target Div */}
      <div ref={mapContainerRef} className="w-full h-full z-0" />

      {/* TOP-LEFT: Clean Dropdown Control HUD */}
      <div className="absolute top-3 left-3 z-[1000] flex flex-wrap items-center gap-2 bg-slate-900/90 backdrop-blur-xs p-1.5 rounded border border-amber-500/40 shadow-lg text-xs">
        {/* View Extent Switcher Dropdown */}
        <div className="flex items-center gap-1.5 pl-1 pr-2 border-r border-slate-700">
          <Compass className="w-3.5 h-3.5 text-amber-400" />
          <select
            value={currentViewMode}
            onChange={(e) => {
              if (e.target.value === "srinagar") zoomToSrinagar();
              else zoomToIndia();
            }}
            className="bg-slate-800 text-white font-semibold text-xs rounded px-2 py-1 border border-slate-600 focus:outline-hidden focus:ring-1 focus:ring-amber-400 cursor-pointer"
          >
            <option value="srinagar">
              {lang === "hi" ? "श्रीनगर कैडस्ट्रल (विस्तृत HD)" : "Srinagar Cadastre (Detailed HD)"}
            </option>
            <option value="india">
              {lang === "hi" ? "अखिल भारतीय विस्तार (National)" : "All India View (National)"}
            </option>
          </select>
        </div>

        {/* Basemap Switcher Dropdown */}
        <div className="flex items-center gap-1.5 pr-2 border-r border-slate-700">
          <span className="text-[11px] text-slate-400 font-medium">Layer:</span>
          <select
            value={activeBaseLayer}
            onChange={(e) => toggleBaseLayer(e.target.value as any)}
            className="bg-slate-800 text-white font-semibold text-xs rounded px-2 py-1 border border-slate-600 focus:outline-hidden focus:ring-1 focus:ring-amber-400 cursor-pointer"
          >
            <option value="google_sat">Satellite Ultra-HD</option>
            <option value="google_hybrid">Satellite Hybrid</option>
            <option value="esri">Esri World Imagery</option>
          </select>
        </div>

        {/* Toggle Boundaries Button */}
        <button
          onClick={toggleBoundaries}
          className={`flex items-center gap-1 px-2.5 py-1 rounded text-xs font-semibold transition-colors cursor-pointer ${
            showBoundaries
              ? "bg-[#0f2e5c] text-amber-300 border border-amber-400/60"
              : "bg-slate-800 text-slate-400 border border-slate-700 hover:bg-slate-700"
          }`}
          title="Toggle Cadastral Boundaries"
        >
          <Eye className="w-3.5 h-3.5" />
          <span>{showBoundaries ? (lang === "hi" ? "सीमाएं सक्रिय" : "Borders: ON") : (lang === "hi" ? "सीमाएं बंद" : "Borders: OFF")}</span>
        </button>
      </div>

      {/* TOP-RIGHT: Live GPS Coordinates Inspector */}
      <div className="absolute top-3 right-3 z-[1000] bg-slate-900/90 backdrop-blur-xs px-2.5 py-1.5 rounded border border-amber-500/40 shadow-lg text-xs font-mono text-slate-200 flex items-center gap-2">
        <div className="flex items-center gap-1.5 text-amber-300">
          <Crosshair className="w-3.5 h-3.5 animate-pulse text-emerald-400" />
          <span className="text-[10px] uppercase font-sans font-bold text-slate-400">GPS:</span>
        </div>
        {cursorCoords ? (
          <span className="font-bold text-white text-[11px]">
            {cursorCoords.lat.toFixed(5)}° N, {cursorCoords.lng.toFixed(5)}° E
          </span>
        ) : (
          <span className="text-slate-400 text-[11px]">Hover over map</span>
        )}
        {cursorCoords && (
          <button
            onClick={copyCoords}
            className="p-1 hover:bg-slate-700 rounded text-slate-300 hover:text-white transition-colors cursor-pointer"
            title="Copy GPS coordinates to clipboard"
          >
            {copiedCoords ? (
              <Check className="w-3 h-3 text-emerald-400" />
            ) : (
              <Copy className="w-3 h-3" />
            )}
          </button>
        )}
      </div>

      {/* BOTTOM-RIGHT: Zoom controls & Scale */}
      <div className="absolute bottom-3 right-3 z-[1000] flex flex-col items-end gap-1.5">
        <div className="bg-slate-900/90 backdrop-blur-xs px-2 py-0.5 rounded border border-slate-700 text-[10px] text-slate-300 font-mono shadow-md">
          Zoom: {mapZoomLevel}x {mapZoomLevel >= 18 ? "(Sub-meter HD)" : ""}
        </div>
        <div className="flex bg-slate-900/90 rounded border border-slate-700 shadow-md overflow-hidden text-white">
          <button
            onClick={() => mapInstanceRef.current?.zoomIn()}
            className="w-8 h-8 flex items-center justify-center font-bold text-base hover:bg-slate-800 transition-colors border-r border-slate-700 cursor-pointer"
            title="Zoom In"
          >
            +
          </button>
          <button
            onClick={() => mapInstanceRef.current?.zoomOut()}
            className="w-8 h-8 flex items-center justify-center font-bold text-base hover:bg-slate-800 transition-colors cursor-pointer"
            title="Zoom Out"
          >
            -
          </button>
        </div>
      </div>
    </div>
  );
}
