"use client";

import React, { useState, useMemo, useEffect } from "react";
import dynamic from "next/dynamic";
import { ADMIN_HIERARCHY, GOVT_DATA_SOURCES } from "@/data/mockData";
import {
  getParcelsByMouza,
  getParcelDossier,
  getParcelByCoordinates,
  SADERBAL_PILOT_PARCELS
} from "@/lib/parcels";
import {
  ParcelDatabaseRecord,
  ParcelGeoJSONCollection,
  LegalStatusType,
  EncumbranceStatusType
} from "@/types/parcel";
import { checkSupabaseHealth, SupabaseHealth } from "@/lib/supabase";
import { TRANSLATIONS, Language } from "@/data/translations";
import {
  Search,
  Download,
  ShieldCheck,
  AlertTriangle,
  FileText,
  Landmark,
  Scale,
  Building,
  CheckCircle2,
  ExternalLink,
  Printer,
  X,
  RefreshCw,
  QrCode,
  MapPin,
  DollarSign,
  Globe,
  Type,
  Crosshair,
  Copy,
  Check,
  Database,
  Info,
  FolderOpen,
  History,
  Link2
} from "lucide-react";

// Dynamically import Leaflet MapComponent with SSR disabled
const MapComponent = dynamic(() => import("@/components/MapComponent"), {
  ssr: false,
  loading: () => (
    <div className="w-full h-full min-h-[540px] bg-slate-900 flex flex-col items-center justify-center text-slate-300 border border-slate-300">
      <RefreshCw className="w-7 h-7 animate-spin text-[#c99736] mb-2" />
      <span className="font-semibold text-xs">Loading GIS PostGIS Engine &amp; India Extent...</span>
    </div>
  )
});

type DossierTab =
  | "overview"
  | "ownership"
  | "valuation"
  | "legal"
  | "encumbrance"
  | "documents"
  | "sources";

export default function BhoomiSutraHome() {
  const [mounted, setMounted] = useState(false);
  const [lang, setLang] = useState<Language>("en");
  const [fontFamily, setFontFamily] = useState<"system" | "serif" | "inter" | "mono">("system");
  const [fontSizeOffset, setFontSizeOffset] = useState<number>(0);

  // Cascading administrative selection states
  const [selectedState, setSelectedState] = useState(ADMIN_HIERARCHY.state);
  const [selectedDistrict, setSelectedDistrict] = useState("Srinagar");
  const [selectedTehsil, setSelectedTehsil] = useState("North Srinagar");
  const [selectedMouza, setSelectedMouza] = useState("Saderbal (Hazratbal)");
  const [selectedKhasra, setSelectedKhasra] = useState<string>("329");
  const [activeTab, setActiveTab] = useState<DossierTab>("overview");
  const [showPdfModal, setShowPdfModal] = useState<boolean>(false);
  const [showDossier, setShowDossier] = useState<boolean>(false);

  // GPS Coordinates Search State
  const [searchMode, setSearchMode] = useState<"khasra" | "coords">("khasra");
  const [inputLat, setInputLat] = useState<string>("34.12532");
  const [inputLng, setInputLng] = useState<string>("74.83618");
  const [copiedCoords, setCopiedCoords] = useState(false);

  // Supabase & PostGIS Dynamic States
  const [supabaseStatus, setSupabaseStatus] = useState<SupabaseHealth | null>(null);
  const [showSupabaseModal, setShowSupabaseModal] = useState<boolean>(false);
  const [geojsonData, setGeojsonData] = useState<ParcelGeoJSONCollection | null>(null);
  const [activeRecord, setActiveRecord] = useState<ParcelDatabaseRecord>(SADERBAL_PILOT_PARCELS[0]);
  const [dataOrigin, setDataOrigin] = useState<"supabase" | "local_fallback">("local_fallback");
  const [loadingParcel, setLoadingParcel] = useState<boolean>(false);

  useEffect(() => {
    setMounted(true);
    checkSupabaseHealth().then((status) => {
      setSupabaseStatus(status);
    });
  }, []);

  // 1. Fetch Mouza Polygons from Supabase PostGIS
  useEffect(() => {
    let isCurrent = true;
    getParcelsByMouza(selectedMouza, selectedDistrict).then(({ collection, source }) => {
      if (isCurrent) {
        setGeojsonData(collection);
        if (source === "supabase") {
          setDataOrigin("supabase");
        }
      }
    });
    return () => {
      isCurrent = false;
    };
  }, [selectedMouza, selectedDistrict]);

  // 2. Fetch Active Parcel Dossier from Supabase
  useEffect(() => {
    let isCurrent = true;
    setLoadingParcel(true);
    getParcelDossier(selectedKhasra, selectedMouza).then(({ record, source }) => {
      if (isCurrent) {
        setActiveRecord(record);
        setDataOrigin(source);
        setInputLat(record.latitude.toFixed(5));
        setInputLng(record.longitude.toFixed(5));
        setLoadingParcel(false);
      }
    });
    return () => {
      isCurrent = false;
    };
  }, [selectedKhasra, selectedMouza]);

  const t = TRANSLATIONS[lang];

  const currentTehsils = useMemo(() => {
    const dist = ADMIN_HIERARCHY.districts.find((d) => d.name === selectedDistrict);
    return dist ? dist.tehsils : [];
  }, [selectedDistrict]);

  const currentMouzas = useMemo(() => {
    const teh = currentTehsils.find((t) => t.name === selectedTehsil);
    return teh ? teh.mouzas : [];
  }, [currentTehsils, selectedTehsil]);

  const availableKhasras = useMemo(() => {
    if (geojsonData && geojsonData.features.length > 0) {
      return geojsonData.features.map((f) => f.properties.khasraNo);
    }
    const mouz = currentMouzas.find((m) => m.name === selectedMouza);
    return mouz ? mouz.availableKhasras : ["329", "330", "338", "350", "352"];
  }, [geojsonData, currentMouzas, selectedMouza]);

  const handleSelectKhasra = (khasra: string) => {
    setSelectedKhasra(khasra);
    setShowDossier(true);
  };

  const handleKhasraSearch = (e: React.FormEvent) => {
    e.preventDefault();
    setShowDossier(true);
  };

  const handleGpsSearch = async (e: React.FormEvent) => {
    e.preventDefault();
    const lat = parseFloat(inputLat);
    const lng = parseFloat(inputLng);
    if (isNaN(lat) || isNaN(lng)) return;

    setLoadingParcel(true);
    const { record, source } = await getParcelByCoordinates(lat, lng, selectedMouza);
    setActiveRecord(record);
    setSelectedKhasra(record.khasra_no);
    setDataOrigin(source);
    setLoadingParcel(false);
    setShowDossier(true);
  };

  const handleCoordinateClickOnMap = (lat: number, lng: number) => {
    setInputLat(lat.toFixed(5));
    setInputLng(lng.toFixed(5));
    setShowDossier(true);
  };

  const copyCoordsToClipboard = (lat: number, lng: number) => {
    navigator.clipboard.writeText(`${lat.toFixed(6)}, ${lng.toFixed(6)}`);
    setCopiedCoords(true);
    setTimeout(() => setCopiedCoords(false), 1500);
  };

  const formatINR = (val?: number | null) => {
    if (val === null || val === undefined || isNaN(val)) return "₹0";
    return new Intl.NumberFormat("en-IN", {
      style: "currency",
      currency: "INR",
      maximumFractionDigits: 0
    }).format(val);
  };

  // Status Badge Renderers
  const renderLegalStatusBadge = (status: LegalStatusType) => {
    switch (status) {
      case "RECORDED_CASE":
        return (
          <span className="stamp-badge stamp-danger text-[10px] flex items-center gap-1 font-bold">
            <AlertTriangle className="w-3 h-3 text-red-500" />
            <span>{lang === "hi" ? "दर्ज अदालती वाद" : "RECORDED COURT CASE"}</span>
          </span>
        );
      case "VERIFIED_NO_RECORDED_CASE":
        return (
          <span className="stamp-badge stamp-clean text-[10px] flex items-center gap-1 font-bold">
            <CheckCircle2 className="w-3 h-3 text-emerald-500" />
            <span>{lang === "hi" ? "सत्यापित: कोई दर्ज वाद नहीं" : "VERIFIED NO RECORDED CASE"}</span>
          </span>
        );
      case "DATA_UNAVAILABLE":
        return (
          <span className="stamp-badge bg-slate-100 text-slate-700 border border-slate-300 text-[10px] flex items-center gap-1 font-bold">
            <Info className="w-3 h-3 text-slate-500" />
            <span>{lang === "hi" ? "विवरण अनुपलब्ध" : "DATA UNAVAILABLE"}</span>
          </span>
        );
      case "NOT_VERIFIED":
      default:
        return (
          <span className="stamp-badge bg-amber-50 text-amber-800 border border-amber-300 text-[10px] flex items-center gap-1 font-bold">
            <Info className="w-3 h-3 text-amber-600" />
            <span>{lang === "hi" ? "सत्यापित नहीं" : "NOT VERIFIED"}</span>
          </span>
        );
    }
  };

  const renderEncumbranceStatusBadge = (status: EncumbranceStatusType) => {
    switch (status) {
      case "MORTGAGED":
        return (
          <span className="stamp-badge stamp-warning text-[10px] flex items-center gap-1 font-bold">
            <Landmark className="w-3 h-3 text-amber-600" />
            <span>{lang === "hi" ? "बैंक बंधक भार" : "MORTGAGED (CERSAI)"}</span>
          </span>
        );
      case "UNENCUMBERED":
        return (
          <span className="stamp-badge stamp-clean text-[10px] flex items-center gap-1 font-bold">
            <CheckCircle2 className="w-3 h-3 text-emerald-500" />
            <span>{lang === "hi" ? "भार-रहित" : "UNENCUMBERED"}</span>
          </span>
        );
      case "DATA_UNAVAILABLE":
        return (
          <span className="stamp-badge bg-slate-100 text-slate-700 border border-slate-300 text-[10px] flex items-center gap-1 font-bold">
            <Info className="w-3 h-3 text-slate-500" />
            <span>{lang === "hi" ? "भार विवरण अनुपलब्ध" : "DATA UNAVAILABLE"}</span>
          </span>
        );
      case "NOT_VERIFIED":
      default:
        return (
          <span className="stamp-badge bg-amber-50 text-amber-800 border border-amber-300 text-[10px] flex items-center gap-1 font-bold">
            <Info className="w-3 h-3 text-amber-600" />
            <span>{lang === "hi" ? "सत्यापित नहीं" : "NOT VERIFIED"}</span>
          </span>
        );
    }
  };

  // Dynamic font styles
  const currentFontFamily =
    fontFamily === "serif"
      ? "Georgia, Cambria, 'Times New Roman', Times, serif"
      : fontFamily === "inter"
      ? "'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif"
      : fontFamily === "mono"
      ? "'SF Mono', Consolas, 'Liberation Mono', Menlo, monospace"
      : "-apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif";

  return (
    <div
      className="min-h-screen flex flex-col bg-[#f8fafc] text-slate-800"
      style={{
        fontFamily: currentFontFamily,
        fontSize: `${14 + fontSizeOffset}px`
      }}
    >
      {/* 1. TRICOLOR TOP ACCENT STRIPE */}
      <div className="w-full flex h-1 shadow-xs">
        <div className="w-1/3 bg-[#FF9933]" />
        <div className="w-1/3 bg-[#FFFFFF]" />
        <div className="w-1/3 bg-[#138808]" />
      </div>

      {/* 2. TOP GOVERNMENT ACCESSIBILITY & UTILITY BAR */}
      <div className="bg-[#f1f5f9] border-b border-slate-200 text-xs py-1 px-3 sm:px-4 text-slate-600 w-full">
        <div className="w-full flex flex-wrap items-center justify-between gap-2">
          <div className="flex items-center gap-3">
            <span className="font-semibold text-slate-700">{t.deptName}</span>
            <span className="text-slate-300">|</span>
            {/* Supabase Status Button */}
            <button
              type="button"
              onClick={() => setShowSupabaseModal(true)}
              className="flex items-center gap-1.5 bg-white hover:bg-emerald-50/50 border border-slate-300 hover:border-emerald-400 px-2 py-0.5 rounded shadow-2xs transition-colors cursor-pointer"
              title="Click to view PostGIS Database connection & schema"
            >
              <Database className="w-3.5 h-3.5 text-emerald-600" />
              <span className="text-[10.5px] font-semibold text-slate-700">Supabase PostGIS:</span>
              {supabaseStatus?.connected ? (
                <span className="flex items-center gap-1 text-[10.5px] font-bold text-emerald-700">
                  <span className="w-2 h-2 rounded-full bg-emerald-500 animate-pulse" />
                  <span>Connected</span>
                  {supabaseStatus.latencyMs !== undefined && (
                    <span className="text-[9.5px] font-mono text-slate-500 font-normal">({supabaseStatus.latencyMs}ms)</span>
                  )}
                </span>
              ) : (
                <span className="flex items-center gap-1 text-[10.5px] font-medium text-amber-700">
                  <span className="w-2 h-2 rounded-full bg-amber-400 animate-ping" />
                  <span>Syncing...</span>
                </span>
              )}
            </button>
          </div>

          <div className="flex items-center gap-3">
            {/* Font Family Selector Dropdown */}
            <div className="flex items-center gap-1 border-r border-slate-300 pr-3">
              <Type className="w-3.5 h-3.5 text-slate-500" />
              <span className="text-slate-500 text-[11px] mr-0.5">{lang === "hi" ? "फ़ॉन्ट:" : "Font:"}</span>
              <select
                value={fontFamily}
                onChange={(e) => setFontFamily(e.target.value as any)}
                className="bg-white border border-slate-300 rounded px-1.5 py-0.5 text-[11px] text-slate-800 font-medium focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
              >
                <option value="system">System Sans (Official)</option>
                <option value="serif">Merriweather (Serif)</option>
                <option value="inter">Inter (Modern Sans)</option>
                <option value="mono">Monospace (Cadastral)</option>
              </select>
            </div>

            {/* Font Size Accessibility Controls */}
            <div className="flex items-center gap-1 border-r border-slate-300 pr-3">
              <button
                onClick={() => setFontSizeOffset(-1)}
                className="px-1.5 py-0.5 bg-white border border-slate-300 hover:bg-slate-100 rounded text-[10px] font-bold cursor-pointer"
                title="Decrease font size"
              >
                A-
              </button>
              <button
                onClick={() => setFontSizeOffset(0)}
                className="px-1.5 py-0.5 bg-white border border-slate-300 hover:bg-slate-100 rounded text-[10px] font-bold cursor-pointer"
                title="Standard font size"
              >
                A
              </button>
              <button
                onClick={() => setFontSizeOffset(1)}
                className="px-1.5 py-0.5 bg-white border border-slate-300 hover:bg-slate-100 rounded text-[10px] font-bold cursor-pointer"
                title="Increase font size"
              >
                A+
              </button>
            </div>

            {/* Language Selector Dropdown */}
            <div className="flex items-center gap-1.5">
              <Globe className="w-3.5 h-3.5 text-slate-500" />
              <select
                value={lang}
                onChange={(e) => setLang(e.target.value as Language)}
                className="bg-white border border-slate-300 rounded px-2 py-0.5 text-xs text-slate-800 font-semibold focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
              >
                <option value="en">English</option>
                <option value="hi">हिन्दी (Hindi)</option>
              </select>
            </div>
          </div>
        </div>
      </div>

      {/* 3. MAIN OFFICIAL HEADER */}
      <header className="govt-header-gradient text-white border-b-2 border-[#c99736] shadow-sm w-full">
        <div className="w-full px-3 sm:px-4 py-2.5 flex flex-col md:flex-row items-center justify-between gap-3">
          {/* Left: National Identity Emblem & Title */}
          <div className="flex items-center gap-3 text-center md:text-left">
            <div className="flex-shrink-0 w-10 h-11 bg-amber-50/10 border border-amber-400/40 rounded flex flex-col items-center justify-center p-1 shadow-inner">
              <svg viewBox="0 0 100 100" className="w-7 h-7 text-amber-300 fill-current" aria-label="Emblem of India">
                <circle cx="50" cy="50" r="42" fill="none" stroke="currentColor" strokeWidth="4" />
                <circle cx="50" cy="50" r="18" fill="none" stroke="currentColor" strokeWidth="2.5" />
                <path d="M50 10 L50 90 M10 50 L90 50 M22 22 L78 78 M22 78 L78 22" stroke="currentColor" strokeWidth="1.5" />
                <circle cx="50" cy="50" r="6" fill="currentColor" />
              </svg>
              <span className="text-[6px] text-amber-200 tracking-tighter uppercase font-bold mt-0.5">सत्यमेव जयते</span>
            </div>

            <div>
              <h1 className="text-lg sm:text-xl font-bold tracking-tight text-white font-serif">
                {t.portalTitle}
              </h1>
              <p className="text-[11px] text-slate-200 tracking-wide font-medium">
                {t.portalSubtitle}
              </p>
            </div>
          </div>

          {/* Right: National Identity & PostGIS Database Pilot */}
          <div className="flex items-center gap-3">
            <div className="text-right border-r border-slate-600 pr-3">
              <div className="text-[10px] text-slate-300 uppercase tracking-wider font-semibold">
                PostGIS Cadastre (EPSG:4326)
              </div>
              <div className="text-xs font-mono font-bold text-amber-300">
                Sarbaldal / Saderbal (34.1252° N, 74.8370° E)
              </div>
            </div>

            <div className="bg-white/10 px-3 py-1 rounded border border-white/20 text-left text-[10px] leading-tight">
              <span className="font-bold block text-white">Digital India Land Records</span>
              <span className="text-amber-300 text-[9px]">PostgreSQL + PostGIS + JSONB</span>
            </div>
          </div>
        </div>
      </header>

      {/* 4. CASCADING ADMINISTRATIVE SELECTOR & GPS COORDINATE LOCATOR */}
      <section className="bg-slate-100 border-b border-slate-300 py-2 px-3 sm:px-4 w-full">
        <div className="w-full flex flex-col gap-2">
          {/* Search Mode Toggle Tabs */}
          <div className="flex flex-wrap items-center justify-between gap-2 border-b border-slate-200 pb-1.5">
            <div className="flex items-center gap-1.5">
              <span className="text-[11px] font-bold text-slate-600 uppercase tracking-wider mr-1">
                {lang === "hi" ? "खोज विधि:" : "Query Mode:"}
              </span>
              <button
                type="button"
                onClick={() => setSearchMode("khasra")}
                className={`px-2.5 py-1 text-xs font-semibold rounded flex items-center gap-1.5 transition-all cursor-pointer ${
                  searchMode === "khasra"
                    ? "bg-[#0f2e5c] text-white shadow-xs border border-[#0f2e5c]"
                    : "bg-white text-slate-700 border border-slate-300 hover:bg-slate-200"
                }`}
              >
                <Search className="w-3 h-3 text-amber-300" />
                <span>{lang === "hi" ? "प्रशासनिक खसरा चयन" : "Administrative Khasra Hierarchy"}</span>
              </button>
              <button
                type="button"
                onClick={() => setSearchMode("coords")}
                className={`px-2.5 py-1 text-xs font-semibold rounded flex items-center gap-1.5 transition-all cursor-pointer ${
                  searchMode === "coords"
                    ? "bg-[#0f2e5c] text-white shadow-xs border border-[#0f2e5c]"
                    : "bg-white text-slate-700 border border-slate-300 hover:bg-slate-200"
                }`}
              >
                <Crosshair className="w-3 h-3 text-amber-300" />
                <span>{lang === "hi" ? "GPS अक्षांश / देशांतर (Coordinates)" : "GPS Latitude / Longitude (Coordinates)"}</span>
              </button>
            </div>

            <div className="text-[11px] text-slate-600 font-medium">
              <span className="text-amber-900 bg-amber-100/70 border border-amber-300 px-2 py-0.5 rounded flex items-center gap-1">
                <MapPin className="w-3 h-3 text-amber-700" />
                {lang === "hi"
                  ? "मानचित्र पर किसी भी मकान/प्लॉट पर क्लिक करके सीधे PostGIS डेटा प्राप्त करें"
                  : "Click anywhere on map to query PostGIS database directly"}
              </span>
            </div>
          </div>

          {/* Form based on Search Mode */}
          {searchMode === "khasra" ? (
            <form onSubmit={handleKhasraSearch} className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-6 gap-2 items-end">
              {/* State */}
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {t.state}
                </label>
                <select
                  value={selectedState}
                  onChange={(e) => setSelectedState(e.target.value)}
                  className="w-full bg-white border border-slate-300 rounded px-2 py-1.5 text-xs text-slate-800 font-medium focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
                >
                  <option value="Jammu & Kashmir (UT)">
                    {lang === "hi" ? "जम्मू और कश्मीर" : "Jammu & Kashmir"}
                  </option>
                </select>
              </div>

              {/* District */}
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {t.district}
                </label>
                <select
                  value={selectedDistrict}
                  onChange={(e) => setSelectedDistrict(e.target.value)}
                  className="w-full bg-white border border-slate-300 rounded px-2 py-1.5 text-xs text-slate-800 font-medium focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
                >
                  {ADMIN_HIERARCHY.districts.map((d) => (
                    <option key={d.name} value={d.name}>
                      {lang === "hi" && d.name === "Srinagar" ? "श्रीनगर" : d.name}
                    </option>
                  ))}
                </select>
              </div>

              {/* Tehsil */}
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {t.tehsil}
                </label>
                <select
                  value={selectedTehsil}
                  onChange={(e) => setSelectedTehsil(e.target.value)}
                  className="w-full bg-white border border-slate-300 rounded px-2 py-1.5 text-xs text-slate-800 font-medium focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
                >
                  {currentTehsils.map((teh) => (
                    <option key={teh.name} value={teh.name}>
                      {lang === "hi" && teh.name === "North Srinagar" ? "उत्तर श्रीनगर" : teh.name}
                    </option>
                  ))}
                </select>
              </div>

              {/* Village */}
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {t.village}
                </label>
                <select
                  value={selectedMouza}
                  onChange={(e) => setSelectedMouza(e.target.value)}
                  className="w-full bg-white border border-slate-300 rounded px-2 py-1.5 text-xs text-slate-800 font-medium focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
                >
                  {currentMouzas.map((mouz) => (
                    <option key={mouz.name} value={mouz.name}>
                      {lang === "hi" && mouz.name.includes("Saderbal") ? "सादरबल (हज़रतबल)" : mouz.name}
                    </option>
                  ))}
                </select>
              </div>

              {/* Khasra Search */}
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {t.khasraNo}
                </label>
                <select
                  value={selectedKhasra}
                  onChange={(e) => setSelectedKhasra(e.target.value)}
                  className="w-full bg-white border border-amber-600/70 font-mono font-bold text-[#0f2e5c] rounded px-2 py-1.5 text-xs focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden cursor-pointer"
                >
                  {availableKhasras.map((k) => (
                    <option key={k} value={k}>
                      {lang === "hi" ? `खसरा #${k}` : `Khasra #${k}`}
                    </option>
                  ))}
                </select>
              </div>

              {/* Inspect Button */}
              <div>
                <button
                  type="submit"
                  disabled={loadingParcel}
                  className="w-full bg-[#0f2e5c] hover:bg-[#163e7a] text-white border border-[#c99736] font-semibold px-3 py-1.5 text-xs rounded shadow-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                >
                  <Search className="w-3.5 h-3.5 text-amber-300" />
                  <span>{loadingParcel ? "Loading..." : t.inspectBtn}</span>
                </button>
              </div>
            </form>
          ) : (
            <form onSubmit={handleGpsSearch} className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-6 gap-2 items-end">
              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {lang === "hi" ? "अक्षांश (Latitude °N)" : "Latitude (°N)"}
                </label>
                <input
                  type="text"
                  value={inputLat}
                  onChange={(e) => setInputLat(e.target.value)}
                  placeholder="e.g. 34.12532"
                  className="w-full bg-white border border-slate-300 rounded px-2.5 py-1.5 text-xs text-slate-800 font-mono font-bold focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden"
                />
              </div>

              <div>
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {lang === "hi" ? "देशांतर (Longitude °E)" : "Longitude (°E)"}
                </label>
                <input
                  type="text"
                  value={inputLng}
                  onChange={(e) => setInputLng(e.target.value)}
                  placeholder="e.g. 74.83618"
                  className="w-full bg-white border border-slate-300 rounded px-2.5 py-1.5 text-xs text-slate-800 font-mono font-bold focus:ring-1 focus:ring-[#0f2e5c] focus:outline-hidden"
                />
              </div>

              <div className="lg:col-span-2">
                <label className="block text-[11px] font-bold text-slate-700 uppercase tracking-wider mb-1">
                  {lang === "hi" ? "PostGIS से प्राप्त खसरा" : "Resolved PostGIS Parcel"}
                </label>
                <div className="bg-white border border-amber-400/80 rounded px-2.5 py-1.5 text-xs text-[#0f2e5c] font-bold flex items-center justify-between">
                  <span>{lang === "hi" ? `खसरा #${activeRecord.khasra_no} (${activeRecord.mouza})` : `Khasra #${activeRecord.khasra_no} (${activeRecord.mouza})`}</span>
                  <span className="text-[10px] text-emerald-700 bg-emerald-50 px-1.5 py-0.5 rounded font-mono border border-emerald-200">
                    MATCHED
                  </span>
                </div>
              </div>

              <div>
                <button
                  type="submit"
                  disabled={loadingParcel}
                  className="w-full bg-[#0f2e5c] hover:bg-[#163e7a] text-white border border-[#c99736] font-semibold px-3 py-1.5 text-xs rounded shadow-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                >
                  <Crosshair className="w-3.5 h-3.5 text-amber-300" />
                  <span>{loadingParcel ? "Searching..." : lang === "hi" ? "निर्देशांक से खोजें" : "Locate by GPS"}</span>
                </button>
              </div>

              <div>
                <button
                  type="button"
                  onClick={() => {
                    setInputLat(activeRecord.latitude.toFixed(5));
                    setInputLng(activeRecord.longitude.toFixed(5));
                  }}
                  className="w-full bg-white hover:bg-slate-200 text-slate-700 border border-slate-300 font-semibold px-3 py-1.5 text-xs rounded shadow-xs flex items-center justify-center gap-1.5 transition-colors cursor-pointer"
                >
                  <RefreshCw className="w-3.5 h-3.5 text-slate-600" />
                  <span>{lang === "hi" ? "सक्रिय खसरा भरें" : "Load Active"}</span>
                </button>
              </div>
            </form>
          )}
        </div>
      </section>

      {/* 5. FULL SCREEN GIS & DUE-DILIGENCE WORKSPACE */}
      <main className="w-full px-2 sm:px-3 py-2 flex-1">
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-2.5 items-stretch">
          
          {/* LEFT PANE (MAP) - FULL WIDTH BY DEFAULT, SPLITS WHEN DOSSIER OPENS */}
          <div className={`${showDossier ? "lg:col-span-8 xl:col-span-8 2xl:col-span-8" : "lg:col-span-12 xl:col-span-12 2xl:col-span-12"} flex flex-col bg-white border border-slate-300 rounded shadow-xs overflow-hidden transition-all duration-300`}>
            {/* Workspace Bar */}
            <div className="bg-[#0f2e5c] text-white px-3 py-1.5 flex flex-wrap items-center justify-between gap-2 border-b border-[#c99736]">
              <div className="flex items-center gap-2 text-xs">
                <MapPin className="w-3.5 h-3.5 text-amber-300" />
                <span className="font-bold">PostGIS Cadastre</span>
                <span className="text-slate-300">|</span>
                <span className="text-amber-200">{activeRecord.mouza}</span>
              </div>
              <div className="text-[11px] text-slate-200 flex items-center gap-2">
                <span>{t.activeTarget}: </span>
                <span className="font-mono font-bold text-amber-300 bg-white/10 px-2 py-0.5 rounded border border-white/20">
                  {lang === "hi" ? `खसरा #${activeRecord.khasra_no}` : `Khasra #${activeRecord.khasra_no}`}
                </span>
                {activeRecord.is_demo_data && (
                  <span className="bg-amber-400 text-slate-950 font-bold font-mono text-[9px] px-1.5 py-0.5 rounded">
                    DEMO DATA
                  </span>
                )}

                {/* Full Map vs Details Toggle Button */}
                <button
                  type="button"
                  onClick={() => setShowDossier(!showDossier)}
                  className="ml-1 bg-amber-400/20 hover:bg-amber-400/30 text-amber-300 border border-amber-400/40 px-2 py-0.5 rounded text-[10px] font-bold flex items-center gap-1 transition-colors cursor-pointer"
                  title="Toggle Dossier Details"
                >
                  <FileText className="w-3 h-3" />
                  <span>
                    {showDossier
                      ? (lang === "hi" ? "पूरा मैप (Full Map)" : "Hide Details (Full Map)")
                      : (lang === "hi" ? "विवरण देखें (Dossier)" : "View Dossier")}
                  </span>
                </button>
              </div>
            </div>

            {/* Map Container */}
            <div className="w-full h-[640px] xl:h-[700px] 2xl:h-[760px] relative">
              {mounted ? (
                <MapComponent
                  selectedKhasra={selectedKhasra}
                  onSelectKhasra={handleSelectKhasra}
                  lang={lang}
                  onCoordinateClick={handleCoordinateClickOnMap}
                  geojsonData={geojsonData}
                />
              ) : (
                <div className="w-full h-full min-h-[540px] bg-slate-900 flex flex-col items-center justify-center text-slate-300 border border-slate-300">
                  <RefreshCw className="w-7 h-7 animate-spin text-[#c99736] mb-2" />
                  <span className="font-semibold text-xs">Loading GIS PostGIS Engine...</span>
                </div>
              )}
            </div>

            {/* Bottom Geospatial Datum Bar */}
            <div className="bg-slate-50 border-t border-slate-200 px-3 py-1 flex flex-wrap items-center justify-between text-[11px] text-slate-600 gap-2">
              <div className="flex items-center gap-2">
                <span className="font-semibold text-slate-700">Datum:</span>
                <span className="font-mono">WGS84 / EPSG:4326</span>
                <span className="text-slate-300">&bull;</span>
                <span className="font-semibold text-slate-700">Spatial Engine:</span>
                <span className="font-mono text-emerald-800 font-bold">PostGIS Geometry (Polygon)</span>
              </div>
              <div className="text-emerald-800 font-medium flex items-center gap-1">
                <ShieldCheck className="w-3.5 h-3.5 text-emerald-600" />
                <span>Survey of India Cadastral Grid</span>
              </div>
            </div>
          </div>

          {/* RIGHT PANE (DOSSIER - MULTI TAB GOVERNANCE MODULES) - OPENS ON PARCEL CLICK */}
          {showDossier && (
            <div className="lg:col-span-4 xl:col-span-4 2xl:col-span-4 flex flex-col bg-white border border-slate-300 rounded shadow-xs overflow-hidden h-[640px] xl:h-[700px] 2xl:h-[760px] animate-in fade-in slide-in-from-right-2 duration-200">
              {/* Dossier Header */}
              <div className="bg-[#1b365d] text-white p-3 border-b border-[#c99736]">
                <div className="flex items-start justify-between gap-2">
                  <div>
                    <div className="flex items-center gap-1.5">
                      <span className="text-[10px] uppercase tracking-wider text-amber-300 font-bold block">
                        {t.dossierTitle}
                      </span>
                      {activeRecord.is_demo_data || activeRecord.dataset_type === "DEMO_ONLY" ? (
                        <span className="bg-amber-400/20 text-amber-300 border border-amber-400/50 text-[9px] font-mono px-1.5 py-0.5 rounded font-bold flex items-center gap-1">
                          <AlertTriangle className="w-3 h-3 text-amber-300" />
                          <span>{lang === "hi" ? "फ़ेक / सिमुलेटेड डेटा (DEMO ONLY)" : "DEMO / SYNTHETIC DATA"}</span>
                        </span>
                      ) : (
                        <span className="bg-emerald-500/20 text-emerald-300 border border-emerald-400/50 text-[9px] font-mono px-1.5 py-0.5 rounded font-bold flex items-center gap-1">
                          <CheckCircle2 className="w-3 h-3 text-emerald-400" />
                          <span>{lang === "hi" ? "प्रमाणित सरकारी अभिलेख" : "OFFICIAL GOVT RECORD"}</span>
                        </span>
                      )}
                    </div>
                    <h2 className="text-base font-bold font-serif flex items-center gap-1 mt-0.5">
                      <span>{lang === "hi" ? "खसरा #" : "Khasra #"}</span>
                      <span className="font-mono text-amber-200">{activeRecord.khasra_no}</span>
                    </h2>
                  </div>

                  {/* Status Badges & Close Button */}
                  <div className="flex flex-col items-end gap-1">
                    <div className="flex items-center gap-1.5">
                      {renderLegalStatusBadge(activeRecord.legal_status)}
                      <button
                        type="button"
                        onClick={() => setShowDossier(false)}
                        className="p-1 bg-white/10 hover:bg-red-500/30 text-white rounded border border-white/20 transition-colors cursor-pointer"
                        title={lang === "hi" ? "पैनल बंद करें (पूरा मैप देखें)" : "Close panel (Full Map)"}
                      >
                        <X className="w-3.5 h-3.5 text-red-300" />
                      </button>
                    </div>
                    {renderEncumbranceStatusBadge(activeRecord.encumbrance_status)}
                  </div>
                </div>

              {/* Bhu-Aadhaar UPIN & GPS Coordinates Bar */}
              <div className="mt-2 pt-1.5 border-t border-blue-400/30 flex flex-col gap-1.5 text-[11px]">
                <div className="flex items-center justify-between">
                  <span className="text-slate-300">{t.upinLabel}:</span>
                  <span className="font-mono font-bold text-amber-300 bg-black/30 px-1.5 py-0.5 rounded">
                    {activeRecord.upin || (
                      <span className="text-slate-400 italic">DATA_UNAVAILABLE (Pending Allotment)</span>
                    )}
                  </span>
                </div>
                <div className="flex items-center justify-between text-[11px]">
                  <span className="text-slate-300 flex items-center gap-1">
                    <Crosshair className="w-3 h-3 text-amber-400" />
                    <span>{lang === "hi" ? "भू-निर्देशांक (GPS):" : "Geo-Coordinates (GPS):"}</span>
                  </span>
                  <div className="flex items-center gap-1.5">
                    <span className="font-mono font-bold text-emerald-300 bg-black/30 px-1.5 py-0.5 rounded text-[10.5px]">
                      {activeRecord.latitude.toFixed(5)}° N, {activeRecord.longitude.toFixed(5)}° E
                    </span>
                    <button
                      type="button"
                      onClick={() => copyCoordsToClipboard(activeRecord.latitude, activeRecord.longitude)}
                      className="p-1 hover:bg-white/20 rounded text-slate-200 hover:text-white transition-colors cursor-pointer"
                      title={lang === "hi" ? "GPS निर्देशांक कॉपी करें" : "Copy GPS Coordinates"}
                    >
                      {copiedCoords ? <Check className="w-3 h-3 text-emerald-400" /> : <Copy className="w-3 h-3" />}
                    </button>
                    <a
                      href={`https://www.google.com/maps?q=${activeRecord.latitude},${activeRecord.longitude}`}
                      target="_blank"
                      rel="noreferrer"
                      className="p-1 hover:bg-white/20 rounded text-amber-300 hover:text-amber-200 transition-colors cursor-pointer"
                      title={lang === "hi" ? "गूगल मैप्स में देखें" : "Open in Google Maps"}
                    >
                      <ExternalLink className="w-3 h-3" />
                    </a>
                  </div>
                </div>
              </div>
            </div>

            {/* Dossier Tabs: 7 Modular DPI Tabs */}
            <div className="flex overflow-x-auto bg-slate-100 border-b border-slate-300 text-xs font-semibold scrollbar-none divide-x divide-slate-200">
              <button
                onClick={() => setActiveTab("overview")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "overview"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Overview
              </button>
              <button
                onClick={() => setActiveTab("ownership")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "ownership"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Ownership
              </button>
              <button
                onClick={() => setActiveTab("valuation")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "valuation"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Valuation
              </button>
              <button
                onClick={() => setActiveTab("legal")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "legal"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Legal
              </button>
              <button
                onClick={() => setActiveTab("encumbrance")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "encumbrance"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Encumbrance
              </button>
              <button
                onClick={() => setActiveTab("documents")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "documents"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Documents
              </button>
              <button
                onClick={() => setActiveTab("sources")}
                className={`py-2 px-2.5 whitespace-nowrap transition-colors cursor-pointer ${
                  activeTab === "sources"
                    ? "bg-white text-[#0f2e5c] border-b-2 border-b-[#0f2e5c] font-bold"
                    : "text-slate-600 hover:bg-slate-200"
                }`}
              >
                Sources
              </button>
            </div>

            {/* Tab Body (Internal Scrollable Area) */}
            <div className="flex-1 overflow-y-auto p-3 text-xs text-slate-800 space-y-3">
              
              {/* TAB 1: OVERVIEW */}
              {activeTab === "overview" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1">
                      Administrative &amp; Spatial Summary
                    </div>
                    <div className="grid grid-cols-2 gap-2 text-[11px]">
                      <div>
                        <span className="text-slate-500 block">Khasra No:</span>
                        <span className="font-mono font-bold text-slate-800">{activeRecord.khasra_no}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Parcel ID:</span>
                        <span className="font-mono font-bold text-amber-800">{activeRecord.parcel_id || activeRecord.id}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Bhu-Aadhaar (UPIN):</span>
                        <span className="font-mono font-bold text-slate-800">{activeRecord.upin || "DATA_UNAVAILABLE"}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Mouza / Village:</span>
                        <span className="font-medium text-slate-800">{activeRecord.mouza}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Tehsil:</span>
                        <span className="font-medium text-slate-800">{activeRecord.tehsil}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">District:</span>
                        <span className="font-medium text-slate-800">{activeRecord.district}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">State / UT:</span>
                        <span className="font-medium text-slate-800">{activeRecord.state}</span>
                      </div>
                    </div>
                  </div>

                  <div className="p-2.5 bg-blue-50/50 border border-blue-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-blue-200 pb-1">
                      Area Dimensions &amp; Land Classification
                    </div>
                    <div className="grid grid-cols-3 gap-2 text-[11px]">
                      <div>
                        <span className="text-slate-500 block">Kanal:</span>
                        <span className="font-mono font-bold text-slate-800">{activeRecord.area_kanal}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Marla:</span>
                        <span className="font-mono font-bold text-slate-800">{activeRecord.area_marla}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Square Feet:</span>
                        <span className="font-mono font-bold text-slate-800">{activeRecord.area_sqft} sq.ft</span>
                      </div>
                    </div>
                    <div className="pt-1 text-[11px]">
                      <span className="text-slate-500 block">Land Use Type:</span>
                      <span className="font-semibold text-slate-800">{activeRecord.land_type}</span>
                    </div>
                  </div>

                  {activeRecord.is_demo_data || activeRecord.dataset_type === "DEMO_ONLY" ? (
                    <div className="p-2.5 bg-amber-50 border border-amber-300 rounded text-[11px] text-amber-950 space-y-1.5 shadow-xs">
                      <div className="flex items-center gap-1.5 font-bold text-amber-900 border-b border-amber-200 pb-1">
                        <AlertTriangle className="w-4 h-4 text-amber-700 flex-shrink-0" />
                        <span>
                          {lang === "hi"
                            ? "⚠️ डेटासेट वर्गीकरण: फ़ेक / सिमुलेटेड डेटा (DEMO ONLY)"
                            : "⚠️ DATASET CLASSIFICATION: SYNTHETIC DEMO ONLY"}
                        </span>
                      </div>
                      <div className="grid grid-cols-2 gap-1.5 text-[10px] font-mono bg-white/70 p-1.5 rounded border border-amber-200">
                        <div>
                          <span className="text-slate-500 block">dataset_type:</span>
                          <span className="font-bold text-amber-900">{activeRecord.dataset_type || "DEMO_ONLY"}</span>
                        </div>
                        <div>
                          <span className="text-slate-500 block">data_origin_tag:</span>
                          <span className="font-bold text-amber-900">{activeRecord.data_origin_tag || "SYNTHETIC_DEMO"}</span>
                        </div>
                      </div>
                      <p className="text-[10.5px] leading-snug text-amber-900">
                        {lang === "hi"
                          ? "यह रिकॉर्ड प्रणाली परीक्षण हेतु सिमुलेटेड है। जब आप वास्तविक सरकारी डेटा अपलोड करेंगे, तो डेटाबेस 'is_demo_data: false' और 'dataset_type: REAL_GOVERNMENT_RECORD' के रूप में अंतर स्वतः पहचान लेगा।"
                          : "This record is synthetic data for system testing. When you upload real government data, the database will identify it with 'is_demo_data: false' and 'dataset_type: REAL_GOVERNMENT_RECORD'."}
                      </p>
                    </div>
                  ) : (
                    <div className="p-2.5 bg-emerald-50 border border-emerald-300 rounded text-[11px] text-emerald-950 space-y-1.5 shadow-xs">
                      <div className="flex items-center gap-1.5 font-bold text-emerald-900 border-b border-emerald-200 pb-1">
                        <CheckCircle2 className="w-4 h-4 text-emerald-700 flex-shrink-0" />
                        <span>
                          {lang === "hi"
                            ? "✅ डेटासेट वर्गीकरण: प्रमाणित सरकारी अभिलेख (OFFICIAL RECORD)"
                            : "✅ DATASET CLASSIFICATION: VERIFIED GOVERNMENT RECORD"}
                        </span>
                      </div>
                      <div className="grid grid-cols-2 gap-1.5 text-[10px] font-mono bg-white/70 p-1.5 rounded border border-emerald-200">
                        <div>
                          <span className="text-slate-500 block">dataset_type:</span>
                          <span className="font-bold text-emerald-900">REAL_GOVERNMENT_RECORD</span>
                        </div>
                        <div>
                          <span className="text-slate-500 block">data_origin_tag:</span>
                          <span className="font-bold text-emerald-900">{activeRecord.data_origin_tag || "OFFICIAL_DILRMP_JAMABANDI"}</span>
                        </div>
                      </div>
                    </div>
                  )}
                </div>
              )}

              {/* TAB 2: OWNERSHIP */}
              {activeTab === "ownership" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1">
                      Current Recorded Titleholder (Jamabandi)
                    </div>
                    <div className="space-y-1.5 text-[11px]">
                      <div>
                        <span className="text-slate-500 block">Recorded Owner:</span>
                        <span className="font-bold text-slate-900 text-xs">
                          {activeRecord.ownership_details.current_owner.name || "DATA_UNAVAILABLE"}
                        </span>
                      </div>
                      {activeRecord.ownership_details.current_owner.parentage && (
                        <div>
                          <span className="text-slate-500 block">Parentage / Relationship:</span>
                          <span className="font-medium text-slate-800">
                            {activeRecord.ownership_details.current_owner.parentage}
                          </span>
                        </div>
                      )}
                      <div className="grid grid-cols-2 gap-2 pt-1 border-t border-slate-200">
                        <div>
                          <span className="text-slate-500 block">Share / Hissa:</span>
                          <span className="font-mono font-bold text-slate-800">
                            {activeRecord.ownership_details.current_owner.share || "1/1"}
                          </span>
                        </div>
                        <div>
                          <span className="text-slate-500 block">Khewat / Khata:</span>
                          <span className="font-mono font-bold text-slate-800">
                            #{activeRecord.ownership_details.khewat_no || "N/A"} / #{activeRecord.ownership_details.khata_no || "N/A"}
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>

                  {/* Previous Owners */}
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1 flex items-center gap-1">
                      <History className="w-3.5 h-3.5 text-slate-600" />
                      <span>Ownership History / Predecessors</span>
                    </div>
                    {activeRecord.ownership_details.previous_owners.length > 0 ? (
                      <div className="space-y-1 text-[11px]">
                        {activeRecord.ownership_details.previous_owners.map((po, idx) => (
                          <div key={idx} className="p-1.5 bg-white border border-slate-200 rounded flex justify-between">
                            <span className="font-medium text-slate-800">{po.name}</span>
                            <span className="text-slate-500 font-mono text-[10px]">{po.period} &bull; {po.type}</span>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="text-[11px] text-slate-500 italic">No prior transfer records logged in digitized pilot register.</div>
                    )}
                  </div>

                  {/* Mutation History */}
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1">
                      Mutation Entries (इंतिक़ाल)
                    </div>
                    {activeRecord.ownership_details.mutation_history.length > 0 ? (
                      <div className="space-y-1 text-[11px]">
                        {activeRecord.ownership_details.mutation_history.map((m, idx) => (
                          <div key={idx} className="p-1.5 bg-white border border-slate-200 rounded text-[11px] space-y-0.5">
                            <div className="flex justify-between font-bold">
                              <span className="text-[#0f2e5c]">Mutation #{m.mutation_no}</span>
                              <span className="text-emerald-700">{m.status}</span>
                            </div>
                            <div className="text-slate-600 text-[10px]">
                              {m.type} &bull; Date: {m.mutation_date} &bull; Officer: {m.attesting_officer || "Tehsildar"}
                            </div>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="text-[11px] text-slate-500 italic">No mutations recorded.</div>
                    )}
                  </div>
                </div>
              )}

              {/* TAB 3: VALUATION */}
              {activeTab === "valuation" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-amber-50/70 border border-amber-200 rounded space-y-2">
                    <div className="font-bold text-amber-950 text-xs border-b border-amber-200 pb-1 flex justify-between items-center">
                      <span>Circle Rate &amp; Stamp Duty (NGDRS)</span>
                      <span className="text-[10px] font-mono bg-amber-200 text-amber-900 px-1 rounded">2024-2025</span>
                    </div>
                    <div className="grid grid-cols-2 gap-2 text-[11px]">
                      <div>
                        <span className="text-slate-600 block">Circle Rate (Per Kanal):</span>
                        <span className="font-mono font-bold text-slate-900">{formatINR(activeRecord.valuation_details.circle_rate)}</span>
                      </div>
                      <div>
                        <span className="text-slate-600 block">Circle Rate (Per Marla):</span>
                        <span className="font-mono font-bold text-slate-900">{formatINR(activeRecord.valuation_details.circle_rate_marla || 425000)}</span>
                      </div>
                      <div>
                        <span className="text-slate-600 block">Calculated Govt Value:</span>
                        <span className="font-mono font-bold text-emerald-800">{formatINR(activeRecord.valuation_details.government_value)}</span>
                      </div>
                      <div>
                        <span className="text-slate-600 block">Stamp Duty Payable:</span>
                        <span className="font-mono font-bold text-red-900">{formatINR(activeRecord.valuation_details.stamp_duty)} ({activeRecord.valuation_details.stamp_duty_rate || "5%"})</span>
                      </div>
                      <div>
                        <span className="text-slate-600 block">Registration Fee:</span>
                        <span className="font-mono font-bold text-slate-900">{formatINR(activeRecord.valuation_details.registration_fee)}</span>
                      </div>
                      <div>
                        <span className="text-slate-600 block">Effective From:</span>
                        <span className="font-mono text-slate-800">{activeRecord.valuation_details.effective_from || "01-Apr-2024"}</span>
                      </div>
                    </div>
                  </div>

                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded text-[11px] space-y-1">
                    <span className="text-slate-500 font-semibold block">Statutory Source:</span>
                    <p className="text-slate-700 leading-relaxed">
                      {activeRecord.valuation_details.source || "District Collector Srinagar Gazette"}
                    </p>
                  </div>
                </div>
              )}

              {/* TAB 4: LEGAL / LITIGATION */}
              {activeTab === "legal" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1 flex justify-between items-center">
                      <span>eCourts Services Judicial Status</span>
                      {renderLegalStatusBadge(activeRecord.legal_status)}
                    </div>
                    {activeRecord.litigation_details.cases.length > 0 ? (
                      <div className="space-y-2 text-[11px]">
                        {activeRecord.litigation_details.cases.map((c, idx) => (
                          <div key={idx} className="p-2 bg-red-50/60 border border-red-200 rounded space-y-1 text-red-950">
                            <div className="flex justify-between font-bold">
                              <span>Case: {c.case_number}</span>
                              <span className="text-red-700 text-[10px]">{c.status}</span>
                            </div>
                            <div className="text-[10.5px]"><strong>Court:</strong> {c.court}</div>
                            {c.interim_order && (
                              <div className="p-1.5 bg-white border border-red-300 rounded text-[10px] font-mono text-red-800">
                                <strong>INTERIM STAY:</strong> {c.interim_order}
                              </div>
                            )}
                            <div className="text-[10px] text-slate-500 flex justify-between">
                              <span>Filing: {c.filing_date || "N/A"}</span>
                              <span>Source: {c.source || "eCourts CIS 3.2"}</span>
                            </div>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="p-2 bg-emerald-50 border border-emerald-200 rounded text-[11px] text-emerald-900 flex items-center gap-1.5">
                        <CheckCircle2 className="w-4 h-4 text-emerald-600 flex-shrink-0" />
                        <div>
                          <strong>NO ACTIVE LITIGATION RECORDED:</strong> Verified against eCourts CIS 3.2 database for District Court Srinagar &amp; High Court of J&amp;K and Ladakh.
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              )}

              {/* TAB 5: ENCUMBRANCE / MORTGAGE */}
              {activeTab === "encumbrance" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1 flex justify-between items-center">
                      <span>CERSAI Central Mortgage Registry</span>
                      {renderEncumbranceStatusBadge(activeRecord.encumbrance_status)}
                    </div>
                    {activeRecord.mortgage_details.records.length > 0 ? (
                      <div className="space-y-2 text-[11px]">
                        {activeRecord.mortgage_details.records.map((m, idx) => (
                          <div key={idx} className="p-2 bg-amber-50/70 border border-amber-200 rounded space-y-1 text-amber-950">
                            <div className="flex justify-between font-bold">
                              <span>{m.bank_name}</span>
                              <span className="text-amber-800 text-[10px] font-mono">{m.charge_status}</span>
                            </div>
                            <div className="text-[10.5px]">
                              <strong>Branch:</strong> {m.branch} &bull; <strong>Sanctioned:</strong> {formatINR(m.loan_amount)}
                            </div>
                            <div className="text-[10px] font-mono text-slate-600">
                              Security ID: {m.cersai_security_id} &bull; {m.type_of_charge}
                            </div>
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="p-2 bg-emerald-50 border border-emerald-200 rounded text-[11px] text-emerald-900 flex items-center gap-1.5">
                        <CheckCircle2 className="w-4 h-4 text-emerald-600 flex-shrink-0" />
                        <div>
                          <strong>NO REGISTERED LIEN:</strong> No subsisting equitable or registered mortgage logged in CERSAI registry for this cadastral boundary.
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              )}

              {/* TAB 6: DOCUMENTS */}
              {activeTab === "documents" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1 flex items-center gap-1">
                      <FolderOpen className="w-3.5 h-3.5 text-slate-600" />
                      <span>Certified Revenue &amp; Judicial Documents</span>
                    </div>
                    {activeRecord.documents_details.documents.length > 0 ? (
                      <div className="space-y-1.5 text-[11px]">
                        {activeRecord.documents_details.documents.map((doc, idx) => (
                          <div key={idx} className="p-2 bg-white border border-slate-200 rounded flex items-center justify-between">
                            <div>
                              <div className="font-bold text-slate-800">{doc.type}</div>
                              <div className="text-slate-500 text-[10px] font-mono">
                                Ref: {doc.document_number} &bull; Date: {doc.date}
                              </div>
                            </div>
                            {doc.source_url && (
                              <a
                                href={doc.source_url}
                                target="_blank"
                                rel="noreferrer"
                                className="px-2 py-1 bg-slate-100 hover:bg-slate-200 text-[#0f2e5c] font-semibold text-[10px] rounded border border-slate-300 flex items-center gap-1 transition-colors"
                              >
                                <span>Verify</span>
                                <ExternalLink className="w-2.5 h-2.5" />
                              </a>
                            )}
                          </div>
                        ))}
                      </div>
                    ) : (
                      <div className="text-[11px] text-slate-500 italic">No digitized documents attached to this record.</div>
                    )}
                  </div>
                </div>
              )}

              {/* TAB 7: SOURCES & PROVENANCE */}
              {activeTab === "sources" && (
                <div className="space-y-3">
                  <div className="p-2.5 bg-slate-50 border border-slate-200 rounded space-y-2">
                    <div className="font-bold text-[#0f2e5c] text-xs border-b border-slate-200 pb-1 flex items-center gap-1">
                      <Link2 className="w-3.5 h-3.5 text-slate-600" />
                      <span>Data Traceability &amp; Government Provenance</span>
                    </div>
                    <div className="space-y-2 text-[11px]">
                      <div>
                        <span className="text-slate-500 block">Primary Authority:</span>
                        <span className="font-bold text-slate-900">{activeRecord.provenance_details.source_name || "Revenue Dept, Govt. of Jammu & Kashmir"}</span>
                      </div>
                      <div>
                        <span className="text-slate-500 block">Official Verification Portal:</span>
                        <a
                          href={activeRecord.provenance_details.source_url || "https://jkzameensudhar.jk.gov.in"}
                          target="_blank"
                          rel="noreferrer"
                          className="text-[#0f2e5c] hover:underline font-mono font-bold flex items-center gap-1"
                        >
                          <span>{activeRecord.provenance_details.source_url || "https://jkzameensudhar.jk.gov.in"}</span>
                          <ExternalLink className="w-3 h-3" />
                        </a>
                      </div>
                      <div className="grid grid-cols-2 gap-2 pt-1 border-t border-slate-200 text-[10.5px]">
                        <div>
                          <span className="text-slate-500 block">Record Date:</span>
                          <span className="font-mono text-slate-800">{activeRecord.provenance_details.record_date || "2026-09-19"}</span>
                        </div>
                        <div>
                          <span className="text-slate-500 block">Last Verified:</span>
                          <span className="font-mono text-slate-800">{activeRecord.provenance_details.last_verified || "2026-09-19T10:00:00Z"}</span>
                        </div>
                      </div>
                      <div className="p-1.5 bg-slate-100 rounded border border-slate-200 text-[10px] space-y-1">
                        <div className="flex items-center justify-between">
                          <span className="text-slate-600 font-semibold">Classification:</span>
                          <span className={`font-mono font-bold px-1 rounded ${activeRecord.is_demo_data ? "text-amber-800 bg-amber-100" : "text-emerald-800 bg-emerald-100"}`}>
                            {activeRecord.dataset_type || (activeRecord.is_demo_data ? "DEMO_ONLY" : "REAL_GOVERNMENT_RECORD")}
                          </span>
                        </div>
                        <div className="flex items-center justify-between">
                          <span className="text-slate-600 font-semibold">Origin Tag:</span>
                          <span className="font-mono text-slate-700">
                            {activeRecord.data_origin_tag || (activeRecord.is_demo_data ? "SYNTHETIC_DEMO" : "OFFICIAL_DILRMP_JAMABANDI")}
                          </span>
                        </div>
                        {activeRecord.verification_disclaimer && (
                          <div className="text-slate-500 italic text-[9.5px] border-t border-slate-200 pt-1">
                            {activeRecord.verification_disclaimer}
                          </div>
                        )}
                      </div>
                    </div>
                  </div>

                  <div className="p-2.5 bg-blue-50/60 border border-blue-200 rounded text-[11px] space-y-1">
                    <div className="font-bold text-[#0f2e5c]">Architecture &amp; Storage Engine:</div>
                    <p className="text-slate-700 leading-relaxed">
                      PostgreSQL 16 + PostGIS Spatial (WGS84 EPSG:4326) + JSONB modules hosted on Supabase Cloud.
                    </p>
                  </div>
                </div>
              )}

            </div>

            {/* Dossier Footer Action Bar */}
            <div className="bg-slate-100 p-2.5 border-t border-slate-300 flex items-center justify-between gap-2">
              <button
                type="button"
                onClick={() => setShowPdfModal(true)}
                className="w-full bg-[#0f2e5c] hover:bg-[#163e7a] text-white font-bold py-2 px-3 rounded shadow-xs flex items-center justify-center gap-1.5 text-xs transition-colors cursor-pointer"
              >
                <Download className="w-3.5 h-3.5 text-amber-300" />
                <span>Generate Official Land Due-Diligence Certificate</span>
              </button>
            </div>
          </div>
        )}

        </div>
      </main>

      {/* 6. OFFICIAL FOOTER */}
      <footer className="bg-[#0f2e5c] text-white border-t-2 border-[#c99736] py-2 px-3 sm:px-4 text-xs mt-auto w-full">
        <div className="w-full flex flex-col sm:flex-row items-center justify-between gap-2">
          <div className="text-[11px] text-slate-300">
            &copy; 2026 Department of Revenue, Government of Jammu &amp; Kashmir &bull; Digital India Land Records (DILRMP)
          </div>
          <div className="text-[10px] text-amber-300/80 font-mono">
            Spatial CRS: EPSG:4326 &bull; PostGIS &bull; Supabase Cloud
          </div>
        </div>
      </footer>

      {/* 7. PDF CERTIFICATE MODAL */}
      {showPdfModal && (
        <div className="fixed inset-0 z-50 bg-black/60 backdrop-blur-xs flex items-center justify-center p-3 sm:p-4">
          <div className="bg-white border-2 border-[#0f2e5c] rounded shadow-2xl max-w-2xl w-full max-h-[90vh] flex flex-col overflow-hidden animate-in fade-in zoom-in-95 duration-150">
            {/* Modal Header */}
            <div className="bg-[#0f2e5c] text-white px-4 py-3 flex items-center justify-between border-b-2 border-[#c99736]">
              <div className="flex items-center gap-2">
                <FileText className="w-4 h-4 text-amber-300" />
                <span className="font-bold text-sm font-serif">Official Due-Diligence Certificate</span>
              </div>
              <div className="flex items-center gap-2">
                <button
                  onClick={() => window.print()}
                  className="px-2.5 py-1 bg-white/10 hover:bg-white/20 rounded border border-white/20 text-xs font-semibold flex items-center gap-1 transition-colors cursor-pointer"
                >
                  <Printer className="w-3.5 h-3.5" />
                  <span>Print</span>
                </button>
                <button
                  onClick={() => setShowPdfModal(false)}
                  className="p-1 text-slate-300 hover:text-white hover:bg-white/10 rounded transition-colors cursor-pointer"
                >
                  <X className="w-4 h-4" />
                </button>
              </div>
            </div>

            {/* Certificate Body */}
            <div className="p-6 overflow-y-auto space-y-4 text-slate-800 bg-white" id="certificate-print-area">
              <div className="text-center border-b-2 border-slate-800 pb-3">
                <div className="text-[11px] font-sans font-bold tracking-widest uppercase text-slate-700">
                  {t.govtLetterhead}
                </div>
                <div className="text-xs font-bold text-[#0f2e5c] uppercase">
                  {t.officeTitle}
                </div>
                <h3 className="text-base font-black text-slate-950 mt-1 uppercase underline decoration-double">
                  {t.certTitle}
                </h3>
                <div className="flex justify-between items-center text-[10px] font-mono text-slate-600 mt-2 px-2 font-sans">
                  <span>{t.certId}: <strong>JK/REV/DPI/2026/{activeRecord.khasra_no}-9814</strong></span>
                  <span>{t.issuedDate}: <strong>19-Sep-2026</strong></span>
                  <span>{t.upinLabel}: <strong>{activeRecord.upin || "DATA_UNAVAILABLE"}</strong></span>
                </div>
              </div>

              {/* Status Banner */}
              <div className="flex items-center justify-between p-2.5 border border-slate-300 bg-slate-50 font-sans">
                <div>
                  <span className="text-[10px] text-slate-500 uppercase block">{t.certLocation}:</span>
                  <span className="font-bold text-slate-900 text-xs">
                    Khasra No. {activeRecord.khasra_no}, Mouza {activeRecord.mouza}, Tehsil {activeRecord.tehsil}
                  </span>
                </div>
                <div>
                  {renderLegalStatusBadge(activeRecord.legal_status)}
                </div>
              </div>

              {/* Section 1: Ownership */}
              <div>
                <h4 className="font-bold text-xs text-[#0f2e5c] uppercase border-b border-slate-300 pb-1 mb-1 font-sans">
                  Section 1: Record of Rights &amp; Ownership
                </h4>
                <div className="grid grid-cols-2 gap-2 text-[11px]">
                  <div><strong>Registered Titleholder:</strong> {activeRecord.ownership_details.current_owner.name || "DATA_UNAVAILABLE"}</div>
                  <div><strong>Parentage:</strong> {activeRecord.ownership_details.current_owner.parentage || "N/A"}</div>
                  <div><strong>Total Area:</strong> {activeRecord.area_kanal} Kanal {activeRecord.area_marla} Marla ({activeRecord.area_sqft} sq.ft)</div>
                  <div><strong>Land Classification:</strong> {activeRecord.land_type}</div>
                  <div><strong>Khewat / Khata:</strong> #{activeRecord.ownership_details.khewat_no || "N/A"} / #{activeRecord.ownership_details.khata_no || "N/A"}</div>
                  <div><strong>GPS Coordinates:</strong> {activeRecord.latitude.toFixed(5)}° N, {activeRecord.longitude.toFixed(5)}° E</div>
                </div>
              </div>

              {/* Section 2: Valuation */}
              <div>
                <h4 className="font-bold text-xs text-[#0f2e5c] uppercase border-b border-slate-300 pb-1 mb-1 font-sans">
                  Section 2: Valuation &amp; Stamp Duty
                </h4>
                <div className="grid grid-cols-2 gap-2 text-[11px]">
                  <div><strong>Circle Rate:</strong> {formatINR(activeRecord.valuation_details.circle_rate)} / Kanal</div>
                  <div><strong>Assessed Base Value:</strong> {formatINR(activeRecord.valuation_details.government_value)}</div>
                  <div><strong>Stamp Duty:</strong> {formatINR(activeRecord.valuation_details.stamp_duty)}</div>
                  <div><strong>Registration Fee:</strong> {formatINR(activeRecord.valuation_details.registration_fee)}</div>
                </div>
              </div>

              {/* Section 3 & 4: Legal & Mortgage */}
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <h4 className="font-bold text-xs text-[#0f2e5c] uppercase border-b border-slate-300 pb-1 mb-1 font-sans">
                    Section 3: Judicial Litigation Status
                  </h4>
                  <div className="text-[11px]">
                    <div><strong>Status:</strong> {activeRecord.legal_status}</div>
                    {activeRecord.litigation_details.cases.length > 0 ? (
                      <div className="text-red-700 font-bold mt-1">
                        Case: {activeRecord.litigation_details.cases[0].case_number}
                        <div className="text-[10px] text-slate-700 font-normal">
                          {activeRecord.litigation_details.cases[0].interim_order}
                        </div>
                      </div>
                    ) : (
                      <div className="text-slate-600 text-[10px] mt-0.5">
                        No civil, revenue or criminal disputes pending in eCourts registry.
                      </div>
                    )}
                  </div>
                </div>

                <div>
                  <h4 className="font-bold text-xs text-[#0f2e5c] uppercase border-b border-slate-300 pb-1 mb-1 font-sans">
                    Section 4: Bank Mortgage Encumbrance
                  </h4>
                  <div className="text-[11px]">
                    <div><strong>Status:</strong> {activeRecord.encumbrance_status}</div>
                    {activeRecord.mortgage_details.records.length > 0 ? (
                      <div className="font-semibold text-amber-800 mt-1">
                        {activeRecord.mortgage_details.records[0].bank_name} ({formatINR(activeRecord.mortgage_details.records[0].loan_amount)})
                      </div>
                    ) : (
                      <div className="text-slate-600 text-[10px] mt-0.5">
                        No financial institution lien registered with CERSAI.
                      </div>
                    )}
                  </div>
                </div>
              </div>

              {/* Footer Signatures */}
              <div className="pt-4 border-t-2 border-slate-800 flex items-center justify-between font-sans">
                <div className="flex items-center gap-2">
                  <div className="w-14 h-14 border border-slate-400 p-1 bg-slate-50 flex flex-col items-center justify-center text-center">
                    <QrCode className="w-10 h-10 text-[#0f2e5c]" />
                  </div>
                  <div className="text-[9px] text-slate-500 max-w-[200px]">
                    {t.qrVerifyText}
                  </div>
                </div>

                <div className="text-right">
                  <div className="text-[10px] font-bold text-emerald-800 font-mono">{t.digitalSignText} &bull; OK</div>
                  <div className="font-bold text-slate-900 text-xs mt-0.5">{t.authOfficer}</div>
                  <div className="text-[10px] text-slate-500">{t.tehsildarTitle}</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* 8. SUPABASE CONNECTION & CLOUD DPI MODAL */}
      {showSupabaseModal && (
        <div className="fixed inset-0 z-50 bg-black/60 backdrop-blur-xs flex items-center justify-center p-3 sm:p-4">
          <div className="bg-white border-2 border-[#0f2e5c] rounded shadow-2xl max-w-xl w-full overflow-hidden animate-in fade-in zoom-in-95 duration-150">
            {/* Modal Header */}
            <div className="bg-[#0f2e5c] text-white px-4 py-3 flex items-center justify-between border-b-2 border-[#c99736]">
              <div className="flex items-center gap-2">
                <Database className="w-5 h-5 text-emerald-400" />
                <div>
                  <h3 className="text-sm font-bold font-serif text-white">
                    Supabase PostgreSQL + PostGIS Spatial DPI
                  </h3>
                  <p className="text-[10px] text-slate-300">
                    Department of Revenue, Govt. of Jammu &amp; Kashmir
                  </p>
                </div>
              </div>
              <button
                type="button"
                onClick={() => setShowSupabaseModal(false)}
                className="p-1 text-slate-300 hover:text-white hover:bg-white/10 rounded transition-colors cursor-pointer"
              >
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Modal Body */}
            <div className="p-4 space-y-3.5 text-xs text-slate-700">
              {/* Connection Status Card */}
              <div className="p-3 bg-emerald-50/70 border border-emerald-300 rounded flex items-center justify-between">
                <div className="flex items-center gap-2.5">
                  <div className="w-3 h-3 rounded-full bg-emerald-500 animate-ping" />
                  <div>
                    <div className="font-bold text-emerald-950 text-xs">
                      {supabaseStatus?.connected ? "Connected to Supabase PostgreSQL" : "Connecting to Supabase..."}
                    </div>
                    <div className="text-[11px] text-emerald-800 font-mono">
                      Project ID: {supabaseStatus?.projectId || "orwftwjzbyortuctkzua"}
                    </div>
                  </div>
                </div>
                {supabaseStatus?.latencyMs !== undefined && (
                  <span className="text-[11px] font-mono font-bold text-emerald-700 bg-white px-2 py-0.5 rounded border border-emerald-200">
                    {supabaseStatus.latencyMs} ms latency
                  </span>
                )}
              </div>

              {/* Endpoint Details */}
              <div className="space-y-1.5 bg-slate-50 p-3 rounded border border-slate-200 text-[11px]">
                <div className="flex justify-between">
                  <span className="font-semibold text-slate-600">Database URL:</span>
                  <span className="font-mono font-bold text-[#0f2e5c]">
                    https://orwftwjzbyortuctkzua.supabase.co
                  </span>
                </div>
                <div className="flex justify-between">
                  <span className="font-semibold text-slate-600">Spatial Extension:</span>
                  <span className="text-emerald-700 font-semibold font-mono">PostGIS 3.4 (GEOMETRY(POLYGON, 4326))</span>
                </div>
                <div className="flex justify-between">
                  <span className="font-semibold text-slate-600">Spatial Indexing:</span>
                  <span className="font-mono text-slate-800">GiST index (idx_parcels_geometry)</span>
                </div>
                <div className="flex justify-between">
                  <span className="font-semibold text-slate-600">Composite Unique Index:</span>
                  <span className="font-mono text-slate-800">district + tehsil + mouza + khasra_no</span>
                </div>
                <div className="flex justify-between">
                  <span className="font-semibold text-slate-600">Data Origin:</span>
                  <span className="font-mono font-bold text-amber-900">
                    {dataOrigin === "supabase" ? "Live Supabase PostGIS" : "PostGIS Synced (Verified Pilot Fallback)"}
                  </span>
                </div>
              </div>

              {/* Quick Schema Guide */}
              <div className="p-2.5 bg-amber-50/70 border border-amber-300/80 rounded text-[11px] text-amber-950 space-y-1">
                <div className="font-bold flex items-center gap-1 text-amber-900">
                  <ShieldCheck className="w-3.5 h-3.5 text-amber-700" />
                  <span>Production Schema Available in Codebase</span>
                </div>
                <p className="text-[10.5px] leading-relaxed text-amber-900">
                  A complete migration script with PostGIS WKT polygons, JSONB submodules, and RLS policies is ready in <code className="bg-amber-100 font-mono px-1 py-0.5 rounded border border-amber-300">supabase_schema.sql</code>.
                </p>
              </div>

              {/* Modal Actions */}
              <div className="flex items-center justify-between pt-2 border-t border-slate-200">
                <button
                  type="button"
                  onClick={async () => {
                    const res = await checkSupabaseHealth();
                    setSupabaseStatus(res);
                  }}
                  className="px-3 py-1.5 bg-white hover:bg-slate-100 border border-slate-300 rounded font-semibold text-slate-700 text-xs flex items-center gap-1.5 transition-colors cursor-pointer"
                >
                  <RefreshCw className="w-3.5 h-3.5 text-slate-500" />
                  <span>Re-test Ping</span>
                </button>

                <button
                  type="button"
                  onClick={() => setShowSupabaseModal(false)}
                  className="px-4 py-1.5 bg-[#0f2e5c] hover:bg-[#163e7a] text-white rounded font-semibold text-xs transition-colors cursor-pointer"
                >
                  Done
                </button>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
