/**
 * BHOOMI-SUTRA Demo Seeder Script
 * Inserts 200 Sarbaldal demo parcels into Supabase public.parcels table
 * Explicitly sets:
 * - is_demo_data = true
 * - dataset_type = 'DEMO_ONLY'
 * - data_origin_tag = 'SYNTHETIC_DEMO'
 */

const { createClient } = require("@supabase/supabase-js");
const fs = require("fs");
const path = require("path");

let supabaseUrl = "https://orwftwjzbyortuctkzua.supabase.co";
let supabaseKey = "sb_publishable_39Lu-tMWepbYZS5vbQwb0g__iehKXP2";

try {
  const envPath = path.join(__dirname, "../.env.local");
  if (fs.existsSync(envPath)) {
    const envLines = fs.readFileSync(envPath, "utf8").split("\n");
    for (const line of envLines) {
      if (line.startsWith("NEXT_PUBLIC_SUPABASE_URL=")) {
        supabaseUrl = line.split("=")[1].trim();
      }
      if (line.startsWith("NEXT_PUBLIC_SUPABASE_ANON_KEY=") || line.startsWith("NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY=")) {
        supabaseKey = line.split("=")[1].trim();
      }
    }
  }
} catch (e) {
  // Use defaults
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function seedParcels() {
  console.log("Loading data/demo_sarbaldal_200.json...");
  const raw = fs.readFileSync(path.join(__dirname, "../data/demo_sarbaldal_200.json"), "utf8");
  const dataset = JSON.parse(raw);
  const parcels = dataset.parcels;

  console.log(`Found ${parcels.length} demo parcels. Seeding to Supabase...`);

  let successCount = 0;
  let failCount = 0;

  // Batch insert in chunks of 20
  const chunkSize = 20;
  for (let i = 0; i < parcels.length; i += chunkSize) {
    const chunk = parcels.slice(i, i + chunkSize).map((p) => {
      const coords = p.geometry.coordinates[0];
      const coordStrs = coords.map((pt) => `${pt[0]} ${pt[1]}`);
      const wkt = `POLYGON((${coordStrs.join(", ")}))`;

      return {
        parcel_id: p.parcel_id,
        khasra_no: String(p.khasra_no),
        upin: p.upin || null,
        state: p.state,
        district: p.district,
        tehsil: p.tehsil,
        mouza: p.mouza,
        area_kanal: p.area.kanal,
        area_marla: p.area.marla,
        area_sqft: p.area.sqft,
        land_type: p.land_type,
        latitude: p.location.latitude,
        longitude: p.location.longitude,
        geojson_geometry: p.geometry,
        legal_status: p.legal_status,
        encumbrance_status: p.encumbrance_status,
        // EXPLICIT DEMO/FAKE CLASSIFICATION
        is_demo_data: true,
        dataset_type: "DEMO_ONLY",
        data_origin_tag: "SYNTHETIC_DEMO",
        verification_disclaimer: "ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.",
        ownership_details: p.ownership_details,
        valuation_details: p.valuation_details,
        litigation_details: p.litigation_details,
        mortgage_details: p.mortgage_details,
        documents_details: { documents: p.documents },
        provenance_details: p.source
      };
    });

    const { data, error } = await supabase.from("parcels").upsert(chunk, {
      onConflict: "district,tehsil,mouza,khasra_no"
    });

    if (error) {
      console.warn(`Chunk ${i / chunkSize + 1} insert note:`, error.message);
      failCount += chunk.length;
    } else {
      successCount += chunk.length;
      console.log(`Uploaded batch ${i / chunkSize + 1}: ${successCount}/${parcels.length} parcels synced.`);
    }
  }

  console.log("\n--- Seeding Summary ---");
  console.log(`Total Parcels: ${parcels.length}`);
  console.log(`Direct API Synced: ${successCount}`);
  if (failCount > 0) {
    console.log(`Note: If RLS policy blocks anon insert, please run "scripts/seed_demo_200_sql.sql" in your Supabase SQL Editor!`);
  }
}

seedParcels().catch(console.error);
