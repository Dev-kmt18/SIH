const fs = require('fs');

// Load OSM building footprints if available
let osmData = null;
try {
  if (fs.existsSync('/tmp/saderbal_buildings_200.json')) {
    osmData = JSON.parse(fs.readFileSync('/tmp/saderbal_buildings_200.json', 'utf8'));
  }
} catch (e) {
  console.log('Error reading OSM data:', e);
}

const osmBuildings = (osmData && osmData.elements) ? osmData.elements.filter(e => e.geometry && e.geometry.length >= 4) : [];
console.log(`Loaded ${osmBuildings.length} real OSM building geometries for Saderbal.`);

// Helper: geodesic polygon area in square meters
function computePolygonAreaSqM(coords) {
  // coords is array of [lon, lat]
  let area = 0;
  const R = 6378137;
  const rad = Math.PI / 180;
  for (let i = 0; i < coords.length - 1; i++) {
    const [lon1, lat1] = coords[i];
    const [lon2, lat2] = coords[i + 1];
    const x1 = lon1 * rad * R * Math.cos(lat1 * rad);
    const y1 = lat1 * rad * R;
    const x2 = lon2 * rad * R * Math.cos(lat2 * rad);
    const y2 = lat2 * rad * R;
    area += (x1 * y2 - x2 * y1);
  }
  return Math.abs(area / 2);
}

// Helper: centroid of polygon
function computeCentroid(coords) {
  let sumLon = 0;
  let sumLat = 0;
  const n = coords.length - 1;
  for (let i = 0; i < n; i++) {
    sumLon += coords[i][0];
    sumLat += coords[i][1];
  }
  return {
    longitude: Number((sumLon / n).toFixed(6)),
    latitude: Number((sumLat / n).toFixed(6))
  };
}

// Generate 200 parcels
const TOTAL_PARCELS = 200;
const START_KHASRA = 329;
const parcels = [];

// Base data template generators
const LAND_TYPES = ["Residential", "Residential", "Residential", "Commercial", "Mixed Use", "Agricultural"];
const LEGAL_STATUSES = ["VERIFIED_NO_RECORDED_CASE", "DATA_UNAVAILABLE", "NOT_VERIFIED", "RECORDED_CASE"];
const ENCUMBRANCE_STATUSES = ["UNENCUMBERED", "UNKNOWN", "MORTGAGED"];

// Saderbal mohalla centers for any additional properties needed
const MOHALLA_ANCHORS = [
  { lat: 34.1255, lon: 74.8368, desc: "Saderbal Central Mohalla" },
  { lat: 34.1268, lon: 74.8382, desc: "Saderbal North Canal Road" },
  { lat: 34.1245, lon: 74.8358, desc: "Saderbal West Lane" },
  { lat: 34.1278, lon: 74.8405, desc: "Hazratbal Link Mohalla" },
  { lat: 34.1238, lon: 74.8375, desc: "Saderbal Lake Shoreline" },
  { lat: 34.1285, lon: 74.8392, desc: "Koker Bagh Saderbal" }
];

// Helper to create an irregular compound polygon from a building footprint
function buildCompoundFromOsm(element, scale = 1.35) {
  const geom = element.geometry;
  let cLon = 0, cLat = 0;
  for (const pt of geom) {
    cLon += pt.lon;
    cLat += pt.lat;
  }
  cLon /= geom.length;
  cLat /= geom.length;

  // Scale points outwards to cover the property compound/wall
  const coords = geom.map(pt => {
    const lon = cLon + (pt.lon - cLon) * scale;
    const lat = cLat + (pt.lat - cLat) * scale;
    return [Number(lon.toFixed(6)), Number(lat.toFixed(6))];
  });

  // Ensure closed polygon
  if (coords[0][0] !== coords[coords.length - 1][0] || coords[0][1] !== coords[coords.length - 1][1]) {
    coords.push([...coords[0]]);
  }
  return coords;
}

// Helper to generate a realistic irregular residential compound
function generateIrregularCompound(anchorLat, anchorLon, widthM, lengthM, angleDeg, shapeType) {
  const R = 6378137;
  const rad = Math.PI / 180;
  const cosLat = Math.cos(anchorLat * rad);
  const mToLon = 1 / (R * rad * cosLat);
  const mToLat = 1 / (R * rad);
  const rot = angleDeg * rad;

  function localToCoord(x, y) {
    const rx = x * Math.cos(rot) - y * Math.sin(rot);
    const ry = x * Math.sin(rot) + y * Math.cos(rot);
    return [
      Number((anchorLon + rx * mToLon).toFixed(6)),
      Number((anchorLat + ry * mToLat).toFixed(6))
    ];
  }

  const w = widthM / 2;
  const l = lengthM / 2;
  let pts = [];

  if (shapeType === "L_SHAPE") {
    // L-shaped residential compound with courtyard
    pts = [
      [-w, -l],
      [w, -l],
      [w, 0],
      [w * 0.2, 0],
      [w * 0.2, l],
      [-w, l]
    ];
  } else if (shapeType === "NOTCHED") {
    // Front lawn notch with boundary wall
    pts = [
      [-w, -l],
      [w * 0.4, -l],
      [w * 0.4, -l * 0.3],
      [w, -l * 0.3],
      [w, l],
      [-w, l]
    ];
  } else if (shapeType === "TRAPEZOID") {
    // Tapered road frontage plot
    pts = [
      [-w * 0.85, -l],
      [w * 0.85, -l],
      [w * 1.15, l],
      [-w * 1.15, l]
    ];
  } else if (shapeType === "PENTAGON") {
    // Corner plot with chamfered street angle
    pts = [
      [-w, -l],
      [w * 0.6, -l],
      [w, -l * 0.5],
      [w, l],
      [-w, l]
    ];
  } else {
    // Irregular 6-sided boundary wall compound
    pts = [
      [-w, -l * 0.8],
      [-w * 0.5, -l],
      [w, -l * 0.9],
      [w * 0.9, l * 0.85],
      [0, l],
      [-w * 0.9, l * 0.8]
    ];
  }

  const coords = pts.map(p => localToCoord(p[0], p[1]));
  coords.push([...coords[0]]); // close ring
  return coords;
}

for (let i = 0; i < TOTAL_PARCELS; i++) {
  const khasraNum = START_KHASRA + i;
  const parcelId = `SB-DEMO-${String(khasraNum).padStart(4, '0')}`;
  const upin = `DEMO-JK-01-02-${String(khasraNum).padStart(4, '0')}-X`;

  let coords;
  if (i < osmBuildings.length) {
    // Use real OSM building compound
    coords = buildCompoundFromOsm(osmBuildings[i], 1.30);
  } else {
    // Generate realistic irregular compound along Saderbal mohallas
    const anchor = MOHALLA_ANCHORS[i % MOHALLA_ANCHORS.length];
    const offsetI = i - osmBuildings.length;
    const dLat = ((offsetI % 7) - 3) * 0.00032;
    const dLon = (Math.floor(offsetI / 7) - 3) * 0.00035;
    const lat = anchor.lat + dLat;
    const lon = anchor.lon + dLon;
    const width = 18 + (i % 6) * 3;
    const length = 22 + (i % 5) * 4;
    const angle = (i * 27) % 360;
    const shapes = ["L_SHAPE", "NOTCHED", "TRAPEZOID", "PENTAGON", "IRREGULAR"];
    coords = generateIrregularCompound(lat, lon, width, length, angle, shapes[i % shapes.length]);
  }

  const centroid = computeCentroid(coords);
  const sqMeters = computePolygonAreaSqM(coords);
  const sqft = Math.round(sqMeters * 10.7639 * 10) / 10;
  const marlaRaw = sqft / 272.25;
  const kanal = Math.floor(marlaRaw / 20);
  const marla = Math.round((marlaRaw % 20) * 10) / 10;

  const landType = LAND_TYPES[i % LAND_TYPES.length];
  const legalStatus = LEGAL_STATUSES[i % LEGAL_STATUSES.length];
  const encumbranceStatus = ENCUMBRANCE_STATUSES[i % ENCUMBRANCE_STATUSES.length];
  const ownerNum = String(i + 1).padStart(3, '0');

  const circleRatePerKanal = 5000000 + (i % 15) * 250000;
  const govtValue = Math.round((marlaRaw / 20) * circleRatePerKanal);

  const parcelObj = {
    parcel_id: parcelId,
    khasra_no: String(khasraNum),
    upin: upin,
    state: "Jammu & Kashmir (UT)",
    district: "Srinagar",
    tehsil: "North Srinagar",
    mouza: "Sarbaldal",
    area: {
      kanal: kanal,
      marla: marla,
      sqft: sqft
    },
    land_type: landType,
    location: {
      latitude: centroid.latitude,
      longitude: centroid.longitude
    },
    geometry: {
      type: "Polygon",
      coordinates: [coords] // GeoJSON format: [[ [lon, lat], ... ]]
    },
    legal_status: legalStatus,
    encumbrance_status: encumbranceStatus,
    // Database classification markers
    is_demo_data: true,
    dataset_type: "DEMO_ONLY",
    data_origin_tag: "SYNTHETIC_DEMO",
    verification_disclaimer: "ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.",
    ownership_details: {
      current_owner: {
        name: `Demo Owner ${ownerNum}`,
        share: "1/1"
      },
      previous_owners: [
        {
          name: `Former Demo Owner ${ownerNum}`,
          from_date: "2014-04-01",
          to_date: "2021-08-15"
        }
      ],
      khewat_no: `DEMO-KH-${1000 + i}`,
      khata_no: `DEMO-KT-${2000 + i}`,
      mutation_history: [
        {
          mutation_no: `DEMO-MUT-${3000 + i}`,
          date: "2021-08-15",
          type: "Sale/Transfer (DEMO)"
        }
      ]
    },
    valuation_details: {
      circle_rate: circleRatePerKanal,
      unit: "per kanal",
      government_value: govtValue,
      stamp_duty: Math.round(govtValue * 0.05),
      effective_year: "2025-26"
    },
    litigation_details: {
      status: legalStatus,
      cases: legalStatus === "RECORDED_CASE" ? [
        {
          case_number: `DEMO/CASE/${2020 + (i % 5)}/${1000 + i}`,
          court: "Demo Court (NOT REAL)",
          case_type: (i % 2 === 0) ? "Civil" : "Property Dispute",
          status: "Pending",
          filing_date: `202${(i % 5)}-0${(i % 9) + 1}-15`,
          disposal_date: null,
          source: "DEMO DATA"
        }
      ] : []
    },
    mortgage_details: {
      status: encumbranceStatus,
      records: encumbranceStatus === "MORTGAGED" ? [
        {
          bank_name: "Demo Bank (NOT REAL)",
          loan_amount: 1200000 + (i % 10) * 150000,
          cersai_id: `DEMO-CERSAI-${4000 + i}`
        }
      ] : []
    },
    documents: [
      {
        type: "Jamabandi (DEMO)",
        document_number: `DEMO-JAM-${5000 + i}`,
        date: "2025-04-01",
        source: "DEMO DATA",
        source_url: null
      }
    ],
    source: {
      source_name: "DEMO DATASET — NOT GOVERNMENT DATA",
      source_url: null,
      record_date: "2026-09-19",
      last_verified: "2026-09-19"
    }
  };

  parcels.push(parcelObj);
}

const finalDataset = {
  dataset_type: "DEMO_ONLY",
  warning: "ALL RECORDS ARE FICTIONAL. NOT GOVERNMENT DATA.",
  scope: {
    village: "Sarbaldal",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)"
  },
  total_parcels: parcels.length,
  parcels: parcels
};

fs.writeFileSync('data/demo_sarbaldal_200.json', JSON.stringify(finalDataset, null, 2), 'utf8');
console.log(`Saved ${parcels.length} high-fidelity cadastral parcels to data/demo_sarbaldal_200.json`);

// Also generate PostGIS SQL Seed Script
function coordsToWktPolygon(coords) {
  const pts = coords.map(([lon, lat]) => `${lon} ${lat}`).join(', ');
  return `POLYGON((${pts}))`;
}

let sql = `-- ==============================================================================
-- BHOOMI-SUTRA: 200 HIGH-FIDELITY CADASTRAL PARCELS (SARBALDAL, SRINAGAR)
-- POSTGIS SPATIAL POLGYONS ENCLOSING HOUSES/COMPOUNDS
-- MARKED EXPLICITLY AS: is_demo_data = true, dataset_type = 'DEMO_ONLY'
-- ==============================================================================

ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS parcel_id TEXT;
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS dataset_type TEXT NOT NULL DEFAULT 'DEMO_ONLY';
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS is_demo_data BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS data_origin_tag TEXT NOT NULL DEFAULT 'SYNTHETIC_DEMO';
ALTER TABLE public.parcels ADD COLUMN IF NOT EXISTS verification_disclaimer TEXT DEFAULT 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.';

INSERT INTO public.parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    documents_details, provenance_details, is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES
`;

const rows = parcels.map((p, idx) => {
  const wkt = coordsToWktPolygon(p.geometry.coordinates[0]);
  const ownJson = JSON.stringify(p.ownership_details).replace(/'/g, "''");
  const valJson = JSON.stringify(p.valuation_details).replace(/'/g, "''");
  const litJson = JSON.stringify(p.litigation_details).replace(/'/g, "''");
  const mortJson = JSON.stringify(p.mortgage_details).replace(/'/g, "''");
  const docJson = JSON.stringify({ documents: p.documents }).replace(/'/g, "''");
  const provJson = JSON.stringify(p.source).replace(/'/g, "''");

  return `(
    '${p.parcel_id}', '${p.khasra_no}', '${p.upin}', '${p.state}', '${p.district}', '${p.tehsil}', '${p.mouza}',
    ${p.area.kanal}, ${p.area.marla}, ${p.area.sqft}, '${p.land_type}',
    ${p.location.latitude}, ${p.location.longitude}, ST_GeomFromText('${wkt}', 4326),
    '${p.legal_status}', '${p.encumbrance_status}',
    '${ownJson}'::jsonb, '${valJson}'::jsonb, '${litJson}'::jsonb, '${mortJson}'::jsonb,
    '${docJson}'::jsonb, '${provJson}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  )`;
});

sql += rows.join(',\n') + `
ON CONFLICT (district, tehsil, mouza, khasra_no) DO UPDATE SET
    parcel_id = EXCLUDED.parcel_id,
    upin = EXCLUDED.upin,
    area_kanal = EXCLUDED.area_kanal,
    area_marla = EXCLUDED.area_marla,
    area_sqft = EXCLUDED.area_sqft,
    land_type = EXCLUDED.land_type,
    latitude = EXCLUDED.latitude,
    longitude = EXCLUDED.longitude,
    geometry = EXCLUDED.geometry,
    legal_status = EXCLUDED.legal_status,
    encumbrance_status = EXCLUDED.encumbrance_status,
    ownership_details = EXCLUDED.ownership_details,
    valuation_details = EXCLUDED.valuation_details,
    litigation_details = EXCLUDED.litigation_details,
    mortgage_details = EXCLUDED.mortgage_details,
    documents_details = EXCLUDED.documents_details,
    provenance_details = EXCLUDED.provenance_details,
    is_demo_data = EXCLUDED.is_demo_data,
    dataset_type = EXCLUDED.dataset_type,
    data_origin_tag = EXCLUDED.data_origin_tag,
    verification_disclaimer = EXCLUDED.verification_disclaimer,
    updated_at = timezone('utc'::text, now());
`;

fs.writeFileSync('scripts/seed_demo_200_sql.sql', sql, 'utf8');
console.log('Saved PostGIS SQL seeder to scripts/seed_demo_200_sql.sql');
