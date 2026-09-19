export interface DataSourceInfo {
  department: string;
  departmentHi: string;
  portal: string;
  url: string;
  database: string;
  auditRef: string;
}

export const GOVT_DATA_SOURCES: Record<string, DataSourceInfo> = {
  ror: {
    department: "Directorate of Land Records, J&K Revenue Department",
    departmentHi: "भू-अभिलेख निदेशालय, राजस्व विभाग, जम्मू-कश्मीर सरकार",
    portal: "Aapki Zameen Aapki Nigrani (AZAN)",
    url: "https://jkzameensudhar.jk.gov.in",
    database: "State Digitized Jamabandi & Girdawari Database",
    auditRef: "Tehsildar North Srinagar Mutation Register Vol 4, Folio #429"
  },
  valuation: {
    department: "Inspector General of Registration (IGR), Govt. of J&K",
    departmentHi: "महानिरीक्षक पंजीकरण (IGR), जम्मू-कश्मीर सरकार",
    portal: "National Generic Document Registration System (NGDRS)",
    url: "https://ngdrs.jk.gov.in",
    database: "Annual Statutory Circle Rate Registry (2025-26)",
    auditRef: "Circle Order No. DC-Sgr/Rev/Circle-2025/1102 dated 15-Jan-2025"
  },
  legal: {
    department: "eCourts Integrated Mission Mode Project / NJDG",
    departmentHi: "ई-कोर्ट्स मिशन मोड प्रोजेक्ट / राष्ट्रीय न्यायिक डेटा ग्रिड (NJDG)",
    portal: "eCourts Services India",
    url: "https://services.ecourts.gov.in",
    database: "Case Information System (CIS 3.2)",
    auditRef: "District & Sessions Court Srinagar Registry (CNR Lookup)"
  },
  encumbrance: {
    department: "Central Registry of Securitisation Asset Reconstruction & Security Interest of India",
    departmentHi: "केंद्रीय प्रतिभूतिकरण परिसंपत्ति पुनर्निर्माण एवं सुरक्षा हित रजिस्ट्री (सरसई)",
    portal: "CERSAI National Financial Encumbrance Registry",
    url: "https://cersai.org.in",
    database: "Central Asset Security & Mortgage Registry",
    auditRef: "Section 20 of SARFAESI Act, 2002 Electronic Registry"
  },
  zoning: {
    department: "Srinagar Development Authority (SDA) & LCMA",
    departmentHi: "श्रीनगर विकास प्राधिकरण (SDA) एवं झील संरक्षण प्राधिकरण (LCMA)",
    portal: "Town Planning Master Plan GIS System",
    url: "https://sda.jk.gov.in",
    database: "Srinagar Metropolitan Master Plan 2035 Statutory Layer",
    auditRef: "Gazette SRO-424 & J&K High Court PIL Order 159/2002"
  }
};

export interface ParcelDossier {
  khasraNo: string;
  upin: string; // Bhu-Aadhaar / Unique Parcel Identification Number
  mouza: string;
  tehsil: string;
  district: string;
  state: string;
  coordinates: [number, number]; // [lat, lng]
  
  // Pillar 1: Jamabandi RoR (Revenue Department)
  ownership: {
    owners: string[];
    fatherOrHusbandName: string;
    khewatNo: string;
    khataNo: string;
    areaKanal: number;
    areaMarla: number;
    areaSqFt: number;
    landClassification: string;
    possessionStatus: string;
    lastMutationNo: string;
    mutationDate: string;
    rorVerificationStatus: "VERIFIED" | "PENDING_SCRUTINY" | "DISPUTED";
  };

  // Pillar 2: NGDRS Circle Rate & Valuation
  valuation: {
    circleRatePerKanal: number;
    landTypeCategory: "Residential" | "Commercial" | "Agricultural";
    roadFacingMultiplier: string;
    assessedBaseValue: number;
    stampDutyRatePercent: number;
    stampDutyPayable: number;
    registrationFeeRatePercent: number;
    registrationFeePayable: number;
    mutationFee: number;
    totalGovtLevies: number;
    assessmentYear: string;
  };

  // Pillar 3: eCourts Judicial Integration
  legal: {
    status: "CLEAN" | "ACTIVE_LITIGATION" | "CAVEAT_FILED";
    disputeSummary?: string;
    caseNumber?: string;
    courtName?: string;
    filingYear?: string;
    parties?: string;
    suitType?: string;
    interimOrder?: string;
    stayOrderActive: boolean;
    nextHearingDate?: string;
  };

  // Pillar 4: CERSAI Financial Encumbrance
  encumbrance: {
    status: "DEBT_FREE" | "MORTGAGED" | "CHARGE_PENDING";
    bankName?: string;
    branch?: string;
    chargeId?: string;
    mortgageType?: string;
    sanctionedAmount?: number;
    registrationDate?: string;
    loanAccountStatus?: string;
  };

  // Pillar 5: Master Plan 2035 & Environmental Zoning
  zoning: {
    masterPlanZone: string;
    permissibleLandUse: string;
    dalLakeBufferZone: boolean;
    ecoBufferDistanceMeters?: number;
    permissibleFAR: string;
    groundCoverageMax: string;
    buildingHeightLimit: string;
    nocStatus: "PRE_APPROVED" | "RESTRICTED" | "PROHIBITED";
  };
}

export interface CadastralFeature {
  type: "Feature";
  id: string;
  properties: {
    khasraNo: string;
    statusBadge: "CLEAN" | "LITIGATION" | "MORTGAGED" | "ECO_BUFFER";
    strokeColor: string;
  };
  geometry: {
    type: "Polygon";
    coordinates: number[][][]; // [lng, lat]
  };
}

export interface CadastralGeoJSON {
  type: "FeatureCollection";
  features: CadastralFeature[];
}

// Realistic Individual Home / Compound Cadastral Parcels (~20m - 35m across)
export const PARCELS_DOSSIER: Record<string, ParcelDossier> = {
  "329": {
    khasraNo: "329",
    upin: "JK-01-02-004-0329-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12532, 74.83618],
    ownership: {
      owners: ["Ghulam Hassan Bhat"],
      fatherOrHusbandName: "Late Kh. Abdul Gani Bhat",
      khewatNo: "2",
      khataNo: "2",
      areaKanal: 0,
      areaMarla: 14,
      areaSqFt: 3811,
      landClassification: "Maidani Residential (Plotted House)",
      possessionStatus: "Self Occupied (Khud-Kasht)",
      lastMutationNo: "Intiqal-842/2019",
      mutationDate: "14-Aug-2019",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Direct Village Link Road (+5%)",
      assessedBaseValue: 5358150,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 375070,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 64298,
      mutationFee: 500,
      totalGovtLevies: 439868,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title record. Zero civil suits or caveats on this residential compound."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI Registry. No equitable mortgage or registered charge."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential Dwelling (G+2)",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 450,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "330": {
    khasraNo: "330",
    upin: "JK-01-02-004-0330-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12533, 74.83648],
    ownership: {
      owners: ["Ab. Rashid Wani", "Fayaz Ahmad Wani"],
      fatherOrHusbandName: "Mohd Subhan Wani",
      khewatNo: "3",
      khataNo: "5",
      areaKanal: 0,
      areaMarla: 12,
      areaSqFt: 3267,
      landClassification: "Maidani Residential",
      possessionStatus: "Residential Compound (Joint)",
      lastMutationNo: "Intiqal-930/2020",
      mutationDate: "10-Nov-2020",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Standard Sector Lane",
      assessedBaseValue: 4374000,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 306180,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 52488,
      mutationFee: 500,
      totalGovtLevies: 359168,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title record verified from eCourts registry."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI record. Free from bank mortgage."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 460,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "331": {
    khasraNo: "331",
    upin: "JK-01-02-004-0331-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12534, 74.83682],
    ownership: {
      owners: ["Bashir Ahmad Dar"],
      fatherOrHusbandName: "Kh. Abdul Rehman Dar",
      khewatNo: "4",
      khataNo: "7",
      areaKanal: 0,
      areaMarla: 11,
      areaSqFt: 2995,
      landClassification: "Maidani Residential",
      possessionStatus: "Self Occupied House",
      lastMutationNo: "Intiqal-955/2021",
      mutationDate: "15-Mar-2021",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Internal Lane",
      assessedBaseValue: 4009500,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 280665,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 48114,
      mutationFee: 500,
      totalGovtLevies: 329279,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean record. No litigation."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear title deed."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 470,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "338": {
    khasraNo: "338",
    upin: "JK-01-02-004-0338-L",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12560, 74.83655],
    ownership: {
      owners: ["Mohammad Shafi Mir", "Manzoor Ahmad Mir"],
      fatherOrHusbandName: "Kh. Habibullah Mir",
      khewatNo: "5",
      khataNo: "9",
      areaKanal: 0,
      areaMarla: 16,
      areaSqFt: 4356,
      landClassification: "Maidani / Abi Awwal",
      possessionStatus: "Disputed Residential Compound",
      lastMutationNo: "Intiqal-711/2014",
      mutationDate: "03-May-2014",
      rorVerificationStatus: "DISPUTED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Village Abadi Link",
      assessedBaseValue: 5832000,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 408240,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 69984,
      mutationFee: 500,
      totalGovtLevies: 478724,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "ACTIVE_LITIGATION",
      stayOrderActive: true,
      caseNumber: "CS/142/2025 (CNR: JKSG01-002419-2025)",
      courtName: "Court of Sub-Judge / Civil Judge Senior Division, Srinagar",
      filingYear: "2025",
      parties: "Mushtaq Ahmad Mir vs. Mohammad Shafi Mir & Ors.",
      suitType: "Declaration of Co-Sharer Rights & Permanent Injunction",
      interimOrder: "TEMPORARY INJUNCTION: Parties ordered to maintain status quo. Registration and construction barred.",
      nextHearingDate: "28-Oct-2026"
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Transaction barred by Sub-Judge Srinagar Court Injunction."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Residential (Under Court Status Quo)",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 440,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "50%",
      buildingHeightLimit: "35 ft",
      nocStatus: "RESTRICTED"
    }
  },
  "339": {
    khasraNo: "339",
    upin: "JK-01-02-004-0339-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12560, 74.83718],
    ownership: {
      owners: ["Dr. Farooq Ahmad Dar"],
      fatherOrHusbandName: "Ghulam Qadir Dar",
      khewatNo: "7",
      khataNo: "14",
      areaKanal: 0,
      areaMarla: 18,
      areaSqFt: 4900,
      landClassification: "Commercial Frontage Building",
      possessionStatus: "Commercial Clinic & Residence",
      lastMutationNo: "Intiqal-904/2021",
      mutationDate: "22-Nov-2021",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 9440000,
      landTypeCategory: "Commercial",
      roadFacingMultiplier: "Main Hazratbal Road Frontage (+10%)",
      assessedBaseValue: 9345600,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 654192,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 112147,
      mutationFee: 1000,
      totalGovtLevies: 767339,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title verification returned from District & Sessions Court Srinagar."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "No institutional liability registered under CERSAI."
    },
    zoning: {
      masterPlanZone: "Commercial Strip & Mixed Use",
      permissibleLandUse: "Retail / Professional Clinic / Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 550,
      permissibleFAR: "1:2.0",
      groundCoverageMax: "60%",
      buildingHeightLimit: "45 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "345": {
    khasraNo: "345",
    upin: "JK-01-02-004-0345-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12560, 74.83620],
    ownership: {
      owners: ["Parvez Ahmad Qureshi"],
      fatherOrHusbandName: "Kh. Ghulam Nabi Qureshi",
      khewatNo: "9",
      khataNo: "18",
      areaKanal: 0,
      areaMarla: 15,
      areaSqFt: 4084,
      landClassification: "Maidani Residential",
      possessionStatus: "Residential House & Garden",
      lastMutationNo: "Intiqal-988/2022",
      mutationDate: "11-Jan-2022",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Standard Sector Road",
      assessedBaseValue: 5467500,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 382725,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 65610,
      mutationFee: 500,
      totalGovtLevies: 448835,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title record verified from eCourts."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI record."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 440,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "350": {
    khasraNo: "350",
    upin: "JK-01-02-004-0350-M",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12502, 74.83588],
    ownership: {
      owners: ["Tariq Hameed Lone"],
      fatherOrHusbandName: "Kh. Abdul Hameed Lone",
      khewatNo: "11",
      khataNo: "21",
      areaKanal: 0,
      areaMarla: 17,
      areaSqFt: 4628,
      landClassification: "Maidani / Residential Plot",
      possessionStatus: "Two-Storey Residential House",
      lastMutationNo: "Intiqal-1012/2023",
      mutationDate: "18-Jan-2023",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Corner Plot Internal Sector (+2%)",
      assessedBaseValue: 6319400,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 442358,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 75833,
      mutationFee: 500,
      totalGovtLevies: 518691,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "No judicial litigation pending."
    },
    encumbrance: {
      status: "MORTGAGED",
      bankName: "Jammu & Kashmir Bank Ltd.",
      branch: "Hazratbal Dargah Branch (Sol ID: 0184)",
      chargeId: "CERSAI-JKB-883921-2023",
      mortgageType: "Registered Equitable Mortgage (Housing Loan)",
      sanctionedAmount: 4500000,
      registrationDate: "14-Feb-2023",
      loanAccountStatus: "ACTIVE LIEN REGISTERED. Bank NOC mandatory prior to sale."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 390,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "RESTRICTED"
    }
  },
  "351": {
    khasraNo: "351",
    upin: "JK-01-02-004-0351-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12502, 74.83622],
    ownership: {
      owners: ["Javed Ahmad Shah"],
      fatherOrHusbandName: "Kh. Noor Mohd Shah",
      khewatNo: "12",
      khataNo: "23",
      areaKanal: 0,
      areaMarla: 14,
      areaSqFt: 3811,
      landClassification: "Maidani Residential",
      possessionStatus: "Residential House",
      lastMutationNo: "Intiqal-1020/2023",
      mutationDate: "20-Feb-2023",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Sector Road",
      assessedBaseValue: 5103000,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 357210,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 61236,
      mutationFee: 500,
      totalGovtLevies: 418946,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title. No court disputes."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI Record."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 410,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "352": {
    khasraNo: "352",
    upin: "JK-01-02-004-0352-E",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12502, 74.83662],
    ownership: {
      owners: ["LCMA / Govt of J&K (Custodian Reserve)"],
      fatherOrHusbandName: "State Land Buffer Reserve",
      khewatNo: "1",
      khataNo: "1",
      areaKanal: 1,
      areaMarla: 4,
      areaSqFt: 6534,
      landClassification: "Gair Mumkin Dal (Eco Buffer)",
      possessionStatus: "Govt Custody (Lake Conservation & Management Authority)",
      lastMutationNo: "Intiqal-Govt/1988",
      mutationDate: "12-Sep-1988",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 0,
      landTypeCategory: "Agricultural",
      roadFacingMultiplier: "Non-alienable public conservation land",
      assessedBaseValue: 0,
      stampDutyRatePercent: 0,
      stampDutyPayable: 0,
      registrationFeeRatePercent: 0,
      registrationFeePayable: 0,
      mutationFee: 0,
      totalGovtLevies: 0,
      assessmentYear: "2025-2026 (Public Land)"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Protected State Wetland Buffer under J&K High Court PIL No. 159/2002 guidelines."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "State Land. Unencumbered and Non-transferable."
    },
    zoning: {
      masterPlanZone: "Dal Lake Eco-Sensitive Buffer Zone",
      permissibleLandUse: "Strict Wetland Conservation Buffer",
      dalLakeBufferZone: true,
      ecoBufferDistanceMeters: 45,
      permissibleFAR: "0",
      groundCoverageMax: "0%",
      buildingHeightLimit: "No Construction Allowed",
      nocStatus: "PROHIBITED"
    }
  },
  "356": {
    khasraNo: "356",
    upin: "JK-01-02-004-0356-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12502, 74.83708],
    ownership: {
      owners: ["Syed Altaf Bukhari", "Syed Mohammad Iqbal"],
      fatherOrHusbandName: "Late Syed Jalal-ud-din",
      khewatNo: "5",
      khataNo: "12",
      areaKanal: 0,
      areaMarla: 18,
      areaSqFt: 4900,
      landClassification: "Maidani Residential",
      possessionStatus: "Residential Compound & Outbuilding",
      lastMutationNo: "Intiqal-1090/2024",
      mutationDate: "05-Apr-2024",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Primary 30-ft Lane",
      assessedBaseValue: 6561000,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 459270,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 78732,
      mutationFee: 500,
      totalGovtLevies: 538502,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Certified Clear Title. No caveats, probate challenges, or partition disputes."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI Record. Title deeds in custody of owners."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential Housing",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 510,
      permissibleFAR: "1:1.75",
      groundCoverageMax: "55%",
      buildingHeightLimit: "38 ft",
      nocStatus: "PRE_APPROVED"
    }
  },
  "358": {
    khasraNo: "358",
    upin: "JK-01-02-004-0358-R",
    mouza: "Saderbal (Hazratbal)",
    tehsil: "North Srinagar",
    district: "Srinagar",
    state: "Jammu & Kashmir (UT)",
    coordinates: [34.12502, 74.83792],
    ownership: {
      owners: ["Mushtaq Ahmad Sofi"],
      fatherOrHusbandName: "Kh. Ghulam Rasool Sofi",
      khewatNo: "8",
      khataNo: "16",
      areaKanal: 0,
      areaMarla: 17,
      areaSqFt: 4628,
      landClassification: "Maidani Residential",
      possessionStatus: "Lakeside Plotted Home",
      lastMutationNo: "Intiqal-1045/2023",
      mutationDate: "12-Sep-2023",
      rorVerificationStatus: "VERIFIED"
    },
    valuation: {
      circleRatePerKanal: 7290000,
      landTypeCategory: "Residential",
      roadFacingMultiplier: "Sector Road Link",
      assessedBaseValue: 6196500,
      stampDutyRatePercent: 7.0,
      stampDutyPayable: 433755,
      registrationFeeRatePercent: 1.2,
      registrationFeePayable: 74358,
      mutationFee: 500,
      totalGovtLevies: 508613,
      assessmentYear: "2025-2026"
    },
    legal: {
      status: "CLEAN",
      stayOrderActive: false,
      disputeSummary: "Clean title record. No legal disputes."
    },
    encumbrance: {
      status: "DEBT_FREE",
      loanAccountStatus: "Clear CERSAI Record."
    },
    zoning: {
      masterPlanZone: "Residential R1",
      permissibleLandUse: "Plotted Residential",
      dalLakeBufferZone: false,
      ecoBufferDistanceMeters: 490,
      permissibleFAR: "1:1.5",
      groundCoverageMax: "55%",
      buildingHeightLimit: "35 ft",
      nocStatus: "PRE_APPROVED"
    }
  }
};

// Tight, Realistic Individual Home/Compound Boundaries (~20m - 35m each)
export const CADASTRAL_GEOJSON: CadastralGeoJSON = {
  type: "FeatureCollection",
  features: [
    // --- ROW 1 (South / Lakeside plots) ---
    {
      type: "Feature",
      id: "350",
      properties: {
        khasraNo: "350",
        statusBadge: "MORTGAGED",
        strokeColor: "#f59e0b"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83570, 34.12485],
            [74.83605, 34.12485],
            [74.83605, 34.12520],
            [74.83570, 34.12520],
            [74.83570, 34.12485]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "351",
      properties: {
        khasraNo: "351",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83605, 34.12485],
            [74.83640, 34.12485],
            [74.83640, 34.12520],
            [74.83605, 34.12520],
            [74.83605, 34.12485]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "352",
      properties: {
        khasraNo: "352",
        statusBadge: "ECO_BUFFER",
        strokeColor: "#0284c7"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83640, 34.12485],
            [74.83685, 34.12485],
            [74.83685, 34.12520],
            [74.83640, 34.12520],
            [74.83640, 34.12485]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "356",
      properties: {
        khasraNo: "356",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83685, 34.12485],
            [74.83730, 34.12485],
            [74.83730, 34.12520],
            [74.83685, 34.12520],
            [74.83685, 34.12485]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "358",
      properties: {
        khasraNo: "358",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83770, 34.12485],
            [74.83815, 34.12485],
            [74.83815, 34.12520],
            [74.83770, 34.12520],
            [74.83770, 34.12485]
          ]
        ]
      }
    },

    // --- ROW 2 (Middle street-facing house plots) ---
    {
      type: "Feature",
      id: "329",
      properties: {
        khasraNo: "329",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83600, 34.12520],
            [74.83635, 34.12520],
            [74.83635, 34.12545],
            [74.83600, 34.12545],
            [74.83600, 34.12520]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "330",
      properties: {
        khasraNo: "330",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83635, 34.12520],
            [74.83665, 34.12520],
            [74.83665, 34.12545],
            [74.83635, 34.12545],
            [74.83635, 34.12520]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "331",
      properties: {
        khasraNo: "331",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83665, 34.12520],
            [74.83700, 34.12520],
            [74.83700, 34.12545],
            [74.83665, 34.12545],
            [74.83665, 34.12520]
          ]
        ]
      }
    },

    // --- ROW 3 (North roadside residential compounds) ---
    {
      type: "Feature",
      id: "345",
      properties: {
        khasraNo: "345",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83600, 34.12545],
            [74.83640, 34.12545],
            [74.83640, 34.12575],
            [74.83600, 34.12575],
            [74.83600, 34.12545]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "338",
      properties: {
        khasraNo: "338",
        statusBadge: "LITIGATION",
        strokeColor: "#ef4444"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83640, 34.12545],
            [74.83670, 34.12545],
            [74.83670, 34.12575],
            [74.83640, 34.12575],
            [74.83640, 34.12545]
          ]
        ]
      }
    },
    {
      type: "Feature",
      id: "339",
      properties: {
        khasraNo: "339",
        statusBadge: "CLEAN",
        strokeColor: "#22c55e"
      },
      geometry: {
        type: "Polygon",
        coordinates: [
          [
            [74.83700, 34.12545],
            [74.83735, 34.12545],
            [74.83735, 34.12575],
            [74.83700, 34.12575],
            [74.83700, 34.12545]
          ]
        ]
      }
    }
  ]
};

export const ADMIN_HIERARCHY = {
  state: "Jammu & Kashmir (UT)",
  districts: [
    {
      name: "Srinagar",
      tehsils: [
        {
          name: "North Srinagar",
          mouzas: [
            {
              name: "Saderbal (Hazratbal)",
              availableKhasras: Array.from({ length: 200 }, (_, i) => String(329 + i))
            },
            {
              name: "Sarbaldal",
              availableKhasras: Array.from({ length: 200 }, (_, i) => String(329 + i))
            },
            { name: "Habak Shanpora", availableKhasras: ["101", "102", "110"] },
            { name: "Naseem Bagh", availableKhasras: ["215", "218", "224"] }
          ]
        },
        {
          name: "South Srinagar",
          mouzas: [
            { name: "Rajbagh", availableKhasras: ["44", "45", "52"] },
            { name: "Jawahar Nagar", availableKhasras: ["88", "89", "95"] }
          ]
        }
      ]
    }
  ]
};
