-- ==============================================================================
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
(
    'SB-DEMO-0329', '329', 'DEMO-JK-01-02-0329-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    9, 2, 49548.4, 'Residential',
    34.13043, 74.834504, ST_GeomFromText('POLYGON((74.833746 34.130518, 74.833732 34.130738, 74.835216 34.130801, 74.835229 34.130592, 74.834578 34.130564, 74.834595 34.130297, 74.8348 34.130306, 74.834811 34.130142, 74.834238 34.130118, 74.834229 34.130262, 74.834445 34.130271, 74.834428 34.130547, 74.833746 34.130518))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 001","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 001","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1000","khata_no":"DEMO-KT-2000","mutation_history":[{"mutation_no":"DEMO-MUT-3000","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":45498990,"stamp_duty":2274950,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5000","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0330', '330', 'DEMO-JK-01-02-0330-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    10, 6.8, 56292.6, 'Residential',
    34.130652, 74.837785, ST_GeomFromText('POLYGON((74.837281 34.130072, 74.837567 34.130088, 74.837507 34.1308, 74.838584 34.130862, 74.838565 34.131085, 74.837203 34.131007, 74.837281 34.130072))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 002","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 002","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1001","khata_no":"DEMO-KT-2001","mutation_history":[{"mutation_no":"DEMO-MUT-3001","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":54276612,"stamp_duty":2713831,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5001","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0331', '331', 'DEMO-JK-01-02-0331-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.6, 3983.9, 'Residential',
    34.121692, 74.841684, ST_GeomFromText('POLYGON((74.841558 34.121751, 74.841661 34.12175, 74.841662 34.121771, 74.841767 34.12177, 74.841767 34.121749, 74.841793 34.121749, 74.841792 34.121634, 74.841641 34.121636, 74.84164 34.121553, 74.841556 34.121554, 74.841558 34.121751))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 003","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 003","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1002","khata_no":"DEMO-KT-2002","mutation_history":[{"mutation_no":"DEMO-MUT-3002","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":4024141,"stamp_duty":201207,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4002"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5002","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0332', '332', 'DEMO-JK-01-02-0332-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.1, 4933.9, 'Commercial',
    34.121433, 74.841366, ST_GeomFromText('POLYGON((74.841233 34.121512, 74.841435 34.121501, 74.841438 34.121536, 74.841561 34.121529, 74.841555 34.121458, 74.841416 34.121466, 74.841404 34.121314, 74.841201 34.121326, 74.841202 34.121343, 74.841219 34.121342, 74.841233 34.121512))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 004","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 004","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1003","khata_no":"DEMO-KT-2003","mutation_history":[{"mutation_no":"DEMO-MUT-3003","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":5210271,"stamp_duty":260514,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1003","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5003","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0333', '333', 'DEMO-JK-01-02-0333-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.3, 6347.9, 'Mixed Use',
    34.126139, 74.841618, ST_GeomFromText('POLYGON((74.8417 34.126172, 74.841743 34.126188, 74.841817 34.126054, 74.841552 34.125953, 74.841477 34.126088, 74.841555 34.126118, 74.84156 34.126108, 74.841615 34.126129, 74.841534 34.126275, 74.841623 34.126309, 74.8417 34.126172))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 005","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 005","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1004","khata_no":"DEMO-KT-2004","mutation_history":[{"mutation_no":"DEMO-MUT-3004","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":6994931,"stamp_duty":349747,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5004","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0334', '334', 'DEMO-JK-01-02-0334-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17.1, 4651.2, 'Agricultural',
    34.127113, 74.842971, ST_GeomFromText('POLYGON((74.842799 34.127117, 74.84288 34.127147, 74.842888 34.127132, 74.843026 34.127181, 74.843017 34.127196, 74.843079 34.127219, 74.843129 34.127125, 74.84311 34.127118, 74.843134 34.127073, 74.842885 34.126983, 74.842857 34.127036, 74.842844 34.127032, 74.842799 34.127117))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 006","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 006","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1005","khata_no":"DEMO-KT-2005","mutation_history":[{"mutation_no":"DEMO-MUT-3005","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":5338843,"stamp_duty":266942,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4005"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5005","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0335', '335', 'DEMO-JK-01-02-0335-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.9, 3228.9, 'Residential',
    34.122909, 74.843018, ST_GeomFromText('POLYGON((74.842888 34.122955, 74.842965 34.122955, 74.842965 34.122947, 74.843071 34.122947, 74.843071 34.122955, 74.843146 34.122955, 74.843146 34.122887, 74.843117 34.122887, 74.843116 34.122822, 74.842922 34.122823, 74.842922 34.122887, 74.842888 34.122887, 74.842888 34.122955))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 007","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 007","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1006","khata_no":"DEMO-KT-2006","mutation_history":[{"mutation_no":"DEMO-MUT-3006","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":3854518,"stamp_duty":192726,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5006","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0336', '336', 'DEMO-JK-01-02-0336-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.4, 5291, 'Residential',
    34.126823, 74.842705, ST_GeomFromText('POLYGON((74.842529 34.126849, 74.842642 34.126895, 74.842648 34.126883, 74.84269 34.126899, 74.842684 34.126912, 74.842799 34.126945, 74.842881 34.126788, 74.8428 34.126759, 74.842788 34.126784, 74.84269 34.126749, 74.842703 34.126724, 74.842611 34.126692, 74.842529 34.126849))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 008","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 008","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1007","khata_no":"DEMO-KT-2007","mutation_history":[{"mutation_no":"DEMO-MUT-3007","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":6559091,"stamp_duty":327955,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1007","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5007","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0337', '337', 'DEMO-JK-01-02-0337-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.9, 3230.4, 'Residential',
    34.122935, 74.842767, ST_GeomFromText('POLYGON((74.84264 34.122986, 74.842716 34.122983, 74.842716 34.122975, 74.842822 34.122971, 74.842822 34.12298, 74.842898 34.122977, 74.842895 34.122909, 74.842865 34.12291, 74.842862 34.122846, 74.842667 34.122852, 74.84267 34.122917, 74.842637 34.122918, 74.84264 34.122986))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 009","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 009","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1008","khata_no":"DEMO-KT-2008","mutation_history":[{"mutation_no":"DEMO-MUT-3008","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":4152948,"stamp_duty":207647,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4008"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5008","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0338', '338', 'DEMO-JK-01-02-0338-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.8, 5377.8, 'Commercial',
    34.123254, 74.83968, ST_GeomFromText('POLYGON((74.839736 34.123365, 74.83975 34.123168, 74.839845 34.123173, 74.83985 34.1231, 74.839582 34.123087, 74.839577 34.123157, 74.839608 34.123158, 74.839594 34.123359, 74.839629 34.12336, 74.839628 34.123381, 74.839681 34.123383, 74.839683 34.123363, 74.839736 34.123365))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 010","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 010","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1009","khata_no":"DEMO-KT-2009","mutation_history":[{"mutation_no":"DEMO-MUT-3009","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":7160523,"stamp_duty":358026,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5009","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0339', '339', 'DEMO-JK-01-02-0339-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.8, 5384.4, 'Mixed Use',
    34.126528, 74.843576, ST_GeomFromText('POLYGON((74.843384 34.126538, 74.843506 34.126591, 74.843531 34.126578, 74.84357 34.126592, 74.843568 34.126615, 74.843693 34.126649, 74.843751 34.126539, 74.843648 34.126502, 74.843683 34.126434, 74.843588 34.1264, 74.843553 34.126468, 74.843442 34.126428, 74.843384 34.126538))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 011","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 011","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1010","khata_no":"DEMO-KT-2010","mutation_history":[{"mutation_no":"DEMO-MUT-3010","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":7416529,"stamp_duty":370826,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5010","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0340', '340', 'DEMO-JK-01-02-0340-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.9, 3228.5, 'Agricultural',
    34.122835, 74.843543, ST_GeomFromText('POLYGON((74.843411 34.122878, 74.843488 34.12288, 74.843488 34.122871, 74.843594 34.122875, 74.843594 34.122883, 74.843669 34.122885, 74.843672 34.122817, 74.843642 34.122816, 74.843645 34.122752, 74.843451 34.122746, 74.843448 34.12281, 74.843414 34.122809, 74.843411 34.122878))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 012","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 012","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1011","khata_no":"DEMO-KT-2011","mutation_history":[{"mutation_no":"DEMO-MUT-3011","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":4595202,"stamp_duty":229760,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1011","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4011"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5011","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0341', '341', 'DEMO-JK-01-02-0341-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.8, 5383.2, 'Residential',
    34.126287, 74.843693, ST_GeomFromText('POLYGON((74.843501 34.126297, 74.843622 34.12635, 74.843648 34.126337, 74.843686 34.126351, 74.843684 34.126374, 74.84381 34.126408, 74.843867 34.126298, 74.843764 34.126261, 74.8438 34.126193, 74.843705 34.126159, 74.843669 34.126227, 74.843558 34.126187, 74.843501 34.126297))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 013","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 013","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1012","khata_no":"DEMO-KT-2012","mutation_history":[{"mutation_no":"DEMO-MUT-3012","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":7909201,"stamp_duty":395460,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5012","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0342', '342', 'DEMO-JK-01-02-0342-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.9, 3232.3, 'Residential',
    34.122864, 74.843276, ST_GeomFromText('POLYGON((74.843146 34.122908, 74.843222 34.122909, 74.843222 34.122901, 74.843328 34.122902, 74.843328 34.122911, 74.843404 34.122911, 74.843405 34.122843, 74.843375 34.122843, 74.843376 34.122778, 74.843181 34.122776, 74.843181 34.122841, 74.843147 34.12284, 74.843146 34.122908))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 014","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 014","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1013","khata_no":"DEMO-KT-2013","mutation_history":[{"mutation_no":"DEMO-MUT-3013","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":4897424,"stamp_duty":244871,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5013","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0343', '343', 'DEMO-JK-01-02-0343-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.8, 5386.5, 'Residential',
    34.126228, 74.843261, ST_GeomFromText('POLYGON((74.843069 34.126238, 74.84319 34.126291, 74.843216 34.126278, 74.843255 34.126292, 74.843253 34.126315, 74.843378 34.126349, 74.843436 34.126239, 74.843333 34.126202, 74.843368 34.126134, 74.843273 34.1261, 74.843238 34.126168, 74.843127 34.126128, 74.843069 34.126238))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 015","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 015","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1014","khata_no":"DEMO-KT-2014","mutation_history":[{"mutation_no":"DEMO-MUT-3014","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":8408678,"stamp_duty":420434,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4014"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5014","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0344', '344', 'DEMO-JK-01-02-0344-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 14.7, 9452.2, 'Commercial',
    34.122251, 74.840871, ST_GeomFromText('POLYGON((74.841034 34.1221, 74.84084 34.121969, 74.840675 34.122136, 74.840823 34.122236, 74.840719 34.122341, 74.840835 34.12242, 74.840897 34.122358, 74.840952 34.122395, 74.841028 34.122318, 74.840903 34.122233, 74.841034 34.1221))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 016","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 016","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1015","khata_no":"DEMO-KT-2015","mutation_history":[{"mutation_no":"DEMO-MUT-3015","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":8679706,"stamp_duty":433985,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1015","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5015","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0345', '345', 'DEMO-JK-01-02-0345-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 6.4, 12630.3, 'Mixed Use',
    34.126573, 74.841039, ST_GeomFromText('POLYGON((74.841131 34.126845, 74.841186 34.126832, 74.841232 34.126805, 74.841255 34.126759, 74.841259 34.12672, 74.841077 34.126603, 74.841053 34.126573, 74.841045 34.126541, 74.841021 34.126339, 74.840978 34.126307, 74.840917 34.126304, 74.840856 34.126318, 74.840821 34.126355, 74.84085 34.126606, 74.840905 34.126686, 74.841131 34.126845))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 017","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 017","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1016","khata_no":"DEMO-KT-2016","mutation_history":[{"mutation_no":"DEMO-MUT-3016","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":12177975,"stamp_duty":608899,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5016","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0346', '346', 'DEMO-JK-01-02-0346-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    6, 16.2, 37087.1, 'Agricultural',
    34.122838, 74.840837, ST_GeomFromText('POLYGON((74.840588 34.122704, 74.840616 34.122889, 74.840709 34.12288, 74.840724 34.122981, 74.840614 34.122992, 74.840641 34.12318, 74.8407 34.123174, 74.841137 34.12313, 74.841109 34.122945, 74.841025 34.122953, 74.84101 34.122849, 74.841087 34.122842, 74.84106 34.12266, 74.841008 34.122665, 74.840959 34.12233, 74.840596 34.122366, 74.840644 34.122698, 74.840588 34.122704))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 018","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 018","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1017","khata_no":"DEMO-KT-2017","mutation_history":[{"mutation_no":"DEMO-MUT-3017","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":37461717,"stamp_duty":1873086,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4017"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5017","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0347', '347', 'DEMO-JK-01-02-0347-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    11, 2.5, 60581.7, 'Residential',
    34.124771, 74.839364, ST_GeomFromText('POLYGON((74.839415 34.125702, 74.839709 34.125679, 74.83964 34.125077, 74.839645 34.125077, 74.839638 34.125011, 74.839628 34.124931, 74.83962 34.124932, 74.839601 34.124751, 74.839595 34.124676, 74.839549 34.124317, 74.839253 34.12434, 74.839264 34.12444, 74.839138 34.12445, 74.839081 34.123959, 74.838854 34.123977, 74.838921 34.124553, 74.839144 34.124536, 74.839141 34.124514, 74.839273 34.124504, 74.839326 34.124957, 74.839315 34.124958, 74.839322 34.125017, 74.839328 34.125077, 74.839343 34.125076, 74.839415 34.125702))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 019","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 019","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1018","khata_no":"DEMO-KT-2018","mutation_history":[{"mutation_no":"DEMO-MUT-3018","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":63975165,"stamp_duty":3198758,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5018","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0348', '348', 'DEMO-JK-01-02-0348-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 4.1, 17463.3, 'Residential',
    34.127103, 74.842195, ST_GeomFromText('POLYGON((74.84255 34.127263, 74.84256 34.127177, 74.84249 34.127171, 74.842494 34.127132, 74.842495 34.127132, 74.842505 34.127055, 74.84257 34.12706, 74.842576 34.127004, 74.84238 34.126988, 74.842365 34.127115, 74.842349 34.127114, 74.842345 34.127149, 74.84195 34.127117, 74.841964 34.126999, 74.842023 34.127004, 74.842039 34.126871, 74.841824 34.126854, 74.841809 34.126985, 74.841847 34.126988, 74.841837 34.127075, 74.841648 34.12706, 74.841637 34.127153, 74.841792 34.127166, 74.841788 34.127197, 74.842344 34.127242, 74.84234 34.12727, 74.842467 34.12728, 74.84247 34.127256, 74.84255 34.127263))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 020","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 020","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1019","khata_no":"DEMO-KT-2019","mutation_history":[{"mutation_no":"DEMO-MUT-3019","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":19243306,"stamp_duty":962165,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1019","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5019","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0349', '349', 'DEMO-JK-01-02-0349-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 16, 20702.3, 'Residential',
    34.125462, 74.840915, ST_GeomFromText('POLYGON((74.840898 34.12518, 74.84076 34.125191, 74.840766 34.125237, 74.840684 34.125244, 74.840703 34.12541, 74.840685 34.125412, 74.840693 34.125485, 74.840712 34.125484, 74.840731 34.125638, 74.84082 34.125631, 74.840831 34.125724, 74.840915 34.125716, 74.840924 34.125788, 74.84139 34.125749, 74.841378 34.125641, 74.841327 34.125646, 74.841319 34.125585, 74.840949 34.125616, 74.840955 34.125668, 74.840908 34.125672, 74.840909 34.12568, 74.840861 34.125684, 74.840854 34.125628, 74.840928 34.125622, 74.84088 34.125228, 74.84081 34.125233, 74.840807 34.125206, 74.840899 34.125198, 74.8409 34.125212, 74.841102 34.125201, 74.841092 34.125077, 74.840891 34.125088, 74.840898 34.12518))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 021","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 021","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1020","khata_no":"DEMO-KT-2020","mutation_history":[{"mutation_no":"DEMO-MUT-3020","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":23762971,"stamp_duty":1188149,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4020"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5020","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0350', '350', 'DEMO-JK-01-02-0350-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 2.2, 596.5, 'Commercial',
    34.121423, 74.841724, ST_GeomFromText('POLYGON((74.841687 34.121459, 74.841761 34.121459, 74.841761 34.121386, 74.841687 34.121386, 74.841687 34.121459))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 022","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 022","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1021","khata_no":"DEMO-KT-2021","mutation_history":[{"mutation_no":"DEMO-MUT-3021","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":712075,"stamp_duty":35604,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5021","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0351', '351', 'DEMO-JK-01-02-0351-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 10.6, 2897, 'Mixed Use',
    34.121765, 74.841312, ST_GeomFromText('POLYGON((74.841227 34.121843, 74.841387 34.12185, 74.841398 34.121687, 74.841237 34.12168, 74.841227 34.121843))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 023","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 023","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1022","khata_no":"DEMO-KT-2022","mutation_history":[{"mutation_no":"DEMO-MUT-3022","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":3591322,"stamp_duty":179566,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5022","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0352', '352', 'DEMO-JK-01-02-0352-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.4, 1465.6, 'Agricultural',
    34.123423, 74.83893, ST_GeomFromText('POLYGON((74.838839 34.123462, 74.839026 34.123455, 74.839021 34.123384, 74.838835 34.123391, 74.838839 34.123462))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 024","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 024","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1023","khata_no":"DEMO-KT-2023","mutation_history":[{"mutation_no":"DEMO-MUT-3023","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":1884151,"stamp_duty":94208,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1023","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-06-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4023"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5023","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0353', '353', 'DEMO-JK-01-02-0353-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.5, 1505.1, 'Residential',
    34.121404, 74.841618, ST_GeomFromText('POLYGON((74.84156 34.121462, 74.841679 34.12146, 74.841676 34.121346, 74.841556 34.121348, 74.84156 34.121462))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 025","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 025","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1024","khata_no":"DEMO-KT-2024","mutation_history":[{"mutation_no":"DEMO-MUT-3024","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":2004036,"stamp_duty":100202,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5024","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0354', '354', 'DEMO-JK-01-02-0354-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.8, 3765.6, 'Residential',
    34.123665, 74.840178, ST_GeomFromText('POLYGON((74.840084 34.123755, 74.840288 34.123741, 74.840271 34.123575, 74.840067 34.123589, 74.840084 34.123755))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 026","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 026","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1025","khata_no":"DEMO-KT-2025","mutation_history":[{"mutation_no":"DEMO-MUT-3025","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":5186777,"stamp_duty":259339,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5025","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0355', '355', 'DEMO-JK-01-02-0355-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.3, 1436.3, 'Residential',
    34.124348, 74.839321, ST_GeomFromText('POLYGON((74.839219 34.124386, 74.839429 34.124371, 74.839423 34.124309, 74.839213 34.124325, 74.839219 34.124386))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 027","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 027","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1026","khata_no":"DEMO-KT-2026","mutation_history":[{"mutation_no":"DEMO-MUT-3026","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":2044320,"stamp_duty":102216,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4026"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5026","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0356', '356', 'DEMO-JK-01-02-0356-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.2, 3602.5, 'Commercial',
    34.126185, 74.840588, ST_GeomFromText('POLYGON((74.840531 34.126306, 74.840671 34.126295, 74.840645 34.126064, 74.840505 34.126075, 74.840531 34.126306))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 028","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 028","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1027","khata_no":"DEMO-KT-2027","mutation_history":[{"mutation_no":"DEMO-MUT-3027","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":5292929,"stamp_duty":264646,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1027","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-01-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5027","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0357', '357', 'DEMO-JK-01-02-0357-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 18.6, 10513.2, 'Mixed Use',
    34.125617, 74.839183, ST_GeomFromText('POLYGON((74.839119 34.125876, 74.839307 34.12586, 74.839247 34.125359, 74.839059 34.125374, 74.839119 34.125876))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 029","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 029","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1028","khata_no":"DEMO-KT-2028","mutation_history":[{"mutation_no":"DEMO-MUT-3028","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":15929091,"stamp_duty":796455,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5028","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0358', '358', 'DEMO-JK-01-02-0358-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.8, 1569.6, 'Agricultural',
    34.12519, 74.840209, ST_GeomFromText('POLYGON((74.840167 34.125267, 74.840262 34.125262, 74.84025 34.125113, 74.840155 34.125118, 74.840167 34.125267))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 030","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 030","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1029","khata_no":"DEMO-KT-2029","mutation_history":[{"mutation_no":"DEMO-MUT-3029","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":2450248,"stamp_duty":122512,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4029"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5029","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0359', '359', 'DEMO-JK-01-02-0359-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17.5, 4759.4, 'Residential',
    34.126256, 74.840342, ST_GeomFromText('POLYGON((74.840187 34.126334, 74.840511 34.12631, 74.840497 34.126178, 74.840173 34.126202, 74.840187 34.126334))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 031","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 031","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1030","khata_no":"DEMO-KT-2030","mutation_history":[{"mutation_no":"DEMO-MUT-3030","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":4370432,"stamp_duty":218522,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5030","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0360', '360', 'DEMO-JK-01-02-0360-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 1.8, 501.2, 'Residential',
    34.122825, 74.84201, ST_GeomFromText('POLYGON((74.841973 34.122856, 74.842052 34.12285, 74.842046 34.122793, 74.841967 34.122799, 74.841973 34.122856))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 032","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 032","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1031","khata_no":"DEMO-KT-2031","mutation_history":[{"mutation_no":"DEMO-MUT-3031","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":483251,"stamp_duty":24163,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1031","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-05-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5031","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0361', '361', 'DEMO-JK-01-02-0361-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 10.3, 19149.2, 'Residential',
    34.125866, 74.839606, ST_GeomFromText('POLYGON((74.839244 34.126011, 74.839994 34.125949, 74.839967 34.12572, 74.839217 34.125782, 74.839244 34.126011))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 033","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 033","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1032","khata_no":"DEMO-KT-2032","mutation_history":[{"mutation_no":"DEMO-MUT-3032","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":19342626,"stamp_duty":967131,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4032"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5032","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0362', '362', 'DEMO-JK-01-02-0362-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 9.3, 13429.8, 'Commercial',
    34.126748, 74.842227, ST_GeomFromText('POLYGON((74.841859 34.126804, 74.842574 34.126861, 74.842594 34.126693, 74.841879 34.126635, 74.841859 34.126804))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 034","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 034","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1033","khata_no":"DEMO-KT-2033","mutation_history":[{"mutation_no":"DEMO-MUT-3033","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":14182066,"stamp_duty":709103,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5033","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0363', '363', 'DEMO-JK-01-02-0363-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.5, 3671.6, 'Mixed Use',
    34.126766, 74.843538, ST_GeomFromText('POLYGON((74.843401 34.126802, 74.843607 34.126872, 74.843673 34.126721, 74.843471 34.126668, 74.843401 34.126802))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 035","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 035","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1034","khata_no":"DEMO-KT-2034","mutation_history":[{"mutation_no":"DEMO-MUT-3034","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":4045840,"stamp_duty":202292,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5034","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0364', '364', 'DEMO-JK-01-02-0364-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.6, 4514.2, 'Agricultural',
    34.12347, 74.838684, ST_GeomFromText('POLYGON((74.838586 34.123572, 74.8388 34.123559, 74.838783 34.123369, 74.838569 34.123382, 74.838586 34.123572))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 036","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 036","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1035","khata_no":"DEMO-KT-2035","mutation_history":[{"mutation_no":"DEMO-MUT-3035","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":5181589,"stamp_duty":259079,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1035","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-09-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4035"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5035","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0365', '365', 'DEMO-JK-01-02-0365-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 5.1, 6843.2, 'Residential',
    34.124159, 74.842978, ST_GeomFromText('POLYGON((74.842879 34.124324, 74.843063 34.124329, 74.843077 34.123994, 74.842892 34.123988, 74.842879 34.124324))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 037","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 037","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1036","khata_no":"DEMO-KT-2036","mutation_history":[{"mutation_no":"DEMO-MUT-3036","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":8169109,"stamp_duty":408455,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5036","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0366', '366', 'DEMO-JK-01-02-0366-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16, 4363.6, 'Residential',
    34.123524, 74.83992, ST_GeomFromText('POLYGON((74.839767 34.123599, 74.84009 34.123569, 74.840073 34.123448, 74.839751 34.123478, 74.839767 34.123599))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 038","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 038","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1037","khata_no":"DEMO-KT-2037","mutation_history":[{"mutation_no":"DEMO-MUT-3037","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":5409421,"stamp_duty":270471,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5037","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0367', '367', 'DEMO-JK-01-02-0367-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 2.7, 741.3, 'Residential',
    34.126733, 74.84333, ST_GeomFromText('POLYGON((74.843271 34.126773, 74.843321 34.126796, 74.843389 34.126693, 74.843339 34.12667, 74.843271 34.126773))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 039","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 039","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1038","khata_no":"DEMO-KT-2038","mutation_history":[{"mutation_no":"DEMO-MUT-3038","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":953003,"stamp_duty":47650,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4038"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5038","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0368', '368', 'DEMO-JK-01-02-0368-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 7.9, 2163.2, 'Commercial',
    34.124122, 74.844848, ST_GeomFromText('POLYGON((74.844767 34.124189, 74.844888 34.124211, 74.844929 34.124056, 74.844809 34.124034, 74.844767 34.124189))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 040","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 040","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1039","khata_no":"DEMO-KT-2039","mutation_history":[{"mutation_no":"DEMO-MUT-3039","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":2880294,"stamp_duty":144015,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1039","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5039","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0369', '369', 'DEMO-JK-01-02-0369-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.1, 3844.8, 'Mixed Use',
    34.123307, 74.83998, ST_GeomFromText('POLYGON((74.840047 34.123484, 74.84001 34.123124, 74.839914 34.123131, 74.839951 34.123491, 74.840047 34.123484))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 041","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 041","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1040","khata_no":"DEMO-KT-2040","mutation_history":[{"mutation_no":"DEMO-MUT-3040","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":5295868,"stamp_duty":264793,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5040","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0370', '370', 'DEMO-JK-01-02-0370-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.8, 3216.9, 'Agricultural',
    34.125837, 74.840115, ST_GeomFromText('POLYGON((74.839963 34.1258, 74.839976 34.125899, 74.840267 34.125874, 74.840254 34.125775, 74.839963 34.1258))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 042","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 042","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1041","khata_no":"DEMO-KT-2041","mutation_history":[{"mutation_no":"DEMO-MUT-3041","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":4578691,"stamp_duty":228935,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4041"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5041","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0371', '371', 'DEMO-JK-01-02-0371-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5, 1354.2, 'Residential',
    34.125296, 74.840428, ST_GeomFromText('POLYGON((74.840377 34.125354, 74.840488 34.125348, 74.840479 34.125238, 74.840368 34.125244, 74.840377 34.125354))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 043","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 043","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1042","khata_no":"DEMO-KT-2042","mutation_history":[{"mutation_no":"DEMO-MUT-3042","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":1989642,"stamp_duty":99482,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5042","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0372', '372', 'DEMO-JK-01-02-0372-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.4, 1482.4, 'Residential',
    34.126157, 74.840213, ST_GeomFromText('POLYGON((74.84017 34.126227, 74.840271 34.126219, 74.840256 34.126087, 74.840156 34.126094, 74.84017 34.126227))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 044","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 044","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1043","khata_no":"DEMO-KT-2043","mutation_history":[{"mutation_no":"DEMO-MUT-3043","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":2246061,"stamp_duty":112303,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1043","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5043","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0373', '373', 'DEMO-JK-01-02-0373-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 10.2, 2766.5, 'Residential',
    34.12589, 74.839166, ST_GeomFromText('POLYGON((74.839073 34.125961, 74.839273 34.125944, 74.839258 34.12582, 74.839058 34.125837, 74.839073 34.125961))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 045","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 045","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1044","khata_no":"DEMO-KT-2044","mutation_history":[{"mutation_no":"DEMO-MUT-3044","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":4318687,"stamp_duty":215934,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4044"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5044","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0374', '374', 'DEMO-JK-01-02-0374-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 8.8, 13295.4, 'Commercial',
    34.126157, 74.840045, ST_GeomFromText('POLYGON((74.839948 34.12641, 74.840192 34.126393, 74.840142 34.125903, 74.839898 34.12592, 74.839948 34.12641))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 046","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 046","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1045","khata_no":"DEMO-KT-2045","mutation_history":[{"mutation_no":"DEMO-MUT-3045","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":12208815,"stamp_duty":610441,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5045","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0375', '375', 'DEMO-JK-01-02-0375-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 10.8, 13839.9, 'Mixed Use',
    34.126182, 74.839223, ST_GeomFromText('POLYGON((74.839128 34.126445, 74.839372 34.126428, 74.839319 34.125918, 74.839075 34.125935, 74.839128 34.126445))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 047","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 047","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1046","khata_no":"DEMO-KT-2046","mutation_history":[{"mutation_no":"DEMO-MUT-3046","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":13344256,"stamp_duty":667213,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5046","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0376', '376', 'DEMO-JK-01-02-0376-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.5, 5319.1, 'Agricultural',
    34.125076, 74.841199, ST_GeomFromText('POLYGON((74.841177 34.125329, 74.841273 34.125322, 74.841221 34.124824, 74.841125 34.124831, 74.841177 34.125329))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 048","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 048","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1047","khata_no":"DEMO-KT-2047","mutation_history":[{"mutation_no":"DEMO-MUT-3047","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":5372828,"stamp_duty":268641,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1047","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4047"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5047","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0377', '377', 'DEMO-JK-01-02-0377-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 12.8, 3496, 'Residential',
    34.123238, 74.840123, ST_GeomFromText('POLYGON((74.840035 34.123326, 74.840234 34.123306, 74.840212 34.12315, 74.840012 34.123169, 74.840035 34.123326))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 049","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 049","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1048","khata_no":"DEMO-KT-2048","mutation_history":[{"mutation_no":"DEMO-MUT-3048","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":3691827,"stamp_duty":184591,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5048","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0378', '378', 'DEMO-JK-01-02-0378-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19, 5177.8, 'Residential',
    34.124662, 74.84008, ST_GeomFromText('POLYGON((74.839992 34.124786, 74.84019 34.124774, 74.840169 34.124538, 74.839971 34.124551, 74.839992 34.124786))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 050","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 050","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1049","khata_no":"DEMO-KT-2049","mutation_history":[{"mutation_no":"DEMO-MUT-3049","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":5705565,"stamp_duty":285278,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5049","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0379', '379', 'DEMO-JK-01-02-0379-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 9.9, 2704.9, 'Residential',
    34.121609, 74.840226, ST_GeomFromText('POLYGON((74.840085 34.121656, 74.84037 34.121648, 74.840366 34.121562, 74.840082 34.12157, 74.840085 34.121656))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 051","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 051","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1050","khata_no":"DEMO-KT-2050","mutation_history":[{"mutation_no":"DEMO-MUT-3050","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":3104798,"stamp_duty":155240,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4050"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5050","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0380', '380', 'DEMO-JK-01-02-0380-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 6.6, 1783.9, 'Commercial',
    34.123745, 74.83979, ST_GeomFromText('POLYGON((74.839698 34.123705, 74.839706 34.123796, 74.839883 34.123785, 74.839874 34.123694, 74.839698 34.123705))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 052","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 052","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1051","khata_no":"DEMO-KT-2051","mutation_history":[{"mutation_no":"DEMO-MUT-3051","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":2129541,"stamp_duty":106477,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1051","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5051","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0381', '381', 'DEMO-JK-01-02-0381-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.8, 4573.7, 'Mixed Use',
    34.12247, 74.842149, ST_GeomFromText('POLYGON((74.842039 34.122565, 74.842279 34.122546, 74.842259 34.122375, 74.842019 34.122394, 74.842039 34.122565))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 053","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 053","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1052","khata_no":"DEMO-KT-2052","mutation_history":[{"mutation_no":"DEMO-MUT-3052","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":5669876,"stamp_duty":283494,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5052","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0382', '382', 'DEMO-JK-01-02-0382-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 8.5, 2305.1, 'Agricultural',
    34.126612, 74.83901, ST_GeomFromText('POLYGON((74.838868 34.126625, 74.839134 34.126688, 74.839159 34.126616, 74.838997 34.126577, 74.838893 34.126552, 74.838868 34.126625))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 054","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 054","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1053","khata_no":"DEMO-KT-2053","mutation_history":[{"mutation_no":"DEMO-MUT-3053","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":2963398,"stamp_duty":148170,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4053"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5053","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0383', '383', 'DEMO-JK-01-02-0383-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 5.2, 1411.6, 'Residential',
    34.126309, 74.842934, ST_GeomFromText('POLYGON((74.842832 34.126308, 74.843002 34.126372, 74.843036 34.126309, 74.842866 34.126246, 74.842832 34.126308))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 055","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 055","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1054","khata_no":"DEMO-KT-2054","mutation_history":[{"mutation_no":"DEMO-MUT-3054","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":1879541,"stamp_duty":93977,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5054","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0384', '384', 'DEMO-JK-01-02-0384-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 6.6, 1802.2, 'Residential',
    34.123707, 74.839988, ST_GeomFromText('POLYGON((74.839897 34.123758, 74.840092 34.123739, 74.84008 34.123656, 74.839885 34.123676, 74.839897 34.123758))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 056","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 056","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1055","khata_no":"DEMO-KT-2055","mutation_history":[{"mutation_no":"DEMO-MUT-3055","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":2482369,"stamp_duty":124118,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1055","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5055","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0385', '385', 'DEMO-JK-01-02-0385-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 1.5, 11297, 'Residential',
    34.122488, 74.841795, ST_GeomFromText('POLYGON((74.841543 34.122606, 74.84207 34.122563, 74.842047 34.122371, 74.841521 34.122413, 74.841543 34.122606))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 057","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 057","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1056","khata_no":"DEMO-KT-2056","mutation_history":[{"mutation_no":"DEMO-MUT-3056","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":16079293,"stamp_duty":803965,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4056"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5056","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0386', '386', 'DEMO-JK-01-02-0386-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 1.3, 11231, 'Commercial',
    34.124959, 74.8399, ST_GeomFromText('POLYGON((74.839556 34.125046, 74.839845 34.125012, 74.839897 34.125013, 74.840289 34.124971, 74.840284 34.124904, 74.840279 34.124836, 74.839517 34.124913, 74.839536 34.124979, 74.839556 34.125046))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 058","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 058","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1057","khata_no":"DEMO-KT-2057","mutation_history":[{"mutation_no":"DEMO-MUT-3057","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":16501010,"stamp_duty":825051,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5057","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0387', '387', 'DEMO-JK-01-02-0387-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    6, 16.6, 37189.3, 'Mixed Use',
    34.125357, 74.839987, ST_GeomFromText('POLYGON((74.840149 34.125698, 74.84006 34.125704, 74.840021 34.125315, 74.839904 34.125323, 74.839898 34.125263, 74.840086 34.125247, 74.840084 34.125233, 74.840124 34.12523, 74.84012 34.125198, 74.84008 34.125201, 74.84007 34.125125, 74.839886 34.125141, 74.839884 34.125119, 74.840084 34.125098, 74.840059 34.12493, 74.839867 34.12495, 74.839862 34.124911, 74.839813 34.124913, 74.839815 34.124953, 74.839601 34.124966, 74.839618 34.125147, 74.839832 34.125133, 74.839839 34.125195, 74.839828 34.125196, 74.839827 34.125184, 74.839621 34.1252, 74.839626 34.125241, 74.839585 34.125244, 74.839591 34.125302, 74.839632 34.125299, 74.839635 34.125326, 74.839841 34.12531, 74.839838 34.125286, 74.839848 34.125285, 74.839862 34.125419, 74.839879 34.125741, 74.839884 34.125787, 74.839995 34.125783, 74.840067 34.125775, 74.840064 34.125741, 74.840154 34.125735, 74.840158 34.125769, 74.840456 34.125744, 74.840461 34.125784, 74.840621 34.125771, 74.840616 34.125731, 74.840695 34.125725, 74.840673 34.125544, 74.840136 34.125588, 74.840149 34.125698))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 059","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 059","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1058","khata_no":"DEMO-KT-2058","mutation_history":[{"mutation_no":"DEMO-MUT-3058","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":56347424,"stamp_duty":2817371,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5058","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0388', '388', 'DEMO-JK-01-02-0388-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 18.5, 10492.7, 'Agricultural',
    34.125912, 74.840333, ST_GeomFromText('POLYGON((74.840243 34.126172, 74.84049 34.126153, 74.84044 34.125726, 74.840304 34.125737, 74.840315 34.125838, 74.840205 34.125847, 74.840243 34.126172))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 060","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 060","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1059","khata_no":"DEMO-KT-2059","mutation_history":[{"mutation_no":"DEMO-MUT-3059","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":16379789,"stamp_duty":818989,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1059","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-06-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4059"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5059","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0389', '389', 'DEMO-JK-01-02-0389-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.4, 5001.6, 'Residential',
    34.125024, 74.841049, ST_GeomFromText('POLYGON((74.841107 34.125291, 74.841197 34.125278, 74.841103 34.124848, 74.840924 34.124875, 74.840936 34.124932, 74.841025 34.124919, 74.841107 34.125291))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 061","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 061","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1060","khata_no":"DEMO-KT-2060","mutation_history":[{"mutation_no":"DEMO-MUT-3060","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":4592837,"stamp_duty":229642,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5060","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0390', '390', 'DEMO-JK-01-02-0390-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 6.6, 1783.4, 'Residential',
    34.126246, 74.842589, ST_GeomFromText('POLYGON((74.842494 34.126264, 74.842669 34.126328, 74.842715 34.126242, 74.84258 34.126192, 74.842558 34.126232, 74.842519 34.126218, 74.842494 34.126264))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 062","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 062","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1061","khata_no":"DEMO-KT-2061","mutation_history":[{"mutation_no":"DEMO-MUT-3061","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":1719532,"stamp_duty":85977,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5061","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0391', '391', 'DEMO-JK-01-02-0391-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 9.2, 2492.4, 'Residential',
    34.126185, 74.840861, ST_GeomFromText('POLYGON((74.840812 34.12629, 74.840949 34.126284, 74.840939 34.126112, 74.840831 34.126116, 74.840833 34.126155, 74.840804 34.126156, 74.840812 34.12629))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 063","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 063","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1062","khata_no":"DEMO-KT-2062","mutation_history":[{"mutation_no":"DEMO-MUT-3062","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":2517576,"stamp_duty":125879,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4062"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5062","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0392', '392', 'DEMO-JK-01-02-0392-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.9, 3793.4, 'Commercial',
    34.121734, 74.842115, ST_GeomFromText('POLYGON((74.841962 34.121795, 74.842205 34.121806, 74.842208 34.121765, 74.842167 34.121763, 74.842174 34.121643, 74.841972 34.121634, 74.841962 34.121795))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 064","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 064","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1063","khata_no":"DEMO-KT-2063","mutation_history":[{"mutation_no":"DEMO-MUT-3063","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":4005886,"stamp_duty":200294,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1063","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-01-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5063","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0393', '393', 'DEMO-JK-01-02-0393-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    4, 6.6, 23563.3, 'Mixed Use',
    34.126498, 74.83967, ST_GeomFromText('POLYGON((74.83904 34.126456, 74.839057 34.126627, 74.8403 34.12654, 74.840283 34.12637, 74.83904 34.126456))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 065","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 065","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1064","khata_no":"DEMO-KT-2064","mutation_history":[{"mutation_no":"DEMO-MUT-3064","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":25965069,"stamp_duty":1298253,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5064","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0394', '394', 'DEMO-JK-01-02-0394-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.9, 8680.7, 'Agricultural',
    34.125939, 74.841172, ST_GeomFromText('POLYGON((74.841129 34.126136, 74.841342 34.126123, 74.841308 34.125733, 74.841095 34.125746, 74.841105 34.125859, 74.841133 34.125857, 74.841148 34.12603, 74.84112 34.126031, 74.841129 34.126136))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 066","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 066","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1065","khata_no":"DEMO-KT-2065","mutation_history":[{"mutation_no":"DEMO-MUT-3065","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":9964073,"stamp_duty":498204,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4065"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5065","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0395', '395', 'DEMO-JK-01-02-0395-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.6, 3974.4, 'Residential',
    34.122714, 74.842716, ST_GeomFromText('POLYGON((74.842596 34.122753, 74.842827 34.122767, 74.842829 34.122739, 74.84286 34.122741, 74.842869 34.12264, 74.842577 34.122623, 74.842568 34.122723, 74.842599 34.122725, 74.842596 34.122753))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 067","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 067","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1066","khata_no":"DEMO-KT-2066","mutation_history":[{"mutation_no":"DEMO-MUT-3066","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":4744463,"stamp_duty":237223,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5066","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0396', '396', 'DEMO-JK-01-02-0396-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14, 3798, 'Residential',
    34.122301, 74.841657, ST_GeomFromText('POLYGON((74.841679 34.122262, 74.841677 34.122242, 74.841632 34.122246, 74.841634 34.122266, 74.841549 34.122273, 74.841568 34.122438, 74.841769 34.122422, 74.841749 34.122256, 74.841679 34.122262))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 068","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 068","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1067","khata_no":"DEMO-KT-2067","mutation_history":[{"mutation_no":"DEMO-MUT-3067","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":4708264,"stamp_duty":235413,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1067","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-05-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5067","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0397', '397', 'DEMO-JK-01-02-0397-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17, 4638.4, 'Residential',
    34.126466, 74.842752, ST_GeomFromText('POLYGON((74.842597 34.126452, 74.842675 34.126481, 74.84268 34.126471, 74.842798 34.126515, 74.842793 34.126525, 74.842863 34.126551, 74.842937 34.126416, 74.842671 34.126316, 74.842597 34.126452))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 069","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 069","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1068","khata_no":"DEMO-KT-2068","mutation_history":[{"mutation_no":"DEMO-MUT-3068","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":5963049,"stamp_duty":298152,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4068"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5068","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0398', '398', 'DEMO-JK-01-02-0398-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.5, 5040.3, 'Commercial',
    34.123461, 74.839276, ST_GeomFromText('POLYGON((74.839163 34.123516, 74.839282 34.123509, 74.839353 34.123561, 74.839398 34.123518, 74.839483 34.123436, 74.839326 34.123323, 74.839239 34.123406, 74.839154 34.12341, 74.83909 34.123469, 74.839163 34.123516))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 070","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 070","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1069","khata_no":"DEMO-KT-2069","mutation_history":[{"mutation_no":"DEMO-MUT-3069","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":6711143,"stamp_duty":335557,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5069","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0399', '399', 'DEMO-JK-01-02-0399-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.4, 3911.3, 'Mixed Use',
    34.122284, 74.841868, ST_GeomFromText('POLYGON((74.841845 34.122248, 74.841759 34.122255, 74.841779 34.122423, 74.841984 34.122406, 74.841964 34.122239, 74.841885 34.122245, 74.841883 34.122227, 74.841843 34.12223, 74.841845 34.122248))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 071","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 071","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1070","khata_no":"DEMO-KT-2070","mutation_history":[{"mutation_no":"DEMO-MUT-3070","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":5387466,"stamp_duty":269373,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5070","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0400', '400', 'DEMO-JK-01-02-0400-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17, 4628.6, 'Agricultural',
    34.126508, 74.843111, ST_GeomFromText('POLYGON((74.842956 34.126493, 74.843034 34.126522, 74.843039 34.126513, 74.843158 34.126557, 74.843153 34.126567, 74.843222 34.126593, 74.843296 34.126458, 74.84303 34.126358, 74.842956 34.126493))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 072","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 072","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1071","khata_no":"DEMO-KT-2071","mutation_history":[{"mutation_no":"DEMO-MUT-3071","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":6587998,"stamp_duty":329400,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1071","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-09-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4071"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5071","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0401', '401', 'DEMO-JK-01-02-0401-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17, 4640.4, 'Residential',
    34.126424, 74.842054, ST_GeomFromText('POLYGON((74.841899 34.12641, 74.841977 34.126439, 74.841982 34.126429, 74.8421 34.126473, 74.842095 34.126483, 74.842165 34.126509, 74.842239 34.126374, 74.841972 34.126274, 74.841899 34.12641))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 073","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 073","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1072","khata_no":"DEMO-KT-2072","mutation_history":[{"mutation_no":"DEMO-MUT-3072","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":6817851,"stamp_duty":340893,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5072","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0402', '402', 'DEMO-JK-01-02-0402-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.4, 3927.5, 'Residential',
    34.122264, 74.842112, ST_GeomFromText('POLYGON((74.842085 34.122229, 74.841998 34.122236, 74.842017 34.122401, 74.842225 34.122385, 74.842205 34.122219, 74.842141 34.122225, 74.842139 34.122208, 74.842083 34.122212, 74.842085 34.122229))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 074","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 074","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1073","khata_no":"DEMO-KT-2073","mutation_history":[{"mutation_no":"DEMO-MUT-3073","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":5950758,"stamp_duty":297538,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5073","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0403', '403', 'DEMO-JK-01-02-0403-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.8, 3212.3, 'Residential',
    34.126932, 74.84055, ST_GeomFromText('POLYGON((74.840552 34.126966, 74.840553 34.126986, 74.840604 34.126983, 74.840602 34.126963, 74.840619 34.126962, 74.840605 34.126806, 74.840426 34.126817, 74.840439 34.126972, 74.840552 34.126966))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 075","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 075","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1074","khata_no":"DEMO-KT-2074","mutation_history":[{"mutation_no":"DEMO-MUT-3074","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":5014610,"stamp_duty":250731,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4074"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5074","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0404', '404', 'DEMO-JK-01-02-0404-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.4, 3931.8, 'Commercial',
    34.122648, 74.843305, ST_GeomFromText('POLYGON((74.843412 34.122665, 74.843449 34.122667, 74.843456 34.122578, 74.843173 34.122561, 74.843165 34.12265, 74.843192 34.122652, 74.843188 34.122698, 74.843408 34.122711, 74.843412 34.122665))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 076","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 076","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1075","khata_no":"DEMO-KT-2075","mutation_history":[{"mutation_no":"DEMO-MUT-3075","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":3610468,"stamp_duty":180523,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1075","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5075","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0405', '405', 'DEMO-JK-01-02-0405-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17, 4633.6, 'Mixed Use',
    34.126451, 74.842405, ST_GeomFromText('POLYGON((74.842251 34.126437, 74.842329 34.126466, 74.842334 34.126456, 74.842452 34.126501, 74.842447 34.12651, 74.842517 34.126536, 74.84259 34.126401, 74.842324 34.126301, 74.842251 34.126437))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 077","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 077","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1076","khata_no":"DEMO-KT-2076","mutation_history":[{"mutation_no":"DEMO-MUT-3076","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":4467658,"stamp_duty":223383,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5076","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0406', '406', 'DEMO-JK-01-02-0406-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.8, 5109.9, 'Agricultural',
    34.123915, 74.844849, ST_GeomFromText('POLYGON((74.844929 34.123894, 74.844981 34.123862, 74.844882 34.123755, 74.844645 34.123904, 74.844744 34.124011, 74.844811 34.123968, 74.844842 34.124002, 74.84496 34.123928, 74.844929 34.123894))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 078","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 078","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1077","khata_no":"DEMO-KT-2077","mutation_history":[{"mutation_no":"DEMO-MUT-3077","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":5161515,"stamp_duty":258076,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4077"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5077","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0407', '407', 'DEMO-JK-01-02-0407-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.6, 5064.2, 'Residential',
    34.126994, 74.843409, ST_GeomFromText('POLYGON((74.843326 34.12687, 74.84328 34.126953, 74.84326 34.126946, 74.843228 34.127004, 74.843517 34.127114, 74.843549 34.127055, 74.843532 34.127049, 74.843578 34.126965, 74.843326 34.12687))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 079","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 079","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1078","khata_no":"DEMO-KT-2078","mutation_history":[{"mutation_no":"DEMO-MUT-3078","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":5347870,"stamp_duty":267394,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5078","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0408', '408', 'DEMO-JK-01-02-0408-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.3, 3897.9, 'Residential',
    34.122624, 74.843608, ST_GeomFromText('POLYGON((74.843487 34.122672, 74.843719 34.122686, 74.843723 34.122643, 74.843746 34.122645, 74.843754 34.122554, 74.843475 34.122538, 74.843467 34.122628, 74.84349 34.122629, 74.843487 34.122672))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 080","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 080","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1079","khata_no":"DEMO-KT-2079","mutation_history":[{"mutation_no":"DEMO-MUT-3079","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":4295207,"stamp_duty":214760,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1079","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5079","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0409', '409', 'DEMO-JK-01-02-0409-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.4, 3652.1, 'Residential',
    34.127117, 74.841561, ST_GeomFromText('POLYGON((74.841616 34.127145, 74.84168 34.127053, 74.841518 34.126975, 74.841447 34.127077, 74.841518 34.127111, 74.841473 34.127187, 74.841593 34.127235, 74.84164 34.127155, 74.841616 34.127145))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 081","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 081","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1080","khata_no":"DEMO-KT-2080","mutation_history":[{"mutation_no":"DEMO-MUT-3080","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":4192034,"stamp_duty":209602,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4080"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5080","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0410', '410', 'DEMO-JK-01-02-0410-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 9, 2443.3, 'Commercial',
    34.127027, 74.841339, ST_GeomFromText('POLYGON((74.841294 34.12702, 74.841275 34.127099, 74.841344 34.12711, 74.84136 34.127046, 74.841403 34.127062, 74.841458 34.126964, 74.841317 34.126909, 74.841261 34.127006, 74.841294 34.12702))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 082","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 082","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1081","khata_no":"DEMO-KT-2081","mutation_history":[{"mutation_no":"DEMO-MUT-3081","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":2916703,"stamp_duty":145835,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5081","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0411', '411', 'DEMO-JK-01-02-0411-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17, 4616.7, 'Mixed Use',
    34.126398, 74.841725, ST_GeomFromText('POLYGON((74.84157 34.126384, 74.841648 34.126413, 74.841653 34.126403, 74.841772 34.126447, 74.841766 34.126457, 74.841836 34.126483, 74.84191 34.126348, 74.841644 34.126249, 74.84157 34.126384))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 083","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 083","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1082","khata_no":"DEMO-KT-2082","mutation_history":[{"mutation_no":"DEMO-MUT-3082","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":5723182,"stamp_duty":286159,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5082","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0412', '412', 'DEMO-JK-01-02-0412-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.6, 3709.4, 'Agricultural',
    34.122681, 74.843005, ST_GeomFromText('POLYGON((74.843104 34.122704, 74.843144 34.122707, 74.843152 34.122608, 74.842879 34.122592, 74.84287 34.12269, 74.842895 34.122692, 74.842892 34.122723, 74.843102 34.122735, 74.843104 34.122704))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 084","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 084","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1083","khata_no":"DEMO-KT-2083","mutation_history":[{"mutation_no":"DEMO-MUT-3083","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":4768742,"stamp_duty":238437,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1083","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4083"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5083","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0413', '413', 'DEMO-JK-01-02-0413-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18, 4908.8, 'Residential',
    34.123467, 74.842795, ST_GeomFromText('POLYGON((74.842639 34.12352, 74.842821 34.123555, 74.842827 34.123533, 74.842894 34.123545, 74.84293 34.123417, 74.842863 34.123405, 74.84287 34.123378, 74.842679 34.123342, 74.842633 34.12351, 74.842639 34.12352))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 085","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 085","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1084","khata_no":"DEMO-KT-2084","mutation_history":[{"mutation_no":"DEMO-MUT-3084","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":6536051,"stamp_duty":326803,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5084","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0414', '414', 'DEMO-JK-01-02-0414-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 10.2, 19111.1, 'Residential',
    34.124927, 74.840506, ST_GeomFromText('POLYGON((74.840788 34.12509, 74.840642 34.124908, 74.840745 34.124713, 74.840524 34.124633, 74.840416 34.124838, 74.840207 34.12485, 74.840226 34.125057, 74.840439 34.125044, 74.840571 34.125209, 74.840788 34.12509))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 086","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 086","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1085","khata_no":"DEMO-KT-2085","mutation_history":[{"mutation_no":"DEMO-MUT-3085","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":26323829,"stamp_duty":1316191,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5085","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0415', '415', 'DEMO-JK-01-02-0415-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.1, 4924.9, 'Residential',
    34.126858, 74.843101, ST_GeomFromText('POLYGON((74.842914 34.126899, 74.843037 34.126955, 74.843172 34.126993, 74.843248 34.12685, 74.84317 34.126822, 74.843164 34.126833, 74.843102 34.126811, 74.843108 34.126799, 74.84299 34.126756, 74.842914 34.126899))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 087","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 087","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1086","khata_no":"DEMO-KT-2086","mutation_history":[{"mutation_no":"DEMO-MUT-3086","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":7009729,"stamp_duty":350486,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4086"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5086","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0416', '416', 'DEMO-JK-01-02-0416-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 1.6, 11336.9, 'Commercial',
    34.132221, 74.833772, ST_GeomFromText('POLYGON((74.833655 34.131937, 74.833619 34.132344, 74.833726 34.132351, 74.833721 34.132414, 74.833916 34.132425, 74.833937 34.132181, 74.83379 34.132172, 74.83381 34.131946, 74.833655 34.131937))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 088","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 088","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1087","khata_no":"DEMO-KT-2087","mutation_history":[{"mutation_no":"DEMO-MUT-3087","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":16656602,"stamp_duty":832830,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1087","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5087","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0417', '417', 'DEMO-JK-01-02-0417-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    11, 5.2, 61319, 'Mixed Use',
    34.129059, 74.842443, ST_GeomFromText('POLYGON((74.842117 34.129461, 74.842385 34.129505, 74.842407 34.129512, 74.842509 34.129249, 74.84252 34.129222, 74.842879 34.129301, 74.843037 34.128825, 74.842682 34.12874, 74.842795 34.128408, 74.842542 34.12834, 74.842401 34.128672, 74.842358 34.12867, 74.842185 34.129103, 74.842252 34.12911, 74.842205 34.129219, 74.842169 34.129213, 74.842082 34.129455, 74.842117 34.129461))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 089","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 089","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1088","khata_no":"DEMO-KT-2088","mutation_history":[{"mutation_no":"DEMO-MUT-3088","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":92907576,"stamp_duty":4645379,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5088","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0418', '418', 'DEMO-JK-01-02-0418-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    11, 11.4, 62985.5, 'Agricultural',
    34.129424, 74.837196, ST_GeomFromText('POLYGON((74.837275 34.128917, 74.837653 34.129278, 74.837758 34.129278, 74.837883 34.129358, 74.837863 34.129536, 74.837723 34.129646, 74.837612 34.129629, 74.837188 34.129945, 74.837077 34.129801, 74.836984 34.129774, 74.836937 34.129715, 74.836952 34.12964, 74.837006 34.129599, 74.83698 34.129521, 74.836916 34.129509, 74.836865 34.129444, 74.836876 34.129365, 74.836937 34.129309, 74.837015 34.129299, 74.837047 34.129216, 74.83698 34.12918, 74.836989 34.129106, 74.837041 34.129052, 74.837156 34.129052, 74.837275 34.128917))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 090","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 090","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1089","khata_no":"DEMO-KT-2089","mutation_history":[{"mutation_no":"DEMO-MUT-3089","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":98324472,"stamp_duty":4916224,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4089"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5089","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0419', '419', 'DEMO-JK-01-02-0419-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 3.8, 11934.4, 'Residential',
    34.130024, 74.835456, ST_GeomFromText('POLYGON((74.835246 34.130153, 74.835542 34.130228, 74.835665 34.129894, 74.835369 34.129819, 74.835246 34.130153))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 091","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 091","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1090","khata_no":"DEMO-KT-2090","mutation_history":[{"mutation_no":"DEMO-MUT-3090","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":10959045,"stamp_duty":547952,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5090","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0420', '420', 'DEMO-JK-01-02-0420-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 2.7, 6176.3, 'Residential',
    34.127978, 74.836098, ST_GeomFromText('POLYGON((74.836014 34.128183, 74.836141 34.128193, 74.836188 34.127772, 74.83605 34.127765, 74.836014 34.128183))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 092","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 092","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1091","khata_no":"DEMO-KT-2091","mutation_history":[{"mutation_no":"DEMO-MUT-3091","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":5955110,"stamp_duty":297756,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1091","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5091","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0421', '421', 'DEMO-JK-01-02-0421-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    7, 9.5, 40700.1, 'Residential',
    34.129821, 74.83793, ST_GeomFromText('POLYGON((74.838279 34.130138, 74.837878 34.13011, 74.837894 34.129955, 74.837888 34.129954, 74.837874 34.130119, 74.83752 34.130099, 74.837548 34.129762, 74.837749 34.129774, 74.837749 34.129763, 74.83759 34.129755, 74.837609 34.129475, 74.83788 34.129488, 74.837859 34.129778, 74.838051 34.129787, 74.838067 34.129553, 74.838294 34.129564, 74.838278 34.129784, 74.838147 34.129779, 74.83814 34.129887, 74.838303 34.129898, 74.838279 34.130138))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 093","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 093","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1092","khata_no":"DEMO-KT-2092","mutation_history":[{"mutation_no":"DEMO-MUT-3092","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":41111212,"stamp_duty":2055561,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4092"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5092","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0422', '422', 'DEMO-JK-01-02-0422-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.4, 6362.3, 'Commercial',
    34.129177, 74.835891, ST_GeomFromText('POLYGON((74.835808 34.129305, 74.835949 34.129313, 74.835959 34.129179, 74.836076 34.129185, 74.836084 34.129074, 74.83572 34.129055, 74.835712 34.129148, 74.83582 34.129154, 74.835808 34.129305))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 094","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 094","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1093","khata_no":"DEMO-KT-2093","mutation_history":[{"mutation_no":"DEMO-MUT-3093","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":6718682,"stamp_duty":335934,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5093","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0423', '423', 'DEMO-JK-01-02-0423-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 16.6, 9976.9, 'Mixed Use',
    34.131738, 74.833775, ST_GeomFromText('POLYGON((74.833666 34.131976, 74.833793 34.131983, 74.833808 34.131788, 74.833949 34.131796, 74.833968 34.131554, 74.833798 34.131545, 74.833793 34.131608, 74.833655 34.1316, 74.833642 34.131765, 74.833682 34.131768, 74.833666 34.131976))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 095","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 095","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1094","khata_no":"DEMO-KT-2094","mutation_history":[{"mutation_no":"DEMO-MUT-3094","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":10993829,"stamp_duty":549691,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5094","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0424', '424', 'DEMO-JK-01-02-0424-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.1, 6296.9, 'Agricultural',
    34.131082, 74.842526, ST_GeomFromText('POLYGON((74.8423 34.131152, 74.842406 34.131168, 74.842431 34.131059, 74.842826 34.131121, 74.842846 34.131034, 74.842344 34.130956, 74.8423 34.131152))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 096","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 096","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1095","khata_no":"DEMO-KT-2095","mutation_history":[{"mutation_no":"DEMO-MUT-3095","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":7227847,"stamp_duty":361392,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1095","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-06-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4095"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5095","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0425', '425', 'DEMO-JK-01-02-0425-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 15.1, 15012.8, 'Residential',
    34.127432, 74.836802, ST_GeomFromText('POLYGON((74.836422 34.127515, 74.836551 34.12752, 74.83656 34.127355, 74.836711 34.12736, 74.836703 34.127525, 74.836882 34.127531, 74.836891 34.127367, 74.83706 34.127373, 74.837051 34.127537, 74.837175 34.127541, 74.837188 34.127291, 74.836435 34.127265, 74.836422 34.127515))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 097","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 097","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1096","khata_no":"DEMO-KT-2096","mutation_history":[{"mutation_no":"DEMO-MUT-3096","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":17921616,"stamp_duty":896081,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5096","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0426', '426', 'DEMO-JK-01-02-0426-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    4, 1.9, 22308.2, 'Residential',
    34.127492, 74.838041, ST_GeomFromText('POLYGON((74.83749 34.12757, 74.837716 34.127578, 74.837726 34.127411, 74.837943 34.12742, 74.837934 34.127587, 74.838134 34.127594, 74.838143 34.127427, 74.838376 34.127436, 74.838366 34.127603, 74.838574 34.127611, 74.838588 34.127356, 74.837504 34.127314, 74.83749 34.12757))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 098","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 098","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1097","khata_no":"DEMO-KT-2097","mutation_history":[{"mutation_no":"DEMO-MUT-3097","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":27654793,"stamp_duty":1382740,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5097","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0427', '427', 'DEMO-JK-01-02-0427-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 10.9, 13844, 'Residential',
    34.13068, 74.837024, ST_GeomFromText('POLYGON((74.836804 34.1307, 74.836824 34.130758, 74.836865 34.130808, 74.836924 34.130844, 74.836994 34.130862, 74.837067 34.13086, 74.837136 34.130839, 74.837192 34.1308, 74.83723 34.130748, 74.837246 34.130689, 74.837237 34.130629, 74.837205 34.130574, 74.837154 34.130531, 74.837088 34.130505, 74.837016 34.130497, 74.836945 34.130509, 74.836883 34.130539, 74.836835 34.130585, 74.836808 34.13064, 74.836804 34.1307))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 099","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 099","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1098","khata_no":"DEMO-KT-2098","mutation_history":[{"mutation_no":"DEMO-MUT-3098","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":17797612,"stamp_duty":889881,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4098"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5098","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0428', '428', 'DEMO-JK-01-02-0428-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 2.6, 11609.2, 'Commercial',
    34.130631, 74.838106, ST_GeomFromText('POLYGON((74.837802 34.130674, 74.837827 34.130574, 74.83786 34.130487, 74.838515 34.130521, 74.838477 34.130718, 74.838352 34.13071, 74.838359 34.13064, 74.838065 34.130619, 74.838034 34.130661, 74.837945 34.130655, 74.837932 34.130682, 74.837802 34.130674))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 100","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 100","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1099","khata_no":"DEMO-KT-2099","mutation_history":[{"mutation_no":"DEMO-MUT-3099","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":15457612,"stamp_duty":772881,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1099","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-01-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5099","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0429', '429', 'DEMO-JK-01-02-0429-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.2, 3592.6, 'Mixed Use',
    34.130015, 74.838793, ST_GeomFromText('POLYGON((74.83874 34.129927, 74.838872 34.129948, 74.83887 34.12997, 74.838921 34.130001, 74.838899 34.130084, 74.838851 34.130085, 74.838844 34.130101, 74.838713 34.130081, 74.838719 34.130056, 74.838674 34.130056, 74.838677 34.129936, 74.838738 34.129939, 74.83874 34.129927))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 101","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 101","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1100","khata_no":"DEMO-KT-2100","mutation_history":[{"mutation_no":"DEMO-MUT-3100","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":4948485,"stamp_duty":247424,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5100","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0430', '430', 'DEMO-JK-01-02-0430-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 15.3, 15049.3, 'Agricultural',
    34.128189, 74.8341, ST_GeomFromText('POLYGON((74.833963 34.128546, 74.834016 34.128016, 74.834066 34.128016, 74.83409 34.127988, 74.834279 34.127995, 74.834185 34.12857, 74.833963 34.128546))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 102","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 102","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1101","khata_no":"DEMO-KT-2101","mutation_history":[{"mutation_no":"DEMO-MUT-3101","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":21420032,"stamp_duty":1071002,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4101"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5101","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0431', '431', 'DEMO-JK-01-02-0431-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 3.7, 11907.8, 'Residential',
    34.128999, 74.83536, ST_GeomFromText('POLYGON((74.835092 34.129105, 74.83524 34.129213, 74.835384 34.129112, 74.835384 34.129064, 74.835421 34.129084, 74.835515 34.129084, 74.835557 34.128992, 74.835557 34.128907, 74.83545 34.128911, 74.8354 34.128867, 74.835314 34.128775, 74.835138 34.12888, 74.835228 34.128992, 74.835092 34.129105))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 103","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 103","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1102","khata_no":"DEMO-KT-2102","mutation_history":[{"mutation_no":"DEMO-MUT-3102","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":17495390,"stamp_duty":874770,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5102","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0432', '432', 'DEMO-JK-01-02-0432-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    10, 1.2, 54763.6, 'Residential',
    34.125803, 74.838528, ST_GeomFromText('POLYGON((74.838709 34.126112, 74.838602 34.126121, 74.838616 34.126231, 74.838495 34.126242, 74.838483 34.126151, 74.838427 34.126155, 74.838414 34.126053, 74.838254 34.126067, 74.838164 34.125377, 74.838395 34.125356, 74.838376 34.125208, 74.838582 34.125189, 74.838598 34.125313, 74.838773 34.125298, 74.838862 34.12598, 74.838693 34.125995, 74.838709 34.126112))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 104","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 104","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1103","khata_no":"DEMO-KT-2103","mutation_history":[{"mutation_no":"DEMO-MUT-3103","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":82975152,"stamp_duty":4148758,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1103","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-05-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5103","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0433', '433', 'DEMO-JK-01-02-0433-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.1, 5207.8, 'Residential',
    34.125504, 74.838029, ST_GeomFromText('POLYGON((74.837866 34.125583, 74.837976 34.125498, 74.837964 34.125394, 74.838234 34.125372, 74.838252 34.125521, 74.838007 34.125541, 74.837906 34.125619, 74.837866 34.125583))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 105","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 105","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1104","khata_no":"DEMO-KT-2104","mutation_history":[{"mutation_no":"DEMO-MUT-3104","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":8129715,"stamp_duty":406486,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4104"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5104","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0434', '434', 'DEMO-JK-01-02-0434-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 6.9, 1881.6, 'Commercial',
    34.125258, 74.837794, ST_GeomFromText('POLYGON((74.83774 34.125331, 74.837863 34.125323, 74.837848 34.125185, 74.837725 34.125194, 74.83774 34.125331))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 106","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 106","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1105","khata_no":"DEMO-KT-2105","mutation_history":[{"mutation_no":"DEMO-MUT-3105","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":1727824,"stamp_duty":86391,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5105","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0435', '435', 'DEMO-JK-01-02-0435-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    23, 1.5, 125651.7, 'Mixed Use',
    34.124072, 74.841139, ST_GeomFromText('POLYGON((74.840707 34.124923, 74.840578 34.123865, 74.841004 34.12383, 74.840995 34.123757, 74.841206 34.123739, 74.841218 34.123832, 74.841639 34.123797, 74.841765 34.124835, 74.840707 34.124923))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 107","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 107","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1106","khata_no":"DEMO-KT-2106","mutation_history":[{"mutation_no":"DEMO-MUT-3106","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":121151777,"stamp_duty":6057589,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5106","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0436', '436', 'DEMO-JK-01-02-0436-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 2.5, 667.8, 'Agricultural',
    34.124234, 74.840286, ST_GeomFromText('POLYGON((74.840238 34.124266, 74.840235 34.124205, 74.840334 34.124202, 74.840337 34.124263, 74.840238 34.124266))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 108","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 108","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1107","khata_no":"DEMO-KT-2107","mutation_history":[{"mutation_no":"DEMO-MUT-3107","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":674545,"stamp_duty":33727,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1107","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-09-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4107"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5107","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0437', '437', 'DEMO-JK-01-02-0437-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 15, 14960.8, 'Residential',
    34.126811, 74.843658, ST_GeomFromText('POLYGON((74.843299 34.126802, 74.843384 34.126651, 74.844042 34.126719, 74.843992 34.126926, 74.843629 34.126864, 74.843603 34.126902, 74.843299 34.126802))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 109","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 109","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1108","khata_no":"DEMO-KT-2108","mutation_history":[{"mutation_no":"DEMO-MUT-3108","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":15798825,"stamp_duty":789941,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5108","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0438', '438', 'DEMO-JK-01-02-0438-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 10.2, 2765.6, 'Residential',
    34.12684, 74.84403, ST_GeomFromText('POLYGON((74.843938 34.126911, 74.843974 34.126746, 74.844121 34.126768, 74.844085 34.126933, 74.843938 34.126911))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 110","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 110","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1109","khata_no":"DEMO-KT-2109","mutation_history":[{"mutation_no":"DEMO-MUT-3109","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":3047493,"stamp_duty":152375,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5109","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0439', '439', 'DEMO-JK-01-02-0439-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 8.5, 7746.9, 'Residential',
    34.126458, 74.843913, ST_GeomFromText('POLYGON((74.843974 34.126621, 74.843724 34.126526, 74.843852 34.126294, 74.844102 34.126389, 74.843974 34.126621))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 111","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 111","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1110","khata_no":"DEMO-KT-2110","mutation_history":[{"mutation_no":"DEMO-MUT-3110","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":8892218,"stamp_duty":444611,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4110"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5110","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0440', '440', 'DEMO-JK-01-02-0440-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 16.8, 15471.2, 'Commercial',
    34.12346, 74.842328, ST_GeomFromText('POLYGON((74.842017 34.123651, 74.842 34.123472, 74.842384 34.123447, 74.84237 34.123296, 74.842584 34.123283, 74.842615 34.123612, 74.842017 34.123651))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 112","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 112","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1111","khata_no":"DEMO-KT-2111","mutation_history":[{"mutation_no":"DEMO-MUT-3111","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":18468834,"stamp_duty":923442,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1111","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5111","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0441', '441', 'DEMO-JK-01-02-0441-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 4.1, 1110.9, 'Mixed Use',
    34.123295, 74.842958, ST_GeomFromText('POLYGON((74.842886 34.123323, 74.842906 34.123245, 74.84303 34.123268, 74.84301 34.123345, 74.842886 34.123323))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 113","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 113","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1112","khata_no":"DEMO-KT-2112","mutation_history":[{"mutation_no":"DEMO-MUT-3112","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":1377149,"stamp_duty":68857,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5112","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0442', '442', 'DEMO-JK-01-02-0442-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 11.5, 3122.2, 'Agricultural',
    34.123316, 74.843448, ST_GeomFromText('POLYGON((74.843303 34.123345, 74.843328 34.123243, 74.843593 34.123287, 74.843568 34.12339, 74.843303 34.123345))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 114","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 114","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1113","khata_no":"DEMO-KT-2113","mutation_history":[{"mutation_no":"DEMO-MUT-3113","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":4013848,"stamp_duty":200692,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4113"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5113","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0443', '443', 'DEMO-JK-01-02-0443-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 9.7, 2631.8, 'Residential',
    34.123454, 74.843748, ST_GeomFromText('POLYGON((74.843552 34.123457, 74.843565 34.123396, 74.843944 34.123451, 74.843931 34.123512, 74.843552 34.123457))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 115","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 115","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1114","khata_no":"DEMO-KT-2114","mutation_history":[{"mutation_no":"DEMO-MUT-3114","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":3504233,"stamp_duty":175212,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5114","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0444', '444', 'DEMO-JK-01-02-0444-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 13.9, 3795.2, 'Residential',
    34.12641, 74.841274, ST_GeomFromText('POLYGON((74.841187 34.126506, 74.841161 34.126337, 74.841361 34.126315, 74.841387 34.126484, 74.841187 34.126506))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 116","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 116","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1115","khata_no":"DEMO-KT-2115","mutation_history":[{"mutation_no":"DEMO-MUT-3115","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":5227548,"stamp_duty":261377,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1115","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5115","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0445', '445', 'DEMO-JK-01-02-0445-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.4, 4464.9, 'Residential',
    34.126359, 74.839612, ST_GeomFromText('POLYGON((74.839352 34.126415, 74.839344 34.126339, 74.839873 34.126303, 74.83988 34.126379, 74.839352 34.126415))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 117","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 117","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1116","khata_no":"DEMO-KT-2116","mutation_history":[{"mutation_no":"DEMO-MUT-3116","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":6355000,"stamp_duty":317750,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4116"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5116","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0446', '446', 'DEMO-JK-01-02-0446-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 6.3, 18041.4, 'Commercial',
    34.126659, 74.840756, ST_GeomFromText('POLYGON((74.840564 34.126957, 74.840501 34.126408, 74.840676 34.126394, 74.840711 34.126696, 74.840849 34.126685, 74.84084 34.126605, 74.840936 34.126598, 74.840974 34.126925, 74.840564 34.126957))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 118","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 118","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1117","khata_no":"DEMO-KT-2117","mutation_history":[{"mutation_no":"DEMO-MUT-3117","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":26507107,"stamp_duty":1325355,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5117","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0447', '447', 'DEMO-JK-01-02-0447-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17.6, 4798.8, 'Mixed Use',
    34.126903, 74.841155, ST_GeomFromText('POLYGON((74.84101 34.126965, 74.8411 34.126776, 74.841299 34.126841, 74.841209 34.12703, 74.84101 34.126965))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 119","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 119","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1118","khata_no":"DEMO-KT-2118","mutation_history":[{"mutation_no":"DEMO-MUT-3118","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":7270909,"stamp_duty":363545,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5118","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0448', '448', 'DEMO-JK-01-02-0448-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 1.7, 11355.3, 'Agricultural',
    34.126737, 74.841491, ST_GeomFromText('POLYGON((74.841565 34.12698, 74.841202 34.12683, 74.841403 34.126497, 74.841608 34.126582, 74.84155 34.126679, 74.841517 34.126665, 74.841503 34.126687, 74.841463 34.12667, 74.841444 34.126702, 74.841477 34.126715, 74.841456 34.126751, 74.84147 34.126756, 74.841442 34.126804, 74.841537 34.126843, 74.841564 34.1268, 74.841652 34.126836, 74.841565 34.12698))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 120","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 120","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1119","khata_no":"DEMO-KT-2119","mutation_history":[{"mutation_no":"DEMO-MUT-3119","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":17726364,"stamp_duty":886318,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1119","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4119"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5119","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0449', '449', 'DEMO-JK-01-02-0449-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 10.9, 2979.9, 'Residential',
    34.127044, 74.842641, ST_GeomFromText('POLYGON((74.842542 34.127111, 74.842571 34.126956, 74.842741 34.126978, 74.842712 34.127133, 74.842542 34.127111))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 121","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 121","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1120","khata_no":"DEMO-KT-2120","mutation_history":[{"mutation_no":"DEMO-MUT-3120","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":2736364,"stamp_duty":136818,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5120","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0450', '450', 'DEMO-JK-01-02-0450-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.5, 5031.3, 'Residential',
    34.125602, 74.839461, ST_GeomFromText('POLYGON((74.839387 34.125735, 74.839353 34.125488, 74.839535 34.12547, 74.839569 34.125717, 74.839387 34.125735))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 122","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 122","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1121","khata_no":"DEMO-KT-2121","mutation_history":[{"mutation_no":"DEMO-MUT-3121","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":4851116,"stamp_duty":242556,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5121","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0451', '451', 'DEMO-JK-01-02-0451-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 17.5, 4764.2, 'Residential',
    34.125594, 74.839626, ST_GeomFromText('POLYGON((74.839545 34.125715, 74.839519 34.125488, 74.839707 34.125473, 74.839733 34.125701, 74.839545 34.125715))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 123","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 123","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1122","khata_no":"DEMO-KT-2122","mutation_history":[{"mutation_no":"DEMO-MUT-3122","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":4812323,"stamp_duty":240616,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4122"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5122","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0452', '452', 'DEMO-JK-01-02-0452-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.3, 4983.2, 'Commercial',
    34.124746, 74.840361, ST_GeomFromText('POLYGON((74.840244 34.124845, 74.840221 34.124671, 74.840478 34.124648, 74.840501 34.124821, 74.840244 34.124845))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 124","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 124","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1123","khata_no":"DEMO-KT-2123","mutation_history":[{"mutation_no":"DEMO-MUT-3123","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":5262332,"stamp_duty":263117,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1123","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5123","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0453', '453', 'DEMO-JK-01-02-0453-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 2.6, 720.3, 'Mixed Use',
    34.123524, 74.839722, ST_GeomFromText('POLYGON((74.839687 34.123568, 74.839678 34.123486, 74.839757 34.123481, 74.839766 34.123563, 74.839687 34.123568))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 125","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 125","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1124","khata_no":"DEMO-KT-2124","mutation_history":[{"mutation_no":"DEMO-MUT-3124","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":793719,"stamp_duty":39686,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5124","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0454', '454', 'DEMO-JK-01-02-0454-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 3.5, 966.2, 'Agricultural',
    34.124732, 74.839591, ST_GeomFromText('POLYGON((74.839536 34.124772, 74.839652 34.124767, 74.839646 34.124691, 74.839531 34.124697, 74.839536 34.124772))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 126","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 126","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1125","khata_no":"DEMO-KT-2125","mutation_history":[{"mutation_no":"DEMO-MUT-3125","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":1109045,"stamp_duty":55452,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4125"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5125","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0455', '455', 'DEMO-JK-01-02-0455-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 3.1, 839.4, 'Residential',
    34.125834, 74.839939, ST_GeomFromText('POLYGON((74.839909 34.125888, 74.839895 34.125787, 74.839969 34.12578, 74.839983 34.125882, 74.839909 34.125888))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 127","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 127","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1126","khata_no":"DEMO-KT-2126","mutation_history":[{"mutation_no":"DEMO-MUT-3126","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":1002039,"stamp_duty":50102,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5126","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0456', '456', 'DEMO-JK-01-02-0456-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.7, 5097.1, 'Residential',
    34.12784, 74.836786, ST_GeomFromText('POLYGON((74.836613 34.1279, 74.836936 34.127924, 74.836951 34.127781, 74.836643 34.127754, 74.836613 34.1279))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 128","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 128","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1127","khata_no":"DEMO-KT-2127","mutation_history":[{"mutation_no":"DEMO-MUT-3127","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":6318719,"stamp_duty":315936,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1127","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5127","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0457', '457', 'DEMO-JK-01-02-0457-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 20, 5436.9, 'Residential',
    34.129376, 74.835155, ST_GeomFromText('POLYGON((74.835315 34.129379, 74.835119 34.129369, 74.835098 34.129511, 74.835014 34.129509, 74.83505 34.129235, 74.835336 34.12925, 74.835315 34.129379))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 129","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 129","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1128","khata_no":"DEMO-KT-2128","mutation_history":[{"mutation_no":"DEMO-MUT-3128","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":6989587,"stamp_duty":349479,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4128"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5128","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0458', '458', 'DEMO-JK-01-02-0458-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    4, 4.9, 23123.7, 'Commercial',
    34.129468, 74.835671, ST_GeomFromText('POLYGON((74.835319 34.12921, 74.836018 34.129252, 74.835982 34.129574, 74.835825 34.129554, 74.835771 34.129551, 74.835774 34.129479, 74.835533 34.129477, 74.835524 34.129566, 74.835292 34.129551, 74.835319 34.12921))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 130","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 130","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1129","khata_no":"DEMO-KT-2129","mutation_history":[{"mutation_no":"DEMO-MUT-3129","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":30789132,"stamp_duty":1539457,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5129","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0459', '459', 'DEMO-JK-01-02-0459-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 14.7, 14894.2, 'Mixed Use',
    34.128472, 74.834564, ST_GeomFromText('POLYGON((74.834215 34.128559, 74.834901 34.128582, 74.834909 34.128378, 74.834231 34.128368, 74.834215 34.128559))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 131","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 131","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1130","khata_no":"DEMO-KT-2130","mutation_history":[{"mutation_no":"DEMO-MUT-3130","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":20515427,"stamp_duty":1025771,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5130","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0460', '460', 'DEMO-JK-01-02-0460-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 9.9, 13587.6, 'Agricultural',
    34.129977, 74.834728, ST_GeomFromText('POLYGON((74.834547 34.130146, 74.834862 34.13019, 74.834911 34.129802, 74.834592 34.129769, 74.834547 34.130146))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 132","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 132","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1131","khata_no":"DEMO-KT-2131","mutation_history":[{"mutation_no":"DEMO-MUT-3131","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":19339559,"stamp_duty":966978,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1131","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-06-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4131"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5131","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0461', '461', 'DEMO-JK-01-02-0461-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    3, 9.5, 18925.4, 'Residential',
    34.13074, 74.835287, ST_GeomFromText('POLYGON((74.83506 34.130677, 74.835039 34.130993, 74.835493 34.131009, 74.835518 34.130698, 74.835428 34.130691, 74.83544 34.13059, 74.835164 34.130583, 74.835152 34.130683, 74.83506 34.130677))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 133","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 133","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1132","khata_no":"DEMO-KT-2132","mutation_history":[{"mutation_no":"DEMO-MUT-3132","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":27805914,"stamp_duty":1390296,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5132","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0462', '462', 'DEMO-JK-01-02-0462-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    9, 12.2, 52338.5, 'Residential',
    34.12794, 74.834539, ST_GeomFromText('POLYGON((74.834092 34.127558, 74.834036 34.128026, 74.834578 34.128053, 74.834559 34.128175, 74.83493 34.128197, 74.83504 34.127633, 74.834092 34.127558))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 134","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 134","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1133","khata_no":"DEMO-KT-2133","mutation_history":[{"mutation_no":"DEMO-MUT-3133","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":79300758,"stamp_duty":3965038,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5133","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0463', '463', 'DEMO-JK-01-02-0463-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    4, 3.1, 22620.7, 'Residential',
    34.127667, 74.833869, ST_GeomFromText('POLYGON((74.833515 34.127786, 74.834187 34.127842, 74.834239 34.127544, 74.833535 34.127494, 74.833515 34.127786))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 135","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 135","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1134","khata_no":"DEMO-KT-2134","mutation_history":[{"mutation_no":"DEMO-MUT-3134","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":35312388,"stamp_duty":1765619,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4134"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5134","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0464', '464', 'DEMO-JK-01-02-0464-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 8.2, 13109.3, 'Commercial',
    34.129477, 74.842082, ST_GeomFromText('POLYGON((74.841832 34.129794, 74.842074 34.129808, 74.84223 34.129329, 74.842195 34.129323, 74.842156 34.129316, 74.842004 34.129294, 74.841832 34.129794))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 136","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 136","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1135","khata_no":"DEMO-KT-2135","mutation_history":[{"mutation_no":"DEMO-MUT-3135","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":12037925,"stamp_duty":601896,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1135","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-01-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5135","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0465', '465', 'DEMO-JK-01-02-0465-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 13.4, 14545.2, 'Mixed Use',
    34.129538, 74.842268, ST_GeomFromText('POLYGON((74.842019 34.129791, 74.842271 34.129835, 74.84243 34.129394, 74.842444 34.129356, 74.842176 34.129312, 74.842019 34.129791))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 137","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 137","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1136","khata_no":"DEMO-KT-2136","mutation_history":[{"mutation_no":"DEMO-MUT-3136","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":14024298,"stamp_duty":701215,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5136","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0466', '466', 'DEMO-JK-01-02-0466-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    5, 0.5, 27373, 'Agricultural',
    34.12016, 74.833863, ST_GeomFromText('POLYGON((74.833808 34.119985, 74.833754 34.120327, 74.83364 34.120391, 74.833621 34.120526, 74.83371 34.120624, 74.833864 34.120645, 74.833976 34.120567, 74.834007 34.120439, 74.833924 34.120344, 74.833973 34.120004, 74.834092 34.119918, 74.834108 34.11979, 74.834008 34.119689, 74.833863 34.119679, 74.83374 34.119752, 74.833722 34.119885, 74.833808 34.119985))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 138","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 138","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1137","khata_no":"DEMO-KT-2137","mutation_history":[{"mutation_no":"DEMO-MUT-3137","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":27649495,"stamp_duty":1382475,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4137"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5137","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0467', '467', 'DEMO-JK-01-02-0467-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    66, 7.2, 361318.3, 'Residential',
    34.120065, 74.834293, ST_GeomFromText('POLYGON((74.833128 34.1204, 74.833339 34.120414, 74.833286 34.120884, 74.834216 34.120986, 74.83539 34.12103, 74.835497 34.12041, 74.835513 34.120318, 74.835619 34.119702, 74.8344 34.119635, 74.834407 34.119557, 74.834431 34.119309, 74.833822 34.119212, 74.833674 34.119524, 74.833374 34.119524, 74.833128 34.1204))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 139","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 139","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1138","khata_no":"DEMO-KT-2138","mutation_history":[{"mutation_no":"DEMO-MUT-3138","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":381557433,"stamp_duty":19077872,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5138","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0468', '468', 'DEMO-JK-01-02-0468-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.4, 8547.2, 'Residential',
    34.128534, 74.837056, ST_GeomFromText('POLYGON((74.83696 34.128644, 74.836963 34.128611, 74.83697 34.128518, 74.836973 34.128476, 74.836979 34.128403, 74.837292 34.12841, 74.837252 34.128677, 74.83696 34.128644))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 140","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 140","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1139","khata_no":"DEMO-KT-2139","mutation_history":[{"mutation_no":"DEMO-MUT-3139","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":9418402,"stamp_duty":470920,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1139","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-05-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5139","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0469', '469', 'DEMO-JK-01-02-0469-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 15.1, 4114.5, 'Residential',
    34.126973, 74.832649, ST_GeomFromText('POLYGON((74.832509 34.127013, 74.832724 34.127089, 74.832785 34.126926, 74.832578 34.126865, 74.832509 34.127013))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 141","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 141","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1140","khata_no":"DEMO-KT-2140","mutation_history":[{"mutation_no":"DEMO-MUT-3140","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":4722796,"stamp_duty":236140,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4140"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5140","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0470', '470', 'DEMO-JK-01-02-0470-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    8, 16.9, 48148, 'Commercial',
    34.127074, 74.838083, ST_GeomFromText('POLYGON((74.837701 34.127308, 74.837736 34.127348, 74.838257 34.127407, 74.838267 34.127329, 74.838286 34.127329, 74.83831 34.127323, 74.838328 34.127299, 74.838348 34.127148, 74.838366 34.12713, 74.838386 34.127112, 74.838402 34.127087, 74.838428 34.127086, 74.838454 34.127088, 74.838507 34.127087, 74.838544 34.127082, 74.838578 34.127066, 74.83862 34.127042, 74.838643 34.127008, 74.838656 34.126957, 74.838656 34.126913, 74.838639 34.126868, 74.838605 34.126841, 74.838559 34.126814, 74.838528 34.126807, 74.838494 34.126805, 74.838453 34.12681, 74.838413 34.12682, 74.838381 34.126845, 74.83837 34.126862, 74.838355 34.126881, 74.838331 34.126909, 74.837901 34.126862, 74.837866 34.126908, 74.837851 34.126949, 74.837837 34.126994, 74.837847 34.12702, 74.837825 34.127043, 74.837723 34.127092, 74.837689 34.12707, 74.83765 34.127057, 74.837597 34.127038, 74.837546 34.127049, 74.837517 34.127052, 74.83748 34.127069, 74.83744 34.1271, 74.83742 34.127138, 74.837403 34.127184, 74.837412 34.127235, 74.837433 34.127284, 74.837491 34.127336, 74.837562 34.127351, 74.837612 34.127351, 74.837679 34.127332, 74.837701 34.127308))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 142","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 142","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1141","khata_no":"DEMO-KT-2141","mutation_history":[{"mutation_no":"DEMO-MUT-3141","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":57476951,"stamp_duty":2873848,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5141","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0471', '471', 'DEMO-JK-01-02-0471-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 8.4, 2297.2, 'Mixed Use',
    34.128698, 74.842941, ST_GeomFromText('POLYGON((74.842852 34.128752, 74.843007 34.128773, 74.843033 34.128646, 74.842874 34.128621, 74.842852 34.128752))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 143","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 143","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1142","khata_no":"DEMO-KT-2142","mutation_history":[{"mutation_no":"DEMO-MUT-3142","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":2847769,"stamp_duty":142388,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5142","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0472', '472', 'DEMO-JK-01-02-0472-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 8.4, 2291.3, 'Agricultural',
    34.128573, 74.842971, ST_GeomFromText('POLYGON((74.842882 34.128627, 74.843036 34.128648, 74.843063 34.128521, 74.842904 34.128496, 74.842882 34.128627))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 144","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 144","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1143","khata_no":"DEMO-KT-2143","mutation_history":[{"mutation_no":"DEMO-MUT-3143","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":2945657,"stamp_duty":147283,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1143","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-09-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4143"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5143","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0473', '473', 'DEMO-JK-01-02-0473-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 8, 2176.8, 'Residential',
    34.129509, 74.842675, ST_GeomFromText('POLYGON((74.842579 34.129556, 74.84273 34.129586, 74.842771 34.129462, 74.842621 34.129434, 74.842579 34.129556))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 145","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 145","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1144","khata_no":"DEMO-KT-2144","mutation_history":[{"mutation_no":"DEMO-MUT-3144","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":2898402,"stamp_duty":144920,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5144","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0474', '474', 'DEMO-JK-01-02-0474-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 6.9, 1877.3, 'Residential',
    34.129399, 74.842714, ST_GeomFromText('POLYGON((74.842621 34.129437, 74.842762 34.129472, 74.842805 34.129363, 74.842668 34.129325, 74.842621 34.129437))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 146","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 146","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1145","khata_no":"DEMO-KT-2145","mutation_history":[{"mutation_no":"DEMO-MUT-3145","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":2585813,"stamp_duty":129291,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5145","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0475', '475', 'DEMO-JK-01-02-0475-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 6.1, 12541.4, 'Residential',
    34.129645, 74.842404, ST_GeomFromText('POLYGON((74.842211 34.129866, 74.842427 34.129915, 74.842591 34.129439, 74.842388 34.129361, 74.842211 34.129866))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 147","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 147","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1146","khata_no":"DEMO-KT-2146","mutation_history":[{"mutation_no":"DEMO-MUT-3146","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":17850478,"stamp_duty":892524,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4146"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5146","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0476', '476', 'DEMO-JK-01-02-0476-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 15.2, 4140.6, 'Commercial',
    34.130609, 74.842589, ST_GeomFromText('POLYGON((74.842492 34.130672, 74.842563 34.130752, 74.842603 34.13072, 74.842631 34.130677, 74.842649 34.130631, 74.842721 34.130411, 74.842619 34.130383, 74.842554 34.130581, 74.842543 34.130617, 74.842517 34.130647, 74.842492 34.130672))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 148","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 148","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1147","khata_no":"DEMO-KT-2147","mutation_history":[{"mutation_no":"DEMO-MUT-3147","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":6083526,"stamp_duty":304176,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1147","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5147","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0477', '477', 'DEMO-JK-01-02-0477-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.5, 3937.8, 'Mixed Use',
    34.130291, 74.842708, ST_GeomFromText('POLYGON((74.842598 34.130448, 74.842698 34.130475, 74.842812 34.130134, 74.842723 34.130105, 74.842598 34.130448))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 149","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 149","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1148","khata_no":"DEMO-KT-2148","mutation_history":[{"mutation_no":"DEMO-MUT-3148","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":5966364,"stamp_duty":298318,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5148","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0478', '478', 'DEMO-JK-01-02-0478-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 6.4, 12623.7, 'Agricultural',
    34.131711, 74.841744, ST_GeomFromText('POLYGON((74.841362 34.131884, 74.841797 34.132, 74.842144 34.131364, 74.842031 34.131337, 74.84173 34.131881, 74.841398 34.131799, 74.841362 34.131884))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 150","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 150","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1149","khata_no":"DEMO-KT-2149","mutation_history":[{"mutation_no":"DEMO-MUT-3149","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":19706419,"stamp_duty":985321,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4149"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5149","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0479', '479', 'DEMO-JK-01-02-0479-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 8.4, 7725.3, 'Residential',
    34.132243, 74.841362, ST_GeomFromText('POLYGON((74.841205 34.132564, 74.841292 34.132586, 74.841528 34.131926, 74.841423 34.131894, 74.841205 34.132564))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 151","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 151","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1150","khata_no":"DEMO-KT-2150","mutation_history":[{"mutation_no":"DEMO-MUT-3150","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":7093939,"stamp_duty":354697,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5150","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0480', '480', 'DEMO-JK-01-02-0480-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 3.3, 11792.4, 'Residential',
    34.131982, 74.841262, ST_GeomFromText('POLYGON((74.841216 34.132535, 74.841133 34.131914, 74.841133 34.131889, 74.841164 34.131867, 74.841198 34.131866, 74.841418 34.131893, 74.841401 34.131939, 74.841433 34.131954, 74.841216 34.132535))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 152","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 152","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1151","khata_no":"DEMO-KT-2151","mutation_history":[{"mutation_no":"DEMO-MUT-3151","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":11370083,"stamp_duty":568504,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1151","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5151","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0481', '481', 'DEMO-JK-01-02-0481-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 8.5, 7752.6, 'Residential',
    34.12354, 74.83475, ST_GeomFromText('POLYGON((74.834935 34.123595, 74.834756 34.123703, 74.834533 34.123504, 74.834775 34.123358, 74.834935 34.123595))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 153","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 153","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1152","khata_no":"DEMO-KT-2152","mutation_history":[{"mutation_no":"DEMO-MUT-3152","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":7830909,"stamp_duty":391545,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4152"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5152","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0482', '482', 'DEMO-JK-01-02-0482-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 15.4, 9647.8, 'Commercial',
    34.127177, 74.839436, ST_GeomFromText('POLYGON((74.839624 34.127292, 74.839392 34.127322, 74.83932 34.127254, 74.839276 34.127028, 74.839566 34.12699, 74.839624 34.127292))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 154","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 154","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1153","khata_no":"DEMO-KT-2153","mutation_history":[{"mutation_no":"DEMO-MUT-3153","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":10188219,"stamp_duty":509411,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5153","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0483', '483', 'DEMO-JK-01-02-0483-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 19.5, 10762, 'Mixed Use',
    34.123485, 74.836462, ST_GeomFromText('POLYGON((74.836554 34.123652, 74.836464 34.123663, 74.836238 34.123584, 74.836365 34.123305, 74.836514 34.123318, 74.83664 34.123388, 74.836554 34.123652))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 155","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 155","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1154","khata_no":"DEMO-KT-2154","mutation_history":[{"mutation_no":"DEMO-MUT-3154","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":11858953,"stamp_duty":592948,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5154","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0484', '484', 'DEMO-JK-01-02-0484-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3, 6262.8, 'Agricultural',
    34.128493, 74.838142, ST_GeomFromText('POLYGON((74.838192 34.128675, 74.837939 34.128465, 74.838023 34.128395, 74.838125 34.128479, 74.838209 34.128409, 74.838361 34.128535, 74.838192 34.128675))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 156","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 156","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1155","khata_no":"DEMO-KT-2155","mutation_history":[{"mutation_no":"DEMO-MUT-3155","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":7188705,"stamp_duty":359435,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1155","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4155"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5155","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0485', '485', 'DEMO-JK-01-02-0485-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.5, 4502.6, 'Residential',
    34.125813, 74.835733, ST_GeomFromText('POLYGON((74.835646 34.125933, 74.835604 34.125825, 74.835698 34.1258, 74.83568 34.125754, 74.835854 34.125707, 74.835914 34.125861, 74.835646 34.125933))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 157","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 157","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1156","khata_no":"DEMO-KT-2156","mutation_history":[{"mutation_no":"DEMO-MUT-3156","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":5375005,"stamp_duty":268750,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5156","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0486', '486', 'DEMO-JK-01-02-0486-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 4.9, 6767.4, 'Residential',
    34.12744, 74.83715, ST_GeomFromText('POLYGON((74.836974 34.127498, 74.837004 34.12734, 74.837331 34.127354, 74.83729 34.127568, 74.836974 34.127498))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 158","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 158","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1157","khata_no":"DEMO-KT-2157","mutation_history":[{"mutation_no":"DEMO-MUT-3157","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":8389339,"stamp_duty":419467,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5157","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0487', '487', 'DEMO-JK-01-02-0487-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.4, 8561.2, 'Residential',
    34.125441, 74.834744, ST_GeomFromText('POLYGON((74.834524 34.125457, 74.834647 34.125318, 74.834752 34.125328, 74.834976 34.125463, 74.834823 34.125637, 74.834524 34.125457))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 159","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 159","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1158","khata_no":"DEMO-KT-2158","mutation_history":[{"mutation_no":"DEMO-MUT-3158","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":11006134,"stamp_duty":550307,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4158"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5158","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0488', '488', 'DEMO-JK-01-02-0488-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 15.6, 9701.5, 'Commercial',
    34.126843, 74.839788, ST_GeomFromText('POLYGON((74.839595 34.126773, 74.839641 34.126715, 74.839846 34.126648, 74.839997 34.12692, 74.839894 34.126992, 74.839757 34.127011, 74.839595 34.126773))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 160","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 160","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1159","khata_no":"DEMO-KT-2159","mutation_history":[{"mutation_no":"DEMO-MUT-3159","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":12917516,"stamp_duty":645876,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1159","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5159","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0489', '489', 'DEMO-JK-01-02-0489-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 1, 5706.4, 'Mixed Use',
    34.12316, 74.836811, ST_GeomFromText('POLYGON((74.836637 34.123061, 74.836963 34.123061, 74.836963 34.12316, 74.836833 34.12316, 74.836833 34.123259, 74.836637 34.123259, 74.836637 34.123061))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 161","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 161","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1160","khata_no":"DEMO-KT-2160","mutation_history":[{"mutation_no":"DEMO-MUT-3160","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":7860055,"stamp_duty":393003,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5160","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0490', '490', 'DEMO-JK-01-02-0490-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 10.3, 8259.8, 'Agricultural',
    34.128179, 74.838528, ST_GeomFromText('POLYGON((74.838405 34.128009, 74.838628 34.128103, 74.838583 34.128176, 74.838679 34.128216, 74.838595 34.128351, 74.838276 34.128217, 74.838405 34.128009))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 162","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 162","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1161","khata_no":"DEMO-KT-2161","mutation_history":[{"mutation_no":"DEMO-MUT-3161","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":11756373,"stamp_duty":587819,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4161"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5161","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0491', '491', 'DEMO-JK-01-02-0491-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 1.3, 5800.8, 'Residential',
    34.1255, 74.8361, ST_GeomFromText('POLYGON((74.836183 34.125365, 74.83628 34.125476, 74.836034 34.125654, 74.835902 34.125504, 74.836183 34.125365))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 163","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 163","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1162","khata_no":"DEMO-KT-2162","mutation_history":[{"mutation_no":"DEMO-MUT-3162","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":8522755,"stamp_duty":426138,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5162","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0492', '492', 'DEMO-JK-01-02-0492-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.5, 7477.5, 'Residential',
    34.127129, 74.83752, ST_GeomFromText('POLYGON((74.837664 34.127003, 74.837693 34.127152, 74.837609 34.127201, 74.837336 34.127237, 74.8373 34.127051, 74.837664 34.127003))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 164","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 164","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1163","khata_no":"DEMO-KT-2163","mutation_history":[{"mutation_no":"DEMO-MUT-3163","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":11329545,"stamp_duty":566477,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1163","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5163","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0493', '493', 'DEMO-JK-01-02-0493-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.6, 8598.5, 'Residential',
    34.125132, 74.835105, ST_GeomFromText('POLYGON((74.835297 34.12508, 74.835316 34.125141, 74.835236 34.12529, 74.834897 34.125187, 74.834904 34.125087, 74.834979 34.125006, 74.835297 34.12508))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 165","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 165","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1164","khata_no":"DEMO-KT-2164","mutation_history":[{"mutation_no":"DEMO-MUT-3164","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":13422819,"stamp_duty":671141,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4164"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5164","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0494', '494', 'DEMO-JK-01-02-0494-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.9, 5132.1, 'Commercial',
    34.128766, 74.839793, ST_GeomFromText('POLYGON((74.839988 34.128744, 74.839781 34.128916, 74.839696 34.128846, 74.839779 34.128777, 74.839695 34.128707, 74.839819 34.128604, 74.839988 34.128744))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 166","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 166","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1165","khata_no":"DEMO-KT-2165","mutation_history":[{"mutation_no":"DEMO-MUT-3165","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":4712672,"stamp_duty":235634,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5165","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0495', '495', 'DEMO-JK-01-02-0495-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.6, 7505.3, 'Mixed Use',
    34.122857, 74.837134, ST_GeomFromText('POLYGON((74.837348 34.122909, 74.837132 34.122968, 74.837101 34.12289, 74.837008 34.122915, 74.836952 34.122771, 74.837261 34.122687, 74.837348 34.122909))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 167","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 167","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1166","khata_no":"DEMO-KT-2166","mutation_history":[{"mutation_no":"DEMO-MUT-3166","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":7236515,"stamp_duty":361826,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5166","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0496', '496', 'DEMO-JK-01-02-0496-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 19.2, 10661.8, 'Agricultural',
    34.12786, 74.83885, ST_GeomFromText('POLYGON((74.838975 34.128013, 74.838674 34.127973, 74.838672 34.1277, 74.839079 34.127754, 74.838975 34.128013))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 168","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 168","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1167","khata_no":"DEMO-KT-2167","mutation_history":[{"mutation_no":"DEMO-MUT-3167","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":10769495,"stamp_duty":538475,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1167","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-06-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4167"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5167","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0497', '497', 'DEMO-JK-01-02-0497-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.6, 6418.4, 'Residential',
    34.125187, 74.83643, ST_GeomFromText('POLYGON((74.836421 34.125351, 74.836294 34.125275, 74.836317 34.125194, 74.836479 34.125009, 74.836637 34.125104, 74.836421 34.125351))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 169","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 169","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1168","khata_no":"DEMO-KT-2168","mutation_history":[{"mutation_no":"DEMO-MUT-3168","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":6777925,"stamp_duty":338896,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5168","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0498', '498', 'DEMO-JK-01-02-0498-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.8, 7569.1, 'Residential',
    34.126808, 74.837853, ST_GeomFromText('POLYGON((74.837755 34.126946, 74.837692 34.12692, 74.837633 34.126786, 74.83796 34.126658, 74.838034 34.126723, 74.838044 34.126814, 74.837755 34.126946))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 170","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 170","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1169","khata_no":"DEMO-KT-2169","mutation_history":[{"mutation_no":"DEMO-MUT-3169","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":8340606,"stamp_duty":417030,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5169","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0499', '499', 'DEMO-JK-01-02-0499-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.7, 4546.4, 'Residential',
    34.124813, 74.83545, ST_GeomFromText('POLYGON((74.835331 34.124928, 74.835331 34.124712, 74.83545 34.124712, 74.83545 34.124798, 74.835569 34.124798, 74.835569 34.124928, 74.835331 34.124928))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 171","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 171","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1170","khata_no":"DEMO-KT-2170","mutation_history":[{"mutation_no":"DEMO-MUT-3170","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":5218549,"stamp_duty":260927,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1200000,"cersai_id":"DEMO-CERSAI-4170"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5170","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0500', '500', 'DEMO-JK-01-02-0500-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 4.8, 6749.9, 'Commercial',
    34.12842, 74.840146, ST_GeomFromText('POLYGON((74.839958 34.128495, 74.840051 34.128344, 74.840139 34.128381, 74.840179 34.128316, 74.840342 34.128385, 74.840209 34.128601, 74.839958 34.128495))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 172","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 172","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1171","khata_no":"DEMO-KT-2171","mutation_history":[{"mutation_no":"DEMO-MUT-3171","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":8057732,"stamp_duty":402887,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1171","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-01-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5171","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0501', '501', 'DEMO-JK-01-02-0501-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 15.6, 9683.8, 'Mixed Use',
    34.12476, 74.83715, ST_GeomFromText('POLYGON((74.836942 34.124718, 74.837166 34.124584, 74.837397 34.124778, 74.837094 34.12496, 74.836942 34.124718))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 173","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 173","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1172","khata_no":"DEMO-KT-2172","mutation_history":[{"mutation_no":"DEMO-MUT-3172","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":12004711,"stamp_duty":600236,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5172","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0502', '502', 'DEMO-JK-01-02-0502-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 3.3, 11795.7, 'Agricultural',
    34.127522, 74.839218, ST_GeomFromText('POLYGON((74.838994 34.127412, 74.839277 34.127375, 74.839362 34.127441, 74.839406 34.127668, 74.839052 34.127714, 74.838994 34.127412))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 174","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 174","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1173","khata_no":"DEMO-KT-2173","mutation_history":[{"mutation_no":"DEMO-MUT-3173","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":15164353,"stamp_duty":758218,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1650000,"cersai_id":"DEMO-CERSAI-4173"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5173","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0503', '503', 'DEMO-JK-01-02-0503-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.7, 6463.2, 'Residential',
    34.124856, 74.836792, ST_GeomFromText('POLYGON((74.836758 34.124705, 74.836817 34.124685, 74.83695 34.124739, 74.836829 34.12502, 74.836736 34.125022, 74.836665 34.124967, 74.836758 34.124705))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 175","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 175","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1174","khata_no":"DEMO-KT-2174","mutation_history":[{"mutation_no":"DEMO-MUT-3174","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":8605730,"stamp_duty":430287,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5174","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0504', '504', 'DEMO-JK-01-02-0504-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 14.6, 3984.3, 'Residential',
    34.126484, 74.838206, ST_GeomFromText('POLYGON((74.838204 34.126343, 74.838365 34.126477, 74.838281 34.126547, 74.838216 34.126493, 74.838132 34.126563, 74.838035 34.126483, 74.838204 34.126343))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 176","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 176","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1175","khata_no":"DEMO-KT-2175","mutation_history":[{"mutation_no":"DEMO-MUT-3175","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":5488017,"stamp_duty":274401,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1175","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-05-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5175","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0505', '505', 'DEMO-JK-01-02-0505-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 2.1, 6009, 'Residential',
    34.12451, 74.835819, ST_GeomFromText('POLYGON((74.835894 34.124361, 74.83595 34.124505, 74.835856 34.12453, 74.83588 34.124592, 74.835706 34.124639, 74.835626 34.124434, 74.835894 34.124361))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 177","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 177","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1176","khata_no":"DEMO-KT-2176","mutation_history":[{"mutation_no":"DEMO-MUT-3176","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":8552755,"stamp_duty":427638,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2100000,"cersai_id":"DEMO-CERSAI-4176"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5176","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0506', '506', 'DEMO-JK-01-02-0506-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 12, 8719.7, 'Commercial',
    34.12812, 74.8405, ST_GeomFromText('POLYGON((74.84068 34.128039, 74.840641 34.128243, 74.840313 34.128237, 74.840366 34.127961, 74.84068 34.128039))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 178","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 178","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1177","khata_no":"DEMO-KT-2177","mutation_history":[{"mutation_no":"DEMO-MUT-3177","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":12811313,"stamp_duty":640566,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5177","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0507', '507', 'DEMO-JK-01-02-0507-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 19.3, 10712.9, 'Mixed Use',
    34.124462, 74.837503, ST_GeomFromText('POLYGON((74.837745 34.124421, 74.837592 34.124595, 74.837479 34.124594, 74.837255 34.124459, 74.837446 34.124241, 74.837745 34.124421))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 179","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 179","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1178","khata_no":"DEMO-KT-2178","mutation_history":[{"mutation_no":"DEMO-MUT-3178","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":16231667,"stamp_duty":811583,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5178","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0508', '508', 'DEMO-JK-01-02-0508-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    2, 3.5, 11836.3, 'Agricultural',
    34.129455, 74.839214, ST_GeomFromText('POLYGON((74.839434 34.129514, 74.839373 34.129578, 74.839125 34.129664, 74.838977 34.129391, 74.839106 34.129308, 74.839269 34.129278, 74.839434 34.129514))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 180","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 180","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1179","khata_no":"DEMO-KT-2179","mutation_history":[{"mutation_no":"DEMO-MUT-3179","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":18477236,"stamp_duty":923862,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1179","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-09-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2550000,"cersai_id":"DEMO-CERSAI-4179"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5179","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0509', '509', 'DEMO-JK-01-02-0509-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 12.6, 3432.5, 'Residential',
    34.12454, 74.837143, ST_GeomFromText('POLYGON((74.837248 34.124639, 74.837052 34.124639, 74.837052 34.12454, 74.83713 34.12454, 74.83713 34.124441, 74.837248 34.124441, 74.837248 34.124639))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 181","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 181","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1180","khata_no":"DEMO-KT-2180","mutation_history":[{"mutation_no":"DEMO-MUT-3180","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":3151974,"stamp_duty":157599,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5180","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0510', '510', 'DEMO-JK-01-02-0510-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 19.4, 5271.3, 'Residential',
    34.126165, 74.83853, ST_GeomFromText('POLYGON((74.838587 34.126307, 74.838445 34.126247, 74.83849 34.126174, 74.838429 34.126148, 74.838513 34.126013, 74.838716 34.126099, 74.838587 34.126307))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 182","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 182","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1181","khata_no":"DEMO-KT-2181","mutation_history":[{"mutation_no":"DEMO-MUT-3181","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":5082521,"stamp_duty":254126,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5181","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0511', '511', 'DEMO-JK-01-02-0511-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 8.4, 7741.6, 'Residential',
    34.12418, 74.83615, ST_GeomFromText('POLYGON((74.836083 34.124333, 74.835953 34.124185, 74.836194 34.124001, 74.83637 34.124201, 74.836083 34.124333))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 183","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 183","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1182","khata_no":"DEMO-KT-2182","mutation_history":[{"mutation_no":"DEMO-MUT-3182","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":7819798,"stamp_duty":390990,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1500000,"cersai_id":"DEMO-CERSAI-4182"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5182","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0512', '512', 'DEMO-JK-01-02-0512-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 15.4, 9645.3, 'Commercial',
    34.127788, 74.840829, ST_GeomFromText('POLYGON((74.840691 34.127944, 74.840654 34.127752, 74.840736 34.127692, 74.841009 34.127656, 74.841055 34.127896, 74.840691 34.127944))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 184","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 184","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1183","khata_no":"DEMO-KT-2183","mutation_history":[{"mutation_no":"DEMO-MUT-3183","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":10185579,"stamp_duty":509279,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2023/1183","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2023-04-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5183","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0513', '513', 'DEMO-JK-01-02-0513-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 19.7, 10809.7, 'Mixed Use',
    34.12413, 74.837844, ST_GeomFromText('POLYGON((74.837643 34.124206, 74.837629 34.124131, 74.837724 34.123944, 74.838062 34.124049, 74.838046 34.124173, 74.837962 34.124278, 74.837643 34.124206))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 185","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 185","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1184","khata_no":"DEMO-KT-2184","mutation_history":[{"mutation_no":"DEMO-MUT-3184","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":11911515,"stamp_duty":595576,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5184","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0514', '514', 'DEMO-JK-01-02-0514-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3, 6267.4, 'Agricultural',
    34.129133, 74.839558, ST_GeomFromText('POLYGON((74.839339 34.129175, 74.839592 34.128965, 74.839677 34.129035, 74.839575 34.129119, 74.83966 34.129189, 74.839508 34.129315, 74.839339 34.129175))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 186","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 186","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1185","khata_no":"DEMO-KT-2185","mutation_history":[{"mutation_no":"DEMO-MUT-3185","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6250000,"unit":"per kanal","government_value":7193985,"stamp_duty":359699,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1950000,"cersai_id":"DEMO-CERSAI-4185"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5185","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0515', '515', 'DEMO-JK-01-02-0515-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 16.5, 4490.5, 'Residential',
    34.126446, 74.837158, ST_GeomFromText('POLYGON((74.837014 34.126374, 74.837144 34.126339, 74.837174 34.126417, 74.83723 34.126402, 74.837286 34.126546, 74.837101 34.126596, 74.837014 34.126374))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 187","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 187","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1186","khata_no":"DEMO-KT-2186","mutation_history":[{"mutation_no":"DEMO-MUT-3186","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6500000,"unit":"per kanal","government_value":5360560,"stamp_duty":268028,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5186","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0516', '516', 'DEMO-JK-01-02-0516-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 4.9, 6787.1, 'Residential',
    34.12584, 74.8389, ST_GeomFromText('POLYGON((74.83883 34.125694, 74.839021 34.125719, 74.839004 34.12599, 74.838745 34.125956, 74.83883 34.125694))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 188","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 188","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1187","khata_no":"DEMO-KT-2187","mutation_history":[{"mutation_no":"DEMO-MUT-3187","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6750000,"unit":"per kanal","government_value":8413760,"stamp_duty":420688,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2022/1187","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2022-08-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5187","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0517', '517', 'DEMO-JK-01-02-0517-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.6, 8591.4, 'Residential',
    34.123855, 74.836524, ST_GeomFromText('POLYGON((74.836503 34.123673, 74.836672 34.123774, 74.83666 34.123862, 74.836497 34.124047, 74.836286 34.12392, 74.836503 34.123673))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 189","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 189","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1188","khata_no":"DEMO-KT-2188","mutation_history":[{"mutation_no":"DEMO-MUT-3188","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7000000,"unit":"per kanal","government_value":11044959,"stamp_duty":552248,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2400000,"cersai_id":"DEMO-CERSAI-4188"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5188","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0518', '518', 'DEMO-JK-01-02-0518-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 15.6, 9699.9, 'Commercial',
    34.12747, 74.841196, ST_GeomFromText('POLYGON((74.84128 34.12731, 74.84135 34.127348, 74.841432 34.127518, 74.841104 34.127643, 74.841016 34.127557, 74.840993 34.127445, 74.84128 34.12731))', 4326),
    'DATA_UNAVAILABLE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 190","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 190","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1189","khata_no":"DEMO-KT-2189","mutation_history":[{"mutation_no":"DEMO-MUT-3189","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7250000,"unit":"per kanal","government_value":12915386,"stamp_duty":645769,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5189","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0519', '519', 'DEMO-JK-01-02-0519-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 0.9, 5676.5, 'Mixed Use',
    34.123809, 74.8382, ST_GeomFromText('POLYGON((74.838319 34.123665, 74.838319 34.123935, 74.8382 34.123935, 74.8382 34.123827, 74.838081 34.123827, 74.838081 34.123665, 74.838319 34.123665))', 4326),
    'NOT_VERIFIED', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 191","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 191","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1190","khata_no":"DEMO-KT-2190","mutation_history":[{"mutation_no":"DEMO-MUT-3190","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7500000,"unit":"per kanal","government_value":7818871,"stamp_duty":390944,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5190","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0520', '520', 'DEMO-JK-01-02-0520-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 10.3, 8262, 'Agricultural',
    34.128843, 74.839902, ST_GeomFromText('POLYGON((74.840107 34.128741, 74.839993 34.128926, 74.839905 34.128889, 74.839856 34.128968, 74.839693 34.128899, 74.839856 34.128635, 74.840107 34.128741))', 4326),
    'RECORDED_CASE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 192","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 192","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1191","khata_no":"DEMO-KT-2191","mutation_history":[{"mutation_no":"DEMO-MUT-3191","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":7750000,"unit":"per kanal","government_value":11759504,"stamp_duty":587975,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2021/1191","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2021-03-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1350000,"cersai_id":"DEMO-CERSAI-4191"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5191","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0521', '521', 'DEMO-JK-01-02-0521-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 1.4, 5817.3, 'Residential',
    34.12614, 74.8375, ST_GeomFromText('POLYGON((74.837663 34.126209, 74.837529 34.126289, 74.837313 34.126086, 74.837495 34.125976, 74.837663 34.126209))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 193","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 193","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1192","khata_no":"DEMO-KT-2192","mutation_history":[{"mutation_no":"DEMO-MUT-3192","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8000000,"unit":"per kanal","government_value":8546997,"stamp_duty":427350,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5192","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0522', '522', 'DEMO-JK-01-02-0522-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.5, 7492.3, 'Residential',
    34.127777, 74.838889, ST_GeomFromText('POLYGON((74.839041 34.127896, 74.838861 34.12792, 74.838802 34.12785, 74.838759 34.127624, 74.838984 34.127594, 74.839041 34.127896))', 4326),
    'DATA_UNAVAILABLE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 194","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 194","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1193","khata_no":"DEMO-KT-2193","mutation_history":[{"mutation_no":"DEMO-MUT-3193","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8250000,"unit":"per kanal","government_value":11351970,"stamp_duty":567599,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5193","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0523', '523', 'DEMO-JK-01-02-0523-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 11.6, 8610.2, 'Residential',
    34.123544, 74.83686, ST_GeomFromText('POLYGON((74.836923 34.123703, 74.836848 34.123719, 74.836669 34.123653, 74.836793 34.123372, 74.836914 34.123378, 74.837012 34.12344, 74.836923 34.123703))', 4326),
    'NOT_VERIFIED', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 195","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 195","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1194","khata_no":"DEMO-KT-2194","mutation_history":[{"mutation_no":"DEMO-MUT-3194","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":8500000,"unit":"per kanal","government_value":13441084,"stamp_duty":672054,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":1800000,"cersai_id":"DEMO-CERSAI-4194"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5194","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0524', '524', 'DEMO-JK-01-02-0524-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    0, 18.8, 5123.8, 'Commercial',
    34.127154, 74.841543, ST_GeomFromText('POLYGON((74.841569 34.127316, 74.841362 34.127144, 74.841446 34.127074, 74.841529 34.127143, 74.841614 34.127073, 74.841738 34.127176, 74.841569 34.127316))', 4326),
    'RECORDED_CASE', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 196","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 196","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1195","khata_no":"DEMO-KT-2195","mutation_history":[{"mutation_no":"DEMO-MUT-3195","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5000000,"unit":"per kanal","government_value":4705051,"stamp_duty":235253,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2020/1195","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2020-07-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5195","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0525', '525', 'DEMO-JK-01-02-0525-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.5, 7493, 'Mixed Use',
    34.123467, 74.83853, ST_GeomFromText('POLYGON((74.838466 34.123644, 74.838396 34.123465, 74.83849 34.12344, 74.838459 34.123363, 74.838634 34.123316, 74.838734 34.123572, 74.838466 34.123644))', 4326),
    'VERIFIED_NO_RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 197","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 197","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1196","khata_no":"DEMO-KT-2196","mutation_history":[{"mutation_no":"DEMO-MUT-3196","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5250000,"unit":"per kanal","government_value":7224656,"stamp_duty":361233,"effective_year":"2025-26"}'::jsonb, '{"status":"VERIFIED_NO_RECORDED_CASE","cases":[]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5196","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0526', '526', 'DEMO-JK-01-02-0526-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 19.2, 10662.2, 'Agricultural',
    34.1285, 74.84025, ST_GeomFromText('POLYGON((74.840065 34.128603, 74.840113 34.128354, 74.840443 34.128353, 74.840379 34.128689, 74.840065 34.128603))', 4326),
    'DATA_UNAVAILABLE', 'MORTGAGED',
    '{"current_owner":{"name":"Demo Owner 198","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 198","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1197","khata_no":"DEMO-KT-2197","mutation_history":[{"mutation_no":"DEMO-MUT-3197","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5500000,"unit":"per kanal","government_value":10769899,"stamp_duty":538495,"effective_year":"2025-26"}'::jsonb, '{"status":"DATA_UNAVAILABLE","cases":[]}'::jsonb, '{"status":"MORTGAGED","records":[{"bank_name":"Demo Bank (NOT REAL)","loan_amount":2250000,"cersai_id":"DEMO-CERSAI-4197"}]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5197","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0527', '527', 'DEMO-JK-01-02-0527-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 3.6, 6432.8, 'Residential',
    34.125803, 74.837842, ST_GeomFromText('POLYGON((74.837643 34.125796, 74.837735 34.125691, 74.837833 34.12571, 74.838057 34.125844, 74.837942 34.125975, 74.837643 34.125796))', 4326),
    'NOT_VERIFIED', 'UNENCUMBERED',
    '{"current_owner":{"name":"Demo Owner 199","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 199","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1198","khata_no":"DEMO-KT-2198","mutation_history":[{"mutation_no":"DEMO-MUT-3198","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":5750000,"unit":"per kanal","government_value":6793131,"stamp_duty":339657,"effective_year":"2025-26"}'::jsonb, '{"status":"NOT_VERIFIED","cases":[]}'::jsonb, '{"status":"UNENCUMBERED","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5198","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  ),
(
    'SB-DEMO-0528', '528', 'DEMO-JK-01-02-0528-X', 'Jammu & Kashmir (UT)', 'Srinagar', 'North Srinagar', 'Sarbaldal',
    1, 7.7, 7535.3, 'Residential',
    34.127442, 74.839241, ST_GeomFromText('POLYGON((74.839074 34.127361, 74.839106 34.127309, 74.839267 34.12726, 74.839421 34.127531, 74.839344 34.127592, 74.839234 34.1276, 74.839074 34.127361))', 4326),
    'RECORDED_CASE', 'UNKNOWN',
    '{"current_owner":{"name":"Demo Owner 200","share":"1/1"},"previous_owners":[{"name":"Former Demo Owner 200","from_date":"2014-04-01","to_date":"2021-08-15"}],"khewat_no":"DEMO-KH-1199","khata_no":"DEMO-KT-2199","mutation_history":[{"mutation_no":"DEMO-MUT-3199","date":"2021-08-15","type":"Sale/Transfer (DEMO)"}]}'::jsonb, '{"circle_rate":6000000,"unit":"per kanal","government_value":8303361,"stamp_duty":415168,"effective_year":"2025-26"}'::jsonb, '{"status":"RECORDED_CASE","cases":[{"case_number":"DEMO/CASE/2024/1199","court":"Demo Court (NOT REAL)","case_type":"Property Dispute","status":"Pending","filing_date":"2024-02-15","disposal_date":null,"source":"DEMO DATA"}]}'::jsonb, '{"status":"UNKNOWN","records":[]}'::jsonb,
    '{"documents":[{"type":"Jamabandi (DEMO)","document_number":"DEMO-JAM-5199","date":"2025-04-01","source":"DEMO DATA","source_url":null}]}'::jsonb, '{"source_name":"DEMO DATASET — NOT GOVERNMENT DATA","source_url":null,"record_date":"2026-09-19","last_verified":"2026-09-19"}'::jsonb,
    true, 'DEMO_ONLY', 'SYNTHETIC_DEMO', 'ALL RECORDS ARE FICTIONAL/DEMO. NOT OFFICIAL GOVERNMENT DATA.'
  )
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
