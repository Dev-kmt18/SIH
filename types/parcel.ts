export type LegalStatusType =
  | "VERIFIED_NO_RECORDED_CASE"
  | "RECORDED_CASE"
  | "DATA_UNAVAILABLE"
  | "NOT_VERIFIED";

export type EncumbranceStatusType =
  | "UNENCUMBERED"
  | "MORTGAGED"
  | "DATA_UNAVAILABLE"
  | "NOT_VERIFIED";

export interface OwnershipDetails {
  current_owner: {
    name: string | null;
    parentage?: string | null;
    share?: string | null;
  };
  previous_owners: Array<{
    name: string | null;
    period?: string | null;
    type?: string | null;
  }>;
  khewat_no: string | null;
  khata_no: string | null;
  soil_classification?: string | null;
  mutation_history: Array<{
    mutation_no: string;
    mutation_date: string;
    type: string;
    attesting_officer?: string;
    status: string;
  }>;
}

export interface ValuationDetails {
  circle_rate: number | null;
  unit: string;
  circle_rate_marla?: number | null;
  government_value: number | null;
  market_estimate_min?: number | null;
  market_estimate_max?: number | null;
  stamp_duty: number | null;
  stamp_duty_rate?: string | null;
  registration_fee?: number | null;
  effective_from: string | null;
  source: string | null;
}

export interface LitigationCaseItem {
  case_number: string | null;
  court: string | null;
  case_type?: string | null;
  status: string | null;
  filing_date?: string | null;
  disposal_date?: string | null;
  interim_order?: string | null;
  source?: string | null;
}

export interface LitigationDetails {
  status: LegalStatusType;
  cases: LitigationCaseItem[];
  verified_date?: string | null;
  court_registry?: string | null;
}

export interface MortgageRecordItem {
  bank_name: string | null;
  branch?: string | null;
  loan_amount: number | null;
  sanction_date?: string | null;
  cersai_security_id?: string | null;
  type_of_charge?: string | null;
  charge_status?: string | null;
}

export interface MortgageDetails {
  status: EncumbranceStatusType;
  records: MortgageRecordItem[];
}

export interface DocumentItem {
  type: string | null;
  document_number: string | null;
  date: string | null;
  source: string | null;
  source_url: string | null;
}

export interface DocumentsDetails {
  documents: DocumentItem[];
}

export interface ProvenanceDetails {
  source_name: string | null;
  source_url: string | null;
  record_date: string | null;
  last_verified: string | null;
}

export type DatasetClassification = "DEMO_ONLY" | "REAL_GOVERNMENT_RECORD";

export interface ParcelDatabaseRecord {
  id: string;
  parcel_id?: string;
  khasra_no: string;
  upin: string | null;
  state: string;
  district: string;
  tehsil: string;
  mouza: string;
  area_kanal: number;
  area_marla: number;
  area_sqft: number;
  land_type: string;
  latitude: number;
  longitude: number;
  legal_status: LegalStatusType;
  encumbrance_status: EncumbranceStatusType;
  ownership_details: OwnershipDetails;
  valuation_details: ValuationDetails;
  litigation_details: LitigationDetails;
  mortgage_details: MortgageDetails;
  documents_details: DocumentsDetails;
  provenance_details: ProvenanceDetails;
  is_demo_data: boolean;
  dataset_type?: DatasetClassification;
  data_origin_tag?: string;
  verification_disclaimer?: string;
  geojson_geometry?: {
    type: "Polygon";
    coordinates: number[][][]; // [lng, lat]
  } | null;
  created_at?: string;
  updated_at?: string;
}

export interface ParcelGeoJSONFeature {
  type: "Feature";
  id: string; // Khasra or UUID
  properties: {
    id: string;
    parcelId?: string;
    khasraNo: string;
    upin: string | null;
    mouza: string;
    tehsil: string;
    district: string;
    areaKanal: number;
    areaMarla: number;
    areaSqft: number;
    landType: string;
    legalStatus: LegalStatusType;
    encumbranceStatus: EncumbranceStatusType;
    isDemoData: boolean;
    datasetType?: DatasetClassification;
    dataOriginTag?: string;
    strokeColor: string;
  };
  geometry: {
    type: "Polygon";
    coordinates: number[][][]; // [lng, lat]
  };
}

export interface ParcelGeoJSONCollection {
  type: "FeatureCollection";
  features: ParcelGeoJSONFeature[];
}

