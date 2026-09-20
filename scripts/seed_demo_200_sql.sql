-- ============================================================================
-- BHOOMI-SUTRA GIS: 200 High-Precision Cadastral Parcels for Sarbaldal / Saderbal
-- Extracted directly from satellite imagery with closed house compound boundaries
-- DATASET_TYPE: DEMO_ONLY (Flagged is_demo_data = true)
-- ============================================================================

BEGIN;
DELETE FROM parcels WHERE is_demo_data = true;

INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0329', '329', 'DEMO-JK-01-02-0329-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.14, 2.7, 745.0, 'Residential',
    34.126012, 74.830073, ST_GeomFromText('POLYGON((74.830026 34.126047, 74.830121 34.126047, 74.830121 34.125976, 74.830026 34.125976, 74.830026 34.126047))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "34", "mutation_history": [{"mutation_no": "MUT-SB-1000", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10121465, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 10121465, "stamp_duty": 506073, "stamp_duty_rate": "5% (Demo)", "registration_fee": 121458, "effective_year": "2025-26", "government_rate_inr": 10121465, "market_estimate_inr": 12955475, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0330', '330', 'DEMO-JK-01-02-0330-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.19, 3.8, 1022.0, 'Residential',
    34.125997, 74.830172, ST_GeomFromText('POLYGON((74.830102 34.126031, 74.8302 34.126031, 74.830227 34.126013, 74.830227 34.125955, 74.830102 34.125955, 74.830102 34.126031))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "34", "mutation_history": [{"mutation_no": "MUT-SB-1001", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14266924, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 14266924, "stamp_duty": 713346, "stamp_duty_rate": "5% (Demo)", "registration_fee": 171203, "effective_year": "2025-26", "government_rate_inr": 14266924, "market_estimate_inr": 18261663, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0331', '331', 'DEMO-JK-01-02-0331-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.7, 1004.0, 'Residential',
    34.126023, 74.832324, ST_GeomFromText('POLYGON((74.832278 34.12607, 74.832377 34.126066, 74.832371 34.125974, 74.83227 34.125981, 74.832278 34.12607))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "34", "mutation_history": [{"mutation_no": "MUT-SB-1002", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14376145, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 14376145, "stamp_duty": 718807, "stamp_duty_rate": "5% (Demo)", "registration_fee": 172514, "effective_year": "2025-26", "government_rate_inr": 14376145, "market_estimate_inr": 18401466, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0332', '332', 'DEMO-JK-01-02-0332-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.09, 1.7, 471.0, 'Residential',
    34.126059, 74.832429, ST_GeomFromText('POLYGON((74.832386 34.126091, 74.832461 34.126091, 74.832461 34.126049, 74.83245 34.126033, 74.832386 34.126033, 74.832386 34.126091))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "34", "mutation_history": [{"mutation_no": "MUT-SB-1003", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 6914620, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 6914620, "stamp_duty": 345731, "stamp_duty_rate": "5% (Demo)", "registration_fee": 82975, "effective_year": "2025-26", "government_rate_inr": 6914620, "market_estimate_inr": 8850714, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0333', '333', 'DEMO-JK-01-02-0333-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.47, 9.4, 2558.0, 'Residential',
    34.125977, 74.833241, ST_GeomFromText('POLYGON((74.83317 34.126058, 74.833313 34.126058, 74.833313 34.125896, 74.83317 34.125896, 74.83317 34.126058))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "35", "mutation_history": [{"mutation_no": "MUT-SB-1004", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 38521777, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 38521777, "stamp_duty": 1926089, "stamp_duty_rate": "5% (Demo)", "registration_fee": 462261, "effective_year": "2025-26", "government_rate_inr": 38521777, "market_estimate_inr": 49307875, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90004", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0334', '334', 'DEMO-JK-01-02-0334-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.6, 984.0, 'Residential',
    34.125849, 74.830268, ST_GeomFromText('POLYGON((74.830205 34.125884, 74.830294 34.125884, 74.830319 34.125867, 74.830319 34.125804, 74.830205 34.125804, 74.830205 34.125884))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "35", "mutation_history": [{"mutation_no": "MUT-SB-1005", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 15173568, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 15173568, "stamp_duty": 758678, "stamp_duty_rate": "5% (Demo)", "registration_fee": 182083, "effective_year": "2025-26", "government_rate_inr": 15173568, "market_estimate_inr": 19422167, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-405", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Tariq Ahmad Lone (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0335', '335', 'DEMO-JK-01-02-0335-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.35, 7.0, 1908.0, 'Residential',
    34.1259, 74.832358, ST_GeomFromText('POLYGON((74.832271 34.125949, 74.832453 34.125946, 74.832446 34.12585, 74.832263 34.125856, 74.832271 34.125949))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "35", "mutation_history": [{"mutation_no": "MUT-SB-1006", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30135970, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 30135970, "stamp_duty": 1506798, "stamp_duty_rate": "5% (Demo)", "registration_fee": 361632, "effective_year": "2025-26", "government_rate_inr": 30135970, "market_estimate_inr": 38574042, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0336', '336', 'DEMO-JK-01-02-0336-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.3, 900.0, 'Residential',
    34.125931, 74.832459, ST_GeomFromText('POLYGON((74.832398 34.125973, 74.832504 34.125973, 74.832504 34.125917, 74.832493 34.125895, 74.832398 34.125895, 74.832398 34.125973))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "12", "khata_no": "35", "mutation_history": [{"mutation_no": "MUT-SB-1007", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 12225759, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 12225759, "stamp_duty": 611288, "stamp_duty_rate": "5% (Demo)", "registration_fee": 146709, "effective_year": "2025-26", "government_rate_inr": 12225759, "market_estimate_inr": 15648972, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0337', '337', 'DEMO-JK-01-02-0337-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.48, 9.7, 2635.0, 'Residential',
    34.125939, 74.832797, ST_GeomFromText('POLYGON((74.832721 34.126017, 74.832873 34.126017, 74.832873 34.12586, 74.832721 34.12586, 74.832721 34.126017))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "36", "mutation_history": [{"mutation_no": "MUT-SB-1008", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 36779145, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 36779145, "stamp_duty": 1838957, "stamp_duty_rate": "5% (Demo)", "registration_fee": 441350, "effective_year": "2025-26", "government_rate_inr": 36779145, "market_estimate_inr": 47077306, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0338', '338', 'DEMO-JK-01-02-0338-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.25, 5.0, 1348.0, 'Residential',
    34.125864, 74.832857, ST_GeomFromText('POLYGON((74.832799 34.125914, 74.832881 34.125914, 74.832904 34.125898, 74.832904 34.125796, 74.832799 34.125796, 74.832799 34.125914))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "36", "mutation_history": [{"mutation_no": "MUT-SB-1009", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 19306425, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 19306425, "stamp_duty": 965321, "stamp_duty_rate": "5% (Demo)", "registration_fee": 231677, "effective_year": "2025-26", "government_rate_inr": 19306425, "market_estimate_inr": 24712224, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90009", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0339', '339', 'DEMO-JK-01-02-0339-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.7, 735.0, 'Residential',
    34.125961, 74.832871, ST_GeomFromText('POLYGON((74.83283 34.126, 74.832919 34.125996, 74.832913 34.125921, 74.832822 34.125928, 74.83283 34.126))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "36", "mutation_history": [{"mutation_no": "MUT-SB-1010", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10793861, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 10793861, "stamp_duty": 539693, "stamp_duty_rate": "5% (Demo)", "registration_fee": 129526, "effective_year": "2025-26", "government_rate_inr": 10793861, "market_estimate_inr": 13816142, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0340', '340', 'DEMO-JK-01-02-0340-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.67, 13.3, 3626.0, 'Residential',
    34.125846, 74.833358, ST_GeomFromText('POLYGON((74.833252 34.125946, 74.833432 34.125946, 74.833432 34.125813, 74.833421 34.125762, 74.833252 34.125762, 74.833252 34.125946))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "36", "mutation_history": [{"mutation_no": "MUT-SB-1011", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 54608082, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 54608082, "stamp_duty": 2730404, "stamp_duty_rate": "5% (Demo)", "registration_fee": 655297, "effective_year": "2025-26", "government_rate_inr": 54608082, "market_estimate_inr": 69898345, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-411", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Parvaiz Ahmad Ganie (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0341', '341', 'DEMO-JK-01-02-0341-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.25, 5.0, 1358.0, 'Residential',
    34.125825, 74.833485, ST_GeomFromText('POLYGON((74.833432 34.125883, 74.833538 34.125883, 74.833538 34.125767, 74.833432 34.125767, 74.833432 34.125883))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "37", "mutation_history": [{"mutation_no": "MUT-SB-1012", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20945265, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 20945265, "stamp_duty": 1047263, "stamp_duty_rate": "5% (Demo)", "registration_fee": 251343, "effective_year": "2025-26", "government_rate_inr": 20945265, "market_estimate_inr": 26809939, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0342', '342', 'DEMO-JK-01-02-0342-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.14, 2.7, 737.0, 'Residential',
    34.125919, 74.833956, ST_GeomFromText('POLYGON((74.833895 34.125947, 74.83398 34.125947, 74.834004 34.125931, 74.834004 34.125884, 74.833895 34.125884, 74.833895 34.125947))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "37", "mutation_history": [{"mutation_no": "MUT-SB-1013", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11640922, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 11640922, "stamp_duty": 582046, "stamp_duty_rate": "5% (Demo)", "registration_fee": 139691, "effective_year": "2025-26", "government_rate_inr": 11640922, "market_estimate_inr": 14900380, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0343', '343', 'DEMO-JK-01-02-0343-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.7, 1005.0, 'Residential',
    34.125832, 74.834851, ST_GeomFromText('POLYGON((74.8348 34.125875, 74.834909 34.125871, 74.834903 34.125788, 74.834791 34.125794, 74.8348 34.125875))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "37", "mutation_history": [{"mutation_no": "MUT-SB-1014", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13653478, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 13653478, "stamp_duty": 682674, "stamp_duty_rate": "5% (Demo)", "registration_fee": 163842, "effective_year": "2025-26", "government_rate_inr": 13653478, "market_estimate_inr": 17476452, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90014", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0344', '344', 'DEMO-JK-01-02-0344-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.7, 999.0, 'Residential',
    34.125703, 74.829863, ST_GeomFromText('POLYGON((74.8298 34.125749, 74.829908 34.125749, 74.829908 34.125688, 74.829897 34.125664, 74.8298 34.125664, 74.8298 34.125749))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "13", "khata_no": "37", "mutation_history": [{"mutation_no": "MUT-SB-1015", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13944437, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 13944437, "stamp_duty": 697222, "stamp_duty_rate": "5% (Demo)", "registration_fee": 167333, "effective_year": "2025-26", "government_rate_inr": 13944437, "market_estimate_inr": 17848879, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0345', '345', 'DEMO-JK-01-02-0345-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.6, 986.0, 'Residential',
    34.125761, 74.830235, ST_GeomFromText('POLYGON((74.830177 34.1258, 74.830293 34.1258, 74.830293 34.125723, 74.830177 34.125723, 74.830177 34.1258))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "38", "mutation_history": [{"mutation_no": "MUT-SB-1016", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14128291, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 14128291, "stamp_duty": 706415, "stamp_duty_rate": "5% (Demo)", "registration_fee": 169539, "effective_year": "2025-26", "government_rate_inr": 14128291, "market_estimate_inr": 18084212, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0346', '346', 'DEMO-JK-01-02-0346-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.3, 1173.0, 'Residential',
    34.125662, 74.830732, ST_GeomFromText('POLYGON((74.830639 34.125693, 74.83077 34.125693, 74.830807 34.125668, 74.830807 34.125627, 74.830639 34.125627, 74.830639 34.125693))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "38", "mutation_history": [{"mutation_no": "MUT-SB-1017", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17238055, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 17238055, "stamp_duty": 861903, "stamp_duty_rate": "5% (Demo)", "registration_fee": 206857, "effective_year": "2025-26", "government_rate_inr": 17238055, "market_estimate_inr": 22064710, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-417", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Nazir Ahmad Naqash (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0347', '347', 'DEMO-JK-01-02-0347-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.4, 644.0, 'Residential',
    34.125672, 74.830864, ST_GeomFromText('POLYGON((74.830828 34.125709, 74.830908 34.125706, 74.830901 34.125632, 74.83082 34.125639, 74.830828 34.125709))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "38", "mutation_history": [{"mutation_no": "MUT-SB-1018", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9700414, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 9700414, "stamp_duty": 485021, "stamp_duty_rate": "5% (Demo)", "registration_fee": 116405, "effective_year": "2025-26", "government_rate_inr": 9700414, "market_estimate_inr": 12416530, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0348', '348', 'DEMO-JK-01-02-0348-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 6.0, 1644.0, 'Residential',
    34.12571, 74.831964, ST_GeomFromText('POLYGON((74.831883 34.125769, 74.832021 34.125769, 74.832021 34.12569, 74.832011 34.12566, 74.831883 34.12566, 74.831883 34.125769))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "38", "mutation_history": [{"mutation_no": "MUT-SB-1019", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 25367443, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 25367443, "stamp_duty": 1268372, "stamp_duty_rate": "5% (Demo)", "registration_fee": 304409, "effective_year": "2025-26", "government_rate_inr": 25367443, "market_estimate_inr": 32470327, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90019", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0349', '349', 'DEMO-JK-01-02-0349-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 3.1, 842.0, 'Residential',
    34.125683, 74.832175, ST_GeomFromText('POLYGON((74.832136 34.125733, 74.832213 34.125733, 74.832213 34.125634, 74.832136 34.125634, 74.832136 34.125733))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "39", "mutation_history": [{"mutation_no": "MUT-SB-1020", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13294519, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 13294519, "stamp_duty": 664726, "stamp_duty_rate": "5% (Demo)", "registration_fee": 159534, "effective_year": "2025-26", "government_rate_inr": 13294519, "market_estimate_inr": 17016984, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0350', '350', 'DEMO-JK-01-02-0350-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.4, 665.0, 'Residential',
    34.125666, 74.83226, ST_GeomFromText('POLYGON((74.832198 34.125692, 74.832285 34.125692, 74.832309 34.125676, 74.832309 34.125636, 74.832198 34.125636, 74.832198 34.125692))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "39", "mutation_history": [{"mutation_no": "MUT-SB-1021", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9039461, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 9039461, "stamp_duty": 451973, "stamp_duty_rate": "5% (Demo)", "registration_fee": 108474, "effective_year": "2025-26", "government_rate_inr": 9039461, "market_estimate_inr": 11570510, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0351', '351', 'DEMO-JK-01-02-0351-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.4, 1742.0, 'Residential',
    34.125688, 74.832584, ST_GeomFromText('POLYGON((74.832524 34.125751, 74.832651 34.125748, 74.832645 34.125623, 74.832516 34.12563, 74.832524 34.125751))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "39", "mutation_history": [{"mutation_no": "MUT-SB-1022", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24318327, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 24318327, "stamp_duty": 1215916, "stamp_duty_rate": "5% (Demo)", "registration_fee": 291820, "effective_year": "2025-26", "government_rate_inr": 24318327, "market_estimate_inr": 31127459, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0352', '352', 'DEMO-JK-01-02-0352-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.2, 880.0, 'Residential',
    34.125755, 74.83294, ST_GeomFromText('POLYGON((74.832866 34.12579, 74.832992 34.12579, 74.832992 34.125744, 74.832982 34.125726, 74.832866 34.125726, 74.832866 34.12579))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "14", "khata_no": "39", "mutation_history": [{"mutation_no": "MUT-SB-1023", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 12612857, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 12612857, "stamp_duty": 630643, "stamp_duty_rate": "5% (Demo)", "registration_fee": 151354, "effective_year": "2025-26", "government_rate_inr": 12612857, "market_estimate_inr": 16144457, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-423", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Riyaz Ahmad Khanday (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0353', '353', 'DEMO-JK-01-02-0353-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.3, 627.0, 'Residential',
    34.125799, 74.833075, ST_GeomFromText('POLYGON((74.833035 34.125834, 74.833115 34.125834, 74.833115 34.125763, 74.833035 34.125763, 74.833035 34.125834))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "40", "mutation_history": [{"mutation_no": "MUT-SB-1024", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9214860, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 9214860, "stamp_duty": 460743, "stamp_duty_rate": "5% (Demo)", "registration_fee": 110578, "effective_year": "2025-26", "government_rate_inr": 9214860, "market_estimate_inr": 11795021, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90024", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0354', '354', 'DEMO-JK-01-02-0354-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 704.0, 'Residential',
    34.125773, 74.83331, ST_GeomFromText('POLYGON((74.833267 34.125809, 74.833327 34.125809, 74.833344 34.125798, 74.833344 34.125725, 74.833267 34.125725, 74.833267 34.125809))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "40", "mutation_history": [{"mutation_no": "MUT-SB-1025", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10600201, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 10600201, "stamp_duty": 530010, "stamp_duty_rate": "5% (Demo)", "registration_fee": 127202, "effective_year": "2025-26", "government_rate_inr": 10600201, "market_estimate_inr": 13568257, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0355', '355', 'DEMO-JK-01-02-0355-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.35, 6.9, 1881.0, 'Residential',
    34.125681, 74.833357, ST_GeomFromText('POLYGON((74.833276 34.125733, 74.833445 34.125729, 74.833439 34.125628, 74.833268 34.125634, 74.833276 34.125733))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "40", "mutation_history": [{"mutation_no": "MUT-SB-1026", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 29018375, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 29018375, "stamp_duty": 1450919, "stamp_duty_rate": "5% (Demo)", "registration_fee": 348220, "effective_year": "2025-26", "government_rate_inr": 29018375, "market_estimate_inr": 37143520, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0356', '356', 'DEMO-JK-01-02-0356-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.55, 10.9, 2978.0, 'Residential',
    34.125736, 74.833727, ST_GeomFromText('POLYGON((74.833604 34.125807, 74.833813 34.125807, 74.833813 34.125714, 74.833802 34.125677, 74.833604 34.125677, 74.833604 34.125807))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "40", "mutation_history": [{"mutation_no": "MUT-SB-1027", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 47028889, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 47028889, "stamp_duty": 2351444, "stamp_duty_rate": "5% (Demo)", "registration_fee": 564347, "effective_year": "2025-26", "government_rate_inr": 47028889, "market_estimate_inr": 60196978, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0357', '357', 'DEMO-JK-01-02-0357-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.1, 851.0, 'Residential',
    34.125684, 74.833872, ST_GeomFromText('POLYGON((74.833825 34.125725, 74.833919 34.125725, 74.833919 34.125643, 74.833825 34.125643, 74.833825 34.125725))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "41", "mutation_history": [{"mutation_no": "MUT-SB-1028", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11566899, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 11566899, "stamp_duty": 578345, "stamp_duty_rate": "5% (Demo)", "registration_fee": 138803, "effective_year": "2025-26", "government_rate_inr": 11566899, "market_estimate_inr": 14805631, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0358', '358', 'DEMO-JK-01-02-0358-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.43, 8.6, 2331.0, 'Residential',
    34.125816, 74.833886, ST_GeomFromText('POLYGON((74.833799 34.125875, 74.833921 34.125875, 74.833956 34.125852, 74.833956 34.125738, 74.833799 34.125738, 74.833799 34.125875))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "41", "mutation_history": [{"mutation_no": "MUT-SB-1029", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32528998, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 32528998, "stamp_duty": 1626450, "stamp_duty_rate": "5% (Demo)", "registration_fee": 390348, "effective_year": "2025-26", "government_rate_inr": 32528998, "market_estimate_inr": 41637117, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-429", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mushtaq Ahmad Shah (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90029", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0359', '359', 'DEMO-JK-01-02-0359-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.23, 4.5, 1231.0, 'Residential',
    34.125623, 74.831991, ST_GeomFromText('POLYGON((74.831933 34.125669, 74.832056 34.125666, 74.832049 34.125574, 74.831925 34.125581, 74.831933 34.125669))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "41", "mutation_history": [{"mutation_no": "MUT-SB-1030", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17641014, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 17641014, "stamp_duty": 882051, "stamp_duty_rate": "5% (Demo)", "registration_fee": 211692, "effective_year": "2025-26", "government_rate_inr": 17641014, "market_estimate_inr": 22580498, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0360', '360', 'DEMO-JK-01-02-0360-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.45, 9.0, 2439.0, 'Residential',
    34.125618, 74.83319, ST_GeomFromText('POLYGON((74.83309 34.125689, 74.83326 34.125689, 74.83326 34.125594, 74.83325 34.125558, 74.83309 34.125558, 74.83309 34.125689))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "15", "khata_no": "41", "mutation_history": [{"mutation_no": "MUT-SB-1031", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 35837041, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 35837041, "stamp_duty": 1791852, "stamp_duty_rate": "5% (Demo)", "registration_fee": 430044, "effective_year": "2025-26", "government_rate_inr": 35837041, "market_estimate_inr": 45871412, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0361', '361', 'DEMO-JK-01-02-0361-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.3, 1179.0, 'Residential',
    34.125515, 74.833344, ST_GeomFromText('POLYGON((74.833284 34.125559, 74.833404 34.125559, 74.833404 34.12547, 74.833284 34.12547, 74.833284 34.125559))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "42", "mutation_history": [{"mutation_no": "MUT-SB-1032", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17758921, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 17758921, "stamp_duty": 887946, "stamp_duty_rate": "5% (Demo)", "registration_fee": 213107, "effective_year": "2025-26", "government_rate_inr": 17758921, "market_estimate_inr": 22731419, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0362', '362', 'DEMO-JK-01-02-0362-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.5, 2039.0, 'Residential',
    34.125589, 74.833573, ST_GeomFromText('POLYGON((74.833496 34.125647, 74.833604 34.125647, 74.833634 34.125627, 74.833634 34.125511, 74.833496 34.125511, 74.833496 34.125647))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "42", "mutation_history": [{"mutation_no": "MUT-SB-1033", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 31458600, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 31458600, "stamp_duty": 1572930, "stamp_duty_rate": "5% (Demo)", "registration_fee": 377503, "effective_year": "2025-26", "government_rate_inr": 31458600, "market_estimate_inr": 40267008, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0363', '363', 'DEMO-JK-01-02-0363-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.72, 14.5, 3935.0, 'Residential',
    34.125562, 74.833818, ST_GeomFromText('POLYGON((74.833699 34.125636, 74.833944 34.125632, 74.833937 34.125486, 74.833691 34.125492, 74.833699 34.125636))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "42", "mutation_history": [{"mutation_no": "MUT-SB-1034", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 62147013, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 62147013, "stamp_duty": 3107351, "stamp_duty_rate": "5% (Demo)", "registration_fee": 745764, "effective_year": "2025-26", "government_rate_inr": 62147013, "market_estimate_inr": 79548177, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90034", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0364', '364', 'DEMO-JK-01-02-0364-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.34, 6.7, 1833.0, 'Residential',
    34.125594, 74.834368, ST_GeomFromText('POLYGON((74.834298 34.12567, 74.834419 34.12567, 74.834419 34.12557, 74.834408 34.125531, 74.834298 34.125531, 74.834298 34.12567))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "42", "mutation_history": [{"mutation_no": "MUT-SB-1035", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24916947, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 24916947, "stamp_duty": 1245847, "stamp_duty_rate": "5% (Demo)", "registration_fee": 299003, "effective_year": "2025-26", "government_rate_inr": 24916947, "market_estimate_inr": 31893692, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-435", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Nissar Ahmad Malik (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0365', '365', 'DEMO-JK-01-02-0365-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.45, 9.0, 2438.0, 'Residential',
    34.125561, 74.834553, ST_GeomFromText('POLYGON((74.834473 34.12563, 74.834633 34.12563, 74.834633 34.125492, 74.834473 34.125492, 74.834473 34.12563))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "43", "mutation_history": [{"mutation_no": "MUT-SB-1036", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 34029930, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 34029930, "stamp_duty": 1701496, "stamp_duty_rate": "5% (Demo)", "registration_fee": 408359, "effective_year": "2025-26", "government_rate_inr": 34029930, "market_estimate_inr": 43558310, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0366', '366', 'DEMO-JK-01-02-0366-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.4, 654.0, 'Residential',
    34.125364, 74.831046, ST_GeomFromText('POLYGON((74.830976 34.125387, 74.831074 34.125387, 74.831102 34.125369, 74.831102 34.125338, 74.830976 34.125338, 74.830976 34.125387))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "43", "mutation_history": [{"mutation_no": "MUT-SB-1037", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9367262, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 9367262, "stamp_duty": 468363, "stamp_duty_rate": "5% (Demo)", "registration_fee": 112407, "effective_year": "2025-26", "government_rate_inr": 9367262, "market_estimate_inr": 11990095, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0367', '367', 'DEMO-JK-01-02-0367-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.6, 12.1, 3289.0, 'Residential',
    34.125386, 74.831281, ST_GeomFromText('POLYGON((74.831179 34.125457, 74.83139 34.125454, 74.831384 34.125312, 74.83117 34.125319, 74.831179 34.125457))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "43", "mutation_history": [{"mutation_no": "MUT-SB-1038", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 48324499, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 48324499, "stamp_duty": 2416225, "stamp_duty_rate": "5% (Demo)", "registration_fee": 579894, "effective_year": "2025-26", "government_rate_inr": 48324499, "market_estimate_inr": 61855359, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0368', '368', 'DEMO-JK-01-02-0368-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 6.1, 1650.0, 'Residential',
    34.125348, 74.831567, ST_GeomFromText('POLYGON((74.831501 34.125421, 74.831614 34.125421, 74.831614 34.125324, 74.831603 34.125287, 74.831501 34.125287, 74.831501 34.125421))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "16", "khata_no": "43", "mutation_history": [{"mutation_no": "MUT-SB-1039", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24841341, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 24841341, "stamp_duty": 1242067, "stamp_duty_rate": "5% (Demo)", "registration_fee": 298096, "effective_year": "2025-26", "government_rate_inr": 24841341, "market_estimate_inr": 31796916, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90039", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0369', '369', 'DEMO-JK-01-02-0369-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 2.9, 795.0, 'Residential',
    34.125468, 74.832126, ST_GeomFromText('POLYGON((74.832065 34.125498, 74.832187 34.125498, 74.832187 34.125439, 74.832065 34.125439, 74.832065 34.125498))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "44", "mutation_history": [{"mutation_no": "MUT-SB-1040", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 12261450, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 12261450, "stamp_duty": 613072, "stamp_duty_rate": "5% (Demo)", "registration_fee": 147137, "effective_year": "2025-26", "government_rate_inr": 12261450, "market_estimate_inr": 15694656, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0370', '370', 'DEMO-JK-01-02-0370-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.7, 732.0, 'Residential',
    34.125415, 74.832209, ST_GeomFromText('POLYGON((74.832152 34.125444, 74.832233 34.125444, 74.832255 34.125429, 74.832255 34.125378, 74.832152 34.125378, 74.832152 34.125444))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "44", "mutation_history": [{"mutation_no": "MUT-SB-1041", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11567872, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 11567872, "stamp_duty": 578394, "stamp_duty_rate": "5% (Demo)", "registration_fee": 138814, "effective_year": "2025-26", "government_rate_inr": 11567872, "market_estimate_inr": 14806876, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-441", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mohammad Shafi Matoo (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0371', '371', 'DEMO-JK-01-02-0371-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.44, 8.8, 2394.0, 'Residential',
    34.12537, 74.832481, ST_GeomFromText('POLYGON((74.832399 34.125434, 74.832571 34.125431, 74.832564 34.125304, 74.832391 34.12531, 74.832399 34.125434))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "44", "mutation_history": [{"mutation_no": "MUT-SB-1042", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32537832, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 32537832, "stamp_duty": 1626892, "stamp_duty_rate": "5% (Demo)", "registration_fee": 390454, "effective_year": "2025-26", "government_rate_inr": 32537832, "market_estimate_inr": 41648425, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0372', '372', 'DEMO-JK-01-02-0372-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.14, 2.8, 758.0, 'Residential',
    34.125429, 74.832692, ST_GeomFromText('POLYGON((74.832634 34.125467, 74.832735 34.125467, 74.832735 34.125417, 74.832724 34.125398, 74.832634 34.125398, 74.832634 34.125467))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "44", "mutation_history": [{"mutation_no": "MUT-SB-1043", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10579297, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 10579297, "stamp_duty": 528965, "stamp_duty_rate": "5% (Demo)", "registration_fee": 126952, "effective_year": "2025-26", "government_rate_inr": 10579297, "market_estimate_inr": 13541500, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0373', '373', 'DEMO-JK-01-02-0373-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.4, 658.0, 'Residential',
    34.125444, 74.833247, ST_GeomFromText('POLYGON((74.833214 34.125488, 74.833281 34.125488, 74.833281 34.125399, 74.833214 34.125399, 74.833214 34.125488))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "45", "mutation_history": [{"mutation_no": "MUT-SB-1044", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9431710, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 9431710, "stamp_duty": 471586, "stamp_duty_rate": "5% (Demo)", "registration_fee": 113181, "effective_year": "2025-26", "government_rate_inr": 9431710, "market_estimate_inr": 12072589, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90044", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0374', '374', 'DEMO-JK-01-02-0374-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.96, 19.2, 5218.0, 'Residential',
    34.125449, 74.83365, ST_GeomFromText('POLYGON((74.833496 34.125527, 74.833712 34.125527, 74.833773 34.125487, 74.833773 34.125352, 74.833496 34.125352, 74.833496 34.125527))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "45", "mutation_history": [{"mutation_no": "MUT-SB-1045", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 76662517, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 76662517, "stamp_duty": 3833126, "stamp_duty_rate": "5% (Demo)", "registration_fee": 919950, "effective_year": "2025-26", "government_rate_inr": 76662517, "market_estimate_inr": 98128022, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0375', '375', 'DEMO-JK-01-02-0375-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.8, 16.1, 4375.0, 'Residential',
    34.125486, 74.833959, ST_GeomFromText('POLYGON((74.833827 34.12556, 74.834099 34.125557, 74.834093 34.12541, 74.833819 34.125417, 74.833827 34.12556))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "45", "mutation_history": [{"mutation_no": "MUT-SB-1046", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 65882965, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 65882965, "stamp_duty": 3294148, "stamp_duty_rate": "5% (Demo)", "registration_fee": 790596, "effective_year": "2025-26", "government_rate_inr": 65882965, "market_estimate_inr": 84330195, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0376', '376', 'DEMO-JK-01-02-0376-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.96, 19.3, 5250.0, 'Residential',
    34.125429, 74.834367, ST_GeomFromText('POLYGON((74.834196 34.125519, 74.834484 34.125519, 74.834484 34.1254, 74.834473 34.125353, 74.834196 34.125353, 74.834196 34.125519))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "17", "khata_no": "45", "mutation_history": [{"mutation_no": "MUT-SB-1047", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 80998023, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 80998023, "stamp_duty": 4049901, "stamp_duty_rate": "5% (Demo)", "registration_fee": 971976, "effective_year": "2025-26", "government_rate_inr": 80998023, "market_estimate_inr": 103677469, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-447", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Irfan Ahmad Ahanger (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0377', '377', 'DEMO-JK-01-02-0377-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.2, 866.0, 'Residential',
    34.125403, 74.834655, ST_GeomFromText('POLYGON((74.834618 34.125456, 74.834692 34.125456, 74.834692 34.12535, 74.834618 34.12535, 74.834618 34.125456))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "46", "mutation_history": [{"mutation_no": "MUT-SB-1048", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13679694, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 13679694, "stamp_duty": 683985, "stamp_duty_rate": "5% (Demo)", "registration_fee": 164156, "effective_year": "2025-26", "government_rate_inr": 13679694, "market_estimate_inr": 17510008, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0378', '378', 'DEMO-JK-01-02-0378-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.24, 4.8, 1312.0, 'Residential',
    34.1255, 74.834673, ST_GeomFromText('POLYGON((74.834603 34.125542, 74.834701 34.125542, 74.834728 34.125524, 74.834728 34.125445, 74.834603 34.125445, 74.834603 34.125542))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "46", "mutation_history": [{"mutation_no": "MUT-SB-1049", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17830636, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 17830636, "stamp_duty": 891532, "stamp_duty_rate": "5% (Demo)", "registration_fee": 213968, "effective_year": "2025-26", "government_rate_inr": 17830636, "market_estimate_inr": 22823214, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90049", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0379', '379', 'DEMO-JK-01-02-0379-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.58, 11.6, 3156.0, 'Residential',
    34.125283, 74.830031, ST_GeomFromText('POLYGON((74.829918 34.125346, 74.830151 34.125343, 74.830145 34.125219, 74.82991 34.125226, 74.829918 34.125346))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "46", "mutation_history": [{"mutation_no": "MUT-SB-1050", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 44052283, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 44052283, "stamp_duty": 2202614, "stamp_duty_rate": "5% (Demo)", "registration_fee": 528627, "effective_year": "2025-26", "government_rate_inr": 44052283, "market_estimate_inr": 56386922, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0380', '380', 'DEMO-JK-01-02-0380-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.26, 5.3, 1440.0, 'Residential',
    34.125178, 74.831066, ST_GeomFromText('POLYGON((74.830997 34.125239, 74.831115 34.125239, 74.831115 34.125158, 74.831104 34.125127, 74.830997 34.125127, 74.830997 34.125239))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "46", "mutation_history": [{"mutation_no": "MUT-SB-1051", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20635140, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 20635140, "stamp_duty": 1031757, "stamp_duty_rate": "5% (Demo)", "registration_fee": 247622, "effective_year": "2025-26", "government_rate_inr": 20635140, "market_estimate_inr": 26412979, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0381', '381', 'DEMO-JK-01-02-0381-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.98, 19.6, 5328.0, 'Residential',
    34.12522, 74.831589, ST_GeomFromText('POLYGON((74.831464 34.125316, 74.831714 34.125316, 74.831714 34.125123, 74.831464 34.125123, 74.831464 34.125316))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "47", "mutation_history": [{"mutation_no": "MUT-SB-1052", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 78277040, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 78277040, "stamp_duty": 3913852, "stamp_duty_rate": "5% (Demo)", "registration_fee": 939324, "effective_year": "2025-26", "government_rate_inr": 78277040, "market_estimate_inr": 100194611, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0382', '382', 'DEMO-JK-01-02-0382-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.2, 1139.0, 'Residential',
    34.125201, 74.831752, ST_GeomFromText('POLYGON((74.831685 34.12524, 74.831778 34.12524, 74.831805 34.125222, 74.831805 34.125152, 74.831685 34.125152, 74.831685 34.12524))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "47", "mutation_history": [{"mutation_no": "MUT-SB-1053", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17156108, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 17156108, "stamp_duty": 857805, "stamp_duty_rate": "5% (Demo)", "registration_fee": 205873, "effective_year": "2025-26", "government_rate_inr": 17156108, "market_estimate_inr": 21959818, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-453", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Abdul Rashid Wani (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0383', '383', 'DEMO-JK-01-02-0383-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.4, 1732.0, 'Residential',
    34.125283, 74.831781, ST_GeomFromText('POLYGON((74.831702 34.125332, 74.831868 34.125328, 74.831861 34.125233, 74.831694 34.125239, 74.831702 34.125332))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "47", "mutation_history": [{"mutation_no": "MUT-SB-1054", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 26724421, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 26724421, "stamp_duty": 1336221, "stamp_duty_rate": "5% (Demo)", "registration_fee": 320693, "effective_year": "2025-26", "government_rate_inr": 26724421, "market_estimate_inr": 34207259, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90054", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0384', '384', 'DEMO-JK-01-02-0384-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.46, 9.3, 2520.0, 'Residential',
    34.125242, 74.832256, ST_GeomFromText('POLYGON((74.832162 34.12532, 74.832322 34.12532, 74.832322 34.125216, 74.832311 34.125176, 74.832162 34.125176, 74.832162 34.12532))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "18", "khata_no": "47", "mutation_history": [{"mutation_no": "MUT-SB-1055", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 39797889, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 39797889, "stamp_duty": 1989894, "stamp_duty_rate": "5% (Demo)", "registration_fee": 477575, "effective_year": "2025-26", "government_rate_inr": 39797889, "market_estimate_inr": 50941298, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0385', '385', 'DEMO-JK-01-02-0385-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.2, 4.0, 1083.0, 'Residential',
    34.12519, 74.83314, ST_GeomFromText('POLYGON((74.833086 34.125235, 74.833195 34.125235, 74.833195 34.125145, 74.833086 34.125145, 74.833086 34.125235))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "48", "mutation_history": [{"mutation_no": "MUT-SB-1056", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14721482, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 14721482, "stamp_duty": 736074, "stamp_duty_rate": "5% (Demo)", "registration_fee": 176658, "effective_year": "2025-26", "government_rate_inr": 14721482, "market_estimate_inr": 18843497, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0386', '386', 'DEMO-JK-01-02-0386-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.4, 1747.0, 'Residential',
    34.125305, 74.8332, ST_GeomFromText('POLYGON((74.833121 34.125354, 74.833232 34.125354, 74.833264 34.125333, 74.833264 34.125241, 74.833121 34.125241, 74.833121 34.125354))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "48", "mutation_history": [{"mutation_no": "MUT-SB-1057", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24386698, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 24386698, "stamp_duty": 1219335, "stamp_duty_rate": "5% (Demo)", "registration_fee": 292640, "effective_year": "2025-26", "government_rate_inr": 24386698, "market_estimate_inr": 31214973, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0387', '387', 'DEMO-JK-01-02-0387-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.46, 9.3, 2525.0, 'Residential',
    34.125171, 74.833423, ST_GeomFromText('POLYGON((74.833323 34.125227, 74.833531 34.125224, 74.833524 34.125113, 74.833315 34.125119, 74.833323 34.125227))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "48", "mutation_history": [{"mutation_no": "MUT-SB-1058", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 36165930, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 36165930, "stamp_duty": 1808296, "stamp_duty_rate": "5% (Demo)", "registration_fee": 433991, "effective_year": "2025-26", "government_rate_inr": 36165930, "market_estimate_inr": 46292390, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0388', '388', 'DEMO-JK-01-02-0388-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.28, 5.7, 1543.0, 'Residential',
    34.1253, 74.83351, ST_GeomFromText('POLYGON((74.83344 34.125364, 74.833561 34.125364, 74.833561 34.12528, 74.83355 34.125247, 74.83344 34.125247, 74.83344 34.125364))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "48", "mutation_history": [{"mutation_no": "MUT-SB-1059", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 22672823, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 22672823, "stamp_duty": 1133641, "stamp_duty_rate": "5% (Demo)", "registration_fee": 272074, "effective_year": "2025-26", "government_rate_inr": 22672823, "market_estimate_inr": 29021213, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-459", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Javid Ahmad Sofi (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90059", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0389', '389', 'DEMO-JK-01-02-0389-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.4, 8.0, 2179.0, 'Residential',
    34.125297, 74.833641, ST_GeomFromText('POLYGON((74.833572 34.125368, 74.83371 34.125368, 74.83371 34.125225, 74.833572 34.125225, 74.833572 34.125368))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "49", "mutation_history": [{"mutation_no": "MUT-SB-1060", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32814999, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 32814999, "stamp_duty": 1640750, "stamp_duty_rate": "5% (Demo)", "registration_fee": 393780, "effective_year": "2025-26", "government_rate_inr": 32814999, "market_estimate_inr": 42003199, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0390', '390', 'DEMO-JK-01-02-0390-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.3, 900.0, 'Residential',
    34.125339, 74.833926, ST_GeomFromText('POLYGON((74.833868 34.125374, 74.833949 34.125374, 74.833972 34.125359, 74.833972 34.125294, 74.833868 34.125294, 74.833868 34.125374))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "49", "mutation_history": [{"mutation_no": "MUT-SB-1061", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13878212, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 13878212, "stamp_duty": 693911, "stamp_duty_rate": "5% (Demo)", "registration_fee": 166539, "effective_year": "2025-26", "government_rate_inr": 13878212, "market_estimate_inr": 17764111, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0391', '391', 'DEMO-JK-01-02-0391-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.56, 11.2, 3045.0, 'Residential',
    34.125308, 74.83407, ST_GeomFromText('POLYGON((74.833989 34.125391, 74.834158 34.125387, 74.834152 34.125224, 74.833981 34.12523, 74.833989 34.125391))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "49", "mutation_history": [{"mutation_no": "MUT-SB-1062", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 48090444, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 48090444, "stamp_duty": 2404522, "stamp_duty_rate": "5% (Demo)", "registration_fee": 577085, "effective_year": "2025-26", "government_rate_inr": 48090444, "market_estimate_inr": 61555768, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0392', '392', 'DEMO-JK-01-02-0392-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 717.0, 'Residential',
    34.1251, 74.830189, ST_GeomFromText('POLYGON((74.830133 34.125137, 74.83023 34.125137, 74.83023 34.125088, 74.830219 34.125069, 74.830133 34.125069, 74.830133 34.125137))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "19", "khata_no": "49", "mutation_history": [{"mutation_no": "MUT-SB-1063", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9741464, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 9741464, "stamp_duty": 487073, "stamp_duty_rate": "5% (Demo)", "registration_fee": 116898, "effective_year": "2025-26", "government_rate_inr": 9741464, "market_estimate_inr": 12469074, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0393', '393', 'DEMO-JK-01-02-0393-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.33, 6.7, 1819.0, 'Residential',
    34.125079, 74.830951, ST_GeomFromText('POLYGON((74.83089 34.125147, 74.831012 34.125147, 74.831012 34.125012, 74.83089 34.125012, 74.83089 34.125147))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "50", "mutation_history": [{"mutation_no": "MUT-SB-1064", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 25383505, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 25383505, "stamp_duty": 1269175, "stamp_duty_rate": "5% (Demo)", "registration_fee": 304602, "effective_year": "2025-26", "government_rate_inr": 25383505, "market_estimate_inr": 32490886, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90064", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0394', '394', 'DEMO-JK-01-02-0394-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.44, 8.9, 2420.0, 'Residential',
    34.125089, 74.832112, ST_GeomFromText('POLYGON((74.832007 34.125142, 74.832155 34.125142, 74.832196 34.125114, 74.832196 34.125023, 74.832007 34.125023, 74.832007 34.125142))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "50", "mutation_history": [{"mutation_no": "MUT-SB-1065", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 34667060, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 34667060, "stamp_duty": 1733353, "stamp_duty_rate": "5% (Demo)", "registration_fee": 416005, "effective_year": "2025-26", "government_rate_inr": 34667060, "market_estimate_inr": 44373837, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-465", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Shakeel Ahmad Yatoo (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0395', '395', 'DEMO-JK-01-02-0395-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.86, 17.1, 4658.0, 'Residential',
    34.125101, 74.832286, ST_GeomFromText('POLYGON((74.832169 34.12519, 74.83241 34.125186, 74.832403 34.12501, 74.832161 34.125017, 74.832169 34.12519))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "50", "mutation_history": [{"mutation_no": "MUT-SB-1066", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 68434843, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 68434843, "stamp_duty": 3421742, "stamp_duty_rate": "5% (Demo)", "registration_fee": 821218, "effective_year": "2025-26", "government_rate_inr": 68434843, "market_estimate_inr": 87596599, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0396', '396', 'DEMO-JK-01-02-0396-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.33, 6.6, 1809.0, 'Residential',
    34.125056, 74.832523, ST_GeomFromText('POLYGON((74.832452 34.12513, 74.832574 34.12513, 74.832574 34.125032, 74.832563 34.124994, 74.832452 34.124994, 74.832452 34.12513))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "50", "mutation_history": [{"mutation_no": "MUT-SB-1067", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 27242778, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 27242778, "stamp_duty": 1362139, "stamp_duty_rate": "5% (Demo)", "registration_fee": 326913, "effective_year": "2025-26", "government_rate_inr": 27242778, "market_estimate_inr": 34870756, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0397', '397', 'DEMO-JK-01-02-0397-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.24, 4.8, 1297.0, 'Residential',
    34.125055, 74.832666, ST_GeomFromText('POLYGON((74.832603 34.125102, 74.832728 34.125102, 74.832728 34.125008, 74.832603 34.125008, 74.832603 34.125102))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "51", "mutation_history": [{"mutation_no": "MUT-SB-1068", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20015748, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 20015748, "stamp_duty": 1000787, "stamp_duty_rate": "5% (Demo)", "registration_fee": 240189, "effective_year": "2025-26", "government_rate_inr": 20015748, "market_estimate_inr": 25620157, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0398', '398', 'DEMO-JK-01-02-0398-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.09, 1.9, 507.0, 'Residential',
    34.125165, 74.832739, ST_GeomFromText('POLYGON((74.832692 34.12519, 74.832757 34.12519, 74.832776 34.125178, 74.832776 34.125134, 74.832692 34.125134, 74.832692 34.12519))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "51", "mutation_history": [{"mutation_no": "MUT-SB-1069", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 8005666, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 8005666, "stamp_duty": 400283, "stamp_duty_rate": "5% (Demo)", "registration_fee": 96068, "effective_year": "2025-26", "government_rate_inr": 8005666, "market_estimate_inr": 10247252, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90069", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0399', '399', 'DEMO-JK-01-02-0399-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.4, 647.0, 'Residential',
    34.125164, 74.833625, ST_GeomFromText('POLYGON((74.833581 34.125196, 74.833676 34.125193, 74.833669 34.12513, 74.833573 34.125137, 74.833581 34.125196))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "51", "mutation_history": [{"mutation_no": "MUT-SB-1070", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 8798318, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 8798318, "stamp_duty": 439916, "stamp_duty_rate": "5% (Demo)", "registration_fee": 105580, "effective_year": "2025-26", "government_rate_inr": 8798318, "market_estimate_inr": 11261847, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0400', '400', 'DEMO-JK-01-02-0400-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.1, 848.0, 'Residential',
    34.125038, 74.833648, ST_GeomFromText('POLYGON((74.83359 34.12508, 74.83369 34.12508, 74.83369 34.125024, 74.833679 34.125002, 74.83359 34.125002, 74.83359 34.12508))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "20", "khata_no": "51", "mutation_history": [{"mutation_no": "MUT-SB-1071", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11835209, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 11835209, "stamp_duty": 591760, "stamp_duty_rate": "5% (Demo)", "registration_fee": 142023, "effective_year": "2025-26", "government_rate_inr": 11835209, "market_estimate_inr": 15149068, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-471", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mudisir Ahmad Parray (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0401', '401', 'DEMO-JK-01-02-0401-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.3, 6.1, 7096.0, 'Residential',
    34.12511, 74.834351, ST_GeomFromText('POLYGON((74.834194 34.125212, 74.834509 34.125212, 74.834509 34.125008, 74.834194 34.125008, 74.834194 34.125212))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "52", "mutation_history": [{"mutation_no": "MUT-SB-1072", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 62644005, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 62644005, "stamp_duty": 3132200, "stamp_duty_rate": "5% (Demo)", "registration_fee": 751728, "effective_year": "2025-26", "government_rate_inr": 62644005, "market_estimate_inr": 80184326, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0402', '402', 'DEMO-JK-01-02-0402-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.26, 5.2, 1413.0, 'Residential',
    34.124985, 74.830039, ST_GeomFromText('POLYGON((74.829952 34.125023, 74.830075 34.125023, 74.830109 34.125, 74.830109 34.124939, 74.829952 34.124939, 74.829952 34.125023))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "52", "mutation_history": [{"mutation_no": "MUT-SB-1073", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20760847, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 20760847, "stamp_duty": 1038042, "stamp_duty_rate": "5% (Demo)", "registration_fee": 249130, "effective_year": "2025-26", "government_rate_inr": 20760847, "market_estimate_inr": 26573884, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0403', '403', 'DEMO-JK-01-02-0403-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.31, 6.2, 1681.0, 'Residential',
    34.12499, 74.831629, ST_GeomFromText('POLYGON((74.831554 34.12504, 74.831712 34.125036, 74.831706 34.124939, 74.831546 34.124946, 74.831554 34.12504))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "52", "mutation_history": [{"mutation_no": "MUT-SB-1074", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 25313713, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 25313713, "stamp_duty": 1265686, "stamp_duty_rate": "5% (Demo)", "registration_fee": 303765, "effective_year": "2025-26", "government_rate_inr": 25313713, "market_estimate_inr": 32401553, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90074", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0404', '404', 'DEMO-JK-01-02-0404-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.72, 14.4, 3908.0, 'Residential',
    34.124848, 74.831734, ST_GeomFromText('POLYGON((74.831581 34.124923, 74.831839 34.124923, 74.831839 34.124824, 74.831828 34.124785, 74.831581 34.124785, 74.831581 34.124923))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "52", "mutation_history": [{"mutation_no": "MUT-SB-1075", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 60283678, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 60283678, "stamp_duty": 3014184, "stamp_duty_rate": "5% (Demo)", "registration_fee": 723404, "effective_year": "2025-26", "government_rate_inr": 60283678, "market_estimate_inr": 77163108, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0405', '405', 'DEMO-JK-01-02-0405-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 706.0, 'Residential',
    34.12492, 74.832174, ST_GeomFromText('POLYGON((74.832135 34.124961, 74.832213 34.124961, 74.832213 34.124879, 74.832135 34.124879, 74.832135 34.124961))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "53", "mutation_history": [{"mutation_no": "MUT-SB-1076", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11154805, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 11154805, "stamp_duty": 557740, "stamp_duty_rate": "5% (Demo)", "registration_fee": 133858, "effective_year": "2025-26", "government_rate_inr": 11154805, "market_estimate_inr": 14278150, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0406', '406', 'DEMO-JK-01-02-0406-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.3, 1182.0, 'Residential',
    34.124974, 74.832302, ST_GeomFromText('POLYGON((74.8322 34.125004, 74.832344 34.125004, 74.832384 34.124978, 74.832384 34.124943, 74.8322 34.124943, 74.8322 34.125004))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "53", "mutation_history": [{"mutation_no": "MUT-SB-1077", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 16062915, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 16062915, "stamp_duty": 803146, "stamp_duty_rate": "5% (Demo)", "registration_fee": 192755, "effective_year": "2025-26", "government_rate_inr": 16062915, "market_estimate_inr": 20560531, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-477", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Farooq Ahmad Dar (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0407', '407', 'DEMO-JK-01-02-0407-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.35, 7.1, 1927.0, 'Residential',
    34.124883, 74.833021, ST_GeomFromText('POLYGON((74.832947 34.124941, 74.833102 34.124938, 74.833095 34.124824, 74.832939 34.124831, 74.832947 34.124941))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "53", "mutation_history": [{"mutation_no": "MUT-SB-1078", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 26899402, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 26899402, "stamp_duty": 1344970, "stamp_duty_rate": "5% (Demo)", "registration_fee": 322793, "effective_year": "2025-26", "government_rate_inr": 26899402, "market_estimate_inr": 34431235, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0408', '408', 'DEMO-JK-01-02-0408-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.3, 901.0, 'Residential',
    34.12487, 74.833141, ST_GeomFromText('POLYGON((74.833079 34.124912, 74.833185 34.124912, 74.833185 34.124856, 74.833175 34.124834, 74.833079 34.124834, 74.833079 34.124912))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "21", "khata_no": "53", "mutation_history": [{"mutation_no": "MUT-SB-1079", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 12903776, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 12903776, "stamp_duty": 645189, "stamp_duty_rate": "5% (Demo)", "registration_fee": 154845, "effective_year": "2025-26", "government_rate_inr": 12903776, "market_estimate_inr": 16516833, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90079", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0409', '409', 'DEMO-JK-01-02-0409-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.5, 1756.0, 'Residential',
    34.124984, 74.833988, ST_GeomFromText('POLYGON((74.833917 34.12504, 74.834059 34.12504, 74.834059 34.124928, 74.833917 34.124928, 74.833917 34.12504))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "54", "mutation_history": [{"mutation_no": "MUT-SB-1080", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 25801483, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 25801483, "stamp_duty": 1290074, "stamp_duty_rate": "5% (Demo)", "registration_fee": 309618, "effective_year": "2025-26", "government_rate_inr": 25801483, "market_estimate_inr": 33025898, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0410', '410', 'DEMO-JK-01-02-0410-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.09, 1.9, 510.0, 'Residential',
    34.124911, 74.834017, ST_GeomFromText('POLYGON((74.833979 34.124941, 74.834032 34.124941, 74.834047 34.124931, 74.834047 34.124872, 74.833979 34.124872, 74.833979 34.124941))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "54", "mutation_history": [{"mutation_no": "MUT-SB-1081", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 7677951, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 7677951, "stamp_duty": 383898, "stamp_duty_rate": "5% (Demo)", "registration_fee": 92135, "effective_year": "2025-26", "government_rate_inr": 7677951, "market_estimate_inr": 9827777, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0411', '411', 'DEMO-JK-01-02-0411-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.81, 16.1, 4392.0, 'Residential',
    34.124909, 74.834172, ST_GeomFromText('POLYGON((74.83408 34.125014, 74.834271 34.12501, 74.834265 34.124802, 74.834072 34.124808, 74.83408 34.125014))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "54", "mutation_history": [{"mutation_no": "MUT-SB-1082", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 67761327, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 67761327, "stamp_duty": 3388066, "stamp_duty_rate": "5% (Demo)", "registration_fee": 813136, "effective_year": "2025-26", "government_rate_inr": 67761327, "market_estimate_inr": 86734499, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0412', '412', 'DEMO-JK-01-02-0412-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.4, 1201.0, 'Residential',
    34.124997, 74.834397, ST_GeomFromText('POLYGON((74.83433 34.125049, 74.834446 34.125049, 74.834446 34.12498, 74.834435 34.124954, 74.83433 34.124954, 74.83433 34.125049))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "54", "mutation_history": [{"mutation_no": "MUT-SB-1083", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 18969544, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 18969544, "stamp_duty": 948477, "stamp_duty_rate": "5% (Demo)", "registration_fee": 227635, "effective_year": "2025-26", "government_rate_inr": 18969544, "market_estimate_inr": 24281016, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-483", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mohammad Altaf Sheikh (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0413', '413', 'DEMO-JK-01-02-0413-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.5, 2040.0, 'Residential',
    34.124888, 74.834457, ST_GeomFromText('POLYGON((74.834382 34.12495, 74.834531 34.12495, 74.834531 34.124826, 74.834382 34.124826, 74.834382 34.12495))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "55", "mutation_history": [{"mutation_no": "MUT-SB-1084", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 27726100, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 27726100, "stamp_duty": 1386305, "stamp_duty_rate": "5% (Demo)", "registration_fee": 332713, "effective_year": "2025-26", "government_rate_inr": 27726100, "market_estimate_inr": 35489408, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90084", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0414', '414', 'DEMO-JK-01-02-0414-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 2.9, 794.0, 'Residential',
    34.125, 74.834574, ST_GeomFromText('POLYGON((74.834501 34.125027, 74.834603 34.125027, 74.834632 34.125008, 74.834632 34.12497, 74.834501 34.12497, 74.834501 34.125027))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "55", "mutation_history": [{"mutation_no": "MUT-SB-1085", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11083716, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 11083716, "stamp_duty": 554186, "stamp_duty_rate": "5% (Demo)", "registration_fee": 133005, "effective_year": "2025-26", "government_rate_inr": 11083716, "market_estimate_inr": 14187156, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0415', '415', 'DEMO-JK-01-02-0415-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.5, 961.0, 'Residential',
    34.124955, 74.834993, ST_GeomFromText('POLYGON((74.834934 34.124991, 74.83506 34.124987, 74.835053 34.124917, 74.834926 34.124924, 74.834934 34.124991))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "55", "mutation_history": [{"mutation_no": "MUT-SB-1086", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13771718, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 13771718, "stamp_duty": 688586, "stamp_duty_rate": "5% (Demo)", "registration_fee": 165261, "effective_year": "2025-26", "government_rate_inr": 13771718, "market_estimate_inr": 17627799, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0416', '416', 'DEMO-JK-01-02-0416-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.41, 8.1, 2217.0, 'Residential',
    34.124875, 74.835084, ST_GeomFromText('POLYGON((74.834993 34.124946, 74.835149 34.124946, 74.835149 34.124852, 74.835138 34.124816, 74.834993 34.124816, 74.834993 34.124946))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "22", "khata_no": "55", "mutation_history": [{"mutation_no": "MUT-SB-1087", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32579886, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 32579886, "stamp_duty": 1628994, "stamp_duty_rate": "5% (Demo)", "registration_fee": 390959, "effective_year": "2025-26", "government_rate_inr": 32579886, "market_estimate_inr": 41702254, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0417', '417', 'DEMO-JK-01-02-0417-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.3, 1994.0, 'Residential',
    34.124993, 74.8351, ST_GeomFromText('POLYGON((74.835026 34.125054, 74.835174 34.125054, 74.835174 34.124932, 74.835026 34.124932, 74.835026 34.125054))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "56", "mutation_history": [{"mutation_no": "MUT-SB-1088", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30025406, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 30025406, "stamp_duty": 1501270, "stamp_duty_rate": "5% (Demo)", "registration_fee": 360305, "effective_year": "2025-26", "government_rate_inr": 30025406, "market_estimate_inr": 38432520, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0418', '418', 'DEMO-JK-01-02-0418-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.4, 921.0, 'Residential',
    34.124845, 74.830737, ST_GeomFromText('POLYGON((74.830677 34.12488, 74.830761 34.12488, 74.830785 34.124864, 74.830785 34.124801, 74.830677 34.124801, 74.830677 34.12488))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "56", "mutation_history": [{"mutation_no": "MUT-SB-1089", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14206430, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 14206430, "stamp_duty": 710322, "stamp_duty_rate": "5% (Demo)", "registration_fee": 170477, "effective_year": "2025-26", "government_rate_inr": 14206430, "market_estimate_inr": 18184230, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-489", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Suhail Ahmad Baba (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90089", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0419', '419', 'DEMO-JK-01-02-0419-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 3.0, 826.0, 'Residential',
    34.124717, 74.830899, ST_GeomFromText('POLYGON((74.830865 34.124768, 74.83094 34.124764, 74.830933 34.124664, 74.830857 34.124671, 74.830865 34.124768))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "56", "mutation_history": [{"mutation_no": "MUT-SB-1090", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13041831, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 13041831, "stamp_duty": 652092, "stamp_duty_rate": "5% (Demo)", "registration_fee": 156502, "effective_year": "2025-26", "government_rate_inr": 13041831, "market_estimate_inr": 16693544, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0420', '420', 'DEMO-JK-01-02-0420-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.1, 855.0, 'Residential',
    34.124788, 74.831065, ST_GeomFromText('POLYGON((74.831003 34.124828, 74.831109 34.124828, 74.831109 34.124774, 74.831099 34.124754, 74.831003 34.124754, 74.831003 34.124828))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "56", "mutation_history": [{"mutation_no": "MUT-SB-1091", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11620614, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 11620614, "stamp_duty": 581031, "stamp_duty_rate": "5% (Demo)", "registration_fee": 139447, "effective_year": "2025-26", "government_rate_inr": 11620614, "market_estimate_inr": 14874386, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0421', '421', 'DEMO-JK-01-02-0421-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.38, 7.6, 7517.0, 'Residential',
    34.124764, 74.831791, ST_GeomFromText('POLYGON((74.831664 34.124898, 74.831918 34.124898, 74.831918 34.12463, 74.831664 34.12463, 74.831664 34.124898))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "57", "mutation_history": [{"mutation_no": "MUT-SB-1092", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 66913538, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 66913538, "stamp_duty": 3345677, "stamp_duty_rate": "5% (Demo)", "registration_fee": 802962, "effective_year": "2025-26", "government_rate_inr": 66913538, "market_estimate_inr": 85649329, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0422', '422', 'DEMO-JK-01-02-0422-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.4, 929.0, 'Residential',
    34.124711, 74.832063, ST_GeomFromText('POLYGON((74.832011 34.12475, 74.832084 34.12475, 74.832105 34.124737, 74.832105 34.124659, 74.832011 34.124659, 74.832011 34.12475))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "57", "mutation_history": [{"mutation_no": "MUT-SB-1093", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13314558, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 13314558, "stamp_duty": 665728, "stamp_duty_rate": "5% (Demo)", "registration_fee": 159775, "effective_year": "2025-26", "government_rate_inr": 13314558, "market_estimate_inr": 17042634, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0423', '423', 'DEMO-JK-01-02-0423-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.41, 8.2, 2236.0, 'Residential',
    34.124822, 74.832589, ST_GeomFromText('POLYGON((74.832497 34.124876, 74.832689 34.124873, 74.832682 34.124766, 74.832489 34.124773, 74.832497 34.124876))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "57", "mutation_history": [{"mutation_no": "MUT-SB-1094", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32851702, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 32851702, "stamp_duty": 1642585, "stamp_duty_rate": "5% (Demo)", "registration_fee": 394220, "effective_year": "2025-26", "government_rate_inr": 32851702, "market_estimate_inr": 42050179, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90094", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0424', '424', 'DEMO-JK-01-02-0424-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.6, 984.0, 'Residential',
    34.124766, 74.832905, ST_GeomFromText('POLYGON((74.832844 34.124813, 74.832949 34.124813, 74.832949 34.124751, 74.832939 34.124727, 74.832844 34.124727, 74.832844 34.124813))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "23", "khata_no": "57", "mutation_history": [{"mutation_no": "MUT-SB-1095", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14816092, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 14816092, "stamp_duty": 740805, "stamp_duty_rate": "5% (Demo)", "registration_fee": 177793, "effective_year": "2025-26", "government_rate_inr": 14816092, "market_estimate_inr": 18964598, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-495", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Showkat Ahmad Zargar (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0425', '425', 'DEMO-JK-01-02-0425-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.1, 1122.0, 'Residential',
    34.124781, 74.833357, ST_GeomFromText('POLYGON((74.833309 34.124835, 74.833404 34.124835, 74.833404 34.124728, 74.833309 34.124728, 74.833309 34.124835))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "58", "mutation_history": [{"mutation_no": "MUT-SB-1096", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17315414, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 17315414, "stamp_duty": 865771, "stamp_duty_rate": "5% (Demo)", "registration_fee": 207785, "effective_year": "2025-26", "government_rate_inr": 17315414, "market_estimate_inr": 22163730, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0426', '426', 'DEMO-JK-01-02-0426-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.28, 5.5, 1508.0, 'Residential',
    34.124734, 74.833446, ST_GeomFromText('POLYGON((74.833358 34.124774, 74.833481 34.124774, 74.833516 34.124751, 74.833516 34.124685, 74.833358 34.124685, 74.833358 34.124774))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "58", "mutation_history": [{"mutation_no": "MUT-SB-1097", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 23822086, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 23822086, "stamp_duty": 1191104, "stamp_duty_rate": "5% (Demo)", "registration_fee": 285865, "effective_year": "2025-26", "government_rate_inr": 23822086, "market_estimate_inr": 30492270, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0427', '427', 'DEMO-JK-01-02-0427-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.28, 5.5, 6954.0, 'Residential',
    34.124711, 74.834146, ST_GeomFromText('POLYGON((74.834 34.124818, 74.834298 34.124814, 74.834292 34.124602, 74.833992 34.124609, 74.834 34.124818))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "58", "mutation_history": [{"mutation_no": "MUT-SB-1098", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 57508342, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 57508342, "stamp_duty": 2875417, "stamp_duty_rate": "5% (Demo)", "registration_fee": 690100, "effective_year": "2025-26", "government_rate_inr": 57508342, "market_estimate_inr": 73610678, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0428', '428', 'DEMO-JK-01-02-0428-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.7, 722.0, 'Residential',
    34.124796, 74.834327, ST_GeomFromText('POLYGON((74.83429 34.124852, 74.834355 34.124852, 74.834355 34.124778, 74.834344 34.124749, 74.83429 34.124749, 74.83429 34.124852))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "58", "mutation_history": [{"mutation_no": "MUT-SB-1099", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10072824, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 10072824, "stamp_duty": 503641, "stamp_duty_rate": "5% (Demo)", "registration_fee": 120874, "effective_year": "2025-26", "government_rate_inr": 10072824, "market_estimate_inr": 12893215, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90099", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0429', '429', 'DEMO-JK-01-02-0429-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.19, 3.8, 1043.0, 'Residential',
    34.124729, 74.834435, ST_GeomFromText('POLYGON((74.834383 34.124774, 74.834488 34.124774, 74.834488 34.124684, 74.834383 34.124684, 74.834383 34.124774))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "59", "mutation_history": [{"mutation_no": "MUT-SB-1100", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14948046, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 14948046, "stamp_duty": 747402, "stamp_duty_rate": "5% (Demo)", "registration_fee": 179377, "effective_year": "2025-26", "government_rate_inr": 14948046, "market_estimate_inr": 19133499, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0430', '430', 'DEMO-JK-01-02-0430-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.43, 8.6, 2350.0, 'Residential',
    34.12482, 74.834541, ST_GeomFromText('POLYGON((74.834421 34.124867, 74.83459 34.124867, 74.834637 34.124835, 74.834637 34.124765, 74.834421 34.124765, 74.834421 34.124867))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "59", "mutation_history": [{"mutation_no": "MUT-SB-1101", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 34523059, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 34523059, "stamp_duty": 1726153, "stamp_duty_rate": "5% (Demo)", "registration_fee": 414277, "effective_year": "2025-26", "government_rate_inr": 34523059, "market_estimate_inr": 44189516, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-501", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Bashir Ahmad Mir (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0431', '431', 'DEMO-JK-01-02-0431-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.44, 8.7, 2373.0, 'Residential',
    34.124657, 74.83006, ST_GeomFromText('POLYGON((74.829991 34.124733, 74.830135 34.124729, 74.830129 34.12458, 74.829983 34.124586, 74.829991 34.124733))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "59", "mutation_history": [{"mutation_no": "MUT-SB-1102", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 35743898, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 35743898, "stamp_duty": 1787195, "stamp_duty_rate": "5% (Demo)", "registration_fee": 428927, "effective_year": "2025-26", "government_rate_inr": 35743898, "market_estimate_inr": 45752189, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0432', '432', 'DEMO-JK-01-02-0432-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.2, 858.0, 'Residential',
    34.124552, 74.8302, ST_GeomFromText('POLYGON((74.830145 34.124597, 74.83024 34.124597, 74.83024 34.124537, 74.83023 34.124514, 74.830145 34.124514, 74.830145 34.124597))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "24", "khata_no": "59", "mutation_history": [{"mutation_no": "MUT-SB-1103", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13235724, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 13235724, "stamp_duty": 661786, "stamp_duty_rate": "5% (Demo)", "registration_fee": 158829, "effective_year": "2025-26", "government_rate_inr": 13235724, "market_estimate_inr": 16941727, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0433', '433', 'DEMO-JK-01-02-0433-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.36, 7.1, 1934.0, 'Residential',
    34.124539, 74.830402, ST_GeomFromText('POLYGON((74.830339 34.124609, 74.830465 34.124609, 74.830465 34.12447, 74.830339 34.12447, 74.830339 34.124609))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "60", "mutation_history": [{"mutation_no": "MUT-SB-1104", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30544721, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 30544721, "stamp_duty": 1527236, "stamp_duty_rate": "5% (Demo)", "registration_fee": 366537, "effective_year": "2025-26", "government_rate_inr": 30544721, "market_estimate_inr": 39097243, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90104", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0434', '434', 'DEMO-JK-01-02-0434-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.63, 12.7, 3457.0, 'Residential',
    34.124572, 74.830749, ST_GeomFromText('POLYGON((74.830643 34.124644, 74.830792 34.124644, 74.830834 34.124616, 74.830834 34.124477, 74.830643 34.124477, 74.830643 34.124644))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "60", "mutation_history": [{"mutation_no": "MUT-SB-1105", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 46984170, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 46984170, "stamp_duty": 2349208, "stamp_duty_rate": "5% (Demo)", "registration_fee": 563810, "effective_year": "2025-26", "government_rate_inr": 46984170, "market_estimate_inr": 60139738, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0435', '435', 'DEMO-JK-01-02-0435-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.7, 1005.0, 'Residential',
    34.124593, 74.831519, ST_GeomFromText('POLYGON((74.831462 34.124632, 74.831584 34.124629, 74.831577 34.124553, 74.831454 34.12456, 74.831462 34.124632))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "60", "mutation_history": [{"mutation_no": "MUT-SB-1106", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14028653, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 14028653, "stamp_duty": 701433, "stamp_duty_rate": "5% (Demo)", "registration_fee": 168344, "effective_year": "2025-26", "government_rate_inr": 14028653, "market_estimate_inr": 17956676, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0436', '436', 'DEMO-JK-01-02-0436-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.25, 5.0, 1354.0, 'Residential',
    34.124632, 74.832098, ST_GeomFromText('POLYGON((74.832034 34.124693, 74.832145 34.124693, 74.832145 34.124612, 74.832134 34.124581, 74.832034 34.124581, 74.832034 34.124693))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "60", "mutation_history": [{"mutation_no": "MUT-SB-1107", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 19394665, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 19394665, "stamp_duty": 969733, "stamp_duty_rate": "5% (Demo)", "registration_fee": 232736, "effective_year": "2025-26", "government_rate_inr": 19394665, "market_estimate_inr": 24825171, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-507", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Zahoor Ahmad Khan (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0437', '437', 'DEMO-JK-01-02-0437-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.5, 2034.0, 'Residential',
    34.124617, 74.832345, ST_GeomFromText('POLYGON((74.832284 34.124693, 74.832406 34.124693, 74.832406 34.124542, 74.832284 34.124542, 74.832284 34.124693))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "61", "mutation_history": [{"mutation_no": "MUT-SB-1108", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 29886749, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 29886749, "stamp_duty": 1494337, "stamp_duty_rate": "5% (Demo)", "registration_fee": 358641, "effective_year": "2025-26", "government_rate_inr": 29886749, "market_estimate_inr": 38255039, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0438', '438', 'DEMO-JK-01-02-0438-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.1, 2.0, 6000.0, 'Residential',
    34.124666, 74.832469, ST_GeomFromText('POLYGON((74.832328 34.124761, 74.832526 34.124761, 74.832582 34.124724, 74.832582 34.124543, 74.832328 34.124543, 74.832328 34.124761))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "61", "mutation_history": [{"mutation_no": "MUT-SB-1109", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 49354513, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 49354513, "stamp_duty": 2467726, "stamp_duty_rate": "5% (Demo)", "registration_fee": 592254, "effective_year": "2025-26", "government_rate_inr": 49354513, "market_estimate_inr": 63173777, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90109", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0439', '439', 'DEMO-JK-01-02-0439-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.3, 2000.0, 'Residential',
    34.124684, 74.832611, ST_GeomFromText('POLYGON((74.832546 34.124751, 74.832683 34.124748, 74.832677 34.124615, 74.832538 34.124622, 74.832546 34.124751))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "61", "mutation_history": [{"mutation_no": "MUT-SB-1110", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30854382, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 30854382, "stamp_duty": 1542719, "stamp_duty_rate": "5% (Demo)", "registration_fee": 370253, "effective_year": "2025-26", "government_rate_inr": 30854382, "market_estimate_inr": 39493609, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0440', '440', 'DEMO-JK-01-02-0440-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.42, 8.3, 2262.0, 'Residential',
    34.124586, 74.833075, ST_GeomFromText('POLYGON((74.832987 34.124661, 74.833137 34.124661, 74.833137 34.124562, 74.833126 34.124523, 74.832987 34.124523, 74.832987 34.124661))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "25", "khata_no": "61", "mutation_history": [{"mutation_no": "MUT-SB-1111", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 35726987, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 35726987, "stamp_duty": 1786349, "stamp_duty_rate": "5% (Demo)", "registration_fee": 428724, "effective_year": "2025-26", "government_rate_inr": 35726987, "market_estimate_inr": 45730543, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0441', '441', 'DEMO-JK-01-02-0441-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.48, 9.7, 2631.0, 'Residential',
    34.124613, 74.833341, ST_GeomFromText('POLYGON((74.833267 34.124694, 74.833415 34.124694, 74.833415 34.124533, 74.833267 34.124533, 74.833267 34.124694))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "62", "mutation_history": [{"mutation_no": "MUT-SB-1112", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 35757558, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 35757558, "stamp_duty": 1787878, "stamp_duty_rate": "5% (Demo)", "registration_fee": 429091, "effective_year": "2025-26", "government_rate_inr": 35757558, "market_estimate_inr": 45769674, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0442', '442', 'DEMO-JK-01-02-0442-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.38, 7.6, 2082.0, 'Residential',
    34.124606, 74.833509, ST_GeomFromText('POLYGON((74.83344 34.124671, 74.833537 34.124671, 74.833564 34.124653, 74.833564 34.124517, 74.83344 34.124517, 74.83344 34.124671))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "62", "mutation_history": [{"mutation_no": "MUT-SB-1113", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 29056167, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 29056167, "stamp_duty": 1452808, "stamp_duty_rate": "5% (Demo)", "registration_fee": 348674, "effective_year": "2025-26", "government_rate_inr": 29056167, "market_estimate_inr": 37191894, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-513", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Fayaz Ahmad Reshi (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0443', '443', 'DEMO-JK-01-02-0443-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.12, 2.5, 678.0, 'Residential',
    34.124588, 74.833744, ST_GeomFromText('POLYGON((74.833692 34.124617, 74.833804 34.124613, 74.833798 34.124558, 74.833684 34.124564, 74.833692 34.124617))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "62", "mutation_history": [{"mutation_no": "MUT-SB-1114", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9706970, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 9706970, "stamp_duty": 485348, "stamp_duty_rate": "5% (Demo)", "registration_fee": 116484, "effective_year": "2025-26", "government_rate_inr": 9706970, "market_estimate_inr": 12424922, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90114", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0444', '444', 'DEMO-JK-01-02-0444-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.5, 10.1, 2745.0, 'Residential',
    34.124544, 74.834114, ST_GeomFromText('POLYGON((74.834023 34.124632, 74.834178 34.124632, 74.834178 34.124515, 74.834167 34.12447, 74.834023 34.12447, 74.834023 34.124632))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "62", "mutation_history": [{"mutation_no": "MUT-SB-1115", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 40335899, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 40335899, "stamp_duty": 2016795, "stamp_duty_rate": "5% (Demo)", "registration_fee": 484031, "effective_year": "2025-26", "government_rate_inr": 40335899, "market_estimate_inr": 51629951, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0445', '445', 'DEMO-JK-01-02-0445-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.44, 8.8, 2388.0, 'Residential',
    34.124578, 74.834261, ST_GeomFromText('POLYGON((74.834175 34.12464, 74.834348 34.12464, 74.834348 34.124515, 74.834175 34.124515, 74.834175 34.12464))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "63", "mutation_history": [{"mutation_no": "MUT-SB-1116", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 35960138, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 35960138, "stamp_duty": 1798007, "stamp_duty_rate": "5% (Demo)", "registration_fee": 431522, "effective_year": "2025-26", "government_rate_inr": 35960138, "market_estimate_inr": 46028977, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0446', '446', 'DEMO-JK-01-02-0446-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 705.0, 'Residential',
    34.124702, 74.834323, ST_GeomFromText('POLYGON((74.83428 34.124737, 74.834341 34.124737, 74.834358 34.124726, 74.834358 34.124654, 74.83428 34.124654, 74.83428 34.124737))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "63", "mutation_history": [{"mutation_no": "MUT-SB-1117", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10868796, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 10868796, "stamp_duty": 543440, "stamp_duty_rate": "5% (Demo)", "registration_fee": 130426, "effective_year": "2025-26", "government_rate_inr": 10868796, "market_estimate_inr": 13912059, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0447', '447', 'DEMO-JK-01-02-0447-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.11, 2.2, 611.0, 'Residential',
    34.124551, 74.834384, ST_GeomFromText('POLYGON((74.834342 34.124583, 74.834432 34.12458, 74.834426 34.124518, 74.834334 34.124524, 74.834342 34.124583))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "63", "mutation_history": [{"mutation_no": "MUT-SB-1118", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9656606, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 9656606, "stamp_duty": 482830, "stamp_duty_rate": "5% (Demo)", "registration_fee": 115879, "effective_year": "2025-26", "government_rate_inr": 9656606, "market_estimate_inr": 12360456, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0448', '448', 'DEMO-JK-01-02-0448-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 5.9, 1617.0, 'Residential',
    34.124612, 74.834453, ST_GeomFromText('POLYGON((74.834373 34.124671, 74.83451 34.124671, 74.83451 34.124593, 74.8345 34.124563, 74.834373 34.124563, 74.834373 34.124671))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "26", "khata_no": "63", "mutation_history": [{"mutation_no": "MUT-SB-1119", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 21978937, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 21978937, "stamp_duty": 1098947, "stamp_duty_rate": "5% (Demo)", "registration_fee": 263747, "effective_year": "2025-26", "government_rate_inr": 21978937, "market_estimate_inr": 28133039, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-519", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Hilal Ahmad Kakroo (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90119", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0449', '449', 'DEMO-JK-01-02-0449-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.35, 7.0, 1909.0, 'Residential',
    34.124577, 74.834525, ST_GeomFromText('POLYGON((74.834451 34.124635, 74.8346 34.124635, 74.8346 34.124519, 74.834451 34.124519, 74.834451 34.124635))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "64", "mutation_history": [{"mutation_no": "MUT-SB-1120", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 26638537, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 26638537, "stamp_duty": 1331927, "stamp_duty_rate": "5% (Demo)", "registration_fee": 319662, "effective_year": "2025-26", "government_rate_inr": 26638537, "market_estimate_inr": 34097327, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0450', '450', 'DEMO-JK-01-02-0450-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.72, 14.5, 3934.0, 'Residential',
    34.124677, 74.834622, ST_GeomFromText('POLYGON((74.834495 34.124748, 74.834673 34.124748, 74.834723 34.124714, 74.834723 34.124588, 74.834495 34.124588, 74.834495 34.124748))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "64", "mutation_history": [{"mutation_no": "MUT-SB-1121", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 56358668, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 56358668, "stamp_duty": 2817933, "stamp_duty_rate": "5% (Demo)", "registration_fee": 676304, "effective_year": "2025-26", "government_rate_inr": 56358668, "market_estimate_inr": 72139095, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0451', '451', 'DEMO-JK-01-02-0451-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.1, 2.1, 567.0, 'Residential',
    34.12464, 74.835114, ST_GeomFromText('POLYGON((74.835068 34.124667, 74.835167 34.124663, 74.835161 34.124611, 74.83506 34.124617, 74.835068 34.124667))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "64", "mutation_history": [{"mutation_no": "MUT-SB-1122", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 8330841, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 8330841, "stamp_duty": 416542, "stamp_duty_rate": "5% (Demo)", "registration_fee": 99970, "effective_year": "2025-26", "government_rate_inr": 8330841, "market_estimate_inr": 10663476, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0452', '452', 'DEMO-JK-01-02-0452-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.33, 6.7, 1814.0, 'Residential',
    34.124454, 74.831402, ST_GeomFromText('POLYGON((74.831308 34.12451, 74.831469 34.12451, 74.831469 34.124436, 74.831458 34.124407, 74.831308 34.124407, 74.831308 34.12451))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "64", "mutation_history": [{"mutation_no": "MUT-SB-1123", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 27311165, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 27311165, "stamp_duty": 1365558, "stamp_duty_rate": "5% (Demo)", "registration_fee": 327734, "effective_year": "2025-26", "government_rate_inr": 27311165, "market_estimate_inr": 34958291, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0453', '453', 'DEMO-JK-01-02-0453-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.24, 4.8, 1301.0, 'Residential',
    34.124381, 74.831826, ST_GeomFromText('POLYGON((74.831749 34.124419, 74.831902 34.124419, 74.831902 34.124342, 74.831749 34.124342, 74.831749 34.124419))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "65", "mutation_history": [{"mutation_no": "MUT-SB-1124", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20068613, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 20068613, "stamp_duty": 1003431, "stamp_duty_rate": "5% (Demo)", "registration_fee": 240823, "effective_year": "2025-26", "government_rate_inr": 20068613, "market_estimate_inr": 25687825, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90124", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0454', '454', 'DEMO-JK-01-02-0454-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.19, 3.8, 1029.0, 'Residential',
    34.124496, 74.832711, ST_GeomFromText('POLYGON((74.832651 34.124534, 74.832736 34.124534, 74.832759 34.124518, 74.832759 34.124446, 74.832651 34.124446, 74.832651 34.124534))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "65", "mutation_history": [{"mutation_no": "MUT-SB-1125", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 16254059, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 16254059, "stamp_duty": 812703, "stamp_duty_rate": "5% (Demo)", "registration_fee": 195049, "effective_year": "2025-26", "government_rate_inr": 16254059, "market_estimate_inr": 20805196, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-525", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Ghulam Mohammad Bhat (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0455', '455', 'DEMO-JK-01-02-0455-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.43, 8.7, 2362.0, 'Residential',
    34.124501, 74.833087, ST_GeomFromText('POLYGON((74.833027 34.124586, 74.833155 34.124582, 74.833149 34.124415, 74.833019 34.124422, 74.833027 34.124586))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "65", "mutation_history": [{"mutation_no": "MUT-SB-1126", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32096116, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 32096116, "stamp_duty": 1604806, "stamp_duty_rate": "5% (Demo)", "registration_fee": 385153, "effective_year": "2025-26", "government_rate_inr": 32096116, "market_estimate_inr": 41083028, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0456', '456', 'DEMO-JK-01-02-0456-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 6.1, 1651.0, 'Residential',
    34.124499, 74.833224, ST_GeomFromText('POLYGON((74.833176 34.124597, 74.83326 34.124597, 74.83326 34.124467, 74.83325 34.124416, 74.833176 34.124416, 74.833176 34.124597))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "27", "khata_no": "65", "mutation_history": [{"mutation_no": "MUT-SB-1127", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 23040114, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 23040114, "stamp_duty": 1152006, "stamp_duty_rate": "5% (Demo)", "registration_fee": 276481, "effective_year": "2025-26", "government_rate_inr": 23040114, "market_estimate_inr": 29491346, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0457', '457', 'DEMO-JK-01-02-0457-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.4, 8.0, 2167.0, 'Residential',
    34.124413, 74.833652, ST_GeomFromText('POLYGON((74.833574 34.124476, 74.833731 34.124476, 74.833731 34.124351, 74.833574 34.124351, 74.833574 34.124476))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "66", "mutation_history": [{"mutation_no": "MUT-SB-1128", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 31042306, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 31042306, "stamp_duty": 1552115, "stamp_duty_rate": "5% (Demo)", "registration_fee": 372508, "effective_year": "2025-26", "government_rate_inr": 31042306, "market_estimate_inr": 39734152, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0458', '458', 'DEMO-JK-01-02-0458-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.53, 10.7, 2905.0, 'Residential',
    34.124423, 74.834251, ST_GeomFromText('POLYGON((74.834151 34.124488, 74.834292 34.124488, 74.834331 34.124462, 74.834331 34.124339, 74.834151 34.124339, 74.834151 34.124488))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "66", "mutation_history": [{"mutation_no": "MUT-SB-1129", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 42688649, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 42688649, "stamp_duty": 2134432, "stamp_duty_rate": "5% (Demo)", "registration_fee": 512264, "effective_year": "2025-26", "government_rate_inr": 42688649, "market_estimate_inr": 54641471, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90129", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0459', '459', 'DEMO-JK-01-02-0459-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.28, 5.6, 1532.0, 'Residential',
    34.124389, 74.83462, ST_GeomFromText('POLYGON((74.83453 34.124428, 74.834716 34.124424, 74.83471 34.124349, 74.834522 34.124355, 74.83453 34.124428))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "66", "mutation_history": [{"mutation_no": "MUT-SB-1130", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 23069311, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 23069311, "stamp_duty": 1153466, "stamp_duty_rate": "5% (Demo)", "registration_fee": 276832, "effective_year": "2025-26", "government_rate_inr": 23069311, "market_estimate_inr": 29528718, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0460', '460', 'DEMO-JK-01-02-0460-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.14, 2.8, 758.0, 'Residential',
    34.124381, 74.834928, ST_GeomFromText('POLYGON((74.834861 34.124414, 74.834977 34.124414, 74.834977 34.124371, 74.834966 34.124354, 74.834861 34.124354, 74.834861 34.124414))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "66", "mutation_history": [{"mutation_no": "MUT-SB-1131", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11696799, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 11696799, "stamp_duty": 584840, "stamp_duty_rate": "5% (Demo)", "registration_fee": 140362, "effective_year": "2025-26", "government_rate_inr": 11696799, "market_estimate_inr": 14971903, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-531", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Manzoor Ahmad Rather (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0461', '461', 'DEMO-JK-01-02-0461-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.2, 1141.0, 'Residential',
    34.124446, 74.835043, ST_GeomFromText('POLYGON((74.834982 34.124488, 74.835105 34.124488, 74.835105 34.124404, 74.834982 34.124404, 74.834982 34.124488))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "67", "mutation_history": [{"mutation_no": "MUT-SB-1132", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 18018892, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 18018892, "stamp_duty": 900945, "stamp_duty_rate": "5% (Demo)", "registration_fee": 216227, "effective_year": "2025-26", "government_rate_inr": 18018892, "market_estimate_inr": 23064182, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0462', '462', 'DEMO-JK-01-02-0462-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.1, 1127.0, 'Residential',
    34.124219, 74.830556, ST_GeomFromText('POLYGON((74.830483 34.124255, 74.830585 34.124255, 74.830614 34.124236, 74.830614 34.124175, 74.830483 34.124175, 74.830483 34.124255))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "67", "mutation_history": [{"mutation_no": "MUT-SB-1133", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 15313484, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 15313484, "stamp_duty": 765674, "stamp_duty_rate": "5% (Demo)", "registration_fee": 183762, "effective_year": "2025-26", "government_rate_inr": 15313484, "market_estimate_inr": 19601260, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0463', '463', 'DEMO-JK-01-02-0463-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.5, 1762.0, 'Residential',
    34.12432, 74.831632, ST_GeomFromText('POLYGON((74.831575 34.124387, 74.831696 34.124383, 74.83169 34.124251, 74.831567 34.124258, 74.831575 34.124387))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "67", "mutation_history": [{"mutation_no": "MUT-SB-1134", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24597093, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 24597093, "stamp_duty": 1229855, "stamp_duty_rate": "5% (Demo)", "registration_fee": 295165, "effective_year": "2025-26", "government_rate_inr": 24597093, "market_estimate_inr": 31484279, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90134", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0464', '464', 'DEMO-JK-01-02-0464-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 2.9, 794.0, 'Residential',
    34.124296, 74.831718, ST_GeomFromText('POLYGON((74.831662 34.124337, 74.831758 34.124337, 74.831758 34.124282, 74.831748 34.124261, 74.831662 34.124261, 74.831662 34.124337))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "28", "khata_no": "67", "mutation_history": [{"mutation_no": "MUT-SB-1135", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11373887, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 11373887, "stamp_duty": 568694, "stamp_duty_rate": "5% (Demo)", "registration_fee": 136487, "effective_year": "2025-26", "government_rate_inr": 11373887, "market_estimate_inr": 14558575, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0465', '465', 'DEMO-JK-01-02-0465-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 704.0, 'Residential',
    34.124308, 74.831839, ST_GeomFromText('POLYGON((74.831781 34.124335, 74.831897 34.124335, 74.831897 34.12428, 74.831781 34.12428, 74.831781 34.124335))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "68", "mutation_history": [{"mutation_no": "MUT-SB-1136", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10350308, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 10350308, "stamp_duty": 517515, "stamp_duty_rate": "5% (Demo)", "registration_fee": 124204, "effective_year": "2025-26", "government_rate_inr": 10350308, "market_estimate_inr": 13248394, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0466', '466', 'DEMO-JK-01-02-0466-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.38, 7.5, 2052.0, 'Residential',
    34.124276, 74.831934, ST_GeomFromText('POLYGON((74.831862 34.124338, 74.831964 34.124338, 74.831992 34.124319, 74.831992 34.124193, 74.831862 34.124193, 74.831862 34.124338))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "68", "mutation_history": [{"mutation_no": "MUT-SB-1137", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30903664, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 30903664, "stamp_duty": 1545183, "stamp_duty_rate": "5% (Demo)", "registration_fee": 370844, "effective_year": "2025-26", "government_rate_inr": 30903664, "market_estimate_inr": 39556690, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-537", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Shabir Ahmad Wagay (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0467', '467', 'DEMO-JK-01-02-0467-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.23, 4.7, 1274.0, 'Residential',
    34.124319, 74.832066, ST_GeomFromText('POLYGON((74.832003 34.124364, 74.832136 34.12436, 74.83213 34.124273, 74.831994 34.12428, 74.832003 34.124364))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "68", "mutation_history": [{"mutation_no": "MUT-SB-1138", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 19659639, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 19659639, "stamp_duty": 982982, "stamp_duty_rate": "5% (Demo)", "registration_fee": 235916, "effective_year": "2025-26", "government_rate_inr": 19659639, "market_estimate_inr": 25164338, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0468', '468', 'DEMO-JK-01-02-0468-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.08, 1.6, 448.0, 'Residential',
    34.124322, 74.834071, ST_GeomFromText('POLYGON((74.834029 34.124352, 74.834103 34.124352, 74.834103 34.124312, 74.834092 34.124296, 74.834029 34.124296, 74.834029 34.124352))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "68", "mutation_history": [{"mutation_no": "MUT-SB-1139", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 7073941, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 7073941, "stamp_duty": 353697, "stamp_duty_rate": "5% (Demo)", "registration_fee": 84887, "effective_year": "2025-26", "government_rate_inr": 7073941, "market_estimate_inr": 9054644, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90139", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0469', '469', 'DEMO-JK-01-02-0469-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.11, 2.2, 612.0, 'Residential',
    34.124276, 74.834154, ST_GeomFromText('POLYGON((74.834116 34.124312, 74.834193 34.124312, 74.834193 34.12424, 74.834116 34.12424, 74.834116 34.124312))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "69", "mutation_history": [{"mutation_no": "MUT-SB-1140", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 8319744, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 8319744, "stamp_duty": 415987, "stamp_duty_rate": "5% (Demo)", "registration_fee": 99837, "effective_year": "2025-26", "government_rate_inr": 8319744, "market_estimate_inr": 10649272, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0470', '470', 'DEMO-JK-01-02-0470-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 6.0, 1622.0, 'Residential',
    34.124305, 74.834279, ST_GeomFromText('POLYGON((74.834199 34.124351, 74.834311 34.124351, 74.834342 34.12433, 74.834342 34.124246, 74.834199 34.124246, 74.834199 34.124351))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "69", "mutation_history": [{"mutation_no": "MUT-SB-1141", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 22639866, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 22639866, "stamp_duty": 1131993, "stamp_duty_rate": "5% (Demo)", "registration_fee": 271678, "effective_year": "2025-26", "government_rate_inr": 22639866, "market_estimate_inr": 28979028, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0471', '471', 'DEMO-JK-01-02-0471-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.46, 9.3, 2524.0, 'Residential',
    34.124334, 74.834362, ST_GeomFromText('POLYGON((74.834294 34.124415, 74.834437 34.124411, 74.834431 34.124251, 74.834286 34.124258, 74.834294 34.124415))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "69", "mutation_history": [{"mutation_no": "MUT-SB-1142", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 36163521, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 36163521, "stamp_duty": 1808176, "stamp_duty_rate": "5% (Demo)", "registration_fee": 433962, "effective_year": "2025-26", "government_rate_inr": 36163521, "market_estimate_inr": 46289307, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0472', '472', 'DEMO-JK-01-02-0472-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.42, 8.3, 2262.0, 'Residential',
    34.124115, 74.831757, ST_GeomFromText('POLYGON((74.83168 34.1242, 74.831812 34.1242, 74.831812 34.124087, 74.831801 34.124043, 74.83168 34.124043, 74.83168 34.1242))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "29", "khata_no": "69", "mutation_history": [{"mutation_no": "MUT-SB-1143", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 33228537, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 33228537, "stamp_duty": 1661427, "stamp_duty_rate": "5% (Demo)", "registration_fee": 398742, "effective_year": "2025-26", "government_rate_inr": 33228537, "market_estimate_inr": 42532527, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-543", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Bilal Ahmad Beigh (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0473', '473', 'DEMO-JK-01-02-0473-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.89, 17.8, 4852.0, 'Residential',
    34.124139, 74.831964, ST_GeomFromText('POLYGON((74.831871 34.124257, 74.832058 34.124257, 74.832058 34.124022, 74.831871 34.124022, 74.831871 34.124257))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "70", "mutation_history": [{"mutation_no": "MUT-SB-1144", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 73076195, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 73076195, "stamp_duty": 3653810, "stamp_duty_rate": "5% (Demo)", "registration_fee": 876914, "effective_year": "2025-26", "government_rate_inr": 73076195, "market_estimate_inr": 93537530, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90144", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0474', '474', 'DEMO-JK-01-02-0474-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.5, 1765.0, 'Residential',
    34.124201, 74.83212, ST_GeomFromText('POLYGON((74.832038 34.12425, 74.832153 34.12425, 74.832185 34.124229, 74.832185 34.124139, 74.832038 34.124139, 74.832038 34.12425))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "70", "mutation_history": [{"mutation_no": "MUT-SB-1145", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 27223234, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 27223234, "stamp_duty": 1361162, "stamp_duty_rate": "5% (Demo)", "registration_fee": 326679, "effective_year": "2025-26", "government_rate_inr": 27223234, "market_estimate_inr": 34845740, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0475', '475', 'DEMO-JK-01-02-0475-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.15, 2.9, 795.0, 'Residential',
    34.124087, 74.834743, ST_GeomFromText('POLYGON((74.834692 34.124121, 74.834802 34.124117, 74.834796 34.124051, 74.834684 34.124058, 74.834692 34.124121))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "70", "mutation_history": [{"mutation_no": "MUT-SB-1146", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 12553057, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 12553057, "stamp_duty": 627653, "stamp_duty_rate": "5% (Demo)", "registration_fee": 150637, "effective_year": "2025-26", "government_rate_inr": 12553057, "market_estimate_inr": 16067913, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0476', '476', 'DEMO-JK-01-02-0476-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.24, 4.9, 1331.0, 'Residential',
    34.124143, 74.834875, ST_GeomFromText('POLYGON((74.834816 34.124208, 74.834918 34.124208, 74.834918 34.124122, 74.834907 34.124088, 74.834816 34.124088, 74.834816 34.124208))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "70", "mutation_history": [{"mutation_no": "MUT-SB-1147", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 18087494, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 18087494, "stamp_duty": 904375, "stamp_duty_rate": "5% (Demo)", "registration_fee": 217050, "effective_year": "2025-26", "government_rate_inr": 18087494, "market_estimate_inr": 23151992, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0477', '477', 'DEMO-JK-01-02-0477-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.19, 3.9, 1055.0, 'Residential',
    34.123956, 74.83032, ST_GeomFromText('POLYGON((74.830268 34.124002, 74.830373 34.124002, 74.830373 34.123911, 74.830268 34.123911, 74.830268 34.124002))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "71", "mutation_history": [{"mutation_no": "MUT-SB-1148", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14726154, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 14726154, "stamp_duty": 736308, "stamp_duty_rate": "5% (Demo)", "registration_fee": 176714, "effective_year": "2025-26", "government_rate_inr": 14726154, "market_estimate_inr": 18849477, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0478', '478', 'DEMO-JK-01-02-0478-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.32, 6.3, 1728.0, 'Residential',
    34.123969, 74.831036, ST_GeomFromText('POLYGON((74.830934 34.12401, 74.831078 34.12401, 74.831118 34.123983, 74.831118 34.123922, 74.830934 34.123922, 74.830934 34.12401))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "71", "mutation_history": [{"mutation_no": "MUT-SB-1149", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 24757711, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 24757711, "stamp_duty": 1237886, "stamp_duty_rate": "5% (Demo)", "registration_fee": 297093, "effective_year": "2025-26", "government_rate_inr": 24757711, "market_estimate_inr": 31689870, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-549", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Aijaz Ahmad Chadoora (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90149", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0479', '479', 'DEMO-JK-01-02-0479-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.47, 9.4, 2551.0, 'Residential',
    34.123895, 74.832117, ST_GeomFromText('POLYGON((74.832035 34.123964, 74.832206 34.123961, 74.832199 34.123825, 74.832027 34.123831, 74.832035 34.123964))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "71", "mutation_history": [{"mutation_no": "MUT-SB-1150", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 37476584, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 37476584, "stamp_duty": 1873829, "stamp_duty_rate": "5% (Demo)", "registration_fee": 449719, "effective_year": "2025-26", "government_rate_inr": 37476584, "market_estimate_inr": 47970028, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0480', '480', 'DEMO-JK-01-02-0480-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.2, 4.0, 1089.0, 'Residential',
    34.123996, 74.832129, ST_GeomFromText('POLYGON((74.832071 34.12405, 74.832171 34.12405, 74.832171 34.123978, 74.832161 34.12395, 74.832071 34.12395, 74.832071 34.12405))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "30", "khata_no": "71", "mutation_history": [{"mutation_no": "MUT-SB-1151", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 16395944, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 16395944, "stamp_duty": 819797, "stamp_duty_rate": "5% (Demo)", "registration_fee": 196751, "effective_year": "2025-26", "government_rate_inr": 16395944, "market_estimate_inr": 20986808, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0481', '481', 'DEMO-JK-01-02-0481-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.3, 885.0, 'Residential',
    34.123955, 74.832673, ST_GeomFromText('POLYGON((74.832624 34.123996, 74.832723 34.123996, 74.832723 34.123915, 74.832624 34.123915, 74.832624 34.123996))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "72", "mutation_history": [{"mutation_no": "MUT-SB-1152", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13660266, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 13660266, "stamp_duty": 683013, "stamp_duty_rate": "5% (Demo)", "registration_fee": 163923, "effective_year": "2025-26", "government_rate_inr": 13660266, "market_estimate_inr": 17485140, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0482', '482', 'DEMO-JK-01-02-0482-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.47, 9.3, 2545.0, 'Residential',
    34.123929, 74.833426, ST_GeomFromText('POLYGON((74.833341 34.123995, 74.833461 34.123995, 74.833494 34.123973, 74.833494 34.123842, 74.833341 34.123842, 74.833341 34.123995))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "72", "mutation_history": [{"mutation_no": "MUT-SB-1153", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 40192694, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 40192694, "stamp_duty": 2009635, "stamp_duty_rate": "5% (Demo)", "registration_fee": 482312, "effective_year": "2025-26", "government_rate_inr": 40192694, "market_estimate_inr": 51446648, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0483', '483', 'DEMO-JK-01-02-0483-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.1, 2.0, 538.0, 'Residential',
    34.123978, 74.833815, ST_GeomFromText('POLYGON((74.833779 34.12401, 74.833858 34.124007, 74.833852 34.123945, 74.833771 34.123951, 74.833779 34.12401))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "72", "mutation_history": [{"mutation_no": "MUT-SB-1154", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 7310026, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 7310026, "stamp_duty": 365501, "stamp_duty_rate": "5% (Demo)", "registration_fee": 87720, "effective_year": "2025-26", "government_rate_inr": 7310026, "market_estimate_inr": 9356833, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90154", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0484', '484', 'DEMO-JK-01-02-0484-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.24, 4.8, 1314.0, 'Residential',
    34.123957, 74.834043, ST_GeomFromText('POLYGON((74.833976 34.124014, 74.834092 34.124014, 74.834092 34.123939, 74.834081 34.12391, 74.833976 34.12391, 74.833976 34.124014))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "72", "mutation_history": [{"mutation_no": "MUT-SB-1155", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 18347171, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 18347171, "stamp_duty": 917359, "stamp_duty_rate": "5% (Demo)", "registration_fee": 220166, "effective_year": "2025-26", "government_rate_inr": 18347171, "market_estimate_inr": 23484379, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-555", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Tariq Ahmad Lone (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0485', '485', 'DEMO-JK-01-02-0485-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.49, 9.9, 2684.0, 'Residential',
    34.123842, 74.830238, ST_GeomFromText('POLYGON((74.830128 34.123898, 74.830347 34.123898, 74.830347 34.123787, 74.830128 34.123787, 74.830128 34.123898))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "73", "mutation_history": [{"mutation_no": "MUT-SB-1156", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 38451429, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 38451429, "stamp_duty": 1922571, "stamp_duty_rate": "5% (Demo)", "registration_fee": 461417, "effective_year": "2025-26", "government_rate_inr": 38451429, "market_estimate_inr": 49217829, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0486', '486', 'DEMO-JK-01-02-0486-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.49, 9.8, 2672.0, 'Residential',
    34.123884, 74.831098, ST_GeomFromText('POLYGON((74.830998 34.123944, 74.831138 34.123944, 74.831177 34.123918, 74.831177 34.123806, 74.830998 34.123806, 74.830998 34.123944))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "73", "mutation_history": [{"mutation_no": "MUT-SB-1157", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 39253270, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 39253270, "stamp_duty": 1962664, "stamp_duty_rate": "5% (Demo)", "registration_fee": 471039, "effective_year": "2025-26", "government_rate_inr": 39253270, "market_estimate_inr": 50244186, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0487', '487', 'DEMO-JK-01-02-0487-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.06, 1.2, 5776.0, 'Residential',
    34.123742, 74.831179, ST_GeomFromText('POLYGON((74.831077 34.123867, 74.831289 34.123864, 74.831282 34.123616, 74.831069 34.123623, 74.831077 34.123867))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "73", "mutation_history": [{"mutation_no": "MUT-SB-1158", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 45990601, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 45990601, "stamp_duty": 2299530, "stamp_duty_rate": "5% (Demo)", "registration_fee": 551887, "effective_year": "2025-26", "government_rate_inr": 45990601, "market_estimate_inr": 58867969, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0488', '488', 'DEMO-JK-01-02-0488-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.02, 0.3, 5540.0, 'Residential',
    34.123826, 74.831404, ST_GeomFromText('POLYGON((74.831265 34.123942, 74.831501 34.123942, 74.831501 34.123788, 74.83149 34.123728, 74.831265 34.123728, 74.831265 34.123942))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "31", "khata_no": "73", "mutation_history": [{"mutation_no": "MUT-SB-1159", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 43469175, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 43469175, "stamp_duty": 2173459, "stamp_duty_rate": "5% (Demo)", "registration_fee": 521630, "effective_year": "2025-26", "government_rate_inr": 43469175, "market_estimate_inr": 55640544, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90159", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0489', '489', 'DEMO-JK-01-02-0489-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.59, 11.8, 3208.0, 'Residential',
    34.123839, 74.833929, ST_GeomFromText('POLYGON((74.833841 34.123922, 74.834016 34.123922, 74.834016 34.123756, 74.833841 34.123756, 74.833841 34.123922))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "74", "mutation_history": [{"mutation_no": "MUT-SB-1160", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 50664145, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 50664145, "stamp_duty": 2533207, "stamp_duty_rate": "5% (Demo)", "registration_fee": 607970, "effective_year": "2025-26", "government_rate_inr": 50664145, "market_estimate_inr": 64850106, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0490', '490', 'DEMO-JK-01-02-0490-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.53, 10.6, 2884.0, 'Residential',
    34.123797, 74.83406, ST_GeomFromText('POLYGON((74.833955 34.123859, 74.834102 34.123859, 74.834143 34.123831, 74.834143 34.123717, 74.833955 34.123717, 74.833955 34.123859))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "74", "mutation_history": [{"mutation_no": "MUT-SB-1161", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 39200142, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 39200142, "stamp_duty": 1960007, "stamp_duty_rate": "5% (Demo)", "registration_fee": 470402, "effective_year": "2025-26", "government_rate_inr": 39200142, "market_estimate_inr": 50176182, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-561", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Parvaiz Ahmad Ganie (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0491', '491', 'DEMO-JK-01-02-0491-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.5, 688.0, 'Residential',
    34.123835, 74.834083, ST_GeomFromText('POLYGON((74.834046 34.123875, 74.834126 34.123872, 74.83412 34.123794, 74.834038 34.1238, 74.834046 34.123875))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "74", "mutation_history": [{"mutation_no": "MUT-SB-1162", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 9598629, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 9598629, "stamp_duty": 479931, "stamp_duty_rate": "5% (Demo)", "registration_fee": 115184, "effective_year": "2025-26", "government_rate_inr": 9598629, "market_estimate_inr": 12286245, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0492', '492', 'DEMO-JK-01-02-0492-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.71, 14.1, 3843.0, 'Residential',
    34.123818, 74.834854, ST_GeomFromText('POLYGON((74.834715 34.123899, 74.83495 34.123899, 74.83495 34.123792, 74.83494 34.12375, 74.834715 34.12375, 74.834715 34.123899))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "74", "mutation_history": [{"mutation_no": "MUT-SB-1163", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 55054346, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 55054346, "stamp_duty": 2752717, "stamp_duty_rate": "5% (Demo)", "registration_fee": 660652, "effective_year": "2025-26", "government_rate_inr": 55054346, "market_estimate_inr": 70469563, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0493', '493', 'DEMO-JK-01-02-0493-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.37, 7.5, 2036.0, 'Residential',
    34.12358, 74.831046, ST_GeomFromText('POLYGON((74.830956 34.123632, 74.831135 34.123632, 74.831135 34.123529, 74.830956 34.123529, 74.830956 34.123632))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "75", "mutation_history": [{"mutation_no": "MUT-SB-1164", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 29911151, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 29911151, "stamp_duty": 1495558, "stamp_duty_rate": "5% (Demo)", "registration_fee": 358934, "effective_year": "2025-26", "government_rate_inr": 29911151, "market_estimate_inr": 38286273, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90164", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0494', '494', 'DEMO-JK-01-02-0494-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.74, 14.8, 4016.0, 'Residential',
    34.123688, 74.831394, ST_GeomFromText('POLYGON((74.831276 34.123764, 74.831441 34.123764, 74.831488 34.123733, 74.831488 34.123589, 74.831276 34.123589, 74.831276 34.123764))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "75", "mutation_history": [{"mutation_no": "MUT-SB-1165", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 60482659, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 60482659, "stamp_duty": 3024133, "stamp_duty_rate": "5% (Demo)", "registration_fee": 725792, "effective_year": "2025-26", "government_rate_inr": 60482659, "market_estimate_inr": 77417804, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0495', '495', 'DEMO-JK-01-02-0495-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.48, 9.6, 2621.0, 'Residential',
    34.123672, 74.831543, ST_GeomFromText('POLYGON((74.831473 34.123753, 74.831621 34.123749, 74.831615 34.123589, 74.831464 34.123596, 74.831473 34.123753))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "75", "mutation_history": [{"mutation_no": "MUT-SB-1166", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 40435282, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 40435282, "stamp_duty": 2021764, "stamp_duty_rate": "5% (Demo)", "registration_fee": 485223, "effective_year": "2025-26", "government_rate_inr": 40435282, "market_estimate_inr": 51757161, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0496', '496', 'DEMO-JK-01-02-0496-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.2, 4.0, 1085.0, 'Residential',
    34.123682, 74.831811, ST_GeomFromText('POLYGON((74.83175 34.123734, 74.831855 34.123734, 74.831855 34.123666, 74.831844 34.123639, 74.83175 34.123639, 74.83175 34.123734))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "32", "khata_no": "75", "mutation_history": [{"mutation_no": "MUT-SB-1167", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17137969, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 17137969, "stamp_duty": 856898, "stamp_duty_rate": "5% (Demo)", "registration_fee": 205656, "effective_year": "2025-26", "government_rate_inr": 17137969, "market_estimate_inr": 21936600, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-567", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Nazir Ahmad Naqash (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0497', '497', 'DEMO-JK-01-02-0497-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.2, 4.0, 1079.0, 'Residential',
    34.123689, 74.831981, ST_GeomFromText('POLYGON((74.831925 34.123733, 74.832036 34.123733, 74.832036 34.123645, 74.831925 34.123645, 74.831925 34.123733))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "76", "mutation_history": [{"mutation_no": "MUT-SB-1168", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14658053, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 14658053, "stamp_duty": 732903, "stamp_duty_rate": "5% (Demo)", "registration_fee": 175897, "effective_year": "2025-26", "government_rate_inr": 14658053, "market_estimate_inr": 18762308, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0498', '498', 'DEMO-JK-01-02-0498-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.4, 8.0, 2176.0, 'Residential',
    34.123622, 74.832119, ST_GeomFromText('POLYGON((74.832022 34.123673, 74.832158 34.123673, 74.832196 34.123648, 74.832196 34.123557, 74.832022 34.123557, 74.832022 34.123673))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "76", "mutation_history": [{"mutation_no": "MUT-SB-1169", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 30376048, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 30376048, "stamp_duty": 1518802, "stamp_duty_rate": "5% (Demo)", "registration_fee": 364513, "effective_year": "2025-26", "government_rate_inr": 30376048, "market_estimate_inr": 38881341, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90169", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0499', '499', 'DEMO-JK-01-02-0499-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.4, 1208.0, 'Residential',
    34.12362, 74.832737, ST_GeomFromText('POLYGON((74.832691 34.123676, 74.832791 34.123673, 74.832784 34.123563, 74.832683 34.123569, 74.832691 34.123676))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "76", "mutation_history": [{"mutation_no": "MUT-SB-1170", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17301306, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 17301306, "stamp_duty": 865065, "stamp_duty_rate": "5% (Demo)", "registration_fee": 207616, "effective_year": "2025-26", "government_rate_inr": 17301306, "market_estimate_inr": 22145672, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0500', '500', 'DEMO-JK-01-02-0500-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.3, 1169.0, 'Residential',
    34.123584, 74.832822, ST_GeomFromText('POLYGON((74.832756 34.123636, 74.832869 34.123636, 74.832869 34.123568, 74.832858 34.123541, 74.832756 34.123541, 74.832756 34.123636))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "76", "mutation_history": [{"mutation_no": "MUT-SB-1171", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17175043, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 17175043, "stamp_duty": 858752, "stamp_duty_rate": "5% (Demo)", "registration_fee": 206101, "effective_year": "2025-26", "government_rate_inr": 17175043, "market_estimate_inr": 21984055, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0501', '501', 'DEMO-JK-01-02-0501-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.23, 4.6, 1252.0, 'Residential',
    34.123712, 74.833094, ST_GeomFromText('POLYGON((74.833031 34.123757, 74.833157 34.123757, 74.833157 34.123667, 74.833031 34.123667, 74.833031 34.123757))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "77", "mutation_history": [{"mutation_no": "MUT-SB-1172", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 18857219, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 18857219, "stamp_duty": 942861, "stamp_duty_rate": "5% (Demo)", "registration_fee": 226287, "effective_year": "2025-26", "government_rate_inr": 18857219, "market_estimate_inr": 24137240, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0502', '502', 'DEMO-JK-01-02-0502-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.91, 18.3, 4974.0, 'Residential',
    34.123572, 74.833565, ST_GeomFromText('POLYGON((74.833445 34.123663, 74.833613 34.123663, 74.833661 34.123632, 74.833661 34.123451, 74.833445 34.123451, 74.833445 34.123663))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "77", "mutation_history": [{"mutation_no": "MUT-SB-1173", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 76737359, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 76737359, "stamp_duty": 3836868, "stamp_duty_rate": "5% (Demo)", "registration_fee": 920848, "effective_year": "2025-26", "government_rate_inr": 76737359, "market_estimate_inr": 98223820, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-573", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Riyaz Ahmad Khanday (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0503', '503', 'DEMO-JK-01-02-0503-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.38, 7.5, 2048.0, 'Residential',
    34.123678, 74.834294, ST_GeomFromText('POLYGON((74.834234 34.123751, 74.834362 34.123748, 74.834356 34.123603, 74.834226 34.123609, 74.834234 34.123751))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "77", "mutation_history": [{"mutation_no": "MUT-SB-1174", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 32339106, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 32339106, "stamp_duty": 1616955, "stamp_duty_rate": "5% (Demo)", "registration_fee": 388069, "effective_year": "2025-26", "government_rate_inr": 32339106, "market_estimate_inr": 41394056, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90174", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0504', '504', 'DEMO-JK-01-02-0504-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.19, 3.7, 1013.0, 'Residential',
    34.12367, 74.834514, ST_GeomFromText('POLYGON((74.834452 34.123717, 74.834559 34.123717, 74.834559 34.123655, 74.834548 34.12363, 74.834452 34.12363, 74.834452 34.123717))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Ghulam Mohammad Bhat", "father_husband_name": "Khazir Bhat", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Khazir Bhat", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "33", "khata_no": "77", "mutation_history": [{"mutation_no": "MUT-SB-1175", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 13763764, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 13763764, "stamp_duty": 688188, "stamp_duty_rate": "5% (Demo)", "registration_fee": 165165, "effective_year": "2025-26", "government_rate_inr": 13763764, "market_estimate_inr": 17617618, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0505', '505', 'DEMO-JK-01-02-0505-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.35, 6.9, 1880.0, 'Residential',
    34.123687, 74.834599, ST_GeomFromText('POLYGON((74.834534 34.123752, 74.834665 34.123752, 74.834665 34.123622, 74.834534 34.123622, 74.834534 34.123752))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Bashir Ahmad Mir", "father_husband_name": "Abdul Gani Mir", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Gani Mir", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "78", "mutation_history": [{"mutation_no": "MUT-SB-1176", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 26247091, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 26247091, "stamp_duty": 1312355, "stamp_duty_rate": "5% (Demo)", "registration_fee": 314965, "effective_year": "2025-26", "government_rate_inr": 26247091, "market_estimate_inr": 33596276, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0506', '506', 'DEMO-JK-01-02-0506-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.27, 5.5, 1487.0, 'Residential',
    34.123629, 74.8348, ST_GeomFromText('POLYGON((74.834736 34.12368, 74.834826 34.12368, 74.834852 34.123663, 74.834852 34.123562, 74.834736 34.123562, 74.834736 34.12368))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Farooq Ahmad Dar", "father_husband_name": "Mohammad Sultan Dar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sultan Dar", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "78", "mutation_history": [{"mutation_no": "MUT-SB-1177", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 21301907, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 21301907, "stamp_duty": 1065095, "stamp_duty_rate": "5% (Demo)", "registration_fee": 255623, "effective_year": "2025-26", "government_rate_inr": 21301907, "market_estimate_inr": 27266441, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0507', '507', 'DEMO-JK-01-02-0507-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.61, 12.3, 3345.0, 'Residential',
    34.123596, 74.834925, ST_GeomFromText('POLYGON((74.834815 34.123664, 74.835044 34.12366, 74.835037 34.123527, 74.834806 34.123534, 74.834815 34.123664))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner": {"name": "Abdul Rashid Wani", "father_husband_name": "Ghulam Nabi Wani", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Nabi Wani", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "78", "mutation_history": [{"mutation_no": "MUT-SB-1178", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 49139637, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 49139637, "stamp_duty": 2456982, "stamp_duty_rate": "5% (Demo)", "registration_fee": 589676, "effective_year": "2025-26", "government_rate_inr": 49139637, "market_estimate_inr": 62898735, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0508', '508', 'DEMO-JK-01-02-0508-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.27, 5.4, 1471.0, 'Residential',
    34.12353, 74.830587, ST_GeomFromText('POLYGON((74.8305 34.123579, 74.830648 34.123579, 74.830648 34.123514, 74.830637 34.123488, 74.8305 34.123488, 74.8305 34.123579))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Mushtaq Ahmad Shah", "father_husband_name": "Syed Jalaluddin Shah", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Syed Jalaluddin Shah", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "78", "mutation_history": [{"mutation_no": "MUT-SB-1179", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 22158443, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 22158443, "stamp_duty": 1107922, "stamp_duty_rate": "5% (Demo)", "registration_fee": 265901, "effective_year": "2025-26", "government_rate_inr": 22158443, "market_estimate_inr": 28362807, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-579", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mushtaq Ahmad Shah (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b91,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90179", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0509', '509', 'DEMO-JK-01-02-0509-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.67, 13.4, 3646.0, 'Residential',
    34.123441, 74.830714, ST_GeomFromText('POLYGON((74.830637 34.123547, 74.830792 34.123547, 74.830792 34.123334, 74.830637 34.123334, 74.830637 34.123547))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Tariq Ahmad Lone", "father_husband_name": "Habibullah Lone", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Habibullah Lone", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "79", "mutation_history": [{"mutation_no": "MUT-SB-1180", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 56239988, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 56239988, "stamp_duty": 2811999, "stamp_duty_rate": "5% (Demo)", "registration_fee": 674880, "effective_year": "2025-26", "government_rate_inr": 56239988, "market_estimate_inr": 71987185, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0510', '510', 'DEMO-JK-01-02-0510-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.3, 5.9, 1615.0, 'Residential',
    34.123445, 74.831067, ST_GeomFromText('POLYGON((74.831003 34.1235, 74.831093 34.1235, 74.831118 34.123483, 74.831118 34.123371, 74.831003 34.123371, 74.831003 34.1235))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Manzoor Ahmad Rather", "father_husband_name": "Ghulam Qadir Rather", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Qadir Rather", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "79", "mutation_history": [{"mutation_no": "MUT-SB-1181", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 25501915, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 25501915, "stamp_duty": 1275096, "stamp_duty_rate": "5% (Demo)", "registration_fee": 306023, "effective_year": "2025-26", "government_rate_inr": 25501915, "market_estimate_inr": 32642451, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0511', '511', 'DEMO-JK-01-02-0511-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.3, 1160.0, 'Residential',
    34.123441, 74.83115, ST_GeomFromText('POLYGON((74.831093 34.123486, 74.831213 34.123482, 74.831207 34.123394, 74.831085 34.123401, 74.831093 34.123486))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Zahoor Ahmad Khan", "father_husband_name": "Noor Mohammad Khan", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Noor Mohammad Khan", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "79", "mutation_history": [{"mutation_no": "MUT-SB-1182", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 15764629, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 15764629, "stamp_duty": 788231, "stamp_duty_rate": "5% (Demo)", "registration_fee": 189176, "effective_year": "2025-26", "government_rate_inr": 15764629, "market_estimate_inr": 20178725, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0512', '512', 'DEMO-JK-01-02-0512-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.5, 10.0, 2721.0, 'Residential',
    34.123432, 74.83125, ST_GeomFromText('POLYGON((74.831168 34.123529, 74.831308 34.123529, 74.831308 34.123401, 74.831297 34.123351, 74.831168 34.123351, 74.831168 34.123529))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner": {"name": "Mohammad Altaf Sheikh", "father_husband_name": "Mohammad Ramzan Sheikh", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Ramzan Sheikh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "34", "khata_no": "79", "mutation_history": [{"mutation_no": "MUT-SB-1183", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 37984292, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 37984292, "stamp_duty": 1899215, "stamp_duty_rate": "5% (Demo)", "registration_fee": 455812, "effective_year": "2025-26", "government_rate_inr": 37984292, "market_estimate_inr": 48619894, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0513', '513', 'DEMO-JK-01-02-0513-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.22, 4.3, 1173.0, 'Residential',
    34.123554, 74.831292, ST_GeomFromText('POLYGON((74.831245 34.123611, 74.831339 34.123611, 74.831339 34.123498, 74.831245 34.123498, 74.831245 34.123611))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner": {"name": "Javid Ahmad Sofi", "father_husband_name": "Abdul Salam Sofi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Salam Sofi", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "80", "mutation_history": [{"mutation_no": "MUT-SB-1184", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 16801984, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 16801984, "stamp_duty": 840099, "stamp_duty_rate": "5% (Demo)", "registration_fee": 201624, "effective_year": "2025-26", "government_rate_inr": 16801984, "market_estimate_inr": 21506540, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90184", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0514', '514', 'DEMO-JK-01-02-0514-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.6, 981.0, 'Residential',
    34.12344, 74.83159, ST_GeomFromText('POLYGON((74.83153 34.123477, 74.831614 34.123477, 74.831638 34.123461, 74.831638 34.123393, 74.83153 34.123393, 74.83153 34.123477))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nissar Ahmad Malik", "father_husband_name": "Mohammad Maqbool Malik", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Maqbool Malik", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "80", "mutation_history": [{"mutation_no": "MUT-SB-1185", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14405921, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 14405921, "stamp_duty": 720296, "stamp_duty_rate": "5% (Demo)", "registration_fee": 172871, "effective_year": "2025-26", "government_rate_inr": 14405921, "market_estimate_inr": 18439579, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-585", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Nissar Ahmad Malik (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0515', '515', 'DEMO-JK-01-02-0515-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.61, 12.3, 3346.0, 'Residential',
    34.123495, 74.831801, ST_GeomFromText('POLYGON((74.831724 34.123591, 74.831884 34.123588, 74.831878 34.123398, 74.831716 34.123405, 74.831724 34.123591))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Parvaiz Ahmad Ganie", "father_husband_name": "Ali Mohammad Ganie", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ali Mohammad Ganie", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "80", "mutation_history": [{"mutation_no": "MUT-SB-1186", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 50390607, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 50390607, "stamp_duty": 2519530, "stamp_duty_rate": "5% (Demo)", "registration_fee": 604687, "effective_year": "2025-26", "government_rate_inr": 50390607, "market_estimate_inr": 64499977, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0516', '516', 'DEMO-JK-01-02-0516-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.21, 4.2, 1153.0, 'Residential',
    34.123434, 74.832193, ST_GeomFromText('POLYGON((74.832135 34.123491, 74.832236 34.123491, 74.832236 34.123415, 74.832225 34.123386, 74.832135 34.123386, 74.832135 34.123491))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shabir Ahmad Wagay", "father_husband_name": "Ghulam Ahmad Wagay", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Ahmad Wagay", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "80", "mutation_history": [{"mutation_no": "MUT-SB-1187", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 17793146, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 17793146, "stamp_duty": 889657, "stamp_duty_rate": "5% (Demo)", "registration_fee": 213518, "effective_year": "2025-26", "government_rate_inr": 17793146, "market_estimate_inr": 22775227, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0517', '517', 'DEMO-JK-01-02-0517-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.74, 14.7, 4016.0, 'Residential',
    34.1235, 74.83233, ST_GeomFromText('POLYGON((74.832243 34.123605, 74.832417 34.123605, 74.832417 34.123396, 74.832243 34.123396, 74.832243 34.123605))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Fayaz Ahmad Reshi", "father_husband_name": "Abdul Aziz Reshi", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Aziz Reshi", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "81", "mutation_history": [{"mutation_no": "MUT-SB-1188", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 63423404, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 63423404, "stamp_duty": 3171170, "stamp_duty_rate": "5% (Demo)", "registration_fee": 761081, "effective_year": "2025-26", "government_rate_inr": 63423404, "market_estimate_inr": 81181957, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0518', '518', 'DEMO-JK-01-02-0518-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.28, 5.7, 1545.0, 'Residential',
    34.123498, 74.833131, ST_GeomFromText('POLYGON((74.833051 34.123542, 74.833163 34.123542, 74.833194 34.123522, 74.833194 34.123442, 74.833051 34.123442, 74.833051 34.123542))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner": {"name": "Suhail Ahmad Baba", "father_husband_name": "Ghulam Hassan Baba", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Hassan Baba", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "81", "mutation_history": [{"mutation_no": "MUT-SB-1189", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 20994933, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 20994933, "stamp_duty": 1049747, "stamp_duty_rate": "5% (Demo)", "registration_fee": 251939, "effective_year": "2025-26", "government_rate_inr": 20994933, "market_estimate_inr": 26873514, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b92,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90189", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0519', '519', 'DEMO-JK-01-02-0519-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.88, 17.6, 4801.0, 'Residential',
    34.123383, 74.830545, ST_GeomFromText('POLYGON((74.830437 34.123482, 74.830661 34.123478, 74.830654 34.123283, 74.830429 34.12329, 74.830437 34.123482))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Shakeel Ahmad Yatoo", "father_husband_name": "Mohammad Shaban Yatoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Shaban Yatoo", "relationship": "Father (Late)", "transfer_year": 2012, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "81", "mutation_history": [{"mutation_no": "MUT-SB-1190", "date": "2012-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 67016104, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 67016104, "stamp_duty": 3350805, "stamp_duty_rate": "5% (Demo)", "registration_fee": 804193, "effective_year": "2025-26", "government_rate_inr": 67016104, "market_estimate_inr": 85780613, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0520', '520', 'DEMO-JK-01-02-0520-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.11, 2.1, 577.0, 'Residential',
    34.123281, 74.830976, ST_GeomFromText('POLYGON((74.830934 34.123321, 74.831007 34.123321, 74.831007 34.123269, 74.830997 34.123248, 74.830934 34.123248, 74.830934 34.123321))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mohammad Shafi Matoo", "father_husband_name": "Abdul Rehman Matoo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Rehman Matoo", "relationship": "Father (Late)", "transfer_year": 2013, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "35", "khata_no": "81", "mutation_history": [{"mutation_no": "MUT-SB-1191", "date": "2013-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 8262910, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 8262910, "stamp_duty": 413146, "stamp_duty_rate": "5% (Demo)", "registration_fee": 99155, "effective_year": "2025-26", "government_rate_inr": 8262910, "market_estimate_inr": 10576525, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-591", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Mohammad Shafi Matoo (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0521', '521', 'DEMO-JK-01-02-0521-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.13, 2.6, 706.0, 'Residential',
    34.123254, 74.831653, ST_GeomFromText('POLYGON((74.831608 34.123289, 74.831698 34.123289, 74.831698 34.123218, 74.831608 34.123218, 74.831608 34.123289))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Nazir Ahmad Naqash", "father_husband_name": "Ghulam Rasool Naqash", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Ghulam Rasool Naqash", "relationship": "Father (Late)", "transfer_year": 2014, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "82", "mutation_history": [{"mutation_no": "MUT-SB-1192", "date": "2014-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 10366987, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 10366987, "stamp_duty": 518349, "stamp_duty_rate": "5% (Demo)", "registration_fee": 124404, "effective_year": "2025-26", "government_rate_inr": 10366987, "market_estimate_inr": 13269743, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0522', '522', 'DEMO-JK-01-02-0522-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.28, 5.5, 1503.0, 'Residential',
    34.123276, 74.831924, ST_GeomFromText('POLYGON((74.831851 34.123322, 74.831953 34.123322, 74.831982 34.123303, 74.831982 34.123216, 74.831851 34.123216, 74.831851 34.123322))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Bilal Ahmad Beigh", "father_husband_name": "Mirza Mohammad Beigh", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mirza Mohammad Beigh", "relationship": "Father (Late)", "transfer_year": 2015, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "82", "mutation_history": [{"mutation_no": "MUT-SB-1193", "date": "2015-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 22633665, "unit": "per plot (Demo)", "circle_rate_marla": 2050000.0, "government_value": 22633665, "stamp_duty": 1131683, "stamp_duty_rate": "5% (Demo)", "registration_fee": 271604, "effective_year": "2025-26", "government_rate_inr": 22633665, "market_estimate_inr": 28971091, "circle_rate_marla_inr": 2050000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0523', '523', 'DEMO-JK-01-02-0523-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.17, 3.5, 944.0, 'Residential',
    34.123396, 74.832512, ST_GeomFromText('POLYGON((74.832445 34.123428, 74.832587 34.123424, 74.83258 34.123363, 74.832436 34.12337, 74.832445 34.123428))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Hilal Ahmad Kakroo", "father_husband_name": "Abdul Khaliq Kakroo", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Abdul Khaliq Kakroo", "relationship": "Father (Late)", "transfer_year": 2016, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "82", "mutation_history": [{"mutation_no": "MUT-SB-1194", "date": "2016-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14568701, "unit": "per plot (Demo)", "circle_rate_marla": 2100000.0, "government_value": 14568701, "stamp_duty": 728435, "stamp_duty_rate": "5% (Demo)", "registration_fee": 174824, "effective_year": "2025-26", "government_rate_inr": 14568701, "market_estimate_inr": 18647937, "circle_rate_marla_inr": 2100000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,400,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90194", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0524', '524', 'DEMO-JK-01-02-0524-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    1.3, 6.0, 7080.0, 'Residential',
    34.123285, 74.834019, ST_GeomFromText('POLYGON((74.833851 34.123409, 74.834135 34.123409, 74.834135 34.123245, 74.834124 34.123182, 74.833851 34.123182, 74.833851 34.123409))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Showkat Ahmad Zargar", "father_husband_name": "Mohammad Sidiq Zargar", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Mohammad Sidiq Zargar", "relationship": "Father (Late)", "transfer_year": 2017, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "82", "mutation_history": [{"mutation_no": "MUT-SB-1195", "date": "2017-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 68829957, "unit": "per plot (Demo)", "circle_rate_marla": 2150000.0, "government_value": 68829957, "stamp_duty": 3441498, "stamp_duty_rate": "5% (Demo)", "registration_fee": 825959, "effective_year": "2025-26", "government_rate_inr": 68829957, "market_estimate_inr": 88102345, "circle_rate_marla_inr": 2150000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0525', '525', 'DEMO-JK-01-02-0525-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.16, 3.2, 860.0, 'Residential',
    34.123388, 74.834087, ST_GeomFromText('POLYGON((74.834039 34.123429, 74.834134 34.123429, 74.834134 34.123347, 74.834039 34.123347, 74.834039 34.123429))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner": {"name": "Mudisir Ahmad Parray", "father_husband_name": "Ghulam Mohiuddin Parray", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Ghulam Mohiuddin Parray", "relationship": "Father (Late)", "transfer_year": 2018, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "83", "mutation_history": [{"mutation_no": "MUT-SB-1196", "date": "2018-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 11690328, "unit": "per plot (Demo)", "circle_rate_marla": 1850000.0, "government_value": 11690328, "stamp_duty": 584516, "stamp_duty_rate": "5% (Demo)", "registration_fee": 140284, "effective_year": "2025-26", "government_rate_inr": 11690328, "market_estimate_inr": 14963620, "circle_rate_marla_inr": 1850000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0526', '526', 'DEMO-JK-01-02-0526-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.46, 9.2, 2504.0, 'Residential',
    34.123195, 74.829913, ST_GeomFromText('POLYGON((74.829808 34.12325, 74.829955 34.12325, 74.829997 34.123223, 74.829997 34.123127, 74.829808 34.123127, 74.829808 34.12325))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner": {"name": "Irfan Ahmad Ahanger", "father_husband_name": "Mohammad Subhan Ahanger", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Subhan Ahanger", "relationship": "Father (Late)", "transfer_year": 2019, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "83", "mutation_history": [{"mutation_no": "MUT-SB-1197", "date": "2019-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 34955138, "unit": "per plot (Demo)", "circle_rate_marla": 1900000.0, "government_value": 34955138, "stamp_duty": 1747757, "stamp_duty_rate": "5% (Demo)", "registration_fee": 419462, "effective_year": "2025-26", "government_rate_inr": 34955138, "market_estimate_inr": 44742577, "circle_rate_marla_inr": 1900000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "RECORDED_DISPUTE_ACTIVE", "cases": [{"case_number": "JK-HC-SGR-WP-2024-597", "court": "Hon''ble High Court of J&K and Ladakh, Srinagar Bench", "petitioner": "Irfan Ahmad Ahanger (DEMO PETITIONER)", "respondent": "State of J&K / Revenue Dept & Others", "matter": "Title & Boundary Wall Demarcation Dispute (FICTIONAL DEMO)", "status": "Pending Hearing / Demo Notice Issued", "case_type": "Civil Writ Petition", "filing_date": "2022-03-15", "disposal_date": null, "source": "High Court Case Information System (Demo)"}]}'::jsonb,
    '{"status": "UNENCUMBERED", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0527', '527', 'DEMO-JK-01-02-0527-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.31, 6.1, 1666.0, 'Residential',
    34.123178, 74.829995, ST_GeomFromText('POLYGON((74.829948 34.123254, 74.830049 34.12325, 74.830043 34.123101, 74.82994 34.123108, 74.829948 34.123254))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner": {"name": "Riyaz Ahmad Khanday", "father_husband_name": "Abdul Samad Khanday", "share": "1/2 (Co-Sharer)"}, "previous_owners": [{"name": "Abdul Samad Khanday", "relationship": "Father (Late)", "transfer_year": 2020, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "83", "mutation_history": [{"mutation_no": "MUT-SB-1198", "date": "2020-05-14", "type": "Varasat (Inheritance)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 23858751, "unit": "per plot (Demo)", "circle_rate_marla": 1950000.0, "government_value": 23858751, "stamp_duty": 1192938, "stamp_duty_rate": "5% (Demo)", "registration_fee": 286305, "effective_year": "2025-26", "government_rate_inr": 23858751, "market_estimate_inr": 30539201, "circle_rate_marla_inr": 1950000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "UNKNOWN", "records": []}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);
INSERT INTO parcels (
    parcel_id, khasra_no, upin, state, district, tehsil, mouza,
    area_kanal, area_marla, area_sqft, land_type,
    latitude, longitude, geometry,
    legal_status, encumbrance_status,
    ownership_details, valuation_details, litigation_details, mortgage_details,
    is_demo_data, dataset_type, data_origin_tag, verification_disclaimer
) VALUES (
    'SB-DEMO-0528', '528', 'DEMO-JK-01-02-0528-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal (Hazratbal)',
    0.18, 3.7, 1002.0, 'Residential',
    34.123228, 74.831024, ST_GeomFromText('POLYGON((74.830966 34.123278, 74.831066 34.123278, 74.831066 34.123212, 74.831056 34.123186, 74.830966 34.123186, 74.830966 34.123278))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner": {"name": "Aijaz Ahmad Chadoora", "father_husband_name": "Mohammad Yousuf Chadoora", "share": "1/1 (Sole Owner)"}, "previous_owners": [{"name": "Mohammad Yousuf Chadoora", "relationship": "Father (Late)", "transfer_year": 2021, "transfer_mode": "Varasat (Inheritance)"}], "khewat_no": "36", "khata_no": "83", "mutation_history": [{"mutation_no": "MUT-SB-1199", "date": "2021-05-14", "type": "Baye (Sale Deed)", "status": "SANCTIONED_DEMO"}]}'::jsonb,
    '{"circle_rate": 14714493, "unit": "per plot (Demo)", "circle_rate_marla": 2000000.0, "government_value": 14714493, "stamp_duty": 735725, "stamp_duty_rate": "5% (Demo)", "registration_fee": 176574, "effective_year": "2025-26", "government_rate_inr": 14714493, "market_estimate_inr": 18834551, "circle_rate_marla_inr": 2000000.0, "valuation_year": 2026}'::jsonb,
    '{"status": "NO_RECORDED_LITIGATION", "cases": []}'::jsonb,
    '{"status": "MORTGAGED", "records": [{"bank_name": "Jammu & Kashmir Bank Ltd.", "loan_amount": "\u20b93,900,000 (DEMO)", "cersai_id": "CERSAI-DEMO-SGR-90199", "charge_status": "ACTIVE_LIEN_REGISTERED"}]}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_SATELLITE_DEMO', 'THIS DATA IS 100% FICTIONAL DEMO. NOT REAL GOVERNMENT DATA.'
);

COMMIT;