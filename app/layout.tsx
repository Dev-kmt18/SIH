import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "BHOOMI-SUTRA (भूमि-सूत्र) | Integrated GIS Land Governance DPI",
  description:
    "Integrated GIS Land Governance & Due-Diligence Digital Public Infrastructure (Department of Revenue, Govt. of Jammu & Kashmir). Instant Jamabandi RoR, Cadastral GIS, NGDRS Circle Rates, eCourts Litigation Verification, and CERSAI Bank Encumbrances.",
  keywords: [
    "BHOOMI-SUTRA",
    "Land Records J&K",
    "Jamabandi",
    "Cadastral GIS",
    "Hazratbal Srinagar",
    "Saderbal",
    "NGDRS Circle Rates",
    "eCourts Land Dispute",
    "Smart India Hackathon 2026",
    "Bhu-Aadhaar ULPIN"
  ],
  authors: [{ name: "Department of Revenue, Govt. of Jammu & Kashmir" }]
};

export default function RootLayout({
  children
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" className="h-full antialiased">
      <body className="min-h-full flex flex-col bg-[#f8fafc] text-slate-800">
        {children}
      </body>
    </html>
  );
}
