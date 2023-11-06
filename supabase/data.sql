--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

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

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "from_ip_address", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
\.


--
-- Data for Name: Tutorial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."Tutorial" ("id", "created_at", "image", "title", "views", "published", "youtube_id") FROM stdin;
10	2023-11-05 12:43:00.288584+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/learn-javascript.webp	Learn JavaScript - Full Course for Beginners	1900000	9 months ago	PkZNo7MFNFg
20	2023-11-05 12:44:16.290413+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/data-structures.webp	Data Structures and Algorithms in JavaScript	547000	2 year ago	t2CEgPsws3U
40	2023-11-05 12:45:50.080177+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/rock-paper-scissor.webp	Rock Paper Scissors Game	216000	1 year ago	m_HJ3juuFvo
50	2023-11-05 12:47:24.794824+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/intro-game-dev.webp	Intro to Game Development with JavaScript	110000	3 months ago	jaVNP3nIAv0
30	2023-11-05 12:45:04.124546+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/budget-app.webp	Javascript Project Tutorial: Budget App	75000	9 months ago	3EMxBkqC4z0
60	2023-11-05 12:47:56.461175+00	http://127.0.0.1:54321/storage/v1/object/public/tutorials/fetch-api.webp	Fetch API data in React using useEffect hooks	193	6 days ago	ZUs7z7jxSH0
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types") FROM stdin;
tutorials	tutorials	\N	2023-11-06 12:02:34.307252+00	2023-11-06 12:02:34.307252+00	t	f	\N	\N
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version") FROM stdin;
c3b78090-a034-4c93-a93a-1c3b818dd7f0	tutorials	rock-paper-scissor.webp	\N	2023-11-06 12:07:38.555997+00	2023-11-06 12:07:38.555997+00	2023-11-06 12:07:38.555997+00	{"eTag": "\\"da37f4427006830048cd30165c65a9f5\\"", "size": 23808, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 23808, "httpStatusCode": 200}	4f422018-6503-403c-b35a-9fc830f490ca
a6da8e7e-ba36-490d-a527-e6d46473aa9e	tutorials	learn-javascript.webp	\N	2023-11-06 12:07:38.557011+00	2023-11-06 12:07:38.557011+00	2023-11-06 12:07:38.557011+00	{"eTag": "\\"13ed80ce6b25017189c4a7189eeb3413\\"", "size": 16110, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 16110, "httpStatusCode": 200}	700e2df5-5695-4e00-85b7-e25eb7aad4ea
0a16eb80-8938-466a-bf41-fc9082200366	tutorials	budget-app.webp	\N	2023-11-06 12:07:38.556523+00	2023-11-06 12:07:38.556523+00	2023-11-06 12:07:38.556523+00	{"eTag": "\\"00644a87df8579dc68f6ae4f2b6d6693\\"", "size": 35090, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 35090, "httpStatusCode": 200}	5fa81a01-0cd7-454c-82c9-b83096bc3e24
c59b865b-6873-4f6c-98c6-f73f2f3da9f9	tutorials	intro-game-dev.webp	\N	2023-11-06 12:07:38.557266+00	2023-11-06 12:07:38.557266+00	2023-11-06 12:07:38.557266+00	{"eTag": "\\"f75e7e16d1a12a18dc016cc17cfef51b\\"", "size": 17824, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 17824, "httpStatusCode": 200}	fd817293-e8ea-483a-a265-8b95a1a95ca9
ffb1e457-eeec-43b8-b365-e2c1b226e566	tutorials	data-structures.webp	\N	2023-11-06 12:07:38.559629+00	2023-11-06 12:07:38.559629+00	2023-11-06 12:07:38.559629+00	{"eTag": "\\"b18593718f661a3db5253e6958566a56\\"", "size": 17102, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 17102, "httpStatusCode": 200}	262e1a05-038f-4015-834b-030466297d75
bcaa0751-013a-4e98-8e0d-65868e62c7aa	tutorials	fetch-api.webp	\N	2023-11-06 12:07:38.558238+00	2023-11-06 12:07:38.558238+00	2023-11-06 12:07:38.558238+00	{"eTag": "\\"a456b9cf0c784598453de01737dd7b14\\"", "size": 11512, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-11-06T12:07:38.546Z", "contentLength": 11512, "httpStatusCode": 200}	2320268a-d647-41aa-8893-0540c1703748
\.


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

COPY "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: Tutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."Tutorial_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
