import { supabase, isSupabaseConfigured } from "@/lib/supabase";
import {
  ParcelDatabaseRecord,
  ParcelGeoJSONCollection,
  ParcelGeoJSONFeature,
  LegalStatusType,
  EncumbranceStatusType,
  DatasetClassification
} from "@/types/parcel";
import rawDemoDataset from "@/data/demo_sarbaldal_200.json";

// Map the 200 demo parcels explicitly with fake/demo markers
export const SADERBAL_PILOT_PARCELS: ParcelDatabaseRecord[] = rawDemoDataset.parcels.map((p) => {
  let legStat: LegalStatusType = "NOT_VERIFIED";
  if (p.legal_status === "RECORDED_CASE") legStat = "RECORDED_CASE";
  else if (p.legal_status === "VERIFIED_NO_RECORDED_CASE") legStat = "VERIFIED_NO_RECORDED_CASE";
  else if (p.legal_status === "DATA_UNAVAILABLE") legStat = "DATA_UNAVAILABLE";

  let encStat: EncumbranceStatusType = "NOT_VERIFIED";
  if (p.encumbrance_status === "MORTGAGED") encStat = "MORTGAGED";
  else if (p.encumbrance_status === "UNENCUMBERED") encStat = "UNENCUMBERED";
  else if (p.encumbrance_status === "DATA_UNAVAILABLE") encStat = "DATA_UNAVAILABLE";

  return {
    id: p.parcel_id,
    parcel_id: p.parcel_id,
    khasra_no: String(p.khasra_no),
    upin: p.upin || null,
    state: p.state || "Jammu & Kashmir (UT)",
    district: p.district || "Srinagar",
    tehsil: p.tehsil || "North Srinagar",
    mouza: p.mouza || "Sarbaldal",
    area_kanal: Number(p.area.kanal) || 0,
    area_marla: Number(p.area.marla) || 0,
    area_sqft: Number(p.area.sqft) || 0,
    land_type: p.land_type || "Residential",
    latitude: Number(p.location.latitude) || 34.126,
    longitude: Number(p.location.longitude) || 74.837,
    legal_status: legStat,
    encumbrance_status: encStat,
    // EXPLICIT DEMO/FAKE MARKERS
    is_demo_data: true,
    dataset_type: "DEMO_ONLY" as DatasetClassification,
    data_origin_tag: "SYNTHETIC_DEMO",
    verification_disclaimer: "ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.",
    ownership_details: {
      current_owner: {
        name: p.ownership_details?.current_owner?.name || null,
        share: p.ownership_details?.current_owner?.share || "1/1"
      },
      previous_owners: p.ownership_details?.previous_owners || [],
      khewat_no: p.ownership_details?.khewat_no || null,
      khata_no: p.ownership_details?.khata_no || null,
      mutation_history: (p.ownership_details?.mutation_history || []).map((m: any) => ({
        mutation_no: m.mutation_no,
        mutation_date: m.date,
        type: m.type,
        status: "DEMO_RECORD"
      }))
    },
    valuation_details: {
      circle_rate: p.valuation_details?.circle_rate || 5000000,
      unit: p.valuation_details?.unit || "per kanal",
      circle_rate_marla: Math.round((p.valuation_details?.circle_rate || 5000000) / 20),
      government_value: p.valuation_details?.government_value || 2500000,
      stamp_duty: p.valuation_details?.stamp_duty || Math.round((p.valuation_details?.government_value || 2500000) * 0.05),
      stamp_duty_rate: "5% (Demo)",
      registration_fee: Math.round((p.valuation_details?.government_value || 2500000) * 0.012),
      effective_from: p.valuation_details?.effective_year || "2025-26",
      source: "DEMO VALUATION LEDGER (NOT GOVERNMENT GAUSS)"
    },
    litigation_details: {
      status: legStat,
      cases: (p.litigation_details?.cases || []).map((c: any) => ({
        case_number: c.case_number,
        court: c.court,
        case_type: c.case_type,
        status: c.status,
        filing_date: c.filing_date,
        disposal_date: c.disposal_date,
        source: c.source
      }))
    },
    mortgage_details: {
      status: encStat,
      records: (p.mortgage_details?.records || []).map((r: any) => ({
        bank_name: r.bank_name,
        branch: "Demo Branch (NOT REAL)",
        loan_amount: r.loan_amount,
        cersai_security_id: r.cersai_id,
        type_of_charge: "Hypothecation / Mortgage (DEMO)",
        charge_status: "DEMO_ACTIVE"
      }))
    },
    documents_details: {
      documents: (p.documents || []).map((d: any) => ({
        type: d.type,
        document_number: d.document_number,
        date: d.date,
        source: d.source,
        source_url: d.source_url
      }))
    },
    provenance_details: {
      source_name: p.source?.source_name || "DEMO DATASET — NOT GOVERNMENT DATA",
      source_url: p.source?.source_url || null,
      record_date: p.source?.record_date || "2026-09-19",
      last_verified: p.source?.last_verified || "2026-09-19"
    },
    geojson_geometry: {
      type: "Polygon",
      coordinates: p.geometry.coordinates
    }
  };
});

// Helper to calculate stroke color based on status
export function getStatusStrokeColor(
  legalStatus: LegalStatusType,
  encumbranceStatus: EncumbranceStatusType
): string {
  if (legalStatus === "RECORDED_CASE") return "#ef4444"; // Red
  if (encumbranceStatus === "MORTGAGED") return "#f59e0b"; // Amber
  if (legalStatus === "VERIFIED_NO_RECORDED_CASE") return "#22c55e"; // Emerald
  return "#64748b"; // Slate
}

// Check if a parcel is a genuine verified government record vs demo/fake data
export function isRealGovernmentRecord(parcel: ParcelDatabaseRecord): boolean {
  return parcel.is_demo_data === false && parcel.dataset_type === "REAL_GOVERNMENT_RECORD";
}

// Convert a database parcel row into a GeoJSON Feature
export function parcelToGeoJSONFeature(p: ParcelDatabaseRecord): ParcelGeoJSONFeature {
  const coords = p.geojson_geometry?.coordinates || [
    [
      [p.longitude - 0.00015, p.latitude - 0.00015],
      [p.longitude + 0.00015, p.latitude - 0.00015],
      [p.longitude + 0.00015, p.latitude + 0.00015],
      [p.longitude - 0.00015, p.latitude + 0.00015],
      [p.longitude - 0.00015, p.latitude - 0.00015]
    ]
  ];

  return {
    type: "Feature",
    id: p.khasra_no,
    properties: {
      id: p.id,
      parcelId: p.parcel_id || p.id,
      khasraNo: p.khasra_no,
      upin: p.upin,
      mouza: p.mouza,
      tehsil: p.tehsil,
      district: p.district,
      areaKanal: p.area_kanal,
      areaMarla: p.area_marla,
      areaSqft: p.area_sqft,
      landType: p.land_type,
      legalStatus: p.legal_status,
      encumbranceStatus: p.encumbrance_status,
      isDemoData: p.is_demo_data,
      datasetType: p.dataset_type,
      dataOriginTag: p.data_origin_tag,
      strokeColor: getStatusStrokeColor(p.legal_status, p.encumbrance_status)
    },
    geometry: {
      type: "Polygon",
      coordinates: coords
    }
  };
}

// Normalize Supabase database row ensuring compatibility across schemas
export function normalizeParcelRow(row: any): ParcelDatabaseRecord {
  if (!row) return SADERBAL_PILOT_PARCELS[0];

  const pilotMatch = SADERBAL_PILOT_PARCELS.find(
    (p) => String(p.khasra_no) === String(row.khasra_no)
  );

  let legalStatus: LegalStatusType = "NOT_VERIFIED";
  if (row.legal_status === "RECORDED_CASE" || row.legal_status === "ACTIVE_LITIGATION") {
    legalStatus = "RECORDED_CASE";
  } else if (row.legal_status === "VERIFIED_NO_RECORDED_CASE" || row.legal_status === "CLEAN") {
    legalStatus = "VERIFIED_NO_RECORDED_CASE";
  } else if (row.legal_status === "DATA_UNAVAILABLE") {
    legalStatus = "DATA_UNAVAILABLE";
  }

  let encumbranceStatus: EncumbranceStatusType = "NOT_VERIFIED";
  if (row.encumbrance_status === "MORTGAGED") {
    encumbranceStatus = "MORTGAGED";
  } else if (row.encumbrance_status === "UNENCUMBERED") {
    encumbranceStatus = "UNENCUMBERED";
  } else if (row.encumbrance_status === "DATA_UNAVAILABLE") {
    encumbranceStatus = "DATA_UNAVAILABLE";
  }

  // Explicit demo data check: If marked as demo or if dataset_type is DEMO_ONLY
  const isDemo = row.is_demo_data !== undefined 
    ? Boolean(row.is_demo_data) 
    : (row.dataset_type === "DEMO_ONLY" || pilotMatch?.is_demo_data || true);

  const datasetType: DatasetClassification = row.dataset_type || (isDemo ? "DEMO_ONLY" : "REAL_GOVERNMENT_RECORD");
  const originTag = row.data_origin_tag || (isDemo ? "SYNTHETIC_DEMO" : "OFFICIAL_GOVERNMENT_RECORD");
  const disclaimer = row.verification_disclaimer || (isDemo ? "ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA." : undefined);

  const ownership = row.ownership_details || pilotMatch?.ownership_details || {
    current_owner: {
      name: row.dossier_data?.ownership?.owners?.[0] || null,
      parentage: row.dossier_data?.ownership?.fatherOrHusbandName || null,
      share: "1/1"
    },
    previous_owners: [],
    khewat_no: row.dossier_data?.ownership?.khewatNo || null,
    khata_no: row.dossier_data?.ownership?.khataNo || null,
    soil_classification: "Abadi Deh",
    mutation_history: []
  };

  const valuation = row.valuation_details || pilotMatch?.valuation_details || {
    circle_rate: row.dossier_data?.valuation?.circleRatePerKanal || 5000000,
    unit: "per kanal",
    circle_rate_marla: 250000,
    government_value: row.dossier_data?.valuation?.calculatedGovtValue || 2500000,
    stamp_duty: row.dossier_data?.valuation?.stampDutyAmount || 125000,
    stamp_duty_rate: "5%",
    registration_fee: 30000,
    effective_from: "2025-26",
    source: "DEMO DATA"
  };

  const litigation = row.litigation_details || pilotMatch?.litigation_details || {
    status: legalStatus,
    cases: []
  };

  const mortgage = row.mortgage_details || pilotMatch?.mortgage_details || {
    status: encumbranceStatus,
    records: []
  };

  const documents = row.documents_details || pilotMatch?.documents_details || { documents: [] };
  const provenance = row.provenance_details || pilotMatch?.provenance_details || {
    source_name: isDemo ? "DEMO DATASET — NOT GOVERNMENT DATA" : "Revenue Dept, Govt. of Jammu & Kashmir",
    source_url: null,
    record_date: "2026-09-19",
    last_verified: "2026-09-19"
  };

  const geojson_geometry = row.geojson_geometry || pilotMatch?.geojson_geometry || null;

  return {
    id: row.id || pilotMatch?.id || "SB-DEMO-UNKNOWN",
    parcel_id: row.parcel_id || pilotMatch?.parcel_id || row.id || "SB-DEMO-UNKNOWN",
    khasra_no: String(row.khasra_no),
    upin: row.upin || null,
    state: row.state || "Jammu & Kashmir (UT)",
    district: row.district || "Srinagar",
    tehsil: row.tehsil || "North Srinagar",
    mouza: row.mouza || "Sarbaldal",
    area_kanal: Number(row.area_kanal) || pilotMatch?.area_kanal || 0,
    area_marla: Number(row.area_marla) || pilotMatch?.area_marla || 0,
    area_sqft: Number(row.area_sqft) || pilotMatch?.area_sqft || 0,
    land_type: row.land_type || pilotMatch?.land_type || "Residential",
    latitude: Number(row.latitude) || pilotMatch?.latitude || 34.126,
    longitude: Number(row.longitude) || pilotMatch?.longitude || 74.837,
    legal_status: legalStatus,
    encumbrance_status: encumbranceStatus,
    is_demo_data: isDemo,
    dataset_type: datasetType,
    data_origin_tag: originTag,
    verification_disclaimer: disclaimer,
    ownership_details: ownership,
    valuation_details: valuation,
    litigation_details: litigation,
    mortgage_details: mortgage,
    documents_details: documents,
    provenance_details: provenance,
    geojson_geometry
  };
}

/**
 * 1. Fetch all parcels for a specific mouza as a GeoJSON FeatureCollection
 */
export async function getParcelsByMouza(
  mouza: string = "Sarbaldal",
  district: string = "Srinagar"
): Promise<{ collection: ParcelGeoJSONCollection; source: "supabase" | "local_fallback" }> {
  try {
    if (isSupabaseConfigured) {
      const { data, error } = await supabase
        .from("parcels_geojson")
        .select("*")
        .ilike("mouza", `%${mouza.split(" ")[0]}%`);

      if (!error && data && data.length > 0) {
        const features: ParcelGeoJSONFeature[] = data.map((row: any) =>
          parcelToGeoJSONFeature(normalizeParcelRow(row))
        );
        return {
          collection: { type: "FeatureCollection", features },
          source: "supabase"
        };
      }

      const fallbackQuery = await supabase
        .from("parcels")
        .select("*")
        .ilike("mouza", `%${mouza.split(" ")[0]}%`);

      if (!fallbackQuery.error && fallbackQuery.data && fallbackQuery.data.length > 0) {
        const features: ParcelGeoJSONFeature[] = fallbackQuery.data.map((row: any) =>
          parcelToGeoJSONFeature(normalizeParcelRow(row))
        );
        return {
          collection: { type: "FeatureCollection", features },
          source: "supabase"
        };
      }
    }
  } catch (err) {
    console.warn("Supabase parcels query fallback:", err);
  }

  // Fallback to all 200 parcels
  const features = SADERBAL_PILOT_PARCELS.map(parcelToGeoJSONFeature);
  return {
    collection: { type: "FeatureCollection", features },
    source: "local_fallback"
  };
}

/**
 * 2. Fetch full parcel dossier by Khasra number and Mouza
 */
export async function getParcelDossier(
  khasraNo: string,
  mouza: string = "Sarbaldal"
): Promise<{ record: ParcelDatabaseRecord; source: "supabase" | "local_fallback" }> {
  try {
    if (isSupabaseConfigured) {
      const { data, error } = await supabase
        .from("parcels")
        .select("*")
        .eq("khasra_no", khasraNo)
        .ilike("mouza", `%${mouza.split(" ")[0]}%`)
        .maybeSingle();

      if (!error && data) {
        return {
          record: normalizeParcelRow(data),
          source: "supabase"
        };
      }
    }
  } catch (err) {
    console.warn("Supabase dossier query fallback:", err);
  }

  const match =
    SADERBAL_PILOT_PARCELS.find((p) => p.khasra_no === khasraNo) ||
    SADERBAL_PILOT_PARCELS[0];

  return {
    record: match,
    source: "local_fallback"
  };
}

/**
 * 3. Fetch parcel by UUID primary key
 */
export async function getParcelById(
  id: string
): Promise<{ record: ParcelDatabaseRecord | null; source: "supabase" | "local_fallback" }> {
  try {
    if (isSupabaseConfigured) {
      const { data, error } = await supabase
        .from("parcels")
        .select("*")
        .eq("id", id)
        .maybeSingle();

      if (!error && data) {
        return { record: normalizeParcelRow(data), source: "supabase" };
      }
    }
  } catch (err) {
    console.warn("Supabase getParcelById fallback:", err);
  }

  const match = SADERBAL_PILOT_PARCELS.find((p) => p.id === id) || null;
  return { record: match, source: "local_fallback" };
}

/**
 * 4. Fetch PostGIS polygon geometry for a parcel
 */
export async function getParcelGeometry(
  id: string
): Promise<number[][][] | null> {
  const { record } = await getParcelById(id);
  return record?.geojson_geometry?.coordinates || null;
}

/**
 * 5. Spatial GPS query: Find closest or containing parcel for (lat, lng)
 */
export async function getParcelByCoordinates(
  lat: number,
  lng: number,
  mouza: string = "Sarbaldal"
): Promise<{ record: ParcelDatabaseRecord; source: "supabase" | "local_fallback" }> {
  try {
    if (isSupabaseConfigured) {
      const { data, error } = await supabase
        .from("parcels")
        .select("*")
        .ilike("mouza", `%${mouza.split(" ")[0]}%`);

      if (!error && data && data.length > 0) {
        let closest = data[0];
        let minDis = Infinity;
        for (const p of data) {
          const dLat = p.latitude - lat;
          const dLng = p.longitude - lng;
          const d = dLat * dLat + dLng * dLng;
          if (d < minDis) {
            minDis = d;
            closest = p;
          }
        }
        return { record: normalizeParcelRow(closest), source: "supabase" };
      }
    }
  } catch (err) {
    console.warn("Supabase coordinate lookup fallback:", err);
  }

  let closest = SADERBAL_PILOT_PARCELS[0];
  let minDis = Infinity;
  for (const p of SADERBAL_PILOT_PARCELS) {
    const dLat = p.latitude - lat;
    const dLng = p.longitude - lng;
    const d = dLat * dLat + dLng * dLng;
    if (d < minDis) {
      minDis = d;
      closest = p;
    }
  }
  return { record: closest, source: "local_fallback" };
}
