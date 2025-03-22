SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."customers" ("id", "name", "email", "image_url") VALUES
	('76d65c26-f784-44a2-ac19-586678f7c2f2', 'Michael Novotny', 'michael@novotny.com', '/customers/michael-novotny.png'),
	('3958dc9e-742f-4377-85e9-fec4b6a6442a', 'Lee Robinson', 'lee@robinson.com', '/customers/lee-robinson.png'),
	('d6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 'Evil Rabbit', 'evil@rabbit.com', '/customers/evil-rabbit.png'),
	('13d07535-c59e-4157-a011-f8d2ef4e0cbb', 'Balazs Orban', 'balazs@orban.com', '/customers/balazs-orban.png'),
	('cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 'Amy Burns', 'amy@burns.com', '/customers/amy-burns.png'),
	('3958dc9e-712f-4377-85e9-fec4b6a6442a', 'Delba de Oliveira', 'delba@oliveira.com', '/customers/delba-de-oliveira.png');


--
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."invoices" ("id", "customer_id", "amount", "status", "date") VALUES
	('6715c7f0-00d2-4876-a997-39616b1fbe5f', 'd6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 15795, 'pending', '2022-12-06'),
	('a2c0a98e-1017-4c4e-8299-cd04c566523b', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 8546, 'paid', '2023-06-07'),
	('f757a921-59da-4747-9e43-ad556d99c5c2', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 8945, 'paid', '2023-06-03'),
	('0568cdfa-f5a8-4241-b3ff-550aae7904b0', '3958dc9e-712f-4377-85e9-fec4b6a6442a', 20348, 'pending', '2022-11-14'),
	('99802aee-ce39-4595-a12e-ece2969f1ce2', 'cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 3040, 'paid', '2022-10-29'),
	('028b07b4-f1f9-4d5a-8e30-0861af1c3fb5', '76d65c26-f784-44a2-ac19-586678f7c2f2', 44800, 'paid', '2023-09-10'),
	('78272d28-12f2-4898-ad3d-98f5bb26792c', '3958dc9e-742f-4377-85e9-fec4b6a6442a', 54246, 'pending', '2023-07-16'),
	('70d73c3b-9ef5-4fd5-b5a7-1771b055a3d1', '13d07535-c59e-4157-a011-f8d2ef4e0cbb', 34577, 'pending', '2023-08-05'),
	('91afdde5-2c2a-4ff1-999f-8bf8b4005f19', '76d65c26-f784-44a2-ac19-586678f7c2f2', 32545, 'paid', '2023-06-09'),
	('d891971e-c9c2-4fc8-b094-d457db58041f', 'cc27c14a-0acf-4f4a-a6c9-d45682c144b9', 1250, 'paid', '2023-06-17'),
	('56fa92b7-eb86-4706-93c7-c4ba6c9a502c', 'd6e15727-9fe1-4961-8c5b-ea44a9bd81aa', 666, 'pending', '2023-06-27'),
	('024322ba-9814-4340-b423-0a32ad7d3a78', '3958dc9e-712f-4377-85e9-fec4b6a6442a', 123444, 'pending', '2025-03-17'),
	('1322b810-5e90-4bf3-8121-35d4ef63d274', '3958dc9e-712f-4377-85e9-fec4b6a6442a', 5500, 'pending', '2023-08-19'),
	('aa229a4d-e231-4e2d-bac9-fe49e788bcf9', '3958dc9e-742f-4377-85e9-fec4b6a6442a', 1000, 'pending', '2022-06-05');


--
-- Data for Name: revenue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."revenue" ("month", "revenue") VALUES
	('Jan', 2000),
	('Sep', 2500),
	('Jul', 3500),
	('Aug', 3700),
	('Jun', 3200),
	('Feb', 1800),
	('Apr', 2500),
	('Mar', 2200),
	('May', 2300);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."users" ("id", "name", "email", "password") VALUES
	('410544b2-4001-4271-9855-fec4b6a6442a', 'User', 'user@nextmail.com', '$2b$10$K0oD9PLi17CfyFuz0TsEe.pweNAnCugdm2pAnUZFi1KpdVnYIRefy');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
