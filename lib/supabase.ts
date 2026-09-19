import { createClient } from "@supabase/supabase-js";
import { PARCELS_DOSSIER, ParcelDossier } from "@/data/mockData";

const supabaseUrl =
  process.env.NEXT_PUBLIC_SUPABASE_URL || "https://orwftwjzbyortuctkzua.supabase.co";
const supabaseKey =
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
  process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY ||
  "sb_publishable_39Lu-tMWepbYZS5vbQwb0g__iehKXP2";

export const isSupabaseConfigured = Boolean(supabaseUrl && supabaseKey);

// Supabase client instance
export const supabase = createClient(supabaseUrl, supabaseKey);

export interface SupabaseHealth {
  connected: boolean;
  url: string;
  projectId: string;
  latencyMs?: number;
  message?: string;
}

/**
 * Check Supabase connection health and latency
 */
export async function checkSupabaseHealth(): Promise<SupabaseHealth> {
  const projectId = supabaseUrl.replace("https://", "").split(".")[0];

  if (!isSupabaseConfigured) {
    return {
      connected: false,
      url: supabaseUrl,
      projectId,
      message: "Supabase credentials missing"
    };
  }

  const startTime = Date.now();
  try {
    const { error } = await supabase.auth.getSession();
    const latencyMs = Date.now() - startTime;

    if (error) {
      return {
        connected: false,
        url: supabaseUrl,
        projectId,
        latencyMs,
        message: error.message
      };
    }

    return {
      connected: true,
      url: supabaseUrl,
      projectId,
      latencyMs,
      message: "Connected to Supabase Project"
    };
  } catch (err: any) {
    return {
      connected: false,
      url: supabaseUrl,
      projectId,
      message: err?.message || "Connection failed"
    };
  }
}

/**
 * Fetch parcel dossier from Supabase with fallback to local mock data
 */
export async function getParcelDossier(khasraNo: string): Promise<{
  dossier: ParcelDossier;
  source: "supabase" | "local_cache";
}> {
  try {
    if (isSupabaseConfigured) {
      const { data, error } = await supabase
        .from("parcels")
        .select("*")
        .eq("khasra_no", khasraNo)
        .maybeSingle();

      if (!error && data && data.dossier_data) {
        return {
          dossier: data.dossier_data as ParcelDossier,
          source: "supabase"
        };
      }
    }
  } catch (e) {
    console.warn("Supabase query fallback to local cache:", e);
  }

  // Graceful fallback to verified local mock data
  const fallback = PARCELS_DOSSIER[khasraNo] || PARCELS_DOSSIER["329"];
  return {
    dossier: fallback,
    source: "local_cache"
  };
}
