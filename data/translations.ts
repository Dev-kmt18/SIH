export type Language = "en" | "hi";

export interface Translations {
  deptName: string;
  portalTitle: string;
  portalSubtitle: string;
  sihBadge: string;
  bhuAadhaar: string;
  state: string;
  district: string;
  tehsil: string;
  village: string;
  khasraNo: string;
  inspectBtn: string;
  cadastreLayer: string;
  sheetNo: string;
  activeTarget: string;
  satellite: string;
  cadastralBase: string;
  cadastreToggleOn: string;
  cadastreToggleOff: string;
  cleanTitle: string;
  courtStay: string;
  bankLien: string;
  ecoBuffer: string;
  dossierTitle: string;
  upinLabel: string;
  tabRoR: string;
  tabValuation: string;
  tabLegal: string;
  tabEncumbrance: string;
  rorHeading: string;
  rorSub: string;
  registeredOwners: string;
  parentage: string;
  khewatKhata: string;
  totalArea: string;
  landClass: string;
  possession: string;
  lastMutation: string;
  areaFootnote: string;
  valuationHeading: string;
  valuationSub: string;
  circleRate: string;
  roadMultiplier: string;
  assessedValue: string;
  stampDuty: string;
  registrationFee: string;
  mutationFee: string;
  totalGovtLevies: string;
  circleNotif: string;
  ecourtsHeading: string;
  ecourtsSub: string;
  activeInjunctionTitle: string;
  caseNo: string;
  court: string;
  parties: string;
  courtOrder: string;
  nextHearing: string;
  cleanLegalTitle: string;
  cleanLegalSub: string;
  cersaiHeading: string;
  mortgageeBank: string;
  branch: string;
  sanctionedAmount: string;
  chargeId: string;
  unencumberedSub: string;
  masterPlanHeading: string;
  masterPlanZone: string;
  permissibleUse: string;
  dalLakeBuffer: string;
  far: string;
  maxHeight: string;
  downloadPdf: string;
  signedNote: string;
  sha256Valid: string;
  pillarsHeading: string;
  pillarsTitle: string;
  pillarsSubtitle: string;
  pillar1Title: string;
  pillar1Sub: string;
  pillar1Desc: string;
  pillar2Title: string;
  pillar2Sub: string;
  pillar2Desc: string;
  pillar3Title: string;
  pillar3Sub: string;
  pillar3Desc: string;
  pillar4Title: string;
  pillar4Sub: string;
  pillar4Desc: string;
  footerRights: string;
  footerTagline: string;
  footerNIT: string;
  footerPortals: string;
  footerHelpline: string;
  footerTollFree: string;
  footerTehsil: string;
  footerEmail: string;
  footerLastUpdate: string;
  modalTitle: string;
  printBtn: string;
  govtLetterhead: string;
  officeTitle: string;
  certTitle: string;
  certId: string;
  issuedDate: string;
  certLocation: string;
  certSection1: string;
  certSection2: string;
  certSection3: string;
  certSection4: string;
  qrVerifyText: string;
  digitalSignText: string;
  authOfficer: string;
  tehsildarTitle: string;
}

export const TRANSLATIONS: Record<Language, Translations> = {
  en: {
    deptName: "Government of Jammu and Kashmir | Department of Revenue",
    portalTitle: "BHOOMI-SUTRA",
    portalSubtitle: "Integrated Cadastral GIS & Land Due-Diligence DPI",
    sihBadge: "Smart India Hackathon 2026",
    bhuAadhaar: "Bhu-Aadhaar (ULPIN) Compliant",
    state: "State / UT",
    district: "District",
    tehsil: "Tehsil",
    village: "Village / Mouza",
    khasraNo: "Khasra No.",
    inspectBtn: "Inspect Parcel",
    cadastreLayer: "Cadastral GIS Map Engine",
    sheetNo: "Saderbal Mussavi Sheet #4",
    activeTarget: "Active Target",
    satellite: "Satellite",
    cadastralBase: "Cadastral Base",
    cadastreToggleOn: "Cadastre Polygons: ON",
    cadastreToggleOff: "Cadastre: OFF",
    cleanTitle: "Clean Title",
    courtStay: "Court Stay / Suit",
    bankLien: "Bank Lien",
    ecoBuffer: "Eco Buffer",
    dossierTitle: "Land Due-Diligence Dossier",
    upinLabel: "Bhu-Aadhaar (UPIN)",
    tabRoR: "1. Ownership",
    tabValuation: "2. Valuation",
    tabLegal: "3. Legal",
    tabEncumbrance: "4. Encumbrance",
    rorHeading: "Jamabandi Record of Rights (RoR)",
    rorSub: "Synchronized with J&K Revenue Land Records Portal",
    registeredOwners: "Registered Owner(s)",
    parentage: "Parentage / Spouse",
    khewatKhata: "Khewat / Khata No.",
    totalArea: "Total Area",
    landClass: "Land Classification",
    possession: "Possession Status",
    lastMutation: "Last Mutation",
    areaFootnote: "Standard J&K measurement: 1 Kanal = 20 Marlas = 5,445 sq.ft.",
    valuationHeading: "NGDRS Circle Rate & Valuation",
    valuationSub: "National Generic Document Registration System (ngdrs.jk.gov.in)",
    circleRate: "Circle Rate",
    roadMultiplier: "Road Frontage Multiplier",
    assessedValue: "Assessed Base Value",
    stampDuty: "Stamp Duty (7%)",
    registrationFee: "Registration Fee (1.2%)",
    mutationFee: "Mutation & Scanning Fee",
    totalGovtLevies: "Total Govt Levies Payable",
    circleNotif: "Circle Rate Notification Year",
    ecourtsHeading: "eCourts Judicial Scrutiny",
    ecourtsSub: "Integrated with High Court of J&K and District Court Srinagar Registry",
    activeInjunctionTitle: "Active Civil Injunction on Khasra",
    caseNo: "Case Number",
    court: "Court",
    parties: "Litigating Parties",
    courtOrder: "Court Order / Interim Stay",
    nextHearing: "Next Hearing",
    cleanLegalTitle: "Judicial Clearance: Clean Record",
    cleanLegalSub: "No pending civil suit, title dispute, or stay order registered.",
    cersaiHeading: "CERSAI Mortgage Registry",
    mortgageeBank: "Mortgagee Bank",
    branch: "Branch",
    sanctionedAmount: "Sanctioned Amount",
    chargeId: "Charge ID",
    unencumberedSub: "Clear CERSAI Registry. No banking charges or mortgages registered.",
    masterPlanHeading: "Srinagar Master Plan 2035",
    masterPlanZone: "Master Plan Zone",
    permissibleUse: "Permissible Land Use",
    dalLakeBuffer: "Dal Lake Eco-Buffer",
    far: "Floor Area Ratio (FAR)",
    maxHeight: "Height Limit",
    downloadPdf: "Download Certified Due-Diligence Dossier (PDF)",
    signedNote: "Cryptographically Signed by Revenue Gateway",
    sha256Valid: "SHA-256 Valid",
    pillarsHeading: "Integrated Digital Public Infrastructure",
    pillarsTitle: "Unified Single-Click Verification Architecture",
    pillarsSubtitle: "Interlinking 5 core government systems in real time to prevent title disputes and fraudulent transactions.",
    pillar1Title: "Revenue Department",
    pillar1Sub: "Jamabandi Ownership & RoR",
    pillar1Desc: "Live sync with digitized Jamabandi, Khewat, Khata, and Girdawari records preventing unlawful mutations.",
    pillar2Title: "NGDRS Valuations",
    pillar2Sub: "Circle Rates & Stamp Duty",
    pillar2Desc: "Instant calculation of base land value, 7% Stamp Duty, and 1.2% registration fee based on notified rates.",
    pillar3Title: "eCourts Judiciary",
    pillar3Sub: "Litigation & Stay Mapping",
    pillar3Desc: "Automatic matching with court records to detect civil suits, caveats, and interim status-quo injunctions.",
    pillar4Title: "CERSAI & Town Planning",
    pillar4Sub: "Bank Mortgages & Eco Buffers",
    pillar4Desc: "Central registry search for active mortgage liens and Master Plan 2035 Dal Lake conservation boundaries.",
    footerRights: "Department of Revenue, Government of Jammu and Kashmir. All rights reserved.",
    footerTagline: "Working Prototype for Smart India Hackathon 2026 | Problem Statement 14: Integrated GIS Land Governance DPI.",
    footerNIT: "Academic & Technical Anchor: National Institute of Technology (NIT) Srinagar",
    footerPortals: "Official Portals",
    footerHelpline: "Helpdesk & Revenue Contact",
    footerTollFree: "Revenue Helpline: 1800-180-7171 (Toll Free)",
    footerTehsil: "Tehsil Office: North Srinagar, Hazratbal",
    footerEmail: "Email: rev-support@jk.gov.in",
    footerLastUpdate: "Last Updated: 19 September 2026",
    modalTitle: "Official Land Due-Diligence Certificate",
    printBtn: "Print Certificate",
    govtLetterhead: "Government of Jammu and Kashmir",
    officeTitle: "Office of the Tehsildar • Tehsil North Srinagar",
    certTitle: "Certified Land Due-Diligence & Encumbrance Audit Certificate",
    certId: "Certificate ID",
    issuedDate: "Issued Date",
    certLocation: "Cadastral Parcel Location",
    certSection1: "1. Ownership & Jamabandi Particulars",
    certSection2: "2. NGDRS Valuation & Stamp Duties",
    certSection3: "3. eCourts Litigation Status",
    certSection4: "4. CERSAI Financial Encumbrance",
    qrVerifyText: "Scan QR code with DigiLocker or J&K e-Services app to verify cryptographic authenticity.",
    digitalSignText: "Digitally Signed",
    authOfficer: "Authorized Revenue Officer",
    tehsildarTitle: "Tehsildar North Srinagar, J&K"
  },
  hi: {
    deptName: "जम्मू और कश्मीर सरकार | राजस्व विभाग",
    portalTitle: "भूमि-सूत्र",
    portalSubtitle: "एकीकृत कैडस्ट्रल जीआईएस एवं भूमि पड़ताल प्रणाली",
    sihBadge: "स्मार्ट इंडिया हैकाथॉन 2026",
    bhuAadhaar: "भू-आधार (ULPIN) अनुपालित",
    state: "राज्य / केंद्र शासित प्रदेश",
    district: "ज़िला",
    tehsil: "तहसील",
    village: "गाँव / मौज़ा",
    khasraNo: "खसरा संख्या",
    inspectBtn: "जाँच करें",
    cadastreLayer: "कैडस्ट्रल जीआईएस मानचित्र",
    sheetNo: "सादरबल मुसावी शीट #4",
    activeTarget: "सक्रिय पार्सल",
    satellite: "उपग्रह चित्र",
    cadastralBase: "कैडस्ट्रल मानचित्र",
    cadastreToggleOn: "कैडस्ट्रल सीमाएँ: चालू",
    cadastreToggleOff: "कैडस्ट्रल सीमाएँ: बंद",
    cleanTitle: "विवाद रहित",
    courtStay: "अदालती रोक",
    bankLien: "बैंक बंधक",
    ecoBuffer: "पर्यावरण बफर",
    dossierTitle: "भूमि पड़ताल पत्रक",
    upinLabel: "भू-आधार (UPIN)",
    tabRoR: "1. स्वामित्व (जमाबंदी)",
    tabValuation: "2. मूल्यांकन (सर्किल रेट)",
    tabLegal: "3. अदालती स्थिति",
    tabEncumbrance: "4. वित्तीय भार",
    rorHeading: "जमाबंदी अधिकार अभिलेख (RoR)",
    rorSub: "जम्मू-कश्मीर राजस्व भू-अभिलेख पोर्टल से सत्यापित",
    registeredOwners: "पंजीकृत भू-स्वामी",
    parentage: "पिता / पति का नाम",
    khewatKhata: "खेवट / खाता संख्या",
    totalArea: "कुल रकबा",
    landClass: "भूमि की श्रेणी",
    possession: "क़ब्ज़ा स्थिति",
    lastMutation: "अंतिम इंतकाल",
    areaFootnote: "जम्मू-कश्मीर राजस्व मानक: 1 कनाल = 20 मरले = 5,445 वर्ग फुट।",
    valuationHeading: "सर्किल रेट एवं सरकारी मूल्यांकन (NGDRS)",
    valuationSub: "राष्ट्रीय दस्तावेज़ पंजीकरण प्रणाली (ngdrs.jk.gov.in)",
    circleRate: "सर्किल रेट",
    roadMultiplier: "सड़क संपर्क गुणक",
    assessedValue: "मूल्यांकित आधार राशि",
    stampDuty: "स्टांप शुल्क (7%)",
    registrationFee: "पंजीकरण शुल्क (1.2%)",
    mutationFee: "इंतकाल व स्कैनिंग शुल्क",
    totalGovtLevies: "कुल देय सरकारी शुल्क",
    circleNotif: "सर्किल रेट अधिसूचना वर्ष",
    ecourtsHeading: "अदालती रिकॉर्ड एवं वाद स्थिति (eCourts)",
    ecourtsSub: "उच्च न्यायालय एवं ज़िला सत्र न्यायालय श्रीनगर रजिस्ट्री से संबद्ध",
    activeInjunctionTitle: "खसरा पर सक्रिय दीवानी स्थगन आदेश",
    caseNo: "मुक़दमा संख्या",
    court: "न्यायालय",
    parties: "मुक़दमे के पक्षकार",
    courtOrder: "न्यायालय अंतरिम आदेश / स्थगन",
    nextHearing: "अगली सुनवाई",
    cleanLegalTitle: "न्यायिक स्वीकृति: विवाद रहित अभिलेख",
    cleanLegalSub: "कोई भी दीवानी मुक़दमा, स्वामित्व विवाद या स्थगन आदेश दर्ज नहीं है।",
    cersaiHeading: "सरसई बैंक बंधक रजिस्टर (CERSAI)",
    mortgageeBank: "बंधक धारक बैंक",
    branch: "शाखा",
    sanctionedAmount: "स्वीकृत ऋण राशि",
    chargeId: "चार्ज आईडी",
    unencumberedSub: "सरसई में कोई बैंक भार या बंधक दर्ज नहीं है। भूमि पूर्णतः भारमुक्त है।",
    masterPlanHeading: "श्रीनगर मास्टर प्लान 2035",
    masterPlanZone: "मास्टर प्लान ज़ोन",
    permissibleUse: "स्वीकृत भू-उपयोग",
    dalLakeBuffer: "डल झील पर्यावरण बफर",
    far: "फ्लोर एरिया अनुपात (FAR)",
    maxHeight: "अधिकतम ऊँचाई",
    downloadPdf: "प्रमाणित भूमि पड़ताल पत्रक डाउनलोड करें (PDF)",
    signedNote: "राजस्व गेटवे द्वारा डिजिटल हस्ताक्षरित",
    sha256Valid: "SHA-256 सत्यापित",
    pillarsHeading: "एकीकृत डिजिटल सार्वजनिक अवसंरचना (DPI)",
    pillarsTitle: "एकल-क्लिक एकीकृत सत्यापन प्रणाली",
    pillarsSubtitle: "भूमि धोखाधड़ी व दोहरे बैनामे रोकने हेतु 5 प्रमुख सरकारी प्रणालियों का वास्तविक समय में समन्वय।",
    pillar1Title: "राजस्व विभाग",
    pillar1Sub: "जमाबंदी व स्वामित्व",
    pillar1Desc: "डिजिटलीकृत जमाबंदी, खेवट, खाता व गिरदावरी अभिलेखों से सीधा समन्वय।",
    pillar2Title: "सर्किल रेट व मूल्यांकन",
    pillar2Sub: "NGDRS स्टांप ड्यूटी",
    pillar2Desc: "अधिसूचित सर्किल रेट के आधार पर 7% स्टांप ड्यूटी व 1.2% पंजीकरण शुल्क की स्वतः गणना।",
    pillar3Title: "अदालती रिकॉर्ड",
    pillar3Sub: "eCourts स्थगन आदेश",
    pillar3Desc: "दीवानी मुक़दमों व स्थगन आदेशों की तत्काल पहचान कर अवैध रजिस्ट्री पर रोक।",
    pillar4Title: "बैंक बंधक व ज़ोनिंग",
    pillar4Sub: "CERSAI व मास्टर प्लान",
    pillar4Desc: "बैंक बंधक भार की जाँच तथा डल झील संरक्षण बफर नियमों का पालन।",
    footerRights: "राजस्व विभाग, जम्मू और कश्मीर सरकार। सर्वाधिकार सुरक्षित।",
    footerTagline: "स्मार्ट इंडिया हैकाथॉन 2026 के लिए विकसित कार्यशील प्रोटोटाइप | समस्या कथन 14: एकीकृत जीआईएस भूमि शासन।",
    footerNIT: "शैक्षणिक एवं तकनीकी सहयोग: राष्ट्रीय प्रौद्योगिकी संस्थान (NIT) श्रीनगर",
    footerPortals: "सरकारी पोर्टल",
    footerHelpline: "सहायता एवं राजस्व संपर्क",
    footerTollFree: "राजस्व हेल्पलाइन: 1800-180-7171 (टोल फ्री)",
    footerTehsil: "तहसील कार्यालय: उत्तर श्रीनगर, हज़रतबल",
    footerEmail: "ईमेल: rev-support@jk.gov.in",
    footerLastUpdate: "अंतिम अद्यतन: 19 सितंबर 2026",
    modalTitle: "प्रमाणित भूमि पड़ताल प्रमाणपत्र",
    printBtn: "प्रमाणपत्र प्रिंट करें",
    govtLetterhead: "जम्मू और कश्मीर सरकार",
    officeTitle: "कार्यालय तहसीलदार • तहसील उत्तर श्रीनगर",
    certTitle: "प्रमाणित भूमि पड़ताल एवं वित्तीय भार परीक्षण प्रमाणपत्र",
    certId: "प्रमाणपत्र संख्या",
    issuedDate: "जारी तिथि",
    certLocation: "कैडस्ट्रल पार्सल स्थिति",
    certSection1: "1. स्वामित्व एवं जमाबंदी विवरण",
    certSection2: "2. सरकारी सर्किल रेट एवं स्टांप शुल्क",
    certSection3: "3. अदालती वाद स्थिति",
    certSection4: "4. बैंक बंधक एवं वित्तीय भार",
    qrVerifyText: "डिजिटल प्रमाणिकता हेतु डिजिलॉकर अथवा जेएंडके ई-सेवा ऐप से क्यूआर कोड स्कैन करें।",
    digitalSignText: "डिजिटल रूप से हस्ताक्षरित",
    authOfficer: "अधिकृत राजस्व अधिकारी",
    tehsildarTitle: "तहसीलदार उत्तर श्रीनगर, जेएंडके"
  }
};
