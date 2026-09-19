-- ==============================================================================
-- BHOOMI-SUTRA: Digital Public Infrastructure for Land Governance
-- Department of Revenue, Govt. of Jammu & Kashmir
-- Relational + PostGIS Spatial Schema for Saderbal Pilot, Srinagar
-- ==============================================================================

-- 1. ENABLE POSTGIS EXTENSION
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 2. CREATE PARCELS TABLE (RELATIONAL + SPATIAL POSTGIS)
CREATE TABLE IF NOT EXISTS public.parcels (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    parcel_id TEXT NULL,                      -- e.g. SB-DEMO-0329
    khasra_no TEXT NOT NULL,
    upin TEXT NULL,                           -- Nullable: ULPIN may not always be verified
    state TEXT NOT NULL DEFAULT 'Jammu & Kashmir (UT)',
    district TEXT NOT NULL DEFAULT 'Srinagar',
    tehsil TEXT NOT NULL DEFAULT 'North Srinagar',
    mouza TEXT NOT NULL DEFAULT 'Saderbal (Hazratbal)',
    area_kanal NUMERIC(6, 2) DEFAULT 0,
    area_marla NUMERIC(6, 2) DEFAULT 0,
    area_sqft NUMERIC(12, 2) DEFAULT 0,
    land_type TEXT NOT NULL DEFAULT 'Residential Compound',
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    geometry GEOMETRY(POLYGON, 4326) NOT NULL,
    geojson_geometry JSONB NULL,              -- Cached GeoJSON polygon for zero-latency client queries
    
    -- Neutral status designations (no unverified 'CLEAN TITLE')
    -- Allowed: 'VERIFIED_NO_RECORDED_CASE', 'RECORDED_CASE', 'DATA_UNAVAILABLE', 'NOT_VERIFIED'
    legal_status TEXT NOT NULL DEFAULT 'NOT_VERIFIED',
    
    -- Allowed: 'UNENCUMBERED', 'MORTGAGED', 'DATA_UNAVAILABLE', 'NOT_VERIFIED'
    encumbrance_status TEXT NOT NULL DEFAULT 'NOT_VERIFIED',
    
    -- Structured JSONB modules
    ownership_details JSONB NOT NULL DEFAULT '{
        "current_owner": { "name": null, "share": null },
        "previous_owners": [],
        "khewat_no": null,
        "khata_no": null,
        "mutation_history": []
    }'::jsonb,
    
    valuation_details JSONB NOT NULL DEFAULT '{
        "circle_rate": null,
        "unit": "kanal",
        "government_value": null,
        "stamp_duty": null,
        "effective_from": null,
        "source": null
    }'::jsonb,
    
    litigation_details JSONB NOT NULL DEFAULT '{
        "status": "NOT_VERIFIED",
        "cases": []
    }'::jsonb,
    
    mortgage_details JSONB NOT NULL DEFAULT '{
        "status": "NOT_VERIFIED",
        "records": []
    }'::jsonb,
    
    documents_details JSONB NOT NULL DEFAULT '{
        "documents": []
    }'::jsonb,
    
    provenance_details JSONB NOT NULL DEFAULT '{
        "source_name": null,
        "source_url": null,
        "record_date": null,
        "last_verified": null
    }'::jsonb,
    
    -- Explicit classification to distinguish demo/fake data from future real government records
    is_demo_data BOOLEAN NOT NULL DEFAULT true,
    dataset_type TEXT NOT NULL DEFAULT 'DEMO_ONLY',               -- 'DEMO_ONLY' vs 'REAL_GOVERNMENT_RECORD'
    data_origin_tag TEXT NOT NULL DEFAULT 'SYNTHETIC_DEMO',       -- 'SYNTHETIC_DEMO' vs 'OFFICIAL_DILRMP_JAMABANDI'
    verification_disclaimer TEXT DEFAULT 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.',
    
    created_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT timezone('utc'::text, now())
);

-- Safe migrations for existing tables:
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS parcel_id TEXT;
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS is_demo_data BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS dataset_type TEXT NOT NULL DEFAULT 'DEMO_ONLY';
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS data_origin_tag TEXT NOT NULL DEFAULT 'SYNTHETIC_DEMO';
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS verification_disclaimer TEXT DEFAULT 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.';

-- 3. AUTO-SYNC GEOJSON GEOMETRY TRIGGER
CREATE OR REPLACE FUNCTION public.sync_parcel_geojson()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.geometry IS NOT NULL THEN
        NEW.geojson_geometry := ST_AsGeoJSON(NEW.geometry)::jsonb;
    ELSIF NEW.geojson_geometry IS NOT NULL THEN
        NEW.geometry := ST_SetSRID(ST_GeomFromGeoJSON(NEW.geojson_geometry::text), 4326);
    END IF;
    NEW.updated_at := timezone('utc'::text, now());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_sync_parcel_geojson ON public.parcels;
CREATE TRIGGER trg_sync_parcel_geojson
BEFORE INSERT OR UPDATE ON public.parcels
FOR EACH ROW EXECUTE FUNCTION public.sync_parcel_geojson();

-- 4. PERFORMANCE & SPATIAL INDEXES
-- Composite unique index for District + Tehsil + Mouza + Khasra
CREATE UNIQUE INDEX IF NOT EXISTS idx_parcels_admin_khasra 
ON public.parcels (district, tehsil, mouza, khasra_no);

-- PostGIS GiST Spatial Index on Polygon Geometry
CREATE INDEX IF NOT EXISTS idx_parcels_geometry 
ON public.parcels USING GIST (geometry);

-- Filter & Hierarchy indexes
CREATE INDEX IF NOT EXISTS idx_parcels_district ON public.parcels(district);
CREATE INDEX IF NOT EXISTS idx_parcels_tehsil ON public.parcels(tehsil);
CREATE INDEX IF NOT EXISTS idx_parcels_mouza ON public.parcels(mouza);
CREATE INDEX IF NOT EXISTS idx_parcels_khasra ON public.parcels(khasra_no);
CREATE INDEX IF NOT EXISTS idx_parcels_upin ON public.parcels(upin) WHERE upin IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_parcels_coords ON public.parcels(latitude, longitude);
CREATE INDEX IF NOT EXISTS idx_parcels_demo_flag ON public.parcels(is_demo_data, dataset_type);

-- 5. ROW LEVEL SECURITY (RLS)
ALTER TABLE public.parcels ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public users can view public land parcels" ON public.parcels;
CREATE POLICY "Public users can view public land parcels"
ON public.parcels FOR SELECT
TO anon, authenticated
USING (true);

DROP POLICY IF EXISTS "Allow anon insert for demo seeding" ON public.parcels;
CREATE POLICY "Allow anon insert for demo seeding" 
ON public.parcels FOR INSERT 
TO anon, authenticated 
WITH CHECK (true);

DROP POLICY IF EXISTS "Allow anon update for demo seeding" ON public.parcels;
CREATE POLICY "Allow anon update for demo seeding" 
ON public.parcels FOR UPDATE 
TO anon, authenticated 
USING (true);

-- 6. GEOJSON CONVENIENCE VIEW
CREATE OR REPLACE VIEW public.parcels_geojson AS
SELECT 
    id,
    parcel_id,
    khasra_no,
    upin,
    state,
    district,
    tehsil,
    mouza,
    area_kanal,
    area_marla,
    area_sqft,
    land_type,
    latitude,
    longitude,
    legal_status,
    encumbrance_status,
    ownership_details,
    valuation_details,
    litigation_details,
    mortgage_details,
    documents_details,
    provenance_details,
    is_demo_data,
    dataset_type,
    data_origin_tag,
    verification_disclaimer,
    COALESCE(geojson_geometry, ST_AsGeoJSON(geometry)::jsonb) AS geojson_geometry,
    created_at,
    updated_at
FROM public.parcels;

-- 7. SEED DATA: SARBALDAL / SADERBAL (HAZRATBAL), SRINAGAR
-- PostGIS WKT Polygons with [longitude latitude] vertices (house-sized cadastral parcels)
INSERT INTO public.parcels (
    khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    documents_details, provenance_details, is_demo_data
) VALUES
(
    '329',
    'JK-01-02-004-0329-R',
    'Jammu & Kashmir (UT)',
    'Srinagar',
    'North Srinagar',
    'Saderbal (Hazratbal)',
    0, 14.5, 3946.8,
    'Residential Compound (Makaan ma Ahata)',
    34.12532, 74.83618,
    ST_GeomFromText('POLYGON((74.83595 34.12545, 74.83638 34.12543, 74.83641 34.12519, 74.83598 34.12521, 74.83595 34.12545))', 4326),
    'VERIFIED_NO_RECORDED_CASE',
    'UNENCUMBERED',
    '{
        "current_owner": {
            "name": "Ghulam Hassan Bhat",
            "parentage": "Late Kh. Abdul Gani Bhat",
            "share": "1/1"
        },
        "previous_owners": [
            { "name": "Kh. Abdul Gani Bhat", "period": "1972-2018", "type": "Ancestral Inherited" }
        ],
        "khewat_no": "2",
        "khata_no": "2",
        "soil_classification": "Mahi / Chahi (Grade I)",
        "mutation_history": [
            {
                "mutation_no": "412/M",
                "mutation_date": "2018-08-14",
                "type": "Wirasat (Succession)",
                "attesting_officer": "Tehsildar North Srinagar",
                "status": "APPROVED"
            }
        ]
    }'::jsonb,
    '{
        "circle_rate": 8500000,
        "unit": "kanal",
        "circle_rate_marla": 425000,
        "government_value": 6162500,
        "market_estimate_min": 8500000,
        "market_estimate_max": 10500000,
        "stamp_duty": 308125,
        "stamp_duty_rate": "5% (Male)",
        "registration_fee": 73950,
        "effective_from": "2024-04-01",
        "source": "District Collector Srinagar Gazette Order No. DC/Sgr/Rev/2024-25/892"
    }'::jsonb,
    '{
        "status": "VERIFIED_NO_RECORDED_CASE",
        "verified_date": "2026-09-19",
        "court_registry": "eCourts Services CIS 3.2 & J&K High Court Registry",
        "cases": []
    }'::jsonb,
    '{
        "status": "UNENCUMBERED",
        "records": []
    }'::jsonb,
    '{
        "documents": [
            {
                "type": "Record of Rights (Jamabandi)",
                "document_number": "JAM/2024/SDR/0329",
                "date": "2024-01-15",
                "source": "AZAN Land Records Portal",
                "source_url": "https://jkzameensudhar.jk.gov.in"
            },
            {
                "type": "Cadastral Mussavi Field Map Sheet",
                "document_number": "SDR-CAD-SH-04/18",
                "date": "2023-11-20",
                "source": "Survey of India / DILRMP",
                "source_url": "https://dilrmp.gov.in"
            }
        ]
    }'::jsonb,
    '{
        "source_name": "Revenue Dept, Govt. of Jammu & Kashmir (DILRMP)",
        "source_url": "https://jkzameensudhar.jk.gov.in",
        "record_date": "2026-09-19",
        "last_verified": "2026-09-19T10:00:00Z"
    }'::jsonb,
    true
),
(
    '330',
    'JK-01-02-004-0330-R',
    'Jammu & Kashmir (UT)',
    'Srinagar',
    'North Srinagar',
    'Saderbal (Hazratbal)',
    0, 12.0, 3267.0,
    'Residential House (Single Family)',
    34.12543, 74.83665,
    ST_GeomFromText('POLYGON((74.83641 34.12543, 74.83688 34.12541, 74.83691 34.12521, 74.83643 34.12523, 74.83641 34.12543))', 4326),
    'NOT_VERIFIED',
    'NOT_VERIFIED',
    '{
        "current_owner": {
            "name": "Bashir Ahmad Rather",
            "parentage": "Mohammad Abdullah Rather",
            "share": "1/1"
        },
        "previous_owners": [],
        "khewat_no": "3",
        "khata_no": "4",
        "soil_classification": "Abadi Deh (Grade I)",
        "mutation_history": []
    }'::jsonb,
    '{
        "circle_rate": 8500000,
        "unit": "kanal",
        "circle_rate_marla": 425000,
        "government_value": 5100000,
        "stamp_duty": 255000,
        "registration_fee": 61200,
        "effective_from": "2024-04-01",
        "source": "District Collector Gazette"
    }'::jsonb,
    '{
        "status": "NOT_VERIFIED",
        "cases": []
    }'::jsonb,
    '{
        "status": "NOT_VERIFIED",
        "records": []
    }'::jsonb,
    '{
        "documents": [
            {
                "type": "Cadastral Geo-Boundary",
                "document_number": "SDR-330-C",
                "date": "2024-02-01",
                "source": "Bhu-Naksha J&K",
                "source_url": "https://jkrevenue.nic.in"
            }
        ]
    }'::jsonb,
    '{
        "source_name": "Tehsil Office North Srinagar Pilot Ledger",
        "source_url": "https://jkzameensudhar.jk.gov.in",
        "record_date": "2026-09-19",
        "last_verified": "2026-09-19T10:00:00Z"
    }'::jsonb,
    true
),
(
    '338',
    'JK-01-02-004-0338-L',
    'Jammu & Kashmir (UT)',
    'Srinagar',
    'North Srinagar',
    'Saderbal (Hazratbal)',
    0, 16.0, 4356.0,
    'Gair-Mumkin Kothi (Residential Villa)',
    34.12518, 74.83685,
    ST_GeomFromText('POLYGON((74.83662 34.12519, 74.83708 34.12517, 74.83711 34.12496, 74.83664 34.12498, 74.83662 34.12519))', 4326),
    'RECORDED_CASE',
    'UNENCUMBERED',
    '{
        "current_owner": {
            "name": "Mohammad Shafi Mir & Bashir Ahmad Mir",
            "parentage": "Sons of Late Habibullah Mir",
            "share": "1/2 each"
        },
        "previous_owners": [
            { "name": "Habibullah Mir", "period": "1965-2012", "type": "Original Allottee" }
        ],
        "khewat_no": "7",
        "khata_no": "11",
        "soil_classification": "Abadi Deh / Built-up",
        "mutation_history": [
            {
                "mutation_no": "289/Intiqal",
                "mutation_date": "2012-11-03",
                "type": "Succession",
                "attesting_officer": "Naib Tehsildar Hazratbal",
                "status": "CHALLENGED_IN_COURT"
            }
        ]
    }'::jsonb,
    '{
        "circle_rate": 8500000,
        "unit": "kanal",
        "circle_rate_marla": 425000,
        "government_value": 6800000,
        "stamp_duty": 340000,
        "registration_fee": 81600,
        "effective_from": "2024-04-01",
        "source": "District Collector Srinagar Gazette"
    }'::jsonb,
    '{
        "status": "RECORDED_CASE",
        "cases": [
            {
                "case_number": "WP(C) No. 1842/2023",
                "court": "Honble High Court of J&K and Ladakh, Srinagar Wing",
                "case_type": "Civil Writ Petition (Injunction & Title Challenge)",
                "status": "PENDING_INTERIM_STAY",
                "filing_date": "2023-07-11",
                "disposal_date": null,
                "interim_order": "Status quo directed on alienation, construction, and mutation entry.",
                "source": "eCourts Case Information System (CIS 3.2)"
            }
        ]
    }'::jsonb,
    '{
        "status": "UNENCUMBERED",
        "records": []
    }'::jsonb,
    '{
        "documents": [
            {
                "type": "Court Interim Injunction Order",
                "document_number": "HC/SGR/WP-1842-ORD",
                "date": "2023-08-04",
                "source": "High Court of J&K and Ladakh",
                "source_url": "https://services.ecourts.gov.in"
            }
        ]
    }'::jsonb,
    '{
        "source_name": "eCourts National Judicial Data Grid (NJDG) & Revenue Registry",
        "source_url": "https://districts.ecourts.gov.in/srinagar",
        "record_date": "2026-09-19",
        "last_verified": "2026-09-19T10:00:00Z"
    }'::jsonb,
    true
),
(
    '350',
    'JK-01-02-004-0350-M',
    'Jammu & Kashmir (UT)',
    'Srinagar',
    'North Srinagar',
    'Saderbal (Hazratbal)',
    0, 18.2, 4954.95,
    'Kothi ma Ahata (House & Yard)',
    34.12502, 74.83732,
    ST_GeomFromText('POLYGON((74.83711 34.12517, 74.83756 34.12515, 74.83759 34.12489, 74.83714 34.12491, 74.83711 34.12517))', 4326),
    'VERIFIED_NO_RECORDED_CASE',
    'MORTGAGED',
    '{
        "current_owner": {
            "name": "Tariq Ahmad Dar",
            "parentage": "Mohammad Sultan Dar",
            "share": "1/1"
        },
        "previous_owners": [
            { "name": "Mohammad Sultan Dar", "period": "1980-2020", "type": "Inheritance" }
        ],
        "khewat_no": "14",
        "khata_no": "23",
        "soil_classification": "Abadi Deh (Grade I)",
        "mutation_history": [
            {
                "mutation_no": "512/Wirasat",
                "mutation_date": "2020-02-19",
                "type": "Succession",
                "attesting_officer": "Tehsildar North Srinagar",
                "status": "APPROVED"
            }
        ]
    }'::jsonb,
    '{
        "circle_rate": 8500000,
        "unit": "kanal",
        "circle_rate_marla": 425000,
        "government_value": 7735000,
        "stamp_duty": 386750,
        "registration_fee": 92820,
        "effective_from": "2024-04-01",
        "source": "District Collector Gazette"
    }'::jsonb,
    '{
        "status": "VERIFIED_NO_RECORDED_CASE",
        "cases": []
    }'::jsonb,
    '{
        "status": "MORTGAGED",
        "records": [
            {
                "bank_name": "Jammu & Kashmir Bank Ltd.",
                "branch": "Hazratbal Branch, Srinagar",
                "loan_amount": 4500000,
                "sanction_date": "2022-05-11",
                "cersai_security_id": "CERSAI-2022-JK-882194",
                "type_of_charge": "Equitable Mortgage by Deposit of Title Deeds",
                "charge_status": "ACTIVE_SUBSISTING"
            }
        ]
    }'::jsonb,
    '{
        "documents": [
            {
                "type": "CERSAI Mortgage Certificate",
                "document_number": "CERSAI/JK/2022/882194",
                "date": "2022-05-12",
                "source": "Central Registry of Securitisation (CERSAI)",
                "source_url": "https://cersai.org.in"
            }
        ]
    }'::jsonb,
    '{
        "source_name": "CERSAI Mortgage Registry & J&K Bank Registry",
        "source_url": "https://cersai.org.in",
        "record_date": "2026-09-19",
        "last_verified": "2026-09-19T10:00:00Z"
    }'::jsonb,
    true
),
(
    '352',
    NULL,                                     -- Nullable UPIN demo
    'Jammu & Kashmir (UT)',
    'Srinagar',
    'North Srinagar',
    'Saderbal (Hazratbal)',
    0, 15.0, 4083.75,
    'Bagh-i-Atfal (Dal Lake Waterfront Green Compound)',
    34.12562, 74.83775,
    ST_GeomFromText('POLYGON((74.83755 34.12574, 74.83798 34.12572, 74.83801 34.12548, 74.83758 34.12550, 74.83755 34.12574))', 4326),
    'NOT_VERIFIED',
    'NOT_VERIFIED',
    '{
        "current_owner": {
            "name": "State Govt. Forest & Ecology Dept / Custodian Land",
            "share": "1/1"
        },
        "previous_owners": [],
        "khewat_no": "1",
        "khata_no": "1",
        "soil_classification": "Gair-Mumkin Nallah / Eco Buffer",
        "mutation_history": []
    }'::jsonb,
    '{
        "circle_rate": 8500000,
        "unit": "kanal",
        "circle_rate_marla": 425000,
        "government_value": 6375000,
        "stamp_duty": 318750,
        "registration_fee": 76500,
        "effective_from": "2024-04-01",
        "source": "District Collector Gazette"
    }'::jsonb,
    '{
        "status": "NOT_VERIFIED",
        "cases": []
    }'::jsonb,
    '{
        "status": "NOT_VERIFIED",
        "records": []
    }'::jsonb,
    '{
        "documents": [
            {
                "type": "LCMA Eco-Sensitive Zone Notification",
                "document_number": "JK-LCMA-DAL-2023/104",
                "date": "2023-03-22",
                "source": "J&K Lake Conservation & Management Authority",
                "source_url": "https://jklcma.jk.gov.in"
            }
        ]
    }'::jsonb,
    '{
        "source_name": "J&K Lake Conservation & Management Authority (LCMA) & SDA",
        "source_url": "https://jklcma.jk.gov.in",
        "record_date": "2026-09-19",
        "last_verified": "2026-09-19T10:00:00Z"
    }'::jsonb,
    true
)
ON CONFLICT (district, tehsil, mouza, khasra_no) DO UPDATE SET
    upin = EXCLUDED.upin,
    latitude = EXCLUDED.latitude,
    longitude = EXCLUDED.longitude,
    geometry = EXCLUDED.geometry,
    geojson_geometry = ST_AsGeoJSON(EXCLUDED.geometry)::jsonb,
    legal_status = EXCLUDED.legal_status,
    encumbrance_status = EXCLUDED.encumbrance_status,
    ownership_details = EXCLUDED.ownership_details,
    valuation_details = EXCLUDED.valuation_details,
    litigation_details = EXCLUDED.litigation_details,
    mortgage_details = EXCLUDED.mortgage_details,
    documents_details = EXCLUDED.documents_details,
    provenance_details = EXCLUDED.provenance_details,
    is_demo_data = EXCLUDED.is_demo_data,
    updated_at = timezone('utc'::text, now());
