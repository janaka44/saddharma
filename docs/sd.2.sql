--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-12-22 11:01:16

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
-- TOC entry 3504 (class 0 OID 17758)
-- Dependencies: 221
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3506 (class 0 OID 17766)
-- Dependencies: 223
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3502 (class 0 OID 17752)
-- Dependencies: 219
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add publisher	9	add_publisher
34	Can change publisher	9	change_publisher
35	Can delete publisher	9	delete_publisher
36	Can view publisher	9	view_publisher
37	Can add source_library	10	add_source_library
38	Can change source_library	10	change_source_library
39	Can delete source_library	10	delete_source_library
40	Can view source_library	10	view_source_library
41	Can add wishlist	11	add_wishlist
42	Can change wishlist	11	change_wishlist
43	Can delete wishlist	11	delete_wishlist
44	Can view wishlist	11	view_wishlist
45	Can add comments	12	add_comments
46	Can change comments	12	change_comments
47	Can delete comments	12	delete_comments
48	Can view comments	12	view_comments
49	Can add bookmark	13	add_bookmark
50	Can change bookmark	13	change_bookmark
51	Can delete bookmark	13	delete_bookmark
52	Can view bookmark	13	view_bookmark
53	Can add book temp	14	add_booktemp
54	Can change book temp	14	change_booktemp
55	Can delete book temp	14	delete_booktemp
56	Can view book temp	14	view_booktemp
57	Can add source library	10	add_sourcelibrary
58	Can change source library	10	change_sourcelibrary
59	Can delete source library	10	delete_sourcelibrary
60	Can view source library	10	view_sourcelibrary
\.


--
-- TOC entry 3508 (class 0 OID 17772)
-- Dependencies: 225
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$600000$3ZGMoiPsw4ijK3H2xdbNja$tkalYQ+BCNKcTFu0E3cBZDYx4CMORoH1V6CSEdSto3E=	2023-11-02 23:35:02.271696+10:30	t	admin			janaka44@gmail.com	t	t	2023-11-02 22:45:26.894093+10:30
\.


--
-- TOC entry 3510 (class 0 OID 17780)
-- Dependencies: 227
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3512 (class 0 OID 17786)
-- Dependencies: 229
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.



--
-- TOC entry 3526 (class 0 OID 17911)
-- Dependencies: 243
-- Data for Name: core_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_comments (id, page, description, book_id, user_id) FROM stdin;
\.


--
-- TOC entry 3520 (class 0 OID 17889)
-- Dependencies: 237
-- Data for Name: core_publisher; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_publisher (id, publisher, address, description) FROM stdin;
\.


--
-- TOC entry 3522 (class 0 OID 17897)
-- Dependencies: 239
-- Data for Name: core_sourcelibrary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_sourcelibrary (id, source_library, address, description) FROM stdin;
11	Archive.org		
12	Daham Madura		
13	Dammadana Web		
14	My Library		
16	Na Uyana		
17	National Library		
18	Paramaththa		
19	Path Nirwana		
20	Polgasduwa		
\.


--
-- TOC entry 3524 (class 0 OID 17905)
-- Dependencies: 241
-- Data for Name: core_wishlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_wishlist (id, book_id, user_id) FROM stdin;
\.


--
-- TOC entry 3514 (class 0 OID 17844)
-- Dependencies: 231
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3500 (class 0 OID 17744)
-- Dependencies: 217
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	author
8	core	book
9	core	publisher
11	core	wishlist
12	core	comments
13	core	bookmark
10	core	sourcelibrary
14	core	booktemp
\.


--
-- TOC entry 3498 (class 0 OID 17736)
-- Dependencies: 215
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-10-23 22:57:39.231029+10:30
2	auth	0001_initial	2023-10-23 22:57:39.358834+10:30
3	admin	0001_initial	2023-10-23 22:57:39.38871+10:30
4	admin	0002_logentry_remove_auto_add	2023-10-23 22:57:39.393709+10:30
5	admin	0003_logentry_add_action_flag_choices	2023-10-23 22:57:39.400743+10:30
6	contenttypes	0002_remove_content_type_name	2023-10-23 22:57:39.410712+10:30
7	auth	0002_alter_permission_name_max_length	2023-10-23 22:57:39.41671+10:30
8	auth	0003_alter_user_email_max_length	2023-10-23 22:57:39.420709+10:30
9	auth	0004_alter_user_username_opts	2023-10-23 22:57:39.42571+10:30
10	auth	0005_alter_user_last_login_null	2023-10-23 22:57:39.430714+10:30
11	auth	0006_require_contenttypes_0002	2023-10-23 22:57:39.432714+10:30
12	auth	0007_alter_validators_add_error_messages	2023-10-23 22:57:39.436714+10:30
13	auth	0008_alter_user_username_max_length	2023-10-23 22:57:39.455452+10:30
14	auth	0009_alter_user_last_name_max_length	2023-10-23 22:57:39.461449+10:30
15	auth	0010_alter_group_name_max_length	2023-10-23 22:57:39.46957+10:30
16	auth	0011_update_proxy_permissions	2023-10-23 22:57:39.478552+10:30
17	auth	0012_alter_user_first_name_max_length	2023-10-23 22:57:39.483531+10:30
18	core	0001_initial	2023-10-23 22:57:39.672438+10:30
19	sessions	0001_initial	2023-10-23 22:57:39.701436+10:30
20	core	0002_author_year	2023-10-23 23:12:09.131516+10:30
21	core	0003_alter_author_year	2023-10-23 23:16:10.545412+10:30
22	core	0004_alter_author_description_alter_author_year	2023-10-23 23:31:04.205064+10:30
23	core	0005_booktemp_rename_source_library_sourcelibrary_and_more	2023-10-25 20:00:14.594157+10:30
24	core	0006_alter_booktemp_author_name_alter_booktemp_catalog_no_and_more	2023-10-26 09:54:59.201348+10:30
25	core	0007_alter_booktemp_author_name_alter_booktemp_catalog_no_and_more	2023-10-26 11:25:54.514014+10:30
26	core	0008_book_last_modified_alter_book_approved_date_and_more	2023-11-05 16:48:52.206995+10:30
27	core	0009_alter_book_approved_by_alter_book_approved_date	2023-11-05 16:50:16.077609+10:30
28	core	0010_alter_book_language_alter_book_uploaded_by_and_more	2023-11-05 16:52:32.880261+10:30
29	core	0011_alter_book_category_l1_alter_book_category_l2_and_more	2023-11-05 22:40:20.088477+10:30
30	core	0012_book_volume	2023-11-09 20:38:48.190309+10:30
31	core	0013_alter_book_volume	2023-11-09 20:39:17.821838+10:30
\.


--
-- TOC entry 3529 (class 0 OID 17992)
-- Dependencies: 246
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7y4pb382zsxusbwqisr6h4kbrucbs69t	.eJxVjDEOwjAMRe-SGUVpm9iUkZ0zRI4dkwJqpaadEHdHkTrA-t97_20i7VuJe81rnMRcTGdOv1sifua5AXnQfF8sL_O2Tsk2xR602tsi-XU93L-DQrW0GhDJj8x9wjAoMCp5duRJBFGgB8XM7AIwUFBJnAYYfSY9q3a9M58vCxU5Kg:1qyXNe:B5W-61yYxnxmgsEtI2eXW92Sfbi5JJzSAy62I_llQCc	2023-11-16 23:35:02.280773+10:30
\.


--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 226
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 228
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 232
-- Name: core_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_author_id_seq', 530, true);


--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 234
-- Name: core_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_book_id_seq', 1528, true);


--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 244
-- Name: core_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_bookmark_id_seq', 1, false);


--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 247
-- Name: core_booktemp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_booktemp_id_seq', 3000, true);


--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 242
-- Name: core_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_comments_id_seq', 1, false);


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 236
-- Name: core_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_publisher_id_seq', 1, false);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 238
-- Name: core_source_library_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_source_library_id_seq', 20, true);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 240
-- Name: core_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.core_wishlist_id_seq', 1, false);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 230
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);



--
-- TOC entry 3516 (class 0 OID 17873)
-- Dependencies: 233
-- Data for Name: core_author; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_author (id, author, description, year) FROM stdin;
3	වැලිතර පඤ්ඤානන්ද හිමි	\N	\N
4	සද්ධානන්දතිස්ස හා සුධම්මානන්දතිස්ස හිමිවරු	\N	\N
5	සීලවතී පිරිස් මිය	\N	\N
6	ඌවෙ විමලසාර හිමි	\N	\N
7	පොල්වත්තේ බුද්ධත්ත නා හිමි	\N	\N
8	දෙහිගස්පේ පඤ්ඤාසාර හිමි	\N	\N
9	සද්ධම්මපාල රත්නායක ශුරින්	\N	\N
10	ඇම් අනෝමදස්සී හිමි	\N	\N
11	මොරටුවේ සාසනරතන හිමි	\N	\N
12	මාතර ධර්මවංශ හිමි	\N	\N
13	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	\N	\N
14	දොඩම්පහළ කවිධජ හිමි	\N	\N
15	ශ්‍රී සුජාත තිස්ස හිමි	\N	\N
16	කහන්දාමුවදොර සුමංගල හිමි	\N	\N
17	ඇම් ධර්මරත්න පඬිතුමා	\N	\N
18	සීලවතී පීරිස් මිය	\N	\N
19	අමරදාස රත්නපාල මහතා	\N	\N
20	හික්කඩුවේ ශ්‍රී සුමංගල හිමි	\N	\N
21	සිරි පඤ්ඤාමොලීතිස්ස හිමි	\N	\N
22	වලගෙදර සෝමාලෝක තිස්ස හිමි	\N	\N
23	වැල්ලම්පිටියේ සුමනසාර හිමි	\N	\N
24	දික්වැල්ලේ ගුණරතන හිමි	\N	\N
25	යාගොඩ ධම්මප්‍රභ හිමි	\N	\N
26	කොසම්බිකුල ධම්මානන්ද ශුරින්	\N	\N
27	හඳුන්කඩුවේ සුමන හිමි	\N	\N
28	අම්බලන්ගොඩ දේවානන්ද හිමි	\N	\N
29	වෙඬරුවේ අනෝමදස්සී හිමි	\N	\N
30	මොරටුවේ මේධානන්ද හිමි	\N	\N
31	දික්වැල්ලේ සීලරතන හිමි	\N	\N
32	ඇම් සී ද සිල්වා මහතා	\N	\N
33	දිගන සුගතවංශ හිමි	\N	\N
34	නා උයනේ අරියධම්ම හිමි	\N	\N
35	වජිරාරාමය	\N	\N
36	හෝමාගම සීලරතන හිමි	\N	\N
37	දෙවිනුවර ඤාණාවාස හිමි	\N	\N
38	ධම්මවිචය ග්‍රන්ථ	\N	\N
39	ඩි සි යාගබමුනු	\N	\N
41	ආර් බුද්ධදාස	\N	\N
42	ජි ඩබ් ගේබ්‍රියෙල් ගුණවර්ධන	\N	\N
43	ජේ පි ජයතිලක වෙද අප්පුහාමි	\N	\N
44	දොන් හරමානිස් අල්විස්	\N	\N
45	මඩබාවිට විජයසෝම හිමි	\N	\N
46	ඇන් ඒ පෙරේරා	\N	\N
47	ජේ පෙරේරා	\N	\N
48	බටුවන්තුඩාවේ පඬිතුමා	\N	\N
49	සරදියෙල් අප්පුහාමි	\N	\N
50	කිරිඇල්ලේ ඤාණවිමල නා හිමි	\N	\N
51	ජෝර්ජ් රන්දුනු සමරතුංග	\N	\N
52	ඇම් ඩි ආර් අප්පුහාමි	\N	\N
53	ආරියදාස කුමාරසිංහ	\N	\N
54	බි ජයසිංහ අප්පුහාමි	\N	\N
55	පුංචි බණ්ඩාර	\N	\N
56	ඒකනායක කුරුප්පු ආරච්චි	\N	\N
57	හරමානිස් සමරසිංහ	\N	\N
58	එච් ඩි අබේවර්ධන අප්පුහාමි	\N	\N
59	එස් ඒබ්‍රහම් ප්‍රනාන්දු	\N	\N
60	ඇල් බි ප්‍රේරා	\N	\N
61	උදම්මිට ධම්මරක්ඛිතතිස්ස හිමි	\N	\N
62	විමලජෝති හිමි	\N	\N
63	ගල්පොතුගොඩ ඤාණවංස හිමි	\N	\N
64	Mahadhyapaka Rakhaldas	\N	\N
65	Dr P L Vaidya	\N	\N
66	Vopadewa Goswami	\N	\N
67	SK Belvalkar	\N	\N
68	HH Wilson	\N	\N
69	Norman M Penzer	\N	\N
70	Pandit Jibananda Vidyasagar	\N	\N
71	Sri arshadeva	\N	\N
72	Swami Sarvananda	\N	\N
73	Aryadewa	\N	\N
74	Bhavabhuthi	\N	\N
75	Taranatha Tarkavachspathi	\N	\N
76	ඇම් හිරියන්න	\N	\N
77	Sri Sankaracharya	\N	\N
78	පැළැනේ ශ්‍රි වජිරඤාන හිමි	\N	\N
79	W Jemis Fernando	\N	\N
80	මැද්දේපොල	\N	\N
81	කුමාරදාස/ ධර්මාරාම හිමි	\N	\N
82	කාලිදාස/ මාවුස්සාගොල්ලේ සිරිසුමන	\N	\N
83	කොල්ලුපිටියේ මහින්දසංඝ රක්ඛිත හිමි	\N	\N
84	බලන්ගොඩ ජයසේකර	\N	\N
85	ඩී පි එච් අභයරත්න	\N	\N
86	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	\N	\N
87	වලානේ ධම්මානන්ද හිමි	\N	\N
88	වලානේ ශ්‍රී සිද්ධාර්ථ ධම්මානන්ද හිමි	\N	\N
89	විල්ගම්මුල සංඝරාජ හිමි	\N	\N
90	වේරගොඩ අමරමෝලි හිමි	\N	\N
92	විලියම් පෙරේරා / ගුණරතන හිමි	\N	\N
93	සුරියගොඩ සුමංගල හිමි	\N	\N
94	භදන්ත බුද්ධරක්ඛිත හිමි	\N	\N
95	තිබ්බටුවාවේ ශ්‍රී බුද්ධරක්ඛිත හිමි	\N	\N
96	එෆ් මුණසිංහ	\N	\N
97	කාටර්	\N	\N
98	ශ්‍රී සුමංගල හිමි	\N	\N
99	අමරසිංහ	\N	\N
100	දොන් අන්ද්රිස් සිල්වා බටුවන්තුඩාවේ පඬිතුමා	\N	\N
101	ජෝන් පෙරේරා	\N	\N
102	වේරගම පුංචිබණ්ඩාර	\N	\N
103	ගුරුළුගෝමී	\N	\N
104	බෝරුක්ගමුවේ රේවත	\N	\N
105	වී ඩි එස් ගුණවර්ධන	\N	\N
106	රන්ජිත් වනරතන	\N	\N
107	කිරිඇල්ලේ ඤාණවිමල හිමි/ මයුරපාද පරිවේණාධිපති	\N	\N
108	වැලිවිටියේ සෝරත හිමි / විද්‍යාචක්‍රවර්තී	\N	\N
109	විද්යාචක්රවර්තී	\N	\N
110	BCC	\N	\N
111	මුල්ලේරියාවේ විපුලසාර හිමි	\N	\N
112	සිද්ධාර්ථ හිමි	\N	\N
113	ඊ.ආර්. ගුණරත්න	\N	\N
114	විදාගම මෛත්‍රිය හිමි	\N	\N
115	ධර්මසේන මහා ස්ථවිර	\N	\N
116	ජයබාහු ධර්මකීර්ති හිමි	\N	\N
117	තොටගමුවේ රාහුල හිමි	\N	\N
118	ඇම් ඇල් සිල්වා ගුරුමුහන්දිරම්	\N	\N
119	පොල්වත්තේ බුද්ධදත්ත හිමි	\N	\N
120	ඒ එස් පෙරේරා	\N	\N
121	ධනුර්ධරාචාර්ය	\N	\N
122	අලගියවන්න මුකවෙටිතුමා	\N	\N
123	මකුලුදුවේ අමිත හිමි	\N	\N
124	කොස්ගොඩ සිරි සුමේධ හිමි	\N	\N
125	හේවාවිතාරණ අටුවා	\N	\N
126	බලන්ගොඩ ආනන්දමෛත්‍රිය නා හිමි	\N	\N
127	දෙහිගස්පේ පියදස්සි හිමි	\N	\N
128	පානදුරේ සෝමරතන හිමි	\N	\N
129	බලංගොඩ ඤාණවිහාරි හිමි	\N	\N
130	බුරුමයේ ජනකාභිවංස හිමි	\N	\N
131	මලලගම සුමනනන්ද හිමි	\N	\N
132	වස්කඩුවේ සුභූති හිමි	\N	\N
133	රඹුක්වැල්ලේ විපස්සි හිමි	\N	\N
134	නැබොඩ සීලරතන හිමි/ උරුගොඩ ඤානිස්සර හිමි	\N	\N
135	වැලිතොට ඤාණතිලකතිස්ස හිමි	\N	\N
136	ගල්වෙහෙර අරියඤාණ හිමි	\N	\N
137	ධම්මසිරි හිමි	\N	\N
138	ධම්මකිත්ති ධම්මාරාම හිමි	\N	\N
139	කොස්ගොඩ පඤ්ඤාරාම හිමි	\N	\N
140	හල්තොට ගිරිමානන්ද හිමි/ අරියජෝති හිමි	\N	\N
141	ගුණරතන හිමි හා සුමතිපාල හිමි	\N	\N
142	බුස්සේගම පඤ්ඤාලංකාර හිමි හා හික්කඩුවේ සුමනසාර හිමි	\N	\N
143	ගුණරතන හිමි	\N	\N
144	මාතර ධම්මවංශ හිමි ලද්දුව සෝමරත්න හිමි	\N	\N
145	පාරුතොට ධම්මාරාම හිමි	\N	\N
146	වෙලගෙදර සිරි සුමේධතිස්ස හිමි	\N	\N
147	වස්කඩුවේ ශ්‍රී සුභූති හිමි	\N	\N
148	ශ්‍රී ධම්මානන්ද	\N	\N
149	පියදස්සි හිමි	\N	\N
150	ධිරානනද හිමි හා වාචිස්සර හිමි	\N	\N
151	අඹන්පොල ඤාණවිමල හිමි	\N	\N
152	වැලිවිටියේ සෝරත හිමි	\N	\N
153	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	\N	\N
154	විලේගොඩ ධම්මානන්ද හිමි	\N	\N
155	ධම්මරතන හිමි	\N	\N
156	කහඳාමෝදර පියරතන හිමි	\N	\N
157	දිඹුලාගල මහා කාශ්යප - සීලක්ඛන්ධ හිමි	\N	\N
158	කේ ජෝතිරතන හිමි	\N	\N
159	උත්තම මංගල බුද්ධඝෝෂ හිමි	\N	\N
160	ඒ සාරානන්ද හිමි	\N	\N
161	කේ එස් කිර්තිරතන හිමි	\N	\N
162	යගිරල පඤ්ඤානන්ද හිමි	\N	\N
163	කහවේ රතනසාර හිමි	\N	\N
164	එල්ලාවල සංකිච්ච හිමි	\N	\N
165	බද්දේගම ශ්‍රී කිර්තිරතන හිමි	\N	\N
166	වැලිතර ඤාණවිමල හිමි	\N	\N
167	බද්දේගම ධම්මරතන හිමි	\N	\N
168	කළුකොන්දයාවේ පඤ්ඤාසේකර හිමි	\N	\N
169	තංගල්ලේ පාලිත හිමි	\N	\N
170	මැදගම සුමංගල/ බද්දේගම ධම්මරතන හිමි	\N	\N
171	අරුග්ගොඩ සීලානන්ද හිමි	\N	\N
172	පරදුවේ පදුමජෝති හිමි/ලේල්වල අරියජෝති හිමි	\N	\N
173	ධම්මානන්ද හිමි	\N	\N
174	ශ්‍රී රාහුල සංඝරාජ හිමි	\N	\N
175	ධම්මකිත්ති සිරි ධම්මනනද හිමි	\N	\N
176	දොඩම්දුවේ ධර්මසේන හිමි	\N	\N
177	වීරගල ඉන්ද්‍රජෝති හිමි	\N	\N
178	විදුරුපොල පියතිස්ස හිමි	\N	\N
179	වැලිතොට ඤාණතිලක හිමි	\N	\N
180	වාරන විහාරවාසි පඤ්ඤානන්ද හිමි	\N	\N
181	සීලක්ඛන්ධ හිමි	\N	\N
182	සීලානන්ද හිමි	\N	\N
183	යෝගියානේ නන්දාරාමතිස්ස හිමි	\N	\N
184	ඒ බි පෙරේරා	\N	\N
185	කළුතර සාරානන්ද හිමි/ ආරණ්‍යවාසී ගෝතම හිමි	\N	\N
186	රතනජෝති හිමි	\N	\N
187	උදම්මිට ධම්මරක්ඛිත හිමි	\N	\N
188	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N
189	නාඋයනේ අරියධම්ම හිමි	\N	\N
190	මහව ඤාණාලෝක හිමි	\N	\N
191	මාතර ඥානාරාම හිමි	\N	\N
192	යෝගාශ්‍රම සංස්ථාව	\N	\N
193	මඩවල ධම්මතිලක හිමි	\N	\N
194	යාගොඩ ධර්මප්‍රභ හිමි	\N	\N
195	පාඖක් ශයාඩෝ	\N	\N
196	මහාසී සයාඩෝ හිමි, නාඋයනේ අරියධම්ම හිමි	\N	\N
197	මහාසී සයාඩෝ හිමි	\N	\N
198	මාතර ඥාණාරාම හිමි	\N	\N
199	මහාරිට්ඨ උපතිස්ස ථෙර	\N	\N
200	බෙන්තර ශ්‍රද්ධාතිස්ස හිමි	\N	\N
201	ඉඳුරුවේ උත්ත්රානනද හිමි	\N	\N
202	ඤාණමොලී හිමි	\N	\N
203	කඹුරුපිටියේ ධම්මරතන හිමි	\N	\N
204	වෑබඩ සංඝරතන හිමි	\N	\N
205	තෙල්වත්තේ සිරි අරියවංස හිමි	\N	\N
206	පිවි ඇම්වී පඤ්ඤාලොකාසභා හිමි	\N	\N
207	බෙන්තර සද්ධාතිස්ස හිමි	\N	\N
208	කරගම්පිටියේ ජෝතිරතන හිමි	\N	\N
209	දේවරක්ඛිත හිමි	\N	\N
210	තුඩුවේවත්තේ සිරිපඤ්ඤාසිහ හිමි	\N	\N
211	වලගෙදර සෝමාලෝක හිමි	\N	\N
212	වල්ගොව්වාගොඩ සුමංගල හිමි	\N	\N
213	කෝට්ටගොඩ පඤ්ඤාසාර හිමි	\N	\N
214	ගාල්ලේ පඤ්ඤාසීහ හිමි	\N	\N
215	පොල්වත්තේ බුද්ධදත්ත නා හිමි	\N	\N
216	කලුකොඳයාවේ පඤඤසේකර හිමි	\N	\N
217	මොරගල්ලේ ඤානොභාසතිස්ස හිමි	\N	\N
218	හරුමල්ගොඩ ශ්‍රී සුමංගල හිමි	\N	\N
219	පනම්ගල ජිනරතන/ රත්ගම පඤ්ඤාසේකර	\N	\N
220	සීලරතන සරණජෝතිතිස්ස හිමි	\N	\N
221	කෝදාගොඩ ඤාණාලෝක හිමි	\N	\N
222	කහවේ සිරිසුමංගල රතනසාර හිමි	\N	\N
223	මඩිහේ සුගතසිරි හිමි	\N	\N
224	කෝදාගොඩ උපසේන හිමි	\N	\N
225	වැලිගම ශ්‍රී ඤාණරතන හිමි	\N	\N
226	කැලිගම විජිතනන්ද හිමි	\N	\N
227	නිතලව ශ්‍රී ඤානිස්සර හිමි	\N	\N
228	බුජ්ජම්පොල ධම්මපරයනතිස්ස හිමි	\N	\N
229	විමලරන්සිතිස්ස හිමි	\N	\N
230	ධම්මකුසල හා ධම්මාධාරා හිමි	\N	\N
231	කිතුල්ගොඩ ආරණ්‍ය	\N	\N
232	වරකාගොඩ සීලරතන හිමි	\N	\N
233	උහන්ඕවිට සාසනතිලක හිමි	\N	\N
234	උපරතන හිමි	\N	\N
235	කේ සුමේධ හිමි	\N	\N
236	අග්ගධමාභීවංස මහා හිමි	\N	\N
237	බැන්ඩියමුල්ලේ ධම්මරතන හිමි	\N	\N
238	අඹගහපිටියේ විමලසාරතිස්ස නා හිමි	\N	\N
239	සිනාවත්තේ ගුනාලන්කාරතිස්ස හිමි	\N	\N
240	මොරටුවේ සාසන රතන හිමි	\N	\N
241	අමිතිරිගල පඤ්ඤානන්ද හිමි	\N	\N
242	වටද්දර මේධානන්ද හිමි	\N	\N
243	හෙක්ටර් පෙරේරා	\N	\N
244	විගොඩ ගුනාලංකාර හිමි	\N	\N
245	අම්බලන්ගොඩ සිරි සුමන තිස්ස හිමි	\N	\N
246	ලංකාගොඩ ධීරානන්ද හිමි	\N	\N
247	බේරුවල සුමේධංකර හිමි	\N	\N
248	ධර්මරත්න පඬිතුමා	\N	\N
249	පල්ලේගම රත්නාලංකාර හිමි	\N	\N
250	රුවන්ගිරි කන්ද ආරණ්‍ය	\N	\N
251	වරාගොඩ අමරමෝලි හිමි	\N	\N
252	කල්‍යාණී යෝගාශ්‍රම	\N	\N
253	ලේල්වල සිරිසද්ධම්මාචරිය සිරිනිවාස හිමි	\N	\N
254	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N
255	ධම්මාලංකාර හිමි	\N	\N
256	ග්‍රීසියේ ඤාණදස්සන හිමි	\N	\N
257	ඩී. බී. ජයතිලක	\N	\N
258	දොඩම්පහල සුමංගල හිමි	\N	\N
259	කිරිවත්තුඩුවේ ධර්මකීර්ති හිමි	\N	\N
260	බි එස් පියසේන	\N	\N
261	මඩිතියවෙල සිරි සුමංගල හිමි	\N	\N
262	කිරිඇල්ලේ ඤාණවිමල හිමි	\N	\N
263	ඤාණවිමල හිමි	\N	\N
264	වම්බටුවැවේ ධර්මකීර්ති හිමි	\N	\N
265	නිවන්දම ධර්මකීර්ති හිමි	\N	\N
266	භදන්ත සිරිධම්ම හිමි	\N	\N
267	හේනේගම කල්‍යාණසිරි හිමි	\N	\N
268	රත්මලානේ ධර්මාරාම හිමි	\N	\N
269	මොහොට්ටිවත්තේ ගුණානන්ද හිමි	\N	\N
270	දම්පැල්ලේ ගුණසිරි හිමි	\N	\N
271	වලානේ ශ්‍රී විජයනන්ද හිමි	\N	\N
272	රැකඩහේනේ චන්ද්‍රජෝති හිමි	\N	\N
273	ලබුගම ලංකානන්ද හිමි	\N	\N
274	මුරුන්දෙනියේ පඤ්ඤානන්ද හිමි	\N	\N
275	තුඩාවේ අරියවංශ හිමි	\N	\N
276	ලබුගම ලංකානන්ද නාහිමි	\N	\N
277	රයිගම ඉන්ද්‍රජෝති නා හිමි	\N	\N
278	දෙවිනුවර ඤාණවාස හිමි	\N	\N
279	සරණපාල හිමි	\N	\N
280	කේ ශ්‍රී ධර්මකිර්ති ධම්මනන්ද හිමි	\N	\N
281	සිරිමංගල හිමි	\N	\N
282	සුගුනසාර හා රතනසාර හිමි	\N	\N
283	මාකෙහෙල්වල ධම්මනනද හිමි	\N	\N
284	යු පි ඒකනායක	\N	\N
285	සිරිසුමන හිමි	\N	\N
286	අහුන්ගල්ලේ විමලසිරිතිස්ස හිමි	\N	\N
287	ලේදී සයාඩෝ හිමි/ අරංගල සිරිධම්ම හිමි	\N	\N
288	ආනන්ද හිමි/ බටුවන්තුඩාවේ පඬිතුමා	\N	\N
289	වම්බටුවැවේ සිරිනිවාස හිමි	\N	\N
290	වැල්මිල්ලේ ධර්මකීර්ත්ති හිමි	\N	\N
291	නුගවෙල පඤ්ඤාජෝති හිමි	\N	\N
292	හරමිටිගලේ ධීරානන්ද හිමි	\N	\N
293	ගම්මද්දේගොඩ පුඤ්ඤසාර හිමි/ ධම්මකිත්ති මහාසාමි	\N	\N
294	වස්කඩුවේ මෙධාවිතිස්ස හිමි	\N	\N
295	අම්බලන්ගොඩ ධම්මකුසල හිමි	\N	\N
296	කේ ඤාණරතන තිස්ස හිමි	\N	\N
297	වේරගොඩ සාරද හිමි	\N	\N
298	මොරොන්තුඩුවේ ධම්මානන්ද හිමි (ධම්මපාල ථෙර)	\N	\N
299	චෝළිය කස්සප ථෙර	\N	\N
300	මැදඋයන්ගොඩ විමලකීර්ති හිමි	\N	\N
301	අට්ටකථා පාලි - අළුවිහාර	\N	\N
302	බොද්‍ධ සම්මේලනය	\N	\N
303	පලන්නොරුවේ විමලධම්ම හිමි	\N	\N
304	ඩබ්. ඒ සමරසේකර / බොද්‍ධ සම්මේලනය	\N	\N
305	හේවාවිතාරණ	\N	\N
306	සුමංගල හිමි/ සීලරතන හිමි	\N	\N
307	වල්පිට සිරි සුමනතිස්ස හිමි	\N	\N
308	රත්මලානේ සරණතිස්ස හිමි	\N	\N
309	විද්‍යාලඞ්කාර	\N	\N
310	බෙන්තර ශ්‍රද්‍ධාතිස්ස හිමි	\N	\N
311	නාවල ධම්මානන්ද හිමි	\N	\N
312	උඩිරියගම ධම්මජිව හිමි	\N	\N
313	BCC - අම්බලන්ගොඩ කුසලධම්ම නා හිමි	\N	\N
314	හේවාවිතාරණ පාලි අටුවා	\N	\N
315	BCC- කපිල අභයවංශ	\N	\N
316	පලන්නොරුවේ විමලධම්ම නා හිමි	\N	\N
317	මොරොන්තුඩුවේ ධම්මානන්ද හිමි	\N	\N
318	බණ්ඩාරමුල්ලේ අමරසීහ හිමි	\N	\N
319	බෝරුග්ගමුවේ රේවත හිමි	\N	\N
320	කැන්දලියද්දපාළුවේ ධම්මිස්සර හිමි	\N	\N
321	ඤාණින්ද සෙයාඩෝ හිමි, නාඋයනේ අරියධම්ම හිමි	\N	\N
322	වැලිවිටියේ සෝරත හිමි/ අලගියවන්න මුකවෙටිතුමා	\N	\N
323	මාපලගම සෝමිස්සර හිමි	\N	\N
324	ඇස්වත්තේ රේවත හිමි	\N	\N
325	කහවේ සුමංගල හිමි	\N	\N
326	කන්දරපංගුවේ ධම්මසිරි හිමි	\N	\N
327	නා උයන අරණ්‍ය	\N	\N
328	ධම්මතිලක නා හිමි	\N	\N
329	එස්.ඩී.එස්. ජයරත්න	\N	\N
330	ධර්මකිර්ති හිමි	\N	\N
331	දොඩන්දුවේ ශ්‍රී සිලස්කන්ධ හිමි	\N	\N
332	බෙන්තර ශ්‍රී සරණංකර හිමි	\N	\N
333	සිරි ධම්ම හිමි	\N	\N
334	කේ ඤාණසාර හිමි	\N	\N
335	මොරටුවේ දේවානන්ද හිමි	\N	\N
336	ධම්මපාල හිමි	\N	\N
337	හේන්පිටගෙදර ඤාණ හිමි	\N	\N
338	ඛේන්දලුවේ ධිරානන්ද හිමි	\N	\N
339	ඊ ඩබ් වීරරත්න	\N	\N
340	ඌහන්විට සාසනතිලක හිමි	\N	\N
341	සිරිධම්ම හිමි	\N	\N
342	දේවමිත්ත හිමි/ හික්කඩුවේ ශ්‍රී සුමංගල හිමි	\N	\N
343	සද්ධානන්ද හිමි	\N	\N
344	ඇම් ධර්මරත්න මයා	\N	\N
345	මුද්දරගම ධම්මාලංකාර හිමි	\N	\N
346	දොඩම්පහල කවිධජ හිමි	\N	\N
347	වැල්මිල්ලේ රතනජෝති හිමි	\N	\N
348	වජිරාරාම නාරද හිමි	\N	\N
349	භික්ඛු කාශ්‍යප	\N	\N
350	රත්මලානේ ධම්මාදාර හිමි	\N	\N
351	Williuem Geiger	\N	\N
352	භණ්ඩාර රාජගුරු	\N	\N
353	පණ්ඩිත වජිරඤාණ හිමි	\N	\N
354	හිඟුල්වල ජිනරතන හිමි	\N	\N
355	සුධම්මාලංකාර හිමි	\N	\N
356	මොරගල්ලේ ඤාණෝභාස හිමි	\N	\N
357	සිටිනාමළුවේ ධම්මජෝති හිමි	\N	\N
358	ජේ ඩබ් පවුලස් ද සිල්වා	\N	\N
359	යටලමත්තේ සරණංකර හිමි	\N	\N
360	චන්ද්‍රකිර්ති ශ්‍රී පියරතන හිමි	\N	\N
361	ගිරිදර ශ්‍රී බුද්ධරක්ඛිත හිමි	\N	\N
362	එම් සුනන්ද හිමි	\N	\N
363	හිරිපිටියේ සාසනවංස හිමි	\N	\N
364	ගුණානන්ද හිමි	\N	\N
365	සිලවංස හිමි	\N	\N
366	ධම්මකිර්ති ශ්‍රී ධම්මානන්ද හිමි	\N	\N
367	බොරුග්ගමුවේ ශ්‍රී රේවත හිමි	\N	\N
368	අම්බලන්ගොඩ කුසලධම්ම හිමි	\N	\N
369	කහමුවදොර ශ්‍රී පියරතන හිමි	\N	\N
370	ඇම්.ඩී.ඩී. කරුණාතිලක	\N	\N
371	ගලගම සරණංකර හිමි	\N	\N
372	මාකුරේ ගුණරතන හිමි	\N	\N
373	එස් සිල්වා	\N	\N
374	ඩබ් ඇම් පුන්චිබණ්ඩාර	\N	\N
375	ඇලෙක්සැන්ඩර් මැන්දිස්	\N	\N
376	සිංහල ග්‍රන්තර්ණවය	\N	\N
377	කරුණාතිලක අප්පුහාමි	\N	\N
378	මඩුගල්ලේ සිද්ධාර්ථ	\N	\N
379	හික්කඩුවේ ශ්රී සුමංගල	\N	\N
380	දොඩන්ගමුවේ ශ්රී ධර්මරත්න	\N	\N
381	වැන්දබෝනා	\N	\N
382	කුමාරතුංග මුනිදාස	\N	\N
383	ඇල් ජි ප්‍රේරා	\N	\N
384	අභයසිංහ	\N	\N
385	Henry Sirr පරිවර්තනය - 2004 ප්_රේමචන්ද්ර අල්විස්	\N	\N
386	සිල්වා සහ ප්රේරා අප්පුහාමි	\N	\N
387	තොටගමුවේ රණස්ගල්ලේ හිමි	\N	\N
388	පෙරේරා	\N	\N
389	සේදරමන්	\N	\N
390	වේදේහ මහා සාමි/ ශ්රී සිධාර්ථ ධම්මානන්ද සහ මහගොඩ ශ්රී ඥානිස්සර	\N	\N
391	පි බි වත්තුහාමි	\N	\N
392	කේ එච් ද සිල්වා	\N	\N
393	වැලිගම ශ්රී සුමංගල හිමි	\N	\N
394	මලලගම ශ්‍රී විජයනාග හිමි	\N	\N
395	රතන හිමි	\N	\N
396	සුභූති හිමි	\N	\N
397	සරණංකර සඟරාජ හිමි	\N	\N
398	ඉස්වැල්ලේ ජිනරතන හිමි	\N	\N
399	චාල්ස් ඩයස්	\N	\N
400	ගබ්බෙල උපනන්ද හිමි	\N	\N
401	ධර්මකීර්ති ශ්‍රී ධම්මානන්ද හිමි	\N	\N
402	අරංගල සිරිධම්ම හිමි	\N	\N
403	දේවමිත්ත හිමි	\N	\N
404	වීරවර්ධන	\N	\N
405	සිරිසුමන තිස්ස හිමි	\N	\N
406	මිණිවන්ගොඩ පඤ්ඤාතිස්ස හිමි	\N	\N
407	අතුරලියේ ශ්‍රී සුමංගල හිමි	\N	\N
408	සිරි සද්ධම්මාචරිය හිමි	\N	\N
409	දෙකඳුවල සුමනසාර හිමි	\N	\N
410	කපුගම ධම්මක්ඛන්ධ හිමි	\N	\N
411	මැදඋයන්ගොඩ විමලකිත්ති හිමි	\N	\N
412	බලපිටියේ විශුද්ධාලෝක හිමි	\N	\N
413	සුමනජෝති හිමි	\N	\N
414	ඤානානන්ද සිරිසද්දම්මජෝතිපාල හිමි	\N	\N
415	විටියල සිරි සාරානන්ද හිමි	\N	\N
416	කිත්තිසිරි සුමංගල හිමි	\N	\N
417	සෝමානන්ද හිමි	\N	\N
418	ජි එෆ් මුණසිංහ	\N	\N
419	යූ.පී.ඒකනායක	\N	\N
420	විමලසාර හිමි	\N	\N
421	හේන්පිටගෙදර ඤානසිහ හිමි	\N	\N
422	කාලවිල ඉන්ද්‍රරතන හිමි	\N	\N
423	වැලිගම ඤානරතන හිමි	\N	\N
424	වෑකඩ පඤ්ඤානන්ද හිමි	\N	\N
425	ඩී බි ජයතිලක	\N	\N
426	පරවාහැර වජිරඤාණ හිමි	\N	\N
427	බොද්ධ සම්මේලනය	\N	\N
428	රන්දොඹේ සුදස්සන හිමි	\N	\N
429	රස්නකවැවේ ශ්‍රී සද්ධර්මවංස හිමි	\N	\N
430	මැදඋදන්ගොඩ විමලකිත්ති හිමි	\N	\N
431	පරවාහැර පේමානන්ද හිමි/ ගලගම ධම්මික හිමි	\N	\N
432	මොරගල්ලේ සිරි ඤාණෝභාසතිස්ස හිමි	\N	\N
433	Narada Thero	\N	\N
434	Richard Moris	\N	\N
435	රත්ගම ශ්‍රී පඤ්ඤාසේකර හිමි	\N	\N
436	පොල්වත්තේ සිරි බුද්දදත්ත හිමි	\N	\N
437	කළුතර ගුණානන්ද හිමි	\N	\N
438	සිරි ඤාණිස්සර හිමි	\N	\N
439	ලයනල් ලොකුලියන	\N	\N
440	තෙල්වත්තේ මහානාග සිලානනද හිමි	\N	\N
441	ගිරිදර රතනජෝති හිමි	\N	\N
442	බද්දේගම ශ්‍රී ධම්මරතන හිමි	\N	\N
443	නාරද හිමි	\N	\N
444	බලංගොඩ ආනන්දමෛත්‍රිය හිමි	\N	\N
445	බම්බරන්දේ සිරි සීවලී හිමි	\N	\N
446	මාලමුල්ලේ විමලරතන හිමි	\N	\N
447	මිරිස්සේ ඤාණරතනතිස්ස හිමි	\N	\N
448	තොටගමුවේ විමලඤාණතිස්ස හිමි	\N	\N
449	එච් දී එස් අබේරත්න	\N	\N
450	ජයවික්‍රම හා කාහඟආරච්චි	\N	\N
451	වෙනිවැල්කොළ ඉන්ද්‍රජෝති හිමි	\N	\N
452	පින්වත්තේ සෝමානන්ද හිමි	\N	\N
453	බන්දියමුල්ලේ ධම්මරතන හිමි	\N	\N
454	දෙනිපිටියේ සුදස්සී හිමි	\N	\N
455	තුඩාවේ ආර්යවංශ හිමි	\N	\N
456	මඩුගල්ලේ සිද්ධාර්ථ හිමි	\N	\N
457	බුද්ධරක්ඛිත සාරානන්ද හිමි	\N	\N
458	මාදම්පේ සංඝරක්ඛිත හිමි	\N	\N
459	යක්කඩුවේ පඤ්ඤාරාම හිමි	\N	\N
460	ජී ධම්මාලෝක හිමි	\N	\N
461	අහුන්ගල්ලේ විමලකීර්ති තිස්ස හිමි	\N	\N
462	සරණංකර හිමි	\N	\N
463	උරාපොල වජිරවංසතිස්ස හිමි	\N	\N
464	ධිරානනද හිමි	\N	\N
465	සිරිසුගතපාල හිමි	\N	\N
466	පඤ්ඤානන්ද හිමි	\N	\N
467	රත්මලානේ ධර්මකිර්ති ශ්‍රී ධර්මාරාම හිමි	\N	\N
468	කළුතර ධම්මානන්ද හිමි	\N	\N
469	වලිපැන්නේ ශ්‍රී උපතිස්ස හිමි	\N	\N
470	උඩුගම්පොල සවර්ණජෝති හිමි	\N	\N
471	කළුතර සරානනද හිමි	\N	\N
472	කිත්තන්ගොඩ සරණංකර හිමි	\N	\N
473	උදුගොඩ රතනපාල හිමි	\N	\N
474	මාගම්මන මේධානන්ද හිමි	\N	\N
475	මුල්ලපිටියේ මෙධාවිතිස්ස හිමි	\N	\N
476	තංගල්ලේ ඤාණවිමලතිස්ස හිමි	\N	\N
477	Pali Text Society	\N	\N
478	H T Francis and Thomas	\N	\N
479	TB Yatawara	\N	\N
480	පහමුනුතොට සුධම්මානන්ද හිමි	\N	\N
481	වෙඬරුවේ අනවමදර්ශී හිමි	\N	\N
482	කහටපිටියේ දේවරක්ඛිත හිමි	\N	\N
483	මාතර ඤාණරාම හිමි	\N	\N
484	මුල්ලේගම සිලාලංකාර හිමි	\N	\N
485	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	\N	\N
486	වැලිතර ඤාණවාස හිමි	\N	\N
487	මුල්ලපිටිගම විජිතජෝති හිමි	\N	\N
488	බුද්ධරක්ඛිත හිමි	\N	\N
489	නාගවිල ධම්මාරාම හිමි	\N	\N
490	බද්දේගම පියරතන හිමි	\N	\N
491	මොරෙන්තුඩුවේ ශ්‍රී ධම්මානන්ද හිමි	\N	\N
492	උවේ පඤ්ඤානන්ද හිමි	\N	\N
493	මාවිත්තර රේවත හිමි	\N	\N
494	සඳගෝමි කෝපරහේවා	\N	\N
495	රිදියගම සුධම්මවාස හිමි	\N	\N
496	මඩබාවිට ඤානාවාස හිමි	\N	\N
497	වැලිවිටියේ ධම්මරතන හිමි	\N	\N
498	ඩී එම් සිල්වා	\N	\N
499	බැලගම සුබෝදානන්ද හිමි	\N	\N
500	වැලිවිට සරණංකර කේ. සුගුණසාර සහ ඒ. සෝමානන්ද	\N	\N
501	පැලෑණේ වජිරඥාන හිමි	\N	\N
502	එම් ඒ අමරසිංහ හිමි	\N	\N
503	හෝමාගම සීලරතන හිමි/ ස්කන්ධවිභාගයේ කොටසකි	\N	\N
504	වලතර සෝභිත හිමි	\N	\N
505	වැලිවිට සරණංකර හිමි	\N	\N
506	කිරිවත්තුඩුවේ පඤ්ඤාසාර හිමි	\N	\N
507	දෙවුන්දර වාචිස්සර හිමි	\N	\N
508	කුදාහිල්ලේ පඤ්ඤාරාම හිමි	\N	\N
509	වේදේහ මහා සාමි - ශ්රී සිධාර්ථ ධම්මානන්ද සහ මහගොඩ ශ්රී ඥානිස්සර	\N	\N
510	හෑගොඩ ඛේමානන්ද හිමි	\N	\N
511	පි තුඩුවේ ගුණවර්ධන	\N	\N
512	ගිනිගත්පිටියේ හිමි	\N	\N
513	මඩිහේ සිරි සුමිත්ත හිමි	\N	\N
514	ධර්මසෙන හිමි	\N	\N
515	Bikku Analayo	\N	\N
516	කල්යානි යෝගාශ්‍රම	\N	\N
517	කේ. ආර්. පී.	\N	\N
518	කුණ්ඩසාලේ අරනගවෙසි හිමි	\N	\N
519	මාතර ඥාණාරාම මාහිමි	\N	\N
520	හිත්තැටියේ උදිත හිමි	\N	\N
521	උඩුගම්පොල ස්වණ්ණඣොත්‍යසභ	\N	\N
522	පි එ පිරිස්	\N	\N
523	ගන්දර වීරසූරිය	\N	\N
524	විරසිංහ	\N	\N
525	හබුරුගල පියරතන හිමි	\N	\N
526	ඥානරතන සංශෝධනය	\N	\N
527	ඇම්.ඩී. දාම්පි අප්පුහාමි	\N	\N
528	ඩි ඇස් අමරතුංග	\N	\N
529	ජයතිලක අප්පුහාමි	\N	\N
530	නාඋයනේ මාහිමි	\N	\N
2	කෝදාගොඩ පඤ්ඤාසේකර හිමි (ඤාණකිත්ති හිමි)	\N	\N
\.


--
-- TOC entry 3518 (class 0 OID 17881)
-- Dependencies: 235
-- Data for Name: core_book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_book (id, title, pages, "category_L1", "category_L2", language, storage_link, slug, description, uploaded_date, approved_by, approved_date, author_id, next_book_id, publisher_id, source_library_id, uploaded_by_id, catalog_no, published_year, last_modified, volume) FROM stdin;
1	අත්ථසාලිනි අත්ථයෝජනා	305	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	2	\N	\N	18	\N	A0001	1890-01-01	2023-11-18 22:15:12.260482+10:30	1
2	අභිධම්මත්‍ථ විභාවිනි ටිකාය	187	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	3	\N	\N	12	\N	A0002	1896-01-01	2023-11-18 22:15:12.271722+10:30	1
3	අත්ථසාලිනී අර්ථකථා සන්නය (දම් සඟුණු අටුවා සන්නය)	272	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	4	\N	\N	18	\N	A0003	1911-01-01	2023-11-18 22:15:12.273666+10:30	1
4	අභිධම්ම මාතිකා ස්වරුපාර්ථ	204	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	5	\N	\N	19	\N	A0004	1992-01-01	2023-11-18 22:15:12.275684+10:30	1
5	අභිධම්ම හා සුත්තන්ත මාතිකා සන්නය	198	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	6	\N	\N	19	\N	A0005	1910-01-01	2023-11-18 22:15:12.277591+10:30	1
6	අභිධම්මත්ථ විකාසිනී - අභිධම්මාවතාර ටීකා	477	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	7	\N	\N	19	\N	A0006	1961-01-01	2023-11-18 22:15:12.279612+10:30	1
7	අභිධම්මත්ථ විභාවිනී - අභිධම්මත්ථ සංගහ ටීකා	178	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	8	\N	\N	18	\N	A0007	1933-01-01	2023-11-18 22:15:12.28059+10:30	1
8	අභිධම්මමාතිකා පාළි ව්‍යාඛ්‍යානය	139	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	9	\N	\N	19	\N	A0008	1949-01-01	2023-11-18 22:15:12.282617+10:30	1
9	පරමත්තමහෝදදී අභිධම්මාවතාරය සන්නය; ප්‍රථම භාගය	260	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	10	\N	\N	19	\N	A0009	1914-01-01	2023-11-18 22:15:12.28361+10:30	1
10	අභිධර්ම කෝෂය - පරමාර්ථ රත්නාවලී; ප්‍රථම භාගය	356	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	11	\N	\N	19	\N	A0010	1948-01-01	2023-11-18 22:15:12.285612+10:30	1
11	අභිධර්ම චන්ද්‍රිකාව	501	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	12	\N	\N	19	\N	A0011	1981-01-01	2023-11-18 22:15:12.287588+10:30	1
12	අභිධර්ම චන්ද්‍රිකාව	563	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	12	\N	\N	19	\N	A0011	1981-01-01	2023-11-18 22:15:12.289624+10:30	2
13	ධර්මවිභාගසංක්ෂේපය	64	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	13	\N	\N	12	\N	A0012	1888-01-01	2023-11-18 22:15:12.290591+10:30	1
14	අභිධර්ම ප්‍රකාශය; ප්‍රථම භාගය	497	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	14	\N	\N	19	\N	A0013	1939-01-01	2023-11-18 22:15:12.292591+10:30	1
15	අභිධර්ම ප්‍රවේශනය	384	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	14	\N	\N	19	\N	A0014	2010-01-01	2023-11-18 22:15:12.294588+10:30	1
16	පරමාර්ථ ශාරධර්ම විනිශ්චය නොහොත් අභිධර්ම ප්‍රවේශය	124	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	15	\N	\N	19	\N	A0015	1921-01-01	2023-11-18 22:15:12.29562+10:30	1
17	අභිධර්ම මධු බින්දුව	26	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	16	\N	\N	19	\N	A0016	1921-01-01	2023-11-18 22:15:12.297652+10:30	1
18	අභිධර්මාර්ත්ථ විභාවනි සන්නය (01)	512	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	17	\N	\N	19	\N	A0017	1903-01-01	2023-11-18 22:15:12.299281+10:30	1
19	අභිධර්මාර්ත්ථ විභාවනි සන්නය (02)	300	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	17	\N	\N	19	\N	A0017	1903-01-01	2023-11-18 22:15:12.300184+10:30	2
20	අභිධර්මාර්ත්ථ සංග්‍රහයෙහි ස්වරූප	354	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	18	\N	\N	19	\N	A0018	1996-01-01	2023-11-18 22:15:12.302197+10:30	1
21	අභිධර්මාර්ථ ප්‍රදීපිකා 1	545	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	19	\N	\N	19	\N	A0019	1964-01-01	2023-11-18 22:15:12.303182+10:30	1
22	අභිධර්මාර්ථ ප්‍රදීපිකා 2	556	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	19	\N	\N	19	\N	A0020	1964-01-01	2023-11-18 22:15:12.305182+10:30	1
23	අභිධර්මාර්ථ ප්‍රදීපිකා 3	555	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	19	\N	\N	19	\N	A0021	1964-01-01	2023-11-18 22:15:12.307201+10:30	1
24	අභිධර්මාර්ථ ප්‍රදීපිකා 4	643	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	19	\N	\N	19	\N	A0022	1964-01-01	2023-11-18 22:15:12.309196+10:30	1
25	අභිධර්මාර්ථ සංග්‍රහය ප්‍රශ්නෝත්තරව්‍යාඛ්‍යා	143	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	20	\N	\N	18	\N	A0023	1909-01-01	2023-11-18 22:15:12.310195+10:30	1
26	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; තෙවන සංස්කරණය	273	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	21	\N	\N	18	\N	A0024	1926-01-01	2023-11-18 22:15:12.3132+10:30	1
27	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; සිව්වන සංස්කරණය	290	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	22	\N	\N	12	\N	A0024	1950-01-01	2023-11-18 22:15:12.314198+10:30	2
28	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; පස්වන සංස්කරණය	302	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	22	\N	\N	19	\N	A0024	1960-01-01	2023-11-18 22:15:12.31618+10:30	3
29	අභිධර්මාර්ථ සංග්‍රහ සංඛේප වන්නනා ටීකා	119	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	23	\N	\N	19	\N	A0025	1930-01-01	2023-11-18 22:15:12.31718+10:30	1
30	ධාතුකථා ප්‍රකරණපාළිය සන්නය	258	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	24	\N	\N	11	\N	A0026	1912-01-01	2023-11-18 22:15:12.319196+10:30	1
31	ධාතුකථා ප්‍රකරණපාළිය සන්නය	244	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	24	\N	\N	19	\N	A0026	1912-01-01	2023-11-18 22:15:12.32018+10:30	2
32	විමුක්ති සංග්‍රහය	150	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	13	\N	\N	12	\N	A0027	1888-01-01	2023-11-18 22:15:12.322182+10:30	1
33	සිත සිරුර සහ නිවන හෙවත් ධම්මසංගනී	-1	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	25	\N	\N	19	\N	A0028	1964-01-01	2023-11-18 22:15:12.324197+10:30	1
34	අභිධම්මතථ සංගහො - නවනීත ටීකා	205	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	26	\N	\N	19	\N	A0029	1969-01-01	2023-11-18 22:15:12.325198+10:30	1
35	පට්ඨාන දේසනා සාරය	476	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	25	\N	\N	19	\N	A0030	1962-01-01	2023-11-18 22:15:12.327198+10:30	1
36	පට්ඨාන ප්‍රකරණ භාව සන්නය	300	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	27	\N	\N	19	\N	A0031	1926-01-01	2023-11-18 22:15:12.32818+10:30	1
37	පරමත්ථවිනිච්ඡය සහ පරමත්ථ විභාවිනී	359	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	28	\N	\N	19	\N	A0032	1926-01-01	2023-11-18 22:15:12.330198+10:30	1
38	ලෝක නිත්ථරණය - හේතුඵල වාදය	211	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	29	\N	\N	19	\N	A0033	1955-01-01	2023-11-18 22:15:12.331198+10:30	1
39	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 01	608	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	19	\N	A0034	1929-01-01	2023-11-18 22:15:12.333198+10:30	1
40	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 02	494	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	19	\N	A0034	1929-01-01	2023-11-18 22:15:12.334229+10:30	2
41	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 03	428	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	19	\N	A0034	1929-01-01	2023-11-18 22:15:12.337213+10:30	3
42	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 04	310	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	19	\N	A0034	1950-01-01	2023-11-18 22:15:12.339213+10:30	4
43	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 05	510	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	19	\N	A0034	1954-01-01	2023-11-18 22:15:12.341227+10:30	5
44	විමුක්ති මාර්ගොදය (බොජ්ඣංග)	284	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	31	\N	\N	19	\N	A0035	1930-01-01	2023-11-18 22:15:12.343227+10:30	1
45	සච්ච සංඛේප ටීකා සන්නය	220	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	13	\N	A0036	1912-01-01	2023-11-18 22:15:12.34423+10:30	1
46	විස්තර භාවසන්න සහිත පටිච්චසමුප්පදය	96	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	32	\N	\N	19	\N	A0037	1935-01-01	2023-11-18 22:15:12.346105+10:30	1
47	වීථි භාසා ටීකාව ‌හෙවත් වීථි විභාගය	66	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	33	\N	\N	19	\N	A0038	1700-01-01	2023-11-18 22:15:12.347105+10:30	1
48	වීථි විභාගය සහිත පට්ඨාන ත්‍රී රාසිය	84	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	34	\N	\N	19	\N	A0039	2011-01-01	2023-11-18 22:15:12.34861+10:30	1
49	අභිධර්මාර්ථ සංග්‍රහ සන්නය; අත් පිටපත	325	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	35	\N	\N	12	\N	A0040	1930-01-01	2023-11-18 22:15:12.350615+10:30	1
50	සම්මෝහවිනෝදනි අත්ථයෝජනා	287	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	2	\N	\N	18	\N	A0041	1890-01-01	2023-11-18 22:15:12.351615+10:30	1
51	ස්කන්ධාදීන්ගේ විභාගය හා විමුක්ති සංග්‍රහය	222	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	36	\N	\N	19	\N	A0042	1925-01-01	2023-11-18 22:15:12.353615+10:30	1
52	අභිධර්මය - ප්‍රථම භාගය	78	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	37	\N	\N	19	\N	A0043	1955-01-01	2023-11-18 22:15:12.355617+10:30	1
53	මහා වංශය පාලි	526	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0001	1700-01-01	2023-11-18 22:15:12.357616+10:30	1
54	චුලවංශ ග්‍රන්ථ පාලි	23	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0002	1700-01-01	2023-11-18 22:15:12.35941+10:30	1
55	සාසනවංසප්‍රදීපිකා	136	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0003	1700-01-01	2023-11-18 22:15:12.360405+10:30	1
56	රසවාහිනී	145	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0004	1700-01-01	2023-11-18 22:15:12.362403+10:30	1
57	සිමාවිශෝධනි	102	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0005	1700-01-01	2023-11-18 22:15:12.363404+10:30	1
58	වෙස්සන්තරාගිති	91	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0006	1700-01-01	2023-11-18 22:15:12.365407+10:30	1
59	මොග්ගල්ලාන වුත්තිවිවරණපංචිකා	155	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0007	1700-01-01	2023-11-18 22:15:12.367404+10:30	1
60	ථූපවංස	93	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0008	1700-01-01	2023-11-18 22:15:12.368387+10:30	1
61	ධාඨාවංස	59	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0009	1700-01-01	2023-11-18 22:15:12.370387+10:30	1
62	ධතුපාටවිලාසිනි	7	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0010	1700-01-01	2023-11-18 22:15:12.372388+10:30	1
63	ධාතුවංස	57	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0011	1700-01-01	2023-11-18 22:15:12.374406+10:30	1
64	අත්තනගාලුවිහාරවංස	33	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0012	1700-01-01	2023-11-18 22:15:12.376403+10:30	1
65	ජිනචරිතය	60	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0013	1700-01-01	2023-11-18 22:15:12.377405+10:30	1
66	ජිනවංසදීපං	312	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0014	1700-01-01	2023-11-18 22:15:12.379415+10:30	1
67	තේලකටහගාථා	18	L1_C4	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0015	1700-01-01	2023-11-18 22:15:12.381415+10:30	1
68	මිලින්දටීකා	88	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0016	1700-01-01	2023-11-18 22:15:12.382413+10:30	1
69	පදමන්ජරි	81	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0017	1700-01-01	2023-11-18 22:15:12.384519+10:30	1
70	පදසධනම්	79	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0018	1700-01-01	2023-11-18 22:15:12.385498+10:30	1
71	සද්දබින්දුප්‍රකරණ	8	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0019	1700-01-01	2023-11-18 22:15:12.388499+10:30	1
72	කච්චායනධාතුමංජුසා	22	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0020	1700-01-01	2023-11-18 22:15:12.390532+10:30	1
73	සමන්තකුටවර්ණනා	101	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0021	1700-01-01	2023-11-18 22:15:12.391517+10:30	1
74	නමක්කාර පාලි ටීකා	152	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0022	1700-01-01	2023-11-18 22:15:12.393516+10:30	1
75	බුදුගුණ ගාථාවලි	85	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0023	1700-01-01	2023-11-18 22:15:12.395514+10:30	1
76	ජිනාලංකාර	35	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0024	1700-01-01	2023-11-18 22:15:12.3965+10:30	1
77	චානක්‍යනීති පාලි	20	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0025	1700-01-01	2023-11-18 22:15:12.398518+10:30	1
78	චතුරාරඛදිපනි	69	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0026	1700-01-01	2023-11-18 22:15:12.400514+10:30	1
79	ධම්මනිති	47	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0027	1700-01-01	2023-11-18 22:15:12.401516+10:30	1
80	කවිපදනීති	50	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0028	1700-01-01	2023-11-18 22:15:12.403514+10:30	1
81	ලෝකනීති	31	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0029	1700-01-01	2023-11-18 22:15:12.406501+10:30	1
82	මහාරහනීති	44	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0030	1700-01-01	2023-11-18 22:15:12.408515+10:30	1
83	නරදක්ඛදිපනි	63	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0031	1700-01-01	2023-11-18 22:15:12.4101+10:30	1
84	නිතිමන්ජරි	47	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0032	1700-01-01	2023-11-18 22:15:12.411098+10:30	1
85	සුරස්සතිනීති	21	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0033	1700-01-01	2023-11-18 22:15:12.413098+10:30	1
86	සුත්තන්තනීති	12	L1_C6	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	R0034	1700-01-01	2023-11-18 22:15:12.415099+10:30	1
87	අභිනව යෝගමුක්තාවලිය	38	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	39	\N	\N	18	\N	RE0001	1900-01-01	2023-11-18 22:15:12.416098+10:30	1
88	ගෙඩි වෙදකම	100	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RE0002	1700-01-01	2023-11-18 22:15:12.418097+10:30	1
89	චරක සංහිතාව	992	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	41	\N	\N	18	\N	RE0003	1960-01-01	2023-11-18 22:15:12.419494+10:30	1
90	ද්‍රව්‍යගුණ නිඝණ්ටුව	334	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	42	\N	\N	18	\N	RE0004	1912-01-01	2023-11-18 22:15:12.421479+10:30	1
91	නාඩි ඥානතරංගිණිය	30	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	43	\N	\N	18	\N	RE0005	1892-01-01	2023-11-18 22:15:12.423512+10:30	1
92	නාඩි ප්‍රකාශය	24	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	44	\N	\N	18	\N	RE0006	1890-01-01	2023-11-18 22:15:12.425493+10:30	1
93	පුරාණ සර්ප විෂ චිකිත්සා	190	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RE0007	1948-01-01	2023-11-18 22:15:12.426474+10:30	1
94	භාරත රෝග නිවාරණ ක්‍රම	40	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	45	\N	\N	18	\N	RE0008	1977-01-01	2023-11-18 22:15:12.428475+10:30	1
95	භෙෂජසංග්‍රහව	36	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	46	\N	\N	18	\N	RE0009	1892-01-01	2023-11-18 22:15:12.43049+10:30	1
96	භෛෂජ්‍ය දර්‍පණය	68	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RE0010	1700-01-01	2023-11-18 22:15:12.431492+10:30	1
97	භෛෂජ්යදර්පණය	98	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	47	\N	\N	18	\N	RE0011	1700-01-01	2023-11-18 22:15:12.43349+10:30	1
98	මාධවනිදාන	470	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	48	\N	\N	18	\N	RE0012	1859-01-01	2023-11-18 22:15:12.434521+10:30	1
99	යොග මාලාව හෙවත් සත්‍යාසාර යෝග සංග්‍රහව	20	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	49	\N	\N	18	\N	RE0013	1892-01-01	2023-11-18 22:15:12.436505+10:30	1
100	යොගශතකය	44	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	48	\N	\N	18	\N	RE0014	1898-01-01	2023-11-18 22:15:12.438505+10:30	1
101	යොගාර්ණවය	105	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	50	\N	\N	18	\N	RE0015	1942-01-01	2023-11-18 22:15:12.440519+10:30	1
102	යෝගරත්නාකරය	456	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	51	\N	\N	18	\N	RE0016	1897-01-01	2023-11-18 22:15:12.442519+10:30	1
103	යෝගසේකරය	78	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	52	\N	\N	18	\N	RE0017	1902-01-01	2023-11-18 22:15:12.443521+10:30	1
104	වටිකා ප්‍රකරණය	264	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RE0018	1700-01-01	2023-11-18 22:15:12.444504+10:30	1
105	වෛද්‍යක සාරාර්ථ සංග්‍රහය	1272	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	53	\N	\N	18	\N	RE0019	1987-01-01	2023-11-18 22:15:12.446504+10:30	1
106	වෛද්‍යචින්තාමණි භෛෂද්‍ය සංග්‍රහව.	572	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	54	\N	\N	18	\N	RE0020	1909-01-01	2023-11-18 22:15:12.44852+10:30	1
107	වෛද්‍යජීවනය	90	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	55	\N	\N	18	\N	RE0021	1902-01-01	2023-11-18 22:15:12.450068+10:30	1
108	ශාර්ඞගධර සංහිතාව	284	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	53	\N	\N	18	\N	RE0022	1962-01-01	2023-11-18 22:15:12.452069+10:30	1
109	සතශෙලාකය	58	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	56	\N	\N	18	\N	RE0023	1862-01-01	2023-11-18 22:15:12.455073+10:30	1
110	සරස්වතී නිඝණ්ටුව	146	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	42	\N	\N	18	\N	RE0024	1918-01-01	2023-11-18 22:15:12.457092+10:30	1
111	සිඞෞෂධ නිඝණ්ටුව	172	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	57	\N	\N	18	\N	RE0025	1911-01-01	2023-11-18 22:15:12.459083+10:30	1
112	සුශ්‍රැත සංහිතාව	1000	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	41	\N	\N	18	\N	RE0026	1962-01-01	2023-11-18 22:15:12.461068+10:30	1
113	සුශ්‍රැත නිදානස්ථානය	102	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	58	\N	\N	18	\N	RE0027	1891-01-01	2023-11-18 22:15:12.463084+10:30	1
114	සුශ්‍රැත ශාරිරස්ථානය	122	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	48	\N	\N	18	\N	RE0028	1882-01-01	2023-11-18 22:15:12.464085+10:30	1
115	සුශ්‍රැත සූත්‍රස්ථානය	88	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	59	\N	\N	18	\N	RE0029	1896-01-01	2023-11-18 22:15:12.466085+10:30	1
116	සෙනෙහ විධිය හෙවත් බෙහෙත් තෙල් පොත.	108	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	60	\N	\N	18	\N	RE0030	1902-01-01	2023-11-18 22:15:12.467085+10:30	1
117	වුත්තෝදය, සන්නය, විවරණය හා ටීකාව	88	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	61	\N	\N	19	\N	RH0001	1916-01-01	2023-11-18 22:15:12.469277+10:30	1
118	සන්න සහිත වුත්තෝදය	36	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	62	\N	\N	18	\N	RH0002	1915-01-01	2023-11-18 22:15:12.471278+10:30	1
119	සන්න සහිත වුත්තෝදය	42	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	62	\N	\N	18	\N	RH0003	1915-01-01	2023-11-18 22:15:12.473277+10:30	1
120	එළුඡන්දසය	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0004	1700-01-01	2023-11-18 22:15:12.474278+10:30	1
121	එලු සඳස් ලකුණ.	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0005	1700-01-01	2023-11-18 22:15:12.475278+10:30	1
122	වුත්තාලංකාරය නම් වූ වුත්තෝදය වර්ණනාව	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	63	\N	\N	18	\N	RH0006	2021-01-01	2023-11-18 22:15:12.477276+10:30	1
123	වුත්තෝදය ලංකානන්ද ව්‍යාඛ්‍යාව 01	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0007	1700-01-01	2023-11-18 22:15:12.478276+10:30	1
124	වුත්තෝදය ලංකානන්ද ව්‍යාඛ්‍යාව 02	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0008	1700-01-01	2023-11-18 22:15:12.479274+10:30	1
125	වෘත්ත මාලාඛ්යාව	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0009	1700-01-01	2023-11-18 22:15:12.481278+10:30	1
126	වෘත්තමාලව	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0010	1700-01-01	2023-11-18 22:15:12.482277+10:30	1
127	සඤ්ජීවනී ව්‍යාඛ්‍යා සහිත එලු සඳස් ලකුණ	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0011	1700-01-01	2023-11-18 22:15:12.483277+10:30	1
128	සරලාව්‍යාඛ්‍යා සහිත වෘත්තරත්නාකරය	-1	L1_C6	L1_C6_C9	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RH0012	1700-01-01	2023-11-18 22:15:12.485275+10:30	1
129	A Manual Of Sanskrit Composition And Translation	306	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	64	\N	\N	18	\N	RD0001	1923-01-01	2023-11-18 22:15:12.486276+10:30	1
130	Ardha-Magadhi	184	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	65	\N	\N	18	\N	RD0002	1941-01-01	2023-11-18 22:15:12.489276+10:30	1
131	Arkaprakasha	264	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0003	1700-01-01	2023-11-18 22:15:12.490276+10:30	1
132	Kavikalpadruma	52	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	66	\N	\N	18	\N	RD0004	1876-01-01	2023-11-18 22:15:12.492278+10:30	1
133	Kavyadarsa of Dandin	162	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	67	\N	\N	18	\N	RD0005	1924-01-01	2023-11-18 22:15:12.494277+10:30	1
134	Megha Dutha	132	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0006	1700-01-01	2023-11-18 22:15:12.495276+10:30	1
135	Megha Dutha	194	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	68	\N	\N	18	\N	RD0007	1867-01-01	2023-11-18 22:15:12.497278+10:30	1
136	Nala and Damayanthi	234	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	69	\N	\N	18	\N	RD0008	1936-01-01	2023-11-18 22:15:12.498275+10:30	1
137	Nalodaya	172	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0009	1700-01-01	2023-11-18 22:15:12.499275+10:30	1
138	Rajaprashasti	42	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	70	\N	\N	18	\N	RD0010	1888-01-01	2023-11-18 22:15:12.501278+10:30	1
139	Retnavali	112	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	71	\N	\N	18	\N	RD0011	1832-01-01	2023-11-18 22:15:12.502274+10:30	1
140	Taittriyopanisad	174	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	72	\N	\N	18	\N	RD0012	1942-01-01	2023-11-18 22:15:12.504276+10:30	1
141	THE CATUHSATAKA OF ARYADEVA	330	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	73	\N	\N	18	\N	RD0013	1931-01-01	2023-11-18 22:15:12.506275+10:30	1
142	Uttara Rama Cheritra	142	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	74	\N	\N	18	\N	RD0014	1831-01-01	2023-11-18 22:15:12.508277+10:30	1
143	Vachaspatya	834	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	75	\N	\N	18	\N	RD0015	1873-01-01	2023-11-18 22:15:12.509865+10:30	1
144	Vedanta-sara	86	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	76	\N	\N	18	\N	RD0016	1929-01-01	2023-11-18 22:15:12.511963+10:30	1
145	VIVEKACHUDAMANI	262	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	77	\N	\N	18	\N	RD0017	1932-01-01	2023-11-18 22:15:12.513883+10:30	1
146	අභිඥානශාකුන්තලය	396	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	78	\N	\N	18	\N	RD0018	1956-01-01	2023-11-18 22:15:12.515902+10:30	1
147	අමර ශබ්දාවලී	248	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	79	\N	\N	18	\N	RD0019	1922-01-01	2023-11-18 22:15:12.517881+10:30	1
148	අමරකොෂය	366	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	80	\N	\N	18	\N	RD0020	1934-01-01	2023-11-18 22:15:12.519876+10:30	1
149	අමරුශතකය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0021	1700-01-01	2023-11-18 22:15:12.521861+10:30	1
150	ඍතුසංහාරකාව්‍යය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0022	1700-01-01	2023-11-18 22:15:12.52286+10:30	1
151	කවිකල්පද්‍රැම නාමධෙය මුග්ධබොධධාතුපාඨය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0023	1700-01-01	2023-11-18 22:15:12.524863+10:30	1
152	කාව්‍යාදර්‍ශය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0024	1700-01-01	2023-11-18 22:15:12.526877+10:30	1
153	ජානකීහරණ මහා කාව්‍යය	344	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	81	\N	\N	18	\N	RD0025	1891-01-01	2023-11-18 22:15:12.527885+10:30	1
154	දශ කුමාර චරිත (පූර්ව පීඨිකා) මංගල ව්‍යාඛ්‍යානය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0026	1700-01-01	2023-11-18 22:15:12.529877+10:30	1
155	දශකුමාර චරිත (උත්තර පිඨිකා) මංගල ව්‍යාඛ්‍යානය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0027	1700-01-01	2023-11-18 22:15:12.530881+10:30	1
156	ධාතුරූපාවලිය හෙවත් සංස්කෘත ආඛ්‍යාතවරනැගිල්ල	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0028	1700-01-01	2023-11-18 22:15:12.531881+10:30	1
157	භක්ති ශතකය හෙවත් බෞද්ධ ශතකය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0029	1700-01-01	2023-11-18 22:15:12.533885+10:30	1
158	භගවත්ගීතා	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0030	1700-01-01	2023-11-18 22:15:12.534888+10:30	1
159	මේඝදූතය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0031	1700-01-01	2023-11-18 22:15:12.535865+10:30	1
160	යතිදූතම්	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0032	1700-01-01	2023-11-18 22:15:12.537866+10:30	1
161	රඝුවංශ මහා කාව්‍යය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0033	1700-01-01	2023-11-18 22:15:12.539883+10:30	1
162	විස්තරාර්ථ සහිත සාරස්වත ප්‍රක්‍රියා ව්‍යාඛ්‍යානය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0034	1700-01-01	2023-11-18 22:15:12.540866+10:30	1
163	විස්තරාර්ථ සහිත සාරස්වතාඛ්‍යාත ව්‍යාඛ්‍යානය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0035	1700-01-01	2023-11-18 22:15:12.541865+10:30	1
164	ශික්ෂා සංග්‍රහව සහ ශික්ෂා සංග්‍රහාර්ථ ව්‍යාඛ්‍යානය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0036	1700-01-01	2023-11-18 22:15:12.543867+10:30	1
165	ශිශුපාලවධ මහා කාව්‍යය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0037	1700-01-01	2023-11-18 22:15:12.544883+10:30	1
166	සංස්කෘත භාෂාවතරණය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0038	1700-01-01	2023-11-18 22:15:12.545865+10:30	1
167	සංස්කෘත වරනැගිල්ල	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0039	1700-01-01	2023-11-18 22:15:12.546882+10:30	1
168	සංස්කෘත ශබ්දමාලාව	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0040	1700-01-01	2023-11-18 22:15:12.548391+10:30	1
169	සකුන්තලා; අභිඥාන ශාකුන්තල	68	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	82	\N	\N	18	\N	RD0041	1954-01-01	2023-11-18 22:15:12.550888+10:30	1
170	සන්න සහිත කාව්‍යාදර්‍ශය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0042	1700-01-01	2023-11-18 22:15:12.551926+10:30	1
171	සන්න සහිත ව්‍යාසකාරය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RD0043	1700-01-01	2023-11-18 22:15:12.552921+10:30	1
172	සම්පිණ්ඩිතමහානිදානය	422	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	83	\N	\N	19	\N	RB0001	2006-01-01	2023-11-18 22:15:12.554905+10:30	1
173	ගෞතම කේන්ද්‍රය	15	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	84	\N	\N	18	\N	RB0002	1700-01-01	2023-11-18 22:15:12.556904+10:30	1
174	ජිනරාජ වංශය - බුද්ධ චරිතය	196	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	85	\N	\N	18	\N	RB0003	1930-01-01	2023-11-18 22:15:12.558922+10:30	1
175	ශාඛ්‍යමුණීන්ද්‍රාවදානය බුද්ධ චරිතය	438	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	86	\N	\N	18	\N	RB0004	1700-01-01	2023-11-18 22:15:12.560921+10:30	1
176	ජිනචරිතය - සන්න සහිත	103	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	87	\N	\N	18	\N	RB0005	1886-01-01	2023-11-18 22:15:12.561921+10:30	1
177	සන්න සහිත ජිනචරිතය	106	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	88	\N	\N	18	\N	RB0006	1886-01-01	2023-11-18 22:15:12.563925+10:30	1
178	සන්න සහිත ජිනචරිතය	112	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	88	\N	\N	18	\N	RB0006	1930-01-01	2023-11-18 22:15:12.565938+10:30	2
179	අනාගත වංශය මෙතේ බුදුසිරිත	196	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	89	\N	\N	18	\N	RB0007	1700-01-01	2023-11-18 22:15:12.566921+10:30	1
180	මහා ධම්මපාල ජාතකය	10	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RB0008	1700-01-01	2023-11-18 22:15:12.56892+10:30	1
181	පන්සිය පණස් ජාතක පොත	1000	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	90	\N	\N	18	\N	RB0009	1961-01-01	2023-11-18 22:15:12.569925+10:30	1
182	අභිසම්බෝධි අලංකාරය සන්න සහිත	40	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RB0010	1897-01-01	2023-11-18 22:15:12.571905+10:30	1
183	උම්මග්ග ජාතකය පුරාණ පිටපත	164	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	92	\N	\N	18	\N	RB0011	1875-01-01	2023-11-18 22:15:12.573906+10:30	1
184	ලක්ඛණ සතකං	22	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	93	\N	\N	18	\N	RB0012	1898-01-01	2023-11-18 22:15:12.575903+10:30	1
185	ජිනාලංකාර වර්ණනාව	304	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	94	\N	\N	18	\N	RB0013	1913-01-01	2023-11-18 22:15:12.577903+10:30	1
186	ජිනාලංකාරය	108	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	94	\N	\N	18	\N	RB0014	1900-01-01	2023-11-18 22:15:12.579982+10:30	1
187	ශ්‍රී සද්ධර්මාවවාද සංග්‍රහය	610	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	95	\N	\N	18	\N	RB0015	1956-01-01	2023-11-18 22:15:12.580982+10:30	1
188	ශ්‍රී සද්ධර්මාවවාද සංග්‍රහය	602	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	95	\N	\N	18	\N	RB0016	1901-01-01	2023-11-18 22:15:12.582984+10:30	1
189	පන්සිය පණස් ජාතක පොත Part 01	118	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	96	\N	\N	18	\N	RB0017	1928-01-01	2023-11-18 22:15:12.585134+10:30	1
190	පන්සිය පණස් ජාතක පොත Part 02	922	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	96	\N	\N	18	\N	RB0017	1929-01-01	2023-11-18 22:15:12.586078+10:30	2
191	බුද්ධගුණ ගාථාවලී	85	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RB0018	1700-01-01	2023-11-18 22:15:12.588038+10:30	1
192	බුද්ධවංශ දෙසනාව හා පරංජස දීපනිය	74	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RB0019	1899-01-01	2023-11-18 22:15:12.590052+10:30	1
193	ශාක්‍යසිංහාවදානය හෙවත් බුද්ධ චරිතය	312	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	86	\N	\N	18	\N	RB0020	1957-01-01	2023-11-18 22:15:12.593054+10:30	1
194	ජිනවංශ දීපං	800	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	18	\N	RB0021	1917-01-01	2023-11-18 22:15:12.595047+10:30	1
195	ඉති කුමාරිගේ කතාව	20	L1_C6	L1_C6_C2	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RB0022	1700-01-01	2023-11-18 22:15:12.596047+10:30	1
196	සිංහල ව්‍යාකරණය	40	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	97	\N	\N	17	\N	RL0001	1862-01-01	2023-11-18 22:15:12.599033+10:30	1
197	සිංහල ව්‍යාකරණය; සිදත් සඟරාව	190	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	98	\N	\N	17	\N	RL0002	1884-01-01	2023-11-18 22:15:12.601033+10:30	1
198	සිදත් සඟරාව	108	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	99	\N	\N	17	\N	RL0003	1892-01-01	2023-11-18 22:15:12.60303+10:30	1
199	සිදත් සඟරාවේ පුරාතන සන්නය	115	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	100	\N	\N	17	\N	RL0004	1877-01-01	2023-11-18 22:15:12.605031+10:30	1
200	සිදත් සඟරාවේ ලියන සන්නය	48	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	101	\N	\N	17	\N	RL0005	1876-01-01	2023-11-18 22:15:12.60803+10:30	1
201	සිංහලයේ වචන වෙන් කිරීම	22	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0006	1991-01-01	2023-11-18 22:15:12.609046+10:30	1
202	විබත් මල් දම	27	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0007	1883-01-01	2023-11-18 22:15:12.611047+10:30	1
203	සිංහල ව්‍යාකරණය පද නිතිය	94	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	102	\N	\N	17	\N	RL0008	1890-01-01	2023-11-18 22:15:12.612048+10:30	1
204	ඉබේ සකුව	90	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0009	1963-01-01	2023-11-18 22:15:12.614047+10:30	1
205	සිංහල ග්‍රන්තාර්ණවය	279	L1_C6	L1_C6_C12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0010	1700-01-01	2023-11-18 22:15:12.615047+10:30	1
206	ශබ්දානුසාසනය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0011	1700-01-01	2023-11-18 22:15:12.61603+10:30	1
207	සිදත් සඟරා භාව සන්නය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0012	1700-01-01	2023-11-18 22:15:12.618047+10:30	1
208	සිදත් සඟරා භාව සන්නය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0013	1700-01-01	2023-11-18 22:15:12.619047+10:30	1
209	සිදත් සඟරා	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0014	1700-01-01	2023-11-18 22:15:12.621033+10:30	1
210	සිදත් සඟරා සන්නය 1	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0015	1700-01-01	2023-11-18 22:15:12.623032+10:30	1
211	සිදත් සඟරා සන්නය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0016	1700-01-01	2023-11-18 22:15:12.625051+10:30	1
212	විබත් මල් දම	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0017	1700-01-01	2023-11-18 22:15:12.626048+10:30	1
213	නිරුක්ති බින්දු	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0018	1700-01-01	2023-11-18 22:15:12.627992+10:30	1
214	ලකුණු සර 1883	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0019	1700-01-01	2023-11-18 22:15:12.628991+10:30	1
215	සිදත් සඟරාව sannaya ha gatapadaya	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0020	1700-01-01	2023-11-18 22:15:12.62999+10:30	1
216	සිද්ධාන්ත පරික්ෂනය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0021	1700-01-01	2023-11-18 22:15:12.631991+10:30	1
217	සිංහල ධාතු රත්නාවලී	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0022	1700-01-01	2023-11-18 22:15:12.632989+10:30	1
218	සියබස්ලකර	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0023	1700-01-01	2023-11-18 22:15:12.633997+10:30	1
219	සියබස්ලකර	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0024	1700-01-01	2023-11-18 22:15:12.636055+10:30	1
220	සියබස්ලකර	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0025	1700-01-01	2023-11-18 22:15:12.637062+10:30	1
221	හෙලදිව් අබිදානවත	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0026	1700-01-01	2023-11-18 22:15:12.639062+10:30	1
222	වර්ණ ප්‍රශ්නය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0027	1700-01-01	2023-11-18 22:15:12.641065+10:30	1
223	ව්‍යාකරන රත්න	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0028	1700-01-01	2023-11-18 22:15:12.642064+10:30	1
224	සිංහල ව්‍යාකරන	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0029	1700-01-01	2023-11-18 22:15:12.644063+10:30	1
225	සිංහල ව්‍යාකරන පොත	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0030	1700-01-01	2023-11-18 22:15:12.6455+10:30	1
226	SINHALA PRAKRTAYA	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0031	1700-01-01	2023-11-18 22:15:12.6465+10:30	1
227	අක්ෂර ශික්ෂා	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0032	1700-01-01	2023-11-18 22:15:12.647498+10:30	1
228	හෙලදාරුවනකර	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0033	1700-01-01	2023-11-18 22:15:12.648496+10:30	1
229	කවි ශික්ෂා	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0034	1700-01-01	2023-11-18 22:15:12.649533+10:30	1
230	ක්‍රියා විවරනය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0035	1700-01-01	2023-11-18 22:15:12.651533+10:30	1
231	මුලක්ඛර	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0036	1700-01-01	2023-11-18 22:15:12.652534+10:30	1
232	පද නීතිය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0037	1700-01-01	2023-11-18 22:15:12.653533+10:30	1
233	පදවිනිස	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0038	1700-01-01	2023-11-18 22:15:12.654533+10:30	1
234	ප්‍රබන්ධ සංග්‍රහ	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0039	1700-01-01	2023-11-18 22:15:12.656531+10:30	1
235	ප්‍රබන්ධොපදෙශය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0040	1700-01-01	2023-11-18 22:15:12.659534+10:30	1
236	Sinhala Grammer	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0041	1700-01-01	2023-11-18 22:15:12.660535+10:30	1
237	Sinhala Grammer	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0042	1700-01-01	2023-11-18 22:15:12.662533+10:30	1
238	Sinhala Grammer	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0043	1700-01-01	2023-11-18 22:15:12.663533+10:30	1
239	Sinhala Grammer	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0044	1700-01-01	2023-11-18 22:15:12.664533+10:30	1
240	අමාවතුර	565	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	103	\N	\N	19	\N	RG0001	1958-01-01	2023-11-18 22:15:12.666234+10:30	1
241	අමාවතුර ගැටපද	52	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	104	\N	\N	17	\N	RG0002	1899-01-01	2023-11-18 22:15:12.668339+10:30	1
242	අමාවතුර	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0003	1700-01-01	2023-11-18 22:15:12.66928+10:30	1
243	අමාවතුර	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0004	1700-01-01	2023-11-18 22:15:12.671349+10:30	1
244	අමාවතුර	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0005	1700-01-01	2023-11-18 22:15:12.673334+10:30	1
245	සිරි රහල් පබඳ	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0006	1700-01-01	2023-11-18 22:15:12.674335+10:30	1
246	ජිනකාලමාලී	171	L1_C6	L2_A12	L3_C2	\N		\N	2023-11-18	\N	\N	105	\N	\N	19	\N	RC0001	1700-01-01	2023-11-18 22:15:12.676348+10:30	1
247	ථූපවංස කථා	69	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RC0002	1700-01-01	2023-11-18 22:15:12.677282+10:30	1
248	දාඨාවංශය	242	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	106	\N	\N	19	\N	RC0003	1994-01-01	2023-11-18 22:15:12.679341+10:30	1
249	පූජාවලිය	844	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	107	\N	\N	17	\N	RG0007	1951-01-01	2023-11-18 22:15:12.681338+10:30	1
250	බුත්සරණ	344	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	108	\N	\N	17	\N	RG0008	1959-01-01	2023-11-18 22:15:12.683342+10:30	1
251	බුත්සරණ	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0009	1700-01-01	2023-11-18 22:15:12.685295+10:30	1
252	බුත්සරණ	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0010	1700-01-01	2023-11-18 22:15:12.68629+10:30	1
253	බාරස කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0011	1700-01-01	2023-11-18 22:15:12.688285+10:30	1
254	බාරස කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0012	1700-01-01	2023-11-18 22:15:12.690296+10:30	1
255	සඟසරණ	92	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	109	\N	\N	19	\N	RG0013	1929-01-01	2023-11-18 22:15:12.691293+10:30	1
256	මහාවංශය	765	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	RC0004	1700-01-01	2023-11-18 22:15:12.693295+10:30	1
257	රසවාහිනී ගාථාසන්නය	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	111	\N	\N	16	\N	RC0005	1700-01-01	2023-11-18 22:15:12.695335+10:30	1
258	සඟසරණ	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	109	\N	\N	19	\N	RG0014	1700-01-01	2023-11-18 22:15:12.696335+10:30	1
259	යසෝදරාවත	19	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RG0015	1700-01-01	2023-11-18 22:15:12.697327+10:30	1
260	යසෝදරාවත	19	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RG0016	1700-01-01	2023-11-18 22:15:12.698275+10:30	1
261	රසවාහිනී ජම්බුදීපුප්පත්ති කථා	126	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	106	\N	\N	19	\N	RC0006	1978-01-01	2023-11-18 22:15:12.700336+10:30	1
262	රසවාහිනී ලංකාදීපුප්පත්ති කථා	213	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	106	\N	\N	19	\N	RC0007	1978-01-01	2023-11-18 22:15:12.701281+10:30	1
263	සිංහල දිපවංශය	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RC0008	1700-01-01	2023-11-18 22:15:12.702274+10:30	1
264	රසවාහිනී	306	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	112	\N	\N	19	\N	RG0017	1900-01-01	2023-11-18 22:15:12.704245+10:30	1
265	රසවාහිනි සන්නය වේදේහ හිමි	139	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	113	\N	\N	19	\N	RG0018	1898-01-01	2023-11-18 22:15:12.706335+10:30	1
266	රසවාහිනී සිංහල අනුවාදය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RG0019	1700-01-01	2023-11-18 22:15:12.707332+10:30	1
267	ලෝවැඩ සඟරාව	17	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	114	\N	\N	19	\N	RG0020	1700-01-01	2023-11-18 22:15:12.708335+10:30	1
268	ලෝවැඩ සඟරාව	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	114	\N	\N	19	\N	RG0021	1700-01-01	2023-11-18 22:15:12.709309+10:30	1
269	ලෝවැඩ සඟරාව	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	114	\N	\N	19	\N	RG0022	1700-01-01	2023-11-18 22:15:12.712341+10:30	1
270	ලෝවැඩ සඟරාව	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	114	\N	\N	19	\N	RG0023	1700-01-01	2023-11-18 22:15:12.713331+10:30	1
271	සද්ධර්ම රත්නාවලිය	1265	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	115	\N	\N	19	\N	RA0001	1961-01-01	2023-11-18 22:15:12.715334+10:30	1
272	සද්ධර්මාලංකාරය	805	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	116	\N	\N	19	\N	RA0002	1700-01-01	2023-11-18 22:15:12.716332+10:30	1
273	සැළලිහිණි සංදේශය	15	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	117	\N	\N	19	\N	RF0001	1700-01-01	2023-11-18 22:15:12.71728+10:30	1
274	සැළලිහිණි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RF0002	1700-01-01	2023-11-18 22:15:12.718336+10:30	1
275	සිහලවත්තුප්‍රකරන Pali	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RC0009	1700-01-01	2023-11-18 22:15:12.719332+10:30	1
276	සිරිත් මල්දම	23	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	118	\N	\N	19	\N	RG0024	1700-01-01	2023-11-18 22:15:12.721245+10:30	1
277	සහස්සවත්ථුප්‍රකරණ	234	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0003	1959-01-01	2023-11-18 22:15:12.723342+10:30	1
278	සිහලවත්තුප්‍රකරන Sinhala	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RC0010	1700-01-01	2023-11-18 22:15:12.724274+10:30	1
279	සිංහල ථූපවංස ගන්ථි පද වන්නණා	63	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	120	\N	\N	19	\N	RC0011	1923-01-01	2023-11-18 22:15:12.7253+10:30	1
280	පාලි ථුපවංශ ගැටපදය	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RC0012	1700-01-01	2023-11-18 22:15:12.727357+10:30	1
281	දුර්වාදී හර්ධ විධාරණ	365	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	121	\N	\N	19	\N	RA0004	1899-01-01	2023-11-18 22:15:12.729306+10:30	1
282	සුභාෂිතය	34	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	122	\N	\N	19	\N	RG0025	1700-01-01	2023-11-18 22:15:12.731306+10:30	1
283	ත්‍රිපිටක සූචිය	285	L1_C6	L1_C6_C13	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RI0001	1953-01-01	2023-11-18 22:15:12.734334+10:30	1
284	ත්‍රිපිටක සූචිය රන්පියවර	530	L1_C6	L1_C6_C13	L3_C1	\N		\N	2023-11-18	\N	\N	123	\N	\N	19	\N	RI0002	1700-01-01	2023-11-18 22:15:12.736331+10:30	1
285	බුද්ධ ජයන්ති ත්‍රිපිටක අර්ථ කෝෂය	-1	L1_C6	L1_C6_C13	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	RI0003	1700-01-01	2023-11-18 22:15:12.738333+10:30	1
286	බුද්ධ ජයන්ති ත්‍රිපිටක සූත්‍ර සුචිය	129	L1_C6	L1_C6_C13	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	RI0004	1700-01-01	2023-11-18 22:15:12.740332+10:30	1
287	සූත්‍රධර්ම නාමාවලිය	201	L1_C6	L1_C6_C13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RI0005	1700-01-01	2023-11-18 22:15:12.742335+10:30	1
288	අට්ටකතා සුචි - ප්‍රථම භාගය	342	L1_C6	L1_C6_C13	L3_C2	\N		\N	2023-11-18	\N	\N	124	\N	\N	19	\N	RI0006	1950-01-01	2023-11-18 22:15:12.744333+10:30	1
289	අට්ටකතා සුචි - දෙවන භාගය	228	L1_C6	L1_C6_C13	L3_C2	\N		\N	2023-11-18	\N	\N	124	\N	\N	16	\N	RI0007	1950-01-01	2023-11-18 22:15:12.746331+10:30	1
290	දීඝ නිකාය 1 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0001	1700-01-01	2023-11-18 22:15:12.748332+10:30	1
291	දීඝ නිකාය 2 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0002	1700-01-01	2023-11-18 22:15:12.750616+10:30	1
292	මජ්ඣිම නිකාය 1 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0003	1700-01-01	2023-11-18 22:15:12.753617+10:30	1
293	මජ්ඣිම නිකාය 2 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0004	1700-01-01	2023-11-18 22:15:12.756617+10:30	1
294	මජ්ඣිම නිකාය 3 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0005	1700-01-01	2023-11-18 22:15:12.759615+10:30	1
295	මජ්ඣිම නිකාය 4 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0006	1700-01-01	2023-11-18 22:15:12.761647+10:30	1
296	සංයුත්ත නිකාය 1 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0007	1700-01-01	2023-11-18 22:15:12.76362+10:30	1
297	සංයුත්ත නිකාය 2 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0008	1700-01-01	2023-11-18 22:15:12.765644+10:30	1
298	සංයුත්ත නිකාය 3 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0009	1700-01-01	2023-11-18 22:15:12.767618+10:30	1
299	අංගුත්තර නිකාය 1 -අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0010	1700-01-01	2023-11-18 22:15:12.770617+10:30	1
300	අංගුත්තර නිකාය 2 -අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0011	1700-01-01	2023-11-18 22:15:12.77262+10:30	1
301	ඛුද්දක පාඨ - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0012	1700-01-01	2023-11-18 22:15:12.775615+10:30	1
302	ධම්මපද අටුවාව 01 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0013	1700-01-01	2023-11-18 22:15:12.777615+10:30	1
303	ධම්මපද අටුවාව 02 අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0014	1700-01-01	2023-11-18 22:15:12.779615+10:30	1
304	උදානපාළි අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0015	1700-01-01	2023-11-18 22:15:12.782615+10:30	1
305	ඉතිවුත්තක අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0016	1700-01-01	2023-11-18 22:15:12.784656+10:30	1
306	සුත්ත නිපාත අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0017	1700-01-01	2023-11-18 22:15:12.786653+10:30	1
307	විමානවත්ථු අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0018	1700-01-01	2023-11-18 22:15:12.788621+10:30	1
308	පේතවත්ථු අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0019	1700-01-01	2023-11-18 22:15:12.791635+10:30	1
309	ථේරගාථා අටුවාව - පාළි 1	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0020	1700-01-01	2023-11-18 22:15:12.794647+10:30	1
310	ථේරගාථා අටුවාව - පාළි 2	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0021	1700-01-01	2023-11-18 22:15:12.796635+10:30	1
311	ථෙරිගාථා අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0022	1700-01-01	2023-11-18 22:15:12.798632+10:30	1
312	ආපදානපාලි අටුවාව - පාළි 01	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0023	1700-01-01	2023-11-18 22:15:12.800638+10:30	1
313	ආපදානපාලි අටුවාව - පාළි 02	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0024	1700-01-01	2023-11-18 22:15:12.802745+10:30	1
314	බුද්ධවංස අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0025	1700-01-01	2023-11-18 22:15:12.804626+10:30	1
315	චරියාපිටක අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0026	1700-01-01	2023-11-18 22:15:12.807614+10:30	1
316	ජාතක පාළි 1 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0027	1700-01-01	2023-11-18 22:15:12.810641+10:30	1
317	ජාතක පාළි 2 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0028	1700-01-01	2023-11-18 22:15:12.81296+10:30	1
318	ජාතක පාළි 3 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0029	1700-01-01	2023-11-18 22:15:12.815968+10:30	1
319	ජාතක පාළි 4 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0030	1700-01-01	2023-11-18 22:15:12.818467+10:30	1
320	ජාතක පාළි 5 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0031	1700-01-01	2023-11-18 22:15:12.822467+10:30	1
321	ජාතක පාළි 6 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0032	1700-01-01	2023-11-18 22:15:12.825478+10:30	1
322	ජාතක පාළි 7 - අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0033	1700-01-01	2023-11-18 22:15:12.827467+10:30	1
323	මහා නිද්දේස පාළි අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0034	1700-01-01	2023-11-18 22:15:12.830467+10:30	1
324	චූල නිද්දේස පාළි අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0035	1700-01-01	2023-11-18 22:15:12.832467+10:30	1
325	පටිසම්භිදාමග්ගප්පකරණ අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0036	1700-01-01	2023-11-18 22:15:12.835476+10:30	1
326	නෙත්තිප්පකරණ අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0037	1700-01-01	2023-11-18 22:15:12.839478+10:30	1
327	සුත්තසංගහ අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0038	1700-01-01	2023-11-18 22:15:12.841475+10:30	1
328	චතුභාණවාර අටුවාව - පාළි	-1	L1_C2	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	S0039	1700-01-01	2023-11-18 22:15:12.843473+10:30	1
329	අභිධර්මය - චතුර්ථ භාගය	188	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	37	\N	\N	16	\N	A0044	1953-01-01	2023-11-18 22:15:12.846481+10:30	1
330	පට්ඨානඋද්දේසදිපනිය	105	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	126	\N	\N	16	\N	A0045	1962-01-01	2023-11-18 22:15:12.849589+10:30	1
331	අභිධම්මාවතාරය	274	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	16	\N	A0046	1954-01-01	2023-11-18 22:15:12.852628+10:30	1
332	අභිධම්ම මාතෘකා ස්වරුපය	98	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	16	\N	A0047	1911-01-01	2023-11-18 22:15:12.855597+10:30	1
333	පරමාර්ථප්‍රදීප අභිධර්මර්ත සංග්‍රහ සන්නය	568	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	127	\N	\N	16	\N	A0048	1931-01-01	2023-11-18 22:15:12.85862+10:30	1
334	සද්ධර්ම මධුව	27	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	128	\N	\N	16	\N	A0049	1700-01-01	2023-11-18 22:15:12.861635+10:30	1
335	පංචප්පකරණ අටුවාව - පාළි 1	234	L1_C3	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	A0050	2010-01-01	2023-11-18 22:15:12.864596+10:30	1
336	පංචප්පකරණ අටුවාව - පාළි 2	198	L1_C3	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	A0051	2010-01-01	2023-11-18 22:15:12.866614+10:30	1
337	අත්ථසාලිනි ධම්මසංගණී අටුවාව - පාළි	395	L1_C3	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	A0052	1940-01-01	2023-11-18 22:15:12.8676+10:30	1
338	සම්මෝහවිනොදනි විභංග අටුවාව - පාළි	391	L1_C3	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	A0053	1932-01-01	2023-11-18 22:15:12.869596+10:30	1
339	ත්‍රිභාෂාරත්නාකරය	150	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0001	1927-01-01	2023-11-18 22:15:12.872599+10:30	1
340	පඨමපාඨාවලී	83	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0002	1958-01-01	2023-11-18 22:15:12.876601+10:30	1
341	පාලිහුරුව කියවීම පොත	388	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	129	\N	\N	19	\N	P0003	1700-01-01	2023-11-18 22:15:12.879598+10:30	1
342	පාලිහුරුව වන්දනා පොත	129	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	129	\N	\N	19	\N	P0004	1700-01-01	2023-11-18 22:15:12.883599+10:30	1
343	පාලිහුරුව පාඩම් පොත	174	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	129	\N	\N	19	\N	P0005	1700-01-01	2023-11-18 22:15:12.88563+10:30	1
344	කථාසල්ලාපසික්ඛා හෙවත් පාළි කථා පුහුණුව	186	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	130	\N	\N	19	\N	P0006	1700-01-01	2023-11-18 22:15:12.888629+10:30	1
345	පාලිභාෂාවතරණය 1	139	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0007	2007-01-01	2023-11-18 22:15:12.890616+10:30	1
346	පාලිභාෂාවතරණය 2	239	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0008	2007-01-01	2023-11-18 22:15:12.892615+10:30	1
347	පාලිභාෂාවතරණය 3	232	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0009	2007-01-01	2023-11-18 22:15:12.894632+10:30	1
348	පාලිභාෂාව	250	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	90	\N	\N	19	\N	P0010	1995-01-01	2023-11-18 22:15:12.897602+10:30	1
349	පාලිභාෂාවතරණයතුර	71	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	131	\N	\N	19	\N	P0011	1948-01-01	2023-11-18 22:15:12.898618+10:30	1
350	පාළිපාඨාවලී	142	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0012	2008-01-01	2023-11-18 22:15:12.900617+10:30	1
351	පාළිපාඨාවලී	136	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0013	2008-01-01	2023-11-18 22:15:12.901615+10:30	1
352	සරල පාලි ප්‍රවේශය	286	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	86	\N	\N	19	\N	P0014	1993-01-01	2023-11-18 22:15:12.903631+10:30	1
353	සරල පාලි ශික්ෂකය	252	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	86	\N	\N	19	\N	P0015	1972-01-01	2023-11-18 22:15:12.906597+10:30	1
354	අභිධානප්පදීපිකා සුචි	564	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0016	1893-01-01	2023-11-18 22:15:12.909615+10:30	1
355	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු	326	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	133	\N	\N	19	\N	P0017	1997-01-01	2023-11-18 22:15:12.911613+10:30	1
356	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 01 Edition	381	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0018	1883-01-01	2023-11-18 22:15:12.912622+10:30	1
357	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 02 Edition	384	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0018	1883-01-01	2023-11-18 22:15:12.91463+10:30	2
358	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 03 Edition	288	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0018	1900-01-01	2023-11-18 22:15:12.915618+10:30	3
359	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 05;01 Edition	283	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0018	1900-01-01	2023-11-18 22:15:12.917619+10:30	4
360	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 01; 02 Edition	284	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	132	\N	\N	19	\N	P0018	1900-01-01	2023-11-18 22:15:12.919621+10:30	5
361	කාත්‍යායන ෂඩාකාර වර්‍ණණනාව	72	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	134	\N	\N	19	\N	P0019	1928-01-01	2023-11-18 22:15:12.921599+10:30	1
362	සන්න සහිත කච්චායනසාරය	54	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	135	\N	\N	19	\N	P0020	1892-01-01	2023-11-18 22:15:12.923628+10:30	1
363	ආඛ්‍යාත නය දීපනී	137	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	136	\N	\N	19	\N	P0021	1936-01-01	2023-11-18 22:15:12.925621+10:30	1
364	සන්න සහිත කච්චායන ධාතු මඤ්ජූසාව	54	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	137	\N	\N	16	\N	P0022	1700-01-01	2023-11-18 22:15:12.928081+10:30	1
365	කච්චායන නාමික රූපමාලා ආඛ්‍යාත රූපමාලා	70	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	138	\N	\N	19	\N	P0023	1950-01-01	2023-11-18 22:15:12.930194+10:30	1
366	එකක්ඛර කෝසය	122	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	135	\N	\N	16	\N	P0024	1886-01-01	2023-11-18 22:15:12.931109+10:30	1
367	සන්න සහිත කච්චායන භේදය	105	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	139	\N	\N	19	\N	P0025	1912-01-01	2023-11-18 22:15:12.933194+10:30	1
368	පද සිඬි විග්‍රහ සහිත කාත්‍යායන සන්නය 01	178	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	140	\N	\N	19	\N	P0026	1911-01-01	2023-11-18 22:15:12.935306+10:30	1
369	පද සිඬි විග්‍රහ සහිත කාත්‍යායන සන්නය 02	169	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	140	\N	\N	19	\N	P0026	1911-01-01	2023-11-18 22:15:12.9372+10:30	2
370	කච්චායන සූත්‍ර පාඨය - සන්න සහිත 1St Edition	206	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	141	\N	\N	19	\N	P0027	1904-01-01	2023-11-18 22:15:12.9392+10:30	1
371	කච්චායන සූත්‍ර පාඨය - සන්න සහිත 2nd Edition	212	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	141	\N	\N	19	\N	P0027	1925-01-01	2023-11-18 22:15:12.9412+10:30	2
372	කච්චායනවණණනා	506	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	142	\N	\N	16	\N	P0028	1905-01-01	2023-11-18 22:15:12.943216+10:30	1
373	කච්චායනවණණනා	491	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	142	\N	\N	16	\N	P0028	1905-01-01	2023-11-18 22:15:12.945215+10:30	2
374	කච්චායනව්‍යාකරණං	50	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0029	1700-01-01	2023-11-18 22:15:12.946217+10:30	1
375	කච්චායනව්‍යාකරණං	148	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	143	\N	\N	19	\N	P0030	1886-01-01	2023-11-18 22:15:12.947199+10:30	1
376	කච්චායනව්‍යාකරණං	146	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	143	\N	\N	19	\N	P0031	1913-01-01	2023-11-18 22:15:12.949763+10:30	1
377	කච්චායන භෙදො	162	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	144	\N	\N	19	\N	P0032	1906-01-01	2023-11-18 22:15:12.951762+10:30	1
378	භාවාර්ථ කෞමුදී කාත්‍යායනභෙද වර්ණනාව	60	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	145	\N	\N	19	\N	P0033	1700-01-01	2023-11-18 22:15:12.952761+10:30	1
379	කච්චායන භෙදො	22	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0034	1886-01-01	2023-11-18 22:15:12.954761+10:30	1
380	කච්චායන විග්‍රහ ටීකා	112	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	146	\N	\N	19	\N	P0035	1700-01-01	2023-11-18 22:15:12.956762+10:30	1
381	කච්චායන සුත්ත නිද්දෙසො.	144	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0036	1700-01-01	2023-11-18 22:15:12.958767+10:30	1
382	කච්චායනවුත්ති	152	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	138	\N	\N	19	\N	P0037	1904-01-01	2023-11-18 22:15:12.96019+10:30	1
383	පාලි නාම වරනැගිල්ල සහ ආඛ්‍යාත වරනැගිල්ල	88	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0038	1873-01-01	2023-11-18 22:15:12.961217+10:30	1
384	නාමමාලා හෙවත් නාම වරනැගිල්ල	341	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	147	\N	\N	19	\N	P0039	1876-01-01	2023-11-18 22:15:12.963188+10:30	1
385	නාම මාලා	415	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	147	\N	\N	16	\N	P0039	1965-01-01	2023-11-18 22:15:12.964212+10:30	2
386	පදසාධන සන්නය	366	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	148	\N	\N	16	\N	P0040	1932-01-01	2023-11-18 22:15:12.966188+10:30	1
387	පදසාධනය	210	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	149	\N	\N	16	\N	P0041	1905-01-01	2023-11-18 22:15:12.968188+10:30	1
388	බුද්ධිප්පසාදිනි පදසාධනටීකා	138	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	150	\N	\N	19	\N	P0042	1908-01-01	2023-11-18 22:15:12.970188+10:30	1
389	කච්චායන ධාතු මඤ්ජූසාව	58	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	48	\N	\N	19	\N	P0043	1891-01-01	2023-11-18 22:15:12.972192+10:30	1
390	පාලි ව්‍යාකරණ සමාලෝචනා	116	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	151	\N	\N	19	\N	P0044	1953-01-01	2023-11-18 22:15:12.975707+10:30	1
391	පාලිගද්‍යපද්‍යරචනා	156	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0045	1962-01-01	2023-11-18 22:15:12.978703+10:30	1
392	පාලිවාක්‍යවිවේචනය	112	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0046	1933-01-01	2023-11-18 22:15:12.980703+10:30	1
393	පාලි පදාවතාරය	127	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	152	\N	\N	16	\N	P0047	1937-01-01	2023-11-18 22:15:12.982702+10:30	1
394	පාළි නාමපද මාලාව සහ ආඛ්‍යාත නාමපද මාලාව	84	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	153	\N	\N	16	\N	P0048	1948-01-01	2023-11-18 22:15:12.985702+10:30	1
395	ආඛ්‍යාත පදය	62	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	153	\N	\N	16	\N	P0049	1889-01-01	2023-11-18 22:15:12.987704+10:30	1
396	පාලිවාක්‍යරචනාව සහ පරිවර්තනපරිචය	136	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	P0050	1947-01-01	2023-11-18 22:15:12.990704+10:30	1
397	පාවචනොපායනී මාගධීපණ්ණිකා (ප්‍රථම - ද්විතීය භාගය)	252	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	154	\N	\N	19	\N	P0051	1912-01-01	2023-11-18 22:15:12.993702+10:30	1
398	බාලපපබොධනං	60	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	155	\N	\N	16	\N	P0052	1887-01-01	2023-11-18 22:15:12.995703+10:30	1
399	පාළිපාඨ මඤ්ජරී නවීන භාගය	68	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	156	\N	\N	19	\N	P0053	1980-01-01	2023-11-18 22:15:12.997703+10:30	1
400	ශ්‍රීඃ බාලාවබොධනය	426	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	157	\N	\N	16	\N	P0054	1924-01-01	2023-11-18 22:15:12.999703+10:30	1
401	බාලාවතාරො - සුබොධිකාය ටීකාය 1st Edition	350	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	153	\N	\N	16	\N	P0055	1892-01-01	2023-11-18 22:15:13.001702+10:30	1
402	බාලාවතාරො - සුබොධිකාය ටීකාය 2nd Edition	344	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	153	\N	\N	16	\N	P0055	1913-01-01	2023-11-18 22:15:13.004703+10:30	2
403	බාලාවතාර පුච්ඡාවිස්සජ්ජනං	422	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	158	\N	\N	19	\N	P0056	1915-01-01	2023-11-18 22:15:13.007708+10:30	1
1444	Bodhiwansha	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0025	1700-01-01	2023-11-18 22:15:14.792926+10:30	1
404	බාලාවතාර ටීකා	74	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	159	\N	\N	19	\N	P0057	1901-01-01	2023-11-18 22:15:13.010704+10:30	1
405	සන්න සහිත නාමපද මාලාව සහ ආඛ්‍යාතපද මාලාව	80	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0058	1907-01-01	2023-11-18 22:15:13.012703+10:30	1
406	බාලාවතාරො	86	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0059	1700-01-01	2023-11-18 22:15:13.013704+10:30	1
407	බාලාවතාරො	100	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	160	\N	\N	19	\N	P0060	1901-01-01	2023-11-18 22:15:13.016703+10:30	1
408	බාලාවතාරො	94	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	138	\N	\N	19	\N	P0061	1902-01-01	2023-11-18 22:15:13.018703+10:30	1
409	බාලාවතාර ව්‍යාඛ්‍යා - බාලාවබොධිනී - (2)	199	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0062	1700-01-01	2023-11-18 22:15:13.020703+10:30	1
410	සත්‍යාවතාරය	28	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	161	\N	\N	19	\N	P0063	1903-01-01	2023-11-18 22:15:13.022704+10:30	1
411	තත්ව දීපිකා නම් වූ බාලාවතාර වර්‍ණණනාව - 1st Edition	662	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	162	\N	\N	16	\N	P0064	1928-01-01	2023-11-18 22:15:13.025704+10:30	1
412	තත්ව දීපිකා නම් වූ බාලාවතාර වර්‍ණණනාව - 2nd Edition	634	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	162	\N	\N	19	\N	P0064	1934-01-01	2023-11-18 22:15:13.027704+10:30	2
413	බාලාවතාර සුගණඨිසාරය	116	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	163	\N	\N	19	\N	P0065	1905-01-01	2023-11-18 22:15:13.029703+10:30	1
414	බාලාවතාර ගඩලාදෙනි සන්නය	202	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0066	1917-01-01	2023-11-18 22:15:13.030703+10:30	1
415	ගඩලාදෙණි සන්නයයි	210	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	153	\N	\N	16	\N	P0067	1877-01-01	2023-11-18 22:15:13.032703+10:30	1
416	බාලාවතාර සුගම සන්නය	171	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0068	1700-01-01	2023-11-18 22:15:13.034707+10:30	1
417	බාලාවතාර සූත්‍ර නිර්‍දෙදශය 1st Edition	112	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	48	\N	\N	16	\N	P0069	1986-01-01	2023-11-18 22:15:13.036707+10:30	1
418	බාලාවතාර සූත්‍ර නිර්‍දෙදශය 2nd Edition	94	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	48	\N	\N	16	\N	P0069	1915-01-01	2023-11-18 22:15:13.038708+10:30	2
419	බාලාවතාර බලනසන්නය	206	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	164	\N	\N	16	\N	P0070	1899-01-01	2023-11-18 22:15:13.041707+10:30	1
420	ඔකොඳපොල සන්නය හෙවත් බාලාවතාර ලියන සන්නය	150	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	48	\N	\N	16	\N	P0071	1888-01-01	2023-11-18 22:15:13.042707+10:30	1
421	ඔකඳපොල සන්නය නමින් ප්‍රසිද්ධ බාලාවතාර ලියන සන්නය	144	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	165	\N	\N	16	\N	P0072	1927-01-01	2023-11-18 22:15:13.045708+10:30	1
422	බාලාවතාර සුත්‍ර වර්ණනාව	468	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	166	\N	\N	19	\N	P0073	1914-01-01	2023-11-18 22:15:13.047708+10:30	1
423	මහාරූපසිද්ධි	326	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	138	\N	\N	19	\N	P0074	1915-01-01	2023-11-18 22:15:13.049935+10:30	1
424	මහාරූපසිද්ධි - සන්දේහවිඝාතනී සන්නය	686	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	167	\N	\N	19	\N	P0075	1936-01-01	2023-11-18 22:15:13.050936+10:30	1
425	මහා රුපසිද්ධි හා මහා රුප සිද්ධි ටිකාව	464	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	168	\N	\N	19	\N	P0076	1964-01-01	2023-11-18 22:15:13.052935+10:30	1
426	මහාරූපසිද්ධි ටීකා	138	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	169	\N	\N	16	\N	P0077	1903-01-01	2023-11-18 22:15:13.054936+10:30	1
427	මහාරූපසිද්ධි සන්නය 1st Edition	460	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	170	\N	\N	19	\N	P0078	1891-01-01	2023-11-18 22:15:13.057938+10:30	1
428	මහාරූපසිද්ධි සන්නය 2nd Edition	460	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	167	\N	\N	16	\N	P0078	1926-01-01	2023-11-18 22:15:13.059973+10:30	2
429	මහාරූපසිද්ධි සන්නය	504	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	8	\N	\N	16	\N	P0079	1927-01-01	2023-11-18 22:15:13.061935+10:30	1
430	මහාසදදනීතිපපකරණං	920	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	171	\N	\N	16	\N	P0080	1909-01-01	2023-11-18 22:15:13.063936+10:30	1
431	රූපසිද්ධි ප්‍රමොදිනී	374	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	172	\N	\N	19	\N	P0081	1954-01-01	2023-11-18 22:15:13.064936+10:30	1
432	මුඛමත්තදීපනී	664	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	155	\N	\N	11	\N	P0082	1910-01-01	2023-11-18 22:15:13.066935+10:30	1
433	මුඛමත්තදීපනී (සන්න සහිත)	527	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0083	1700-01-01	2023-11-18 22:15:13.067935+10:30	1
434	මොග්ගල්ලාන පංචිකා	498	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	173	\N	\N	19	\N	P0084	1931-01-01	2023-11-18 22:15:13.069935+10:30	1
435	මොග්ගල්ලාන පංචිකා ප්‍රදීපය	222	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	174	\N	\N	19	\N	P0085	1896-01-01	2023-11-18 22:15:13.071938+10:30	1
436	මොග්ගල්ලානව්‍යාකරණ විරිතසන්‍යය	448	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	175	\N	\N	16	\N	P0086	1927-01-01	2023-11-18 22:15:13.074936+10:30	1
437	මොග්ගල්ලානණ්වාදිවුත්ති	114	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	175	\N	\N	16	\N	P0087	1929-01-01	2023-11-18 22:15:13.076937+10:30	1
438	මොග්ගල්ලායනව්‍යාකරණං	102	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	48	\N	\N	19	\N	P0088	1890-01-01	2023-11-18 22:15:13.078936+10:30	1
439	සුබෝධාලංකාරය	212	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	176	\N	\N	19	\N	P0089	1910-01-01	2023-11-18 22:15:13.080936+10:30	1
440	කචචායන ඡබබිධ සුතතවණණනා	102	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	177	\N	\N	16	\N	P0090	1928-01-01	2023-11-18 22:15:13.082936+10:30	1
441	ව්‍යාකරණසදදසින්‍ධු ප්‍රථම- ද්විතිය - තෘතිය භාගය - පාලි පාරිභාෂිකශබ්දකෝෂය	708	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	178	\N	\N	19	\N	P0091	1929-01-01	2023-11-18 22:15:13.084941+10:30	1
442	වාචකොපදේශය	78	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	16	\N	P0092	1902-01-01	2023-11-18 22:15:13.086936+10:30	1
443	විභත්තිකථා	42	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	180	\N	\N	19	\N	P0093	1905-01-01	2023-11-18 22:15:13.088936+10:30	1
444	සන්න සහිත ශබ්ධසාරාත්‍ථර්‍ ජාලිනිය	140	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	181	\N	\N	19	\N	P0094	1900-01-01	2023-11-18 22:15:13.090938+10:30	1
445	සන්න සහිත ශබ්ධසාරාත්‍ථර්‍ ජාලිනිය	182	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	182	\N	\N	19	\N	P0095	1902-01-01	2023-11-18 22:15:13.092938+10:30	1
446	සන්ධිදීපනී 1st Edition	102	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	183	\N	\N	19	\N	P0096	1886-01-01	2023-11-18 22:15:13.094936+10:30	1
447	සන්ධිදීපනී 2nd Edition	104	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	183	\N	\N	19	\N	P0096	1921-01-01	2023-11-18 22:15:13.096936+10:30	2
448	සුබෝධාලංකාරො	30	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	184	\N	\N	19	\N	P0097	1897-01-01	2023-11-18 22:15:13.097936+10:30	1
449	සන්න සහිත සම්බන්ධචින්තා	112	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	185	\N	\N	19	\N	P0098	1891-01-01	2023-11-18 22:15:13.100127+10:30	1
450	සුධීරමුඛමණ්ඩනං - පාලිසමාසචක්කං	47	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	186	\N	\N	19	\N	P0099	1910-01-01	2023-11-18 22:15:13.101133+10:30	1
451	සුබෝධාලංකාරය - පුරාතන සන්න සහිත	233	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	187	\N	\N	19	\N	P0100	1910-01-01	2023-11-18 22:15:13.102083+10:30	1
452	සම්බන්ධ චින්තා	30	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	185	\N	\N	19	\N	P0101	1891-01-01	2023-11-18 22:15:13.104134+10:30	1
453	01 පාරාජිකා පාළි - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0001	1700-01-01	2023-11-18 22:15:13.106132+10:30	1
454	02 පාචිත්තිය පාළි 1 භික්ෂු විභංගය - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0002	1700-01-01	2023-11-18 22:15:13.108128+10:30	1
455	03 පාචිත්තිය පාළි 2 භික්ෂුණි විභංගය - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0003	1700-01-01	2023-11-18 22:15:13.109083+10:30	1
456	04 මහාවග්ග පාළි 1 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0004	1700-01-01	2023-11-18 22:15:13.111134+10:30	1
457	05 මහාවග්ග පාළි 2 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0005	1700-01-01	2023-11-18 22:15:13.11214+10:30	1
458	06 චුල්ලවග්ග පාළි 1 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0006	1700-01-01	2023-11-18 22:15:13.113087+10:30	1
459	07 චුල්ලවග්ග පාළි 2 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0007	1700-01-01	2023-11-18 22:15:13.115136+10:30	1
460	08 පරිවාර පාළි 1 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0008	1700-01-01	2023-11-18 22:15:13.116127+10:30	1
461	09 පරිවාර පාළි 2 - විනය	-1	L1_C1	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	V0009	1700-01-01	2023-11-18 22:15:13.118128+10:30	1
462	10 දීඝ නිකාය 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0040	1700-01-01	2023-11-18 22:15:13.119134+10:30	1
463	11 දීඝ නිකාය 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0041	1700-01-01	2023-11-18 22:15:13.121079+10:30	1
464	12 දීඝ නිකාය 3 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0042	1700-01-01	2023-11-18 22:15:13.123113+10:30	1
465	13 මජ්ඣිම නිකාය 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0043	1700-01-01	2023-11-18 22:15:13.126081+10:30	1
466	14 මජ්ඣිම නිකාය 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0044	1700-01-01	2023-11-18 22:15:13.128044+10:30	1
467	15 මජ්ඣිම නිකාය 3 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0045	1700-01-01	2023-11-18 22:15:13.12906+10:30	1
468	16 සංයුත්ත නිකාය 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0046	1700-01-01	2023-11-18 22:15:13.130043+10:30	1
469	17 සංයුත්ත නිකාය 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0047	1700-01-01	2023-11-18 22:15:13.132069+10:30	1
470	18 සංයුත්ත නිකාය 3 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0048	1700-01-01	2023-11-18 22:15:13.133063+10:30	1
471	19 සංයුත්ත නිකාය 4 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0049	1700-01-01	2023-11-18 22:15:13.134078+10:30	1
472	20 සංයුත්ත නිකාය 5-1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0050	1700-01-01	2023-11-18 22:15:13.136107+10:30	1
473	21 සංයුත්ත නිකාය 5-2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0051	1700-01-01	2023-11-18 22:15:13.1371+10:30	1
474	22 අංගුත්තර නිකාය 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0052	1700-01-01	2023-11-18 22:15:13.140075+10:30	1
475	23 අංගුත්තර නිකාය 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0053	1700-01-01	2023-11-18 22:15:13.142077+10:30	1
476	24 අංගුත්තර නිකාය 3 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0054	1700-01-01	2023-11-18 22:15:13.143108+10:30	1
477	25 අංගුත්තර නිකාය 4 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0055	1700-01-01	2023-11-18 22:15:13.1451+10:30	1
478	26 අංගුත්තර නිකාය 5 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0056	1700-01-01	2023-11-18 22:15:13.146077+10:30	1
479	27 අංගුත්තර නිකාය 6 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0057	1700-01-01	2023-11-18 22:15:13.147076+10:30	1
480	28 ඛුද්දක පාඨ - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0058	1700-01-01	2023-11-18 22:15:13.148589+10:30	1
481	29 සුත්ත නිපාතය - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0059	1700-01-01	2023-11-18 22:15:13.150617+10:30	1
482	30 විමානවත්ථු පාළි පේතවත්ථු පාළි - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0060	1700-01-01	2023-11-18 22:15:13.152631+10:30	1
483	31 ථෙරගාථා පාළි ථෙරීගාථා පාළි - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0061-62	1700-01-01	2023-11-18 22:15:13.154603+10:30	1
484	32 ජාතක පාළි 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0063	1700-01-01	2023-11-18 22:15:13.157626+10:30	1
485	33 ජාතක පාළි 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0064	1700-01-01	2023-11-18 22:15:13.159617+10:30	1
486	34 ජාතක පාළි 3 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0065	1700-01-01	2023-11-18 22:15:13.161614+10:30	1
487	35 මහා නිද්දේස පාළි - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0066	1700-01-01	2023-11-18 22:15:13.162617+10:30	1
488	36 චූල නිද්දේස පාළි - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0067	1700-01-01	2023-11-18 22:15:13.164615+10:30	1
489	37 පටිසම්භිදාමග්ගප්පකරණ 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0068	1700-01-01	2023-11-18 22:15:13.165615+10:30	1
490	38 පටිසම්භිදාමග්ගප්පකරණ 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0069	1700-01-01	2023-11-18 22:15:13.16762+10:30	1
491	39 අපදාන පාලි - භික්ඛූ අපදාන 1 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0070	1700-01-01	2023-11-18 22:15:13.168615+10:30	1
492	40 අපදාන පාලි - භික්ඛූ අපදාන 2 - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0071	1700-01-01	2023-11-18 22:15:13.170618+10:30	1
493	41 අපදාන පාලි - භික්ඛූනී අපදාන - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0072	1700-01-01	2023-11-18 22:15:13.173619+10:30	1
494	42 බුද්ධවංස පාළි චරියාපිටක පාළි - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0073	1700-01-01	2023-11-18 22:15:13.174618+10:30	1
495	43 නෙත්තිප්පකරණ - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0074	1700-01-01	2023-11-18 22:15:13.176616+10:30	1
496	44 පෙටකොපදෙසො - සූත්‍ර	-1	L1_C2	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	S0075	1700-01-01	2023-11-18 22:15:13.178614+10:30	1
497	45 ධම්මසංගණී ප්‍රකරණය - අභිධම්ම	613	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0054	1700-01-01	2023-11-18 22:15:13.180079+10:30	1
498	46 විභංග ප්‍රකරණය 1 - අභිධම්ම	429	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0055	1700-01-01	2023-11-18 22:15:13.181079+10:30	1
499	47 විභංග ප්‍රකරණය 2 - අභිධම්ම	353	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0056	1700-01-01	2023-11-18 22:15:13.182079+10:30	1
500	48 කථාවත්ථු ප්‍රකරණය 1 - අභිධම්ම	619	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0057	1700-01-01	2023-11-18 22:15:13.184079+10:30	1
501	49 කථාවත්ථු ප්‍රකරණය 2 - අභිධම්ම	587	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0058	1700-01-01	2023-11-18 22:15:13.186079+10:30	1
502	50 කථාවත්ථු ප්‍රකරණය 3 - අභිධම්ම	547	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0059	1700-01-01	2023-11-18 22:15:13.18808+10:30	1
503	51 ධාතුකථා පුග්ගල පඤ්ඤත්ති ප්‍රකරණ - අභිධම්ම	440	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0060	1700-01-01	2023-11-18 22:15:13.191079+10:30	1
504	52 යමක ප්‍රකරණ 1 - අභිධම්ම	579	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0061	1700-01-01	2023-11-18 22:15:13.193078+10:30	1
505	53 යමක ප්‍රකරණ 2-1 - අභිධම්ම	818	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0062	1700-01-01	2023-11-18 22:15:13.194078+10:30	1
506	54 යමක ප්‍රකරණ 2-2 - අභිධම්ම	552	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0063	1700-01-01	2023-11-18 22:15:13.196079+10:30	1
507	55 පට්ඨාන ප්‍රකරණ 1 - අභිධම්ම	593	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0064	1700-01-01	2023-11-18 22:15:13.197078+10:30	1
508	56 පට්ඨාන ප්‍රකරණ 2 - අභිධම්ම	623	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0065	1700-01-01	2023-11-18 22:15:13.199078+10:30	1
509	57 පට්ඨාන ප්‍රකරණ 3 - අභිධම්ම	616	L1_C3	L2_A8	L3_C1	\N		\N	2023-11-18	\N	\N	188	\N	\N	19	\N	A0066	1700-01-01	2023-11-18 22:15:13.201079+10:30	1
510	ආනාපානසති Deshanawa	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0001	1700-01-01	2023-11-18 22:15:13.202078+10:30	1
511	ආනාපානසති භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	86	\N	\N	19	\N	RJ0002	1700-01-01	2023-11-18 22:15:13.204079+10:30	1
512	ආනාපානසති භාවනාව අර්ථ විවරණ සහිත	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	190	\N	\N	19	\N	RJ0003	1700-01-01	2023-11-18 22:15:13.207078+10:30	1
513	කමටහන් දේශනා	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	191	\N	\N	19	\N	RJ0004	1700-01-01	2023-11-18 22:15:13.209079+10:30	1
514	කර්මස්ථාන ප්‍රදීපය	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	192	\N	\N	19	\N	RJ0005	1700-01-01	2023-11-18 22:15:13.211078+10:30	1
515	කර්මස්ථාන විභාවිනි	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	193	\N	\N	19	\N	RJ0006	1700-01-01	2023-11-18 22:15:13.212078+10:30	1
516	පා අවුක් භාවනා මාර්ගය (සමථ - විපස්සනා)	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	192	\N	\N	19	\N	RJ0007	1700-01-01	2023-11-18 22:15:13.214078+10:30	1
517	බුද්ධානුස්සති සහ චතුවිශාරද භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0008	1700-01-01	2023-11-18 22:15:13.215078+10:30	1
518	බෞද්ධ භාවනා	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	194	\N	\N	19	\N	RJ0009	1700-01-01	2023-11-18 22:15:13.21717+10:30	1
519	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 1-2	170	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	195	\N	\N	19	\N	RJ0010	1700-01-01	2023-11-18 22:15:13.219296+10:30	1
520	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 3-4	289	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	195	\N	\N	19	\N	RJ0011	1700-01-01	2023-11-18 22:15:13.221189+10:30	1
521	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 5-6	216	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	195	\N	\N	19	\N	RJ0012	1700-01-01	2023-11-18 22:15:13.223199+10:30	1
522	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 7-8	399	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	195	\N	\N	19	\N	RJ0013	1700-01-01	2023-11-18 22:15:13.225183+10:30	1
523	මෛත්‍රී අශුභ මරණසති භාවනා	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0014	1700-01-01	2023-11-18 22:15:13.227203+10:30	1
524	මොක්පුර රන්දොර all books	1154	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	195	\N	\N	19	\N	RJ0015	2000-01-01	2023-11-18 22:15:13.229199+10:30	1
525	විදර්ශනා ගුරු පොත	213	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	194	\N	\N	19	\N	RJ0016	2007-01-01	2023-11-18 22:15:13.230199+10:30	1
526	විපස්සනා භාවනා ක්‍රමය	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	196	\N	\N	19	\N	RJ0017	1700-01-01	2023-11-18 22:15:13.232187+10:30	1
527	විපස්සනාව පෙළගැස්ම	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	197	\N	\N	19	\N	RJ0018	1700-01-01	2023-11-18 22:15:13.234205+10:30	1
528	විශුද්ධි භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	37	\N	\N	19	\N	RJ0019	1700-01-01	2023-11-18 22:15:13.236203+10:30	1
529	ශමථ විදර්ශනා භාවනා මාර්ගය	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	198	\N	\N	19	\N	RJ0020	1700-01-01	2023-11-18 22:15:13.238194+10:30	1
530	සතිපට්ඨාන භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0021	1700-01-01	2023-11-18 22:15:13.240203+10:30	1
531	සම සතළිස් කර්මස්ථාන භාවනා	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0022	1700-01-01	2023-11-18 22:15:13.242213+10:30	1
532	බුදුගුණ භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0023	1700-01-01	2023-11-18 22:15:13.244203+10:30	1
533	සතිපට්ඨාන විපස්සනා භාවනා	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	37	\N	\N	19	\N	RJ0024	1700-01-01	2023-11-18 22:15:13.245189+10:30	1
534	අභිධර්ම භාවනා 1	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	189	\N	\N	19	\N	RJ0025	1700-01-01	2023-11-18 22:15:13.247211+10:30	1
535	විමුත්ති මග්ගො	205	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	199	\N	\N	19	\N	B0001	1700-01-01	2023-11-18 22:15:13.248761+10:30	1
536	විශුද්ධි මාර්ග මහා සන්නය	1847	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	200	\N	\N	19	\N	B0002	1949-01-01	2023-11-18 22:15:13.250788+10:30	1
537	විශුද්ධි මාර්ග මහා සන්නය BBC	1097	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	201	\N	\N	19	\N	B0003	2004-01-01	2023-11-18 22:15:13.252797+10:30	1
538	විශුද්ධි මාර්ගය	1110	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	201	\N	\N	19	\N	B0004	2004-01-01	2023-11-18 22:15:13.253793+10:30	1
539	විශුද්ධි මාර්ගය	1216	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	12	\N	\N	19	\N	B0005	1960-01-01	2023-11-18 22:15:13.255768+10:30	1
540	Path of Purification	857	L1_C4	L1_C4_C1	L3_C4	\N		\N	2023-11-18	\N	\N	202	\N	\N	16	\N	B0006	1957-01-01	2023-11-18 22:15:13.2588+10:30	1
541	විශුද්ධි මාර්ගය - ප්‍රථම භාගය	251	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	203	\N	\N	11	\N	B0007	1847-01-01	2023-11-18 22:15:13.259794+10:30	1
542	විශුද්ධි මාර්ගය - දෙවන භාගය	287	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	203	\N	\N	11	\N	B0008	1847-01-01	2023-11-18 22:15:13.2618+10:30	1
543	විසුද්ධි මග්ග සන්න	-1	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	204	\N	\N	12	\N	B0009	1949-01-01	2023-11-18 22:15:13.263799+10:30	1
544	පාරාජිකා පාලි	264	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	205	\N	\N	12	\N	V0010	1925-01-01	2023-11-18 22:15:13.2658+10:30	1
545	පරිවාර පාළි	328	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	206	\N	\N	12	\N	V0011	1905-01-01	2023-11-18 22:15:13.267799+10:30	1
546	මගවග විනය පොත් වහන්සේ	450	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	207	\N	\N	12	\N	V0012	1933-01-01	2023-11-18 22:15:13.269548+10:30	1
547	මහාවග්ග පාළි සන්නය	324	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	208	\N	\N	12	\N	V0013	1928-01-01	2023-11-18 22:15:13.271551+10:30	1
548	පාචිත්තිය පාලි	360	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	205	\N	\N	12	\N	V0014	1925-01-01	2023-11-18 22:15:13.273557+10:30	1
549	සාරත්‍ථදීපනි නාම සමන්තපාසාදිකාය විනයඨකථාය ටීකා	920	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	209	\N	\N	12	\N	V0015	1933-01-01	2023-11-18 22:15:13.275539+10:30	1
550	විනය මහානිස්සය (01, 02)	254	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	210	\N	\N	12	\N	V0016	1933-01-01	2023-11-18 22:15:13.276527+10:30	1
551	විනයාර්‍ථදිපිකා නම් විනය විනිශ්චය සන්නය	64	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	211	\N	\N	12	\N	V0017	1918-01-01	2023-11-18 22:15:13.278541+10:30	1
552	විනය සංග්‍රහය	146	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	212	\N	\N	12	\N	V0018	1946-01-01	2023-11-18 22:15:13.279522+10:30	1
553	පාලිමුත්තක විනයවිනිච්ඡය සංගහ ටීකා	162	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	213	\N	\N	12	\N	V0019	1908-01-01	2023-11-18 22:15:13.28154+10:30	1
554	අධිකරණ විනිශ්චය	54	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	214	\N	\N	19	\N	V0020	1938-01-01	2023-11-18 22:15:13.283542+10:30	1
555	විනයවිනිච්ඡය හා උත්තරවිනිච්ඡය	302	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	215	\N	\N	12	\N	V0021	1952-01-01	2023-11-18 22:15:13.285537+10:30	1
556	කංඛාවිතරණී පිටපොත	164	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	216	\N	\N	12	\N	V0022	1936-01-01	2023-11-18 22:15:13.28654+10:30	1
557	කුදුසික හා පුරාතන විස්තර සන්නය	222	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	217	\N	\N	19	\N	V0023	1928-01-01	2023-11-18 22:15:13.288524+10:30	1
558	සන්න සහිත කුදුසික	216	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	218	\N	\N	14	\N	V0024	1928-01-01	2023-11-18 22:15:13.290523+10:30	1
559	ගරුභාණ්ඩ විනිච්ඡය	54	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	216	\N	\N	19	\N	V0025	1939-01-01	2023-11-18 22:15:13.292538+10:30	1
560	රත්නාර්ථසූදනිය ප්‍රාතිමෝක්ෂ වර්ණනාව	414	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	219	\N	\N	19	\N	V0026	1944-01-01	2023-11-18 22:15:13.293558+10:30	1
561	පාරුපනනය - සීලරතන සරණජෝතිතිස්ස හිමි	108	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	220	\N	\N	19	\N	V0027	1948-01-01	2023-11-18 22:15:13.29554+10:30	1
562	පාරුපනපාලි	63	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	221	\N	\N	19	\N	V0028	1939-01-01	2023-11-18 22:15:13.297538+10:30	1
563	පාලිමුත්තකවිනයවිනිච්ඡය	434	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	222	\N	\N	19	\N	V0029	1931-01-01	2023-11-18 22:15:13.298983+10:30	1
564	පාලිමුත්තකවිනයවිනිච්ඡය	836	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	223	\N	\N	14	\N	V0030	2000-01-01	2023-11-18 22:15:13.300998+10:30	1
565	බද්ධ සිමා හා සංඝදාන විනිශ්චය	80	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	224	\N	\N	14	\N	V0031	1901-01-01	2023-11-18 22:15:13.302+10:30	1
566	කුදුසික විවරණය	219	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	225	\N	\N	14	\N	V0032	1953-01-01	2023-11-18 22:15:13.303983+10:30	1
567	හෙරණ සික හා හෙරණ සික විනිස	97	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	226	\N	\N	14	\N	V0033	1985-01-01	2023-11-18 22:15:13.305997+10:30	1
568	අධිකරණ විනිශ්චය	91	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	227	\N	\N	14	\N	V0034	1954-01-01	2023-11-18 22:15:13.307981+10:30	1
569	පාතිමොක්ක විවරණය	459	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	228	\N	\N	14	\N	V0035	2009-01-01	2023-11-18 22:15:13.309984+10:30	1
570	භික්ඛුපාතිමොක්ඛ සමෙතා ගණඨිදීපනී	124	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	229	\N	\N	19	\N	V0036	1700-01-01	2023-11-18 22:15:13.312006+10:30	1
571	භික්‍ෂු භික්‍ෂුණි උභයප්‍රාතිමොක්‍ෂය.	150	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	230	\N	\N	19	\N	V0037	1927-01-01	2023-11-18 22:15:13.314003+10:30	1
572	භික්ෂු ප්‍රාතිමෝක්ෂය සහ විනය කරුණු	289	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	231	\N	\N	19	\N	V0038	1700-01-01	2023-11-18 22:15:13.315935+10:30	1
573	භික්ෂූන් වහන්සේට මුදල් කැපද	16	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	232	\N	\N	19	\N	V0039	1700-01-01	2023-11-18 22:15:13.317935+10:30	1
574	මහවග ගැටපදය	92	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	233	\N	\N	19	\N	V0040	1942-01-01	2023-11-18 22:15:13.318935+10:30	1
575	වත්තඛන්ධකය හෙවත් වත් සමුහය හෙවත් වත් සමුහය	92	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	234	\N	\N	19	\N	V0041	1905-01-01	2023-11-18 22:15:13.320934+10:30	1
576	අධිකරණ විභාග සංගහෝ	44	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	235	\N	\N	19	\N	V0042	1913-01-01	2023-11-18 22:15:13.322934+10:30	1
577	විසුන්ගාම සිමා විනිශ්චය	76	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	236	\N	\N	19	\N	V0043	1926-01-01	2023-11-18 22:15:13.324935+10:30	1
578	පුරාන පරිවාර ගංථිපදය	52	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	237	\N	\N	19	\N	V0044	1914-01-01	2023-11-18 22:15:13.326935+10:30	1
579	ව්‍යාඛ්‍ය සහිත සිමා ලක්ඛණදිපනිය	92	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	238	\N	\N	19	\N	V0045	1700-01-01	2023-11-18 22:15:13.328934+10:30	1
580	මුලුසික වර්ණනාව	146	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	239	\N	\N	19	\N	V0046	1935-01-01	2023-11-18 22:15:13.330939+10:30	1
581	විනය කෝෂය - 1, 2 කාණ්ඩය	484	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	240	\N	\N	19	\N	V0047	1955-01-01	2023-11-18 22:15:13.331944+10:30	1
582	පාරාජිකා පාලි ගැටපදය	78	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	241	\N	\N	19	\N	V0048	1942-01-01	2023-11-18 22:15:13.332945+10:30	1
583	සංක්ෂිප්ත භික්‍ෂු ශිලය	146	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	34	\N	\N	16	\N	V0049	1977-01-01	2023-11-18 22:15:13.334949+10:30	1
584	සුජනප්පමොදිනි - විනය පාළි ගාථා අර්ථ ව්‍යාඛ්‍යාව	222	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	242	\N	\N	19	\N	V0050	1929-01-01	2023-11-18 22:15:13.335949+10:30	1
585	විනය පිටකය	70	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	243	\N	\N	19	\N	V0051	1975-01-01	2023-11-18 22:15:13.33895+10:30	1
586	විනය මහා සන්‍යය	622	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	244	\N	\N	19	\N	V0052	1973-01-01	2023-11-18 22:15:13.34195+10:30	1
587	විනයවිනිච්ඡය	358	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	245	\N	\N	19	\N	V0053	1914-01-01	2023-11-18 22:15:13.34395+10:30	1
588	විනිශ්චයාර්ත්ථදීපනී විනයවිනිශ්චය ව්යාඛ්යානය	994	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	246	\N	\N	16	\N	V0054	1956-01-01	2023-11-18 22:15:13.34552+10:30	1
589	කුදුසික	178	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	247	\N	\N	19	\N	V0055	1894-01-01	2023-11-18 22:15:13.347506+10:30	1
590	ශිල නිර්දේශය	306	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	12	\N	V0056	1911-01-01	2023-11-18 22:15:13.3491+10:30	1
591	සංවර සීල දීපනිය	112	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	249	\N	\N	19	\N	V0057	1938-01-01	2023-11-18 22:15:13.350196+10:30	1
592	සන්දේහ ඝාතිනී - කංඛාවිතරණී සන්නය	216	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	250	\N	\N	19	\N	V0058	1700-01-01	2023-11-18 22:15:13.351198+10:30	1
593	සාරාර්‍ථ මඤ්ජරි නම් වූ විනය ගැටපදය	242	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	251	\N	\N	16	\N	V0059	1946-01-01	2023-11-18 22:15:13.3532+10:30	1
594	සාමණේර බණ දහම් පොත	60	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	252	\N	\N	19	\N	V0060	1987-01-01	2023-11-18 22:15:13.355149+10:30	1
595	සමන්තපාසාදිකාය නාම විනයඨකථාය	874	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	253	\N	\N	19	\N	V0061	1933-01-01	2023-11-18 22:15:13.357203+10:30	1
596	අභිධර්ම මාර්ගය	356	L1_C3	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	A0067	1700-01-01	2023-11-18 22:15:13.358149+10:30	1
597	අභිධර්මයේ මූලික කරුණු	213	L1_C3	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	A0068	1700-01-01	2023-11-18 22:15:13.360138+10:30	1
598	අභිධර්මාර්ථ සංග්‍රහය	153	L1_C3	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	A0069	1700-01-01	2023-11-18 22:15:13.362113+10:30	1
599	සීමානයදප්පනය	288	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	255	\N	\N	11	\N	V0062	1885-01-01	2023-11-18 22:15:13.364108+10:30	1
600	උපසම්පදා ශීලය	-1	L1_C1	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	V0063	1700-01-01	2023-11-18 22:15:13.366114+10:30	1
601	උභය ප්‍රාතිමෝක්‍ෂය	-1	L1_C1	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	V0064	1700-01-01	2023-11-18 22:15:13.36814+10:30	1
602	කෙලෙස් එක්දහස් පන්සියය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0001	1700-01-01	2023-11-18 22:15:13.369132+10:30	1
603	චත්තාළීසාකාර මහා විපස්සනා භාවනාව	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0002	1700-01-01	2023-11-18 22:15:13.371116+10:30	1
604	චතුරාර්‍ය්‍ය සත්‍යය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0003	1700-01-01	2023-11-18 22:15:13.374113+10:30	1
605	ධර්‍ම විනිශ්චය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0004	1700-01-01	2023-11-18 22:15:13.376114+10:30	1
606	නිර්වාණ විනිශ්චය හා පුනුරුප්පත්ති ක්‍රමය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0005	1700-01-01	2023-11-18 22:15:13.377116+10:30	1
607	පට්ඨාන මහා පකරණ සන්නය 01	402	L1_C3	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	A0070	1700-01-01	2023-11-18 22:15:13.379118+10:30	1
608	පටිච්චසමුප්පාද විවරණය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0006	1700-01-01	2023-11-18 22:15:13.381222+10:30	1
609	පාරමිතා ප්‍ර‍කරණය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0007	1700-01-01	2023-11-18 22:15:13.383155+10:30	1
610	පුණ්‍යෝපදේශය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0008	1700-01-01	2023-11-18 22:15:13.384154+10:30	1
611	පොහොය දිනය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0009	1700-01-01	2023-11-18 22:15:13.386134+10:30	1
612	බුද්ධ නීති සංග්‍ර‍හය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0010	1700-01-01	2023-11-18 22:15:13.39111+10:30	1
613	බෝධි පූජාව	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0011	1700-01-01	2023-11-18 22:15:13.393133+10:30	1
614	බෝධිපාක්ෂික ධර්ම විස්තරය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0012	1700-01-01	2023-11-18 22:15:13.395113+10:30	1
615	බෞද්ධයාගේ අත්පොත	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0013	1700-01-01	2023-11-18 22:15:13.397129+10:30	1
616	මංගල ධර්ම විස්තරය - ගොඩිගමුවේ සෝරත හිමි	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0014	1700-01-01	2023-11-18 22:15:13.398132+10:30	1
617	වඤ්චක ධර්ම හා චිත්තෝපක්ලේශ ධර්ම	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0015	1700-01-01	2023-11-18 22:15:13.400128+10:30	1
618	විදර්ශනා භාවනා ක්‍රමය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0016	1700-01-01	2023-11-18 22:15:13.402125+10:30	1
619	විනය කර්ම පොත	-1	L1_C1	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	V0065	1700-01-01	2023-11-18 22:15:13.403143+10:30	1
620	ශාසනාවතරණය	-1	L1_C1	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	V0066	1700-01-01	2023-11-18 22:15:13.405113+10:30	1
621	සතිපට්ඨාන භාවනා ක්‍ර‍මය (බුරුමයේ)	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0017	1700-01-01	2023-11-18 22:15:13.407136+10:30	1
622	සතිපට්ඨාන භාවනා විවේචනය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0018	1700-01-01	2023-11-18 22:15:13.40913+10:30	1
623	සූවිසි මහ ගුණය	-1	L1_C4	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	C0019	1700-01-01	2023-11-18 22:15:13.411129+10:30	1
624	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	122	\N	\N	19	\N	RG0026	1700-01-01	2023-11-18 22:15:13.412135+10:30	1
625	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	122	\N	\N	19	\N	RG0027	1700-01-01	2023-11-18 22:15:13.414135+10:30	1
626	අටුවා කතාවස්තු	80	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0005	1951-01-01	2023-11-18 22:15:13.415889+10:30	1
627	අරුණ හා අරුණෝද්ගමන විනිශ්චය.	121	L1_C1	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	256	\N	\N	19	\N	V0067	1700-01-01	2023-11-18 22:15:13.41688+10:30	1
628	දම්පියා අටුවා ගැටපදය	330	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	257	\N	\N	16	\N	S0076	1932-01-01	2023-11-18 22:15:13.418884+10:30	1
629	දම්පියා අටුවා ගැටපදය	99	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	258	\N	\N	16	\N	S0077	1891-01-01	2023-11-18 22:15:13.420862+10:30	1
630	ජාතකට්ඨකථා බුද්ධඝෝස හිමි 01	400	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	182	\N	\N	16	\N	S0078	1892-01-01	2023-11-18 22:15:13.422878+10:30	1
631	ජාතකට්ඨකථා බුද්ධඝෝස හිමි 02	646	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	182	\N	\N	16	\N	S0078	1913-01-01	2023-11-18 22:15:13.423879+10:30	2
632	ආර්යවංශ ධර්ම පුස්තක මාලා 1	142	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	11	\N	\N	19	\N	S0079	1948-01-01	2023-11-18 22:15:13.425878+10:30	1
633	ආර්යවංශ ධර්ම පුස්තක මාලා 2	194	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	11	\N	\N	19	\N	S0079	1948-01-01	2023-11-18 22:15:13.427877+10:30	2
634	ආර්යවංශ ධර්ම පුස්තක මාලා 3	176	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	11	\N	\N	19	\N	S0079	1948-01-01	2023-11-18 22:15:13.428879+10:30	3
635	ආර්යවංශ ධර්ම පුස්තක මාලා 4	180	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	11	\N	\N	19	\N	S0079	1948-01-01	2023-11-18 22:15:13.430731+10:30	4
636	ඉතිවුත්තක පාලිය	432	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	259	\N	\N	19	\N	S0080	1961-01-01	2023-11-18 22:15:13.431729+10:30	1
637	තෙලකටාහගාථා 01	27	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	260	\N	\N	19	\N	B0010	2010-01-01	2023-11-18 22:15:13.433729+10:30	1
638	ථෙරවාදී බෞද්ධාචාර්ය්‍යයෝ	230	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0006	1960-01-01	2023-11-18 22:15:13.435733+10:30	1
639	පාලි-සිංහල ශබ්දකෝෂය	545	L1_C6	L1_C6_C14	L3_C2	\N		\N	2023-11-18	\N	\N	261	\N	\N	16	\N	RK0001	1965-01-01	2023-11-18 22:15:13.436734+10:30	1
640	දේශීය වෛද්‍ය ශබ්දකෝෂය	563	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	RK0002	1959-01-01	2023-11-18 22:15:13.438734+10:30	1
641	අමර ශබ්ධාවලි; සංස්කෘත සිංහල ශබ්දකෝෂය	123	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	263	\N	\N	19	\N	RK0003	1022-01-01	2023-11-18 22:15:13.440715+10:30	1
642	ධර්මපද ප්‍රදීපය	365	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	264	\N	\N	19	\N	S0081	1962-01-01	2023-11-18 22:15:13.441713+10:30	1
643	පට්ඨාන මහා පකරණ සන්නය 02	337	L1_C3	\N	L3_C1	\N		\N	2023-11-18	\N	\N	254	\N	\N	19	\N	A0070	1700-01-01	2023-11-18 22:15:13.443712+10:30	2
644	අභිධර්ම විභාගය	256	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	265	\N	\N	14	\N	A0071	2000-01-01	2023-11-18 22:15:13.444712+10:30	1
645	බෞද්ධ ඤාණාලෝකය ධාතුමනසිකාර දීපනී	106	L1_C3	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	266	\N	\N	19	\N	A0072	1916-01-01	2023-11-18 22:15:13.446712+10:30	1
646	දීඝනිකාය ටීකා	831	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	267	\N	\N	19	\N	S0082	1967-01-01	2023-11-18 22:15:13.44773+10:30	1
647	නෙත්තිප්‍රදීපය	84	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	268	\N	\N	18	\N	S0083	1900-01-01	2023-11-18 22:15:13.450287+10:30	1
648	නෙත්තිසාරාර්ත්ථදීපනී නම් නෙත්ති ව්‍යඛ්‍යාව	295	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	224	\N	\N	19	\N	S0084	1933-01-01	2023-11-18 22:15:13.452281+10:30	1
649	පංචමහාවාදය	361	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	269	\N	\N	19	\N	RA0007	1700-01-01	2023-11-18 22:15:13.453283+10:30	1
650	පටිච්චසමුප්පාදය	47	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	270	\N	\N	19	\N	A0073	1956-01-01	2023-11-18 22:15:13.455265+10:30	1
651	පටිච්චසමුප්පාදය සිංහල භාවය - Part 05	35	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	271	\N	\N	19	\N	A0074	1938-01-01	2023-11-18 22:15:13.457281+10:30	1
652	පද්‍යාවබෝධිනී - සමන්තකූට වණ්ණනා ව්‍යාඛ්‍යා	69	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	272	\N	\N	19	\N	RG0028	1941-01-01	2023-11-18 22:15:13.458283+10:30	1
653	පපඤ්ච දීපිකා මජ්ඣිමනිකාය අට්ටකථා සිංහල	810	L1_C2	L2_A2	L3_C1	\N		\N	2023-11-18	\N	\N	273	\N	\N	19	\N	S0085	1936-01-01	2023-11-18 22:15:13.460283+10:30	1
654	ප්‍රේතවස්තු වර්ණනාව	435	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0008	1700-01-01	2023-11-18 22:15:13.461283+10:30	1
655	පාලි සාහිත්‍යය	559	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0009	1962-01-01	2023-11-18 22:15:13.463281+10:30	1
656	පිරුවානා පොත් වහන්සේ - 1	384	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0010	1700-01-01	2023-11-18 22:15:13.464283+10:30	1
657	පිරුවානා පොත් වහන්සේ - 2	432	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0011	1700-01-01	2023-11-18 22:15:13.466265+10:30	1
658	බුද්ධ ඇදහිල්ල	455	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	RA0012	1983-01-01	2023-11-18 22:15:13.468281+10:30	1
659	බොජ්ඣංග ධර්ම විභාගය	82	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	274	\N	\N	19	\N	S0086	1914-01-01	2023-11-18 22:15:13.469283+10:30	1
660	භාරතීය බෞද්ධාචාර්ය්‍යයෝ	267	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0013	1949-01-01	2023-11-18 22:15:13.471297+10:30	1
661	පටිසම්භිදාමග්ග ගණ්ඨිපදත්ථ වණ්ණනා	378	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	275	\N	\N	19	\N	S0087	1962-01-01	2023-11-18 22:15:13.473303+10:30	1
662	මනොරඤජනී නම් වූ මනොරථපූරණි අංගුත්තරනිකායට්ඨ කථා සිංහල අනුවාදය	401	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	276	\N	\N	19	\N	S0088	1951-01-01	2023-11-18 22:15:13.475283+10:30	1
663	මනොරන්ජනී මනෝරථපූරණී භාවසන්නය	400	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	277	\N	\N	19	\N	S0088	1929-01-01	2023-11-18 22:15:13.477281+10:30	2
664	මහා සතිපට්ඨාන සූත්‍ර වර්ණනාව	197	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	273	\N	\N	19	\N	S0089	1700-01-01	2023-11-18 22:15:13.478283+10:30	1
665	මාරවිජය - පංචමාර දමනය	252	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	278	\N	\N	19	\N	RA0014	1957-01-01	2023-11-18 22:15:13.480283+10:30	1
666	විමලාර්ත්ථවාහිනී මජ්ඣිම නිකාය ව්‍යාඛ්‍යාව පාලි සිංහල	944	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	280	\N	\N	19	\N	S0090	1927-01-01	2023-11-18 22:15:13.48229+10:30	1
667	දසදානවත්ථුප්‍රකරණය	46	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0091	1898-01-01	2023-11-18 22:15:13.483285+10:30	1
668	මංගලතථදිපනි	862	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	281	\N	\N	16	\N	S0092	1927-01-01	2023-11-18 22:15:13.485281+10:30	1
669	සාමඤ්ඤඵල සූත්‍ර වර්ණනාව - ප්‍රතිපත්ති ශාසනය Part II	64	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	S0093	1700-01-01	2023-11-18 22:15:13.486283+10:30	1
670	සාරත්ථ මඤ්ජූසා - මනෝරථපුරණී ටීකා	162	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	282	\N	\N	19	\N	S0094	1907-01-01	2023-11-18 22:15:13.488513+10:30	1
671	සිංහල විමානවස්තු ප්‍රකරණය	259	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	283	\N	\N	19	\N	RA0015	1939-01-01	2023-11-18 22:15:13.490289+10:30	1
672	තෙලකටාහගාථා 02	50	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	284	\N	\N	19	\N	B0010	1908-01-01	2023-11-18 22:15:13.491296+10:30	2
673	තෙලකටාහගාථා 03	94	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	285	\N	\N	19	\N	B0010	1900-01-01	2023-11-18 22:15:13.493295+10:30	3
674	සොතබ්බමාලිනි	156	L1_C4	L1_C4_C1	L3_C2	\N		\N	2023-11-18	\N	\N	286	\N	\N	16	\N	B0011	1911-01-01	2023-11-18 22:15:13.494295+10:30	1
675	නියාම දිපනිය	63	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	287	\N	\N	16	\N	S0095	1918-01-01	2023-11-18 22:15:13.496295+10:30	1
676	සද්ධම්මොපායනය	142	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	288	\N	\N	16	\N	B0012	1911-01-01	2023-11-18 22:15:13.498295+10:30	1
677	විශුද්ධි මාර්ගය 1 BCC	-1	L1_C4	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	B0013	1700-01-01	2023-11-18 22:15:13.500295+10:30	1
678	විශුද්ධි මාර්ගය 2BCC	-1	L1_C4	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	B0014	1700-01-01	2023-11-18 22:15:13.502295+10:30	1
679	සාරත්තදීපානි නම් අංගුත්තර නිකාය ව්‍යාඛ්‍යාව	574	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	289	\N	\N	19	\N	S0096	1937-01-01	2023-11-18 22:15:13.504295+10:30	1
680	අංගුත්තර නිකාය සන්නය - 1,2,3 Completed	488	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	290	\N	\N	18	\N	S0097	1938-01-01	2023-11-18 22:15:13.506295+10:30	1
681	පදාර්ථ විස්තරාර්ථ සහිත සංයුක්ත නිකාය නිදාන වර්ගය	88	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	291	\N	\N	18	\N	S0098	1939-01-01	2023-11-18 22:15:13.508294+10:30	1
682	මහා සතිපට්ටහන වර්ණනාව සන්නය 02	64	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	292	\N	\N	19	\N	S0099	1898-01-01	2023-11-18 22:15:13.509295+10:30	1
683	සද්ධම්ම සංගහ	252	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	293	\N	\N	19	\N	RA0016	1989-01-01	2023-11-18 22:15:13.511295+10:30	1
684	මහා සතිපට්ටහන වර්ණනාව සන්නය 02	641	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	292	\N	\N	19	\N	S0099	1916-01-01	2023-11-18 22:15:13.513295+10:30	2
685	මහා සතිපට්ටහන වර්ණනාව සන්නය 03 -වේදනානු -චිත්තානුපස්සනා	288	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	292	\N	\N	16	\N	S0099	1951-01-01	2023-11-18 22:15:13.514295+10:30	3
686	සුත්‍ර සංග්‍රහව	536	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	294	\N	\N	16	\N	S0100	1935-01-01	2023-11-18 22:15:13.516294+10:30	1
687	සද්ධර්මසාගර ධර්මපදවර්ණනාව 1	1042	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	295	\N	\N	19	\N	S0101	1967-01-01	2023-11-18 22:15:13.517294+10:30	1
688	සද්ධර්මසාගර ධර්මපදවර්ණනාව 2	959	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	295	\N	\N	19	\N	S0102	1967-01-01	2023-11-18 22:15:13.519294+10:30	1
689	සද්ධර්මසාගර ධර්මපදවර්ණනාව 3	763	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	295	\N	\N	19	\N	S0103	1967-01-01	2023-11-18 22:15:13.520295+10:30	1
690	සන්න සහිත ජාතිදුක්ඛ විභාගය හෙවත් කාය විරති ගාථා	78	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	296	\N	\N	19	\N	B0015	1914-01-01	2023-11-18 22:15:13.522295+10:30	1
691	බ්රම්ම වංශ විනිශ්චය - බුරුම - අමරපුර නිකාය 1878	-1	L1_C6	L2_A12	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	11	\N	RC0013	1700-01-01	2023-11-18 22:15:13.523294+10:30	1
692	ථූපවංශය පාළි	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	155	\N	\N	17	\N	RC0014	1700-01-01	2023-11-18 22:15:13.525296+10:30	1
693	සිතුවම් සහිත ධම්මපදය	434	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	297	\N	\N	19	\N	RA0017	1700-01-01	2023-11-18 22:15:13.527295+10:30	1
694	සන්න සහිත ජාතිදුක්ඛ විභාගය හෙවත් කාය විරති ගාථා	82	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	B0015	1700-01-01	2023-11-18 22:15:13.528294+10:30	2
695	පරමත්ථමඤ්ජුසා විසුද්ධිමග්ගටීකා - Part 01/02/03	676	L1_C4	L1_C4_C1	L3_C2	\N		\N	2023-11-18	\N	\N	298	\N	\N	19	\N	B0016	1928-01-01	2023-11-18 22:15:13.530295+10:30	1
696	විමතිවිනොදනී සමන්තපාසාදිකා ටීකා	617	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	299	\N	\N	19	\N	V0068	1935-01-01	2023-11-18 22:15:13.532295+10:30	1
697	කර්ම විභාගය	124	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	300	\N	\N	19	\N	RA0018	1961-01-01	2023-11-18 22:15:13.533333+10:30	1
698	පපණ්‍චසූදනී මජ්ඣිමනිකාය 01	584	L1_C2	L2_A14	L3_C1	\N		\N	2023-11-18	\N	\N	301	\N	\N	19	\N	S0104	1917-01-01	2023-11-18 22:15:13.5353+10:30	1
699	පපණ්‍චසූදනී මජ්ඣිමනිකාය 02-03	583	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	301	\N	\N	19	\N	S0104	1926-01-01	2023-11-18 22:15:13.537315+10:30	2
700	ඉතිවුත්තක පාලි	123	L1_C2	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	302	\N	\N	19	\N	S0105	1965-01-01	2023-11-18 22:15:13.539313+10:30	1
701	කථාවත්‍ථුප්පකරණ පාලි - ශ්‍රීපාද	375	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0075	1953-01-01	2023-11-18 22:15:13.5413+10:30	1
702	ඛුද්දකපාඨ පාලි සිංහල	118	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	302	\N	\N	19	\N	S0106	1965-01-01	2023-11-18 22:15:13.542327+10:30	1
703	දීඝනිකාය 1 පාලි සිංහල	1165	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	303	\N	\N	19	\N	S0107	1952-01-01	2023-11-18 22:15:13.544301+10:30	1
704	දීඝනිකාය 2 පාලි සිංහල	606	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	303	\N	\N	19	\N	S0108	1952-01-01	2023-11-18 22:15:13.547302+10:30	1
705	දීඝනිකාය මහාවර්‍ගය පාලි සිංහල	717	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	304	\N	\N	19	\N	S0109	1905-01-01	2023-11-18 22:15:13.5493+10:30	1
706	දීඝනිකාය ශීලස්කන්‍ධවර්‍ගය පාලි සිංහල	559	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	304	\N	\N	19	\N	S0110	1905-01-01	2023-11-18 22:15:13.550556+10:30	1
707	ධම්මසඞ්ගණිප්පකරණ පාලි - ශ්‍රීපාද	265	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0076	1953-01-01	2023-11-18 22:15:13.552555+10:30	1
708	ධම්මසඞ්ගණිප්පකරණ පාලි	269	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	305	\N	\N	19	\N	A0077	1953-01-01	2023-11-18 22:15:13.553556+10:30	1
709	සාට්ඨකථං ධම්මසංගනිප්පකරණං	83	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	306	\N	\N	19	\N	A0078	1910-01-01	2023-11-18 22:15:13.556558+10:30	1
710	ධාතුකථාප්පකරණ පාලි - ශ්‍රීපාද	93	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0079	1953-01-01	2023-11-18 22:15:13.558556+10:30	1
711	පට්ඨානප්පකරණ පාළි - ශ්‍රීපාද	1520	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0080	1953-01-01	2023-11-18 22:15:13.560557+10:30	1
712	පුග්ගල පඤ්ඤත්තිප්පකරණ පාලි - ශ්‍රීපාද	77	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0081	1953-01-01	2023-11-18 22:15:13.561556+10:30	1
713	කරණීයමෙත්ත සූත්‍ර වර්ණනාව	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	307	\N	\N	16	\N	S0111	1926-01-01	2023-11-18 22:15:13.562556+10:30	1
714	උපෞෂත ශිලවිභාවිනිය	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	308	\N	\N	16	\N	S0112	1700-01-01	2023-11-18 22:15:13.564556+10:30	1
715	මජ්ඣිමනිකාය 1 මූලපණ්ණාසකය	448	L1_C2	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	309	\N	\N	19	\N	S0113	1946-01-01	2023-11-18 22:15:13.566557+10:30	1
716	යමකප්පකරණ පාළි - ශ්‍රීපාද	732	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0082	1953-01-01	2023-11-18 22:15:13.567556+10:30	1
717	විනය චුල්ලවග්ගපාළි සුළුවග	423	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	310	\N	\N	19	\N	V0069	1928-01-01	2023-11-18 22:15:13.569556+10:30	1
718	විනය චුල්ලවග්ගපාළි	444	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	310	\N	\N	11	\N	V0070	1915-01-01	2023-11-18 22:15:13.571556+10:30	1
719	උදකුක්ඛේපසිමා විභාවිනි	51	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	311	\N	\N	\N	\N	V0071	2011-01-01	2023-11-18 22:15:13.573556+10:30	1
720	පුතිමුත්තභේසජ්ජ	75	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	312	\N	\N	\N	\N	V0072	2006-01-01	2023-11-18 22:15:13.575556+10:30	1
721	විනයාලංකාරෝ	-1	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	\N	\N	V0073	1700-01-01	2023-11-18 22:15:13.576556+10:30	1
722	සමන්ත පාසාදිකා 01	520	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	313	\N	\N	19	\N	V0074	1999-01-01	2023-11-18 22:15:13.577555+10:30	1
723	සමන්ත පාසාදිකා 02	-1	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	313	\N	\N	19	\N	V0075	1999-01-01	2023-11-18 22:15:13.579555+10:30	1
724	සමන්ත පාසාදිකා 03	-1	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	313	\N	\N	19	\N	V0076	1999-01-01	2023-11-18 22:15:13.580556+10:30	1
725	සමන්ත පාසාදිකා 01	382	L1_C1	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	314	\N	\N	16	\N	V0077	2014-01-01	2023-11-18 22:15:13.583556+10:30	1
726	සමන්ත පාසාදිකා 02	365	L1_C1	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	314	\N	\N	16	\N	V0078	2000-01-01	2023-11-18 22:15:13.585556+10:30	1
727	සමන්ත පාසාදිකා 03	155	L1_C1	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	314	\N	\N	16	\N	V0079	2015-01-01	2023-11-18 22:15:13.587558+10:30	1
728	සමන්ත පාසාදිකා 04	350	L1_C1	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	314	\N	\N	16	\N	V0080	1948-01-01	2023-11-18 22:15:13.590557+10:30	1
729	විනය පරිවාර පාලි- ශ්‍රීපාද	289	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	V0081	1957-01-01	2023-11-18 22:15:13.592594+10:30	1
730	විනය පරිවාර පාලි	315	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	207	\N	\N	19	\N	V0082	1928-01-01	2023-11-18 22:15:13.594556+10:30	1
731	කංඛාවිතරණි ප්‍රාතිමෝක්ෂ වර්ණනාව	312	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	315	\N	\N	19	\N	V0083	1999-01-01	2023-11-18 22:15:13.596557+10:30	1
732	විනය පරිවාර පාලි	341	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	305	\N	\N	19	\N	V0084	1961-01-01	2023-11-18 22:15:13.598556+10:30	1
733	විනය පාරාජික පාලි	331	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	316	\N	\N	19	\N	V0085	1950-01-01	2023-11-18 22:15:13.600002+10:30	1
734	විනය මහාවග්ග පාලි	460	L1_C1	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	305	\N	\N	19	\N	V0086	1958-01-01	2023-11-18 22:15:13.602005+10:30	1
735	විභඞ්ගප්පකරණ පාළි - ශ්‍රීපාද	330	L1_C3	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	19	\N	A0083	1953-01-01	2023-11-18 22:15:13.603006+10:30	1
736	විමානපෙතවත්‍ථු ථෙරථෙරීගාථා පාළි -	404	L1_C2	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	317	\N	\N	19	\N	S0114	1930-01-01	2023-11-18 22:15:13.605967+10:30	1
737	සංයුත්ත නිකාය පාලි	1136	L1_C2	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	318	\N	\N	19	\N	S0115	1926-01-01	2023-11-18 22:15:13.607944+10:30	1
738	ශබ්දාර්‍ත්‍ථරත්නාකරය සිංහල අකාරාදිය	706	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	319	\N	\N	19	\N	RK0004	1916-01-01	2023-11-18 22:15:13.610017+10:30	1
739	චරියා සහ වත් - යෝගාශ්රමය	13	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	252	\N	\N	19	\N	V0087	1952-01-01	2023-11-18 22:15:13.610946+10:30	1
740	තෙසැත්තෑ ඤාණ කථා	791	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	320	\N	\N	19	\N	S0116	1972-01-01	2023-11-18 22:15:13.613917+10:30	1
741	යමක වාචනා මාර්ගය	835	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	321	\N	\N	19	\N	A0084	1989-01-01	2023-11-18 22:15:13.615002+10:30	1
742	අත්තසාලිනි ලිනත්තපද වන්නනා - අභිධම්ම මුලටීකා	174	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	8	\N	\N	16	\N	A0085	1938-01-01	2023-11-18 22:15:13.615956+10:30	1
743	ධම්මසඞ්ගණි අටුවාව	474	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	A0086	1700-01-01	2023-11-18 22:15:13.618004+10:30	1
744	පංචප්පකරණ අටුවාව 1	254	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	A0087	1700-01-01	2023-11-18 22:15:13.618956+10:30	1
745	පංචප්පකරණ අටුවාව 2	206	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	A0088	1700-01-01	2023-11-18 22:15:13.620966+10:30	1
746	විභංග අටුවාව	447	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	A0089	1700-01-01	2023-11-18 22:15:13.624012+10:30	1
747	ථෙරිගාථා අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0117	1700-01-01	2023-11-18 22:15:13.626007+10:30	1
748	ධම්මපද අටුවාව 01	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0118	1700-01-01	2023-11-18 22:15:13.628002+10:30	1
749	ධම්මපද අටුවාව 02	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0119	1700-01-01	2023-11-18 22:15:13.629964+10:30	1
750	විමානවත්ථු අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0120	1700-01-01	2023-11-18 22:15:13.632002+10:30	1
751	අංගුත්තර නිකාය අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0121	1700-01-01	2023-11-18 22:15:13.633023+10:30	1
752	අංගුත්තර නිකාය අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0122	1700-01-01	2023-11-18 22:15:13.635095+10:30	1
753	ආපදානපාලි අටුවාව (1, 2)	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0123	1700-01-01	2023-11-18 22:15:13.637019+10:30	1
754	ඉතිවුත්තක අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0124	1700-01-01	2023-11-18 22:15:13.639002+10:30	1
755	උදානපාළි අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0125	1700-01-01	2023-11-18 22:15:13.64102+10:30	1
756	ඛුද්දකපාඨපාළි අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0126	1700-01-01	2023-11-18 22:15:13.64302+10:30	1
757	චරියාපිටක අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0127	1700-01-01	2023-11-18 22:15:13.64502+10:30	1
758	චූලනිද්දේසපාලි අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0128	1700-01-01	2023-11-18 22:15:13.64602+10:30	1
759	මහානිද්දේසපාලි අටුවාව	518	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0129	1700-01-01	2023-11-18 22:15:13.64802+10:30	1
760	ථේරගාථා අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0130	1700-01-01	2023-11-18 22:15:13.649551+10:30	1
761	ථේරගාථා අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0131	1700-01-01	2023-11-18 22:15:13.651588+10:30	1
762	නෙත්තිප්පකරණ අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0132	1700-01-01	2023-11-18 22:15:13.653574+10:30	1
763	පටිසම්භිදාමග්ග අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0133	1700-01-01	2023-11-18 22:15:13.656607+10:30	1
764	පේතවත්ථු අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0134	1700-01-01	2023-11-18 22:15:13.658589+10:30	1
765	බුද්ධවංස අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0135	1700-01-01	2023-11-18 22:15:13.660575+10:30	1
766	සුත්ත නිපාත අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0136	1700-01-01	2023-11-18 22:15:13.662574+10:30	1
767	චතුභාණවාර අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0137	1700-01-01	2023-11-18 22:15:13.664601+10:30	1
768	ජාතක අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0138	1700-01-01	2023-11-18 22:15:13.666587+10:30	1
769	ජාතක අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0139	1700-01-01	2023-11-18 22:15:13.669589+10:30	1
770	ජාතක අටුවාව 3	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0140	1700-01-01	2023-11-18 22:15:13.671571+10:30	1
771	ජාතක අටුවාව 4	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0141	1700-01-01	2023-11-18 22:15:13.673589+10:30	1
772	ජාතක අටුවාව 5	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0142	1700-01-01	2023-11-18 22:15:13.675607+10:30	1
773	ජාතක අටුවාව 6	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0143	1700-01-01	2023-11-18 22:15:13.676594+10:30	1
774	ජාතක අටුවාව 7	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0144	1700-01-01	2023-11-18 22:15:13.678587+10:30	1
775	දීඝනිකාය අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0145	1700-01-01	2023-11-18 22:15:13.680571+10:30	1
776	දීඝනිකාය අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0146	1700-01-01	2023-11-18 22:15:13.682599+10:30	1
777	මජ්ඣිම නිකාය අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0147	1700-01-01	2023-11-18 22:15:13.684589+10:30	1
778	මජ්ඣිම නිකාය අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0148	1700-01-01	2023-11-18 22:15:13.685595+10:30	1
779	මජ්ඣිම නිකාය අටුවාව 3	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0149	1700-01-01	2023-11-18 22:15:13.687575+10:30	1
780	මජ්ඣිම නිකාය අටුවාව 4	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0150	1700-01-01	2023-11-18 22:15:13.69059+10:30	1
781	සංයුක්ත නිකාය අටුවාව 1	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0151	1700-01-01	2023-11-18 22:15:13.691593+10:30	1
782	සංයුක්ත නිකාය අටුවාව 2	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0152	1700-01-01	2023-11-18 22:15:13.693589+10:30	1
783	සංයුක්ත නිකාය අටුවාව 3	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0153	1700-01-01	2023-11-18 22:15:13.695588+10:30	1
784	සුත්තසංගහ අටුවාව	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	19	\N	S0154	1700-01-01	2023-11-18 22:15:13.6976+10:30	1
785	ආණා දේසනා කර්ම වාක්‍ය පොත	519	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	252	\N	\N	19	\N	V0088	2019-01-01	2023-11-18 22:15:13.699064+10:30	1
786	දහම්සොඬකව	144	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	322	\N	\N	19	\N	RG0029	1934-01-01	2023-11-18 22:15:13.701038+10:30	1
787	පොහොය වර්ණනාව	179	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	323	\N	\N	19	\N	RA0019	1968-01-01	2023-11-18 22:15:13.702059+10:30	1
788	වහලය ගලවන්න භික්ෂු ප්‍රාතිමෝක්‍ෂය	604	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	324	\N	\N	19	\N	V0089	2005-01-01	2023-11-18 22:15:13.704038+10:30	1
789	සිංහල සාරසඞ්ග්‍රහය	321	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	325	\N	\N	19	\N	RA0020	1929-01-01	2023-11-18 22:15:13.70604+10:30	1
790	බුදුසමයේ පැනෙන මාරයා	210	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	326	\N	\N	19	\N	RA0021	2009-01-01	2023-11-18 22:15:13.708054+10:30	1
791	සංඛ්‍යා ධර්මපද වර්ණනා	712	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	326	\N	\N	19	\N	RA0022	2006-01-01	2023-11-18 22:15:13.710038+10:30	1
792	අපේ විනය පොත	149	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	327	\N	\N	19	\N	V0090	2015-01-01	2023-11-18 22:15:13.712053+10:30	1
793	අධිමාස පකාසිනි	10	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	328	\N	\N	\N	\N	V0091	1921-01-01	2023-11-18 22:15:13.713055+10:30	1
794	අධිමාස මණ්ඩලය	30	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	329	\N	\N	\N	\N	V0092	1906-01-01	2023-11-18 22:15:13.714037+10:30	1
795	නිකාය සංග්රහය හෙවත් ශාශනාවතාරය	32	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	330	\N	\N	\N	\N	V0093	1922-01-01	2023-11-18 22:15:13.716053+10:30	1
796	අපේ උත්තර පොත	132	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	327	\N	\N	\N	\N	V0094	1700-01-01	2023-11-18 22:15:13.717038+10:30	1
797	සුගත විධත්ති විධානය	51	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	331	\N	\N	\N	\N	V0095	1894-01-01	2023-11-18 22:15:13.719038+10:30	1
798	සාරාර්ථදීපනි විනය ටීකා 01- (16)	-1	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0096	1700-01-01	2023-11-18 22:15:13.721057+10:30	1
799	සාරාර්ථදීපනි විනය ටීකා 02 - (19)	-1	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0097	1700-01-01	2023-11-18 22:15:13.723064+10:30	1
800	සාරාර්ථදීපනි විනය ටීකා 03 - (21)	-1	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0098	1700-01-01	2023-11-18 22:15:13.724056+10:30	1
801	විනයාලංකාර ටීකා 01 (20)	465	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0099	1700-01-01	2023-11-18 22:15:13.72604+10:30	1
802	විනයාලංකාර ටීකා 02 (22)	427	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0100	1700-01-01	2023-11-18 22:15:13.728055+10:30	1
803	විමතිවිනොදනී ටීකා (23)	421	L1_C1	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	V0101	1700-01-01	2023-11-18 22:15:13.730055+10:30	1
804	සාමණේර ප්‍රශ්ණ සන්නය	183	L1_C1	L1_C1_C1	\N	\N		\N	2023-11-18	\N	\N	332	\N	\N	16	\N	V0102	1899-01-01	2023-11-18 22:15:13.732053+10:30	1
805	කංඛාවිතරණි මාතිකා අට්ටකථා හේවාවිතාරණ	251	L1_C1	L2_A3	L3_C2	\N		\N	2023-11-18	\N	\N	314	\N	\N	19	\N	V0103	2014-01-01	2023-11-18 22:15:13.734039+10:30	1
806	පාරාජිකා පාළි	351	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0104	1700-01-01	2023-11-18 22:15:13.736044+10:30	1
807	පාචිත්තිය පාළි	423	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0105	1700-01-01	2023-11-18 22:15:13.738047+10:30	1
808	චුල්ලවග්ග පාළි	462	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0106	1700-01-01	2023-11-18 22:15:13.740069+10:30	1
809	මහාවග්ග පාළි	560	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0107	1700-01-01	2023-11-18 22:15:13.742062+10:30	1
810	පරිවාර පාළි	355	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0108	1700-01-01	2023-11-18 22:15:13.744044+10:30	1
811	පාරාජිකා පාළි අට්ටකතා	615	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0109	1700-01-01	2023-11-18 22:15:13.746062+10:30	1
812	පාචිත්තිය පාළි අට්ටකතා	214	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0110	1700-01-01	2023-11-18 22:15:13.748041+10:30	1
813	චුල්ලවග්ග පාළි අට්ටකතා	126	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0111	1700-01-01	2023-11-18 22:15:13.749551+10:30	1
814	මහාවග්ග පාළි අට්ටකතා	186	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0112	1700-01-01	2023-11-18 22:15:13.751581+10:30	1
815	පරිවාර පාළි අට්ටකතා	115	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0113	1700-01-01	2023-11-18 22:15:13.753573+10:30	1
816	සාරාර්ථදීපානි ටිකාව 01	394	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0114	1700-01-01	2023-11-18 22:15:13.755556+10:30	1
817	සාරාර්ථදීපානි ටිකාව 02	396	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0115	1700-01-01	2023-11-18 22:15:13.757575+10:30	1
818	සාරාර්ථදීපානි ටිකාව 03	476	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0116	1700-01-01	2023-11-18 22:15:13.759794+10:30	1
819	වජිරබුද්ධි ටිකාව	630	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0117	1700-01-01	2023-11-18 22:15:13.761793+10:30	1
820	විමතිවිනෝදනී ටිකාව	654	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0118	1700-01-01	2023-11-18 22:15:13.762794+10:30	1
821	ද්වෙමතික පාලි ටීකා	316	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0119	1700-01-01	2023-11-18 22:15:13.764793+10:30	1
822	කංඛාවිතරණි පුරාණ ටිකාව	106	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0120	1700-01-01	2023-11-18 22:15:13.767793+10:30	1
823	කංඛාවිතරණි අභිනව ටිකාව	320	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0121	1700-01-01	2023-11-18 22:15:13.768793+10:30	1
824	විනයාලංකාර ටිකාව	591	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0122	1700-01-01	2023-11-18 22:15:13.770794+10:30	1
825	ඛුද්දක සිඛා- මූල සික්ඛා	364	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0123	1700-01-01	2023-11-18 22:15:13.773794+10:30	1
826	විනයසංග්‍රහ අට්ටකතා	394	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0124	1700-01-01	2023-11-18 22:15:13.775792+10:30	1
827	විනය විනිශ්චය ටිකා	729	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0125	1700-01-01	2023-11-18 22:15:13.777792+10:30	1
828	විනය විනිශ්චය- උත්තර විනිශ්චය	429	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0126	1700-01-01	2023-11-18 22:15:13.778793+10:30	1
829	පාචිත්‍යාදී යෝජනා	526	L1_C1	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	V0127	1700-01-01	2023-11-18 22:15:13.780793+10:30	1
830	ප්‍රාතිමොක්ඛදීපිකා	313	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	244	\N	\N	18	\N	V0128	1959-01-01	2023-11-18 22:15:13.782793+10:30	1
831	සංවාසදිපනිය	55	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	333	\N	\N	20	\N	V0129	1915-01-01	2023-11-18 22:15:13.784794+10:30	1
832	පාතිමොක්ඛ සාරය	40	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	334	\N	\N	18	\N	V0130	1935-01-01	2023-11-18 22:15:13.786792+10:30	1
833	ධම්මසංගනීප්‍රකරණo	244	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	335	\N	\N	12	\N	A0090	1700-01-01	2023-11-18 22:15:13.788794+10:30	1
834	නාම රූප සමාසය	80	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	336	\N	\N	20	\N	A0091	1908-01-01	2023-11-18 22:15:13.791282+10:30	1
1308	උදානං	104	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	487	\N	\N	18	\N	S0424	1913-01-01	2023-11-18 22:15:14.602189+10:30	1
835	අභිධර්ම පරීක්ෂණය	188	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	337	\N	\N	20	\N	A0092	1960-01-01	2023-11-18 22:15:13.793282+10:30	1
836	අභිධම්මත්ත විකාසිනි (අභිධර්මාර්ථ ටිකාව)	785	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	A0093	1700-01-01	2023-11-18 22:15:13.795282+10:30	1
837	අභිධම්මත්ත විභාවිනි ටීකා	529	L1_C3	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	A0094	1700-01-01	2023-11-18 22:15:13.796282+10:30	1
838	පංචස්ඛන්ධ විභාගය	166	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	338	\N	\N	14	\N	A0095	1954-01-01	2023-11-18 22:15:13.798282+10:30	1
839	සප්ත විශුද්ධි නිර්දේශ	-1	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	227	\N	\N	14	\N	A0096	1700-01-01	2023-11-18 22:15:13.800287+10:30	1
840	ධම්මසංගණී ප්‍රකරණය - අභිධම්ම	281	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0097	1700-01-01	2023-11-18 22:15:13.802286+10:30	1
841	විභංග ප්‍රකරණය - අභිධම්ම	446	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0098	1700-01-01	2023-11-18 22:15:13.803286+10:30	1
842	ධාතුකථාප්‍රකරණය - අභිධම්ම	90	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0099	1700-01-01	2023-11-18 22:15:13.805287+10:30	1
843	පුග්ගල පඤ්ඤත්ති ප්‍රකරණ - අභිධම්ම	80	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0100	1700-01-01	2023-11-18 22:15:13.808286+10:30	1
844	කථාවත්ථු ප්‍රකරණය - අභිධම්ම	445	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0101	1700-01-01	2023-11-18 22:15:13.810287+10:30	1
845	යමක ප්‍රකරණ 1 - අභිධම්ම	364	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0102	1700-01-01	2023-11-18 22:15:13.811286+10:30	1
846	යමක ප්‍රකරණ 2 - අභිධම්ම	365	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0103	1700-01-01	2023-11-18 22:15:13.814327+10:30	1
847	යමක ප්‍රකරණ 3- අභිධම්ම	459	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0104	1700-01-01	2023-11-18 22:15:13.816286+10:30	1
848	පට්ඨාන ප්‍රකරණ 1 - අභිධම්ම	451	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0105	1700-01-01	2023-11-18 22:15:13.817286+10:30	1
849	පට්ඨාන ප්‍රකරණ 2 - අභිධම්ම	494	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0106	1700-01-01	2023-11-18 22:15:13.819501+10:30	1
850	පට්ඨාන ප්‍රකරණ 3 - අභිධම්ම	594	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0107	1700-01-01	2023-11-18 22:15:13.821478+10:30	1
851	පට්ඨාන ප්‍රකරණ 4 - අභිධම්ම	627	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0108	1700-01-01	2023-11-18 22:15:13.823476+10:30	1
852	පට්ඨාන ප්‍රකරණ 5 - අභිධම්ම	399	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0109	1700-01-01	2023-11-18 22:15:13.82549+10:30	1
853	අත්තසාලිනි ධම්මසඞ්ගණි අටුවාව	394	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0110	1700-01-01	2023-11-18 22:15:13.82749+10:30	1
854	පංචප්පකරණ අටුවාව	438	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0111	1700-01-01	2023-11-18 22:15:13.828937+10:30	1
855	විභංග අටුවාව	445	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0112	1700-01-01	2023-11-18 22:15:13.830936+10:30	1
856	ධම්මසංගිනි මුලටිකා	187	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0113	1700-01-01	2023-11-18 22:15:13.831936+10:30	1
857	ධම්මසංගිනි අනුටිකා	194	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0114	1700-01-01	2023-11-18 22:15:13.833936+10:30	1
858	විභංගමුලටීකා	175	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0115	1700-01-01	2023-11-18 22:15:13.835941+10:30	1
859	විභංග අනුටිකා	216	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0116	1700-01-01	2023-11-18 22:15:13.836941+10:30	1
860	පන්චප්‍රකරන මුලටිකා	179	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0117	1700-01-01	2023-11-18 22:15:13.838941+10:30	1
861	පන්චප්‍රකරන අනුටිකා	287	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0118	1700-01-01	2023-11-18 22:15:13.840942+10:30	1
862	අභිධම්ම මාතිකා ටීකා	94	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0119	1700-01-01	2023-11-18 22:15:13.842941+10:30	1
863	අභිධම්මත්ත විභාවිනි ටීකා	213	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0120	1700-01-01	2023-11-18 22:15:13.843966+10:30	1
864	අභිධම්මාවතාර	562	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0121	1700-01-01	2023-11-18 22:15:13.845941+10:30	1
865	අභිධම්මාවතාර පුරාන ටීකා	545	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0122	1700-01-01	2023-11-18 22:15:13.847941+10:30	1
866	මෝහවිච්චේදනී (චෝලිය කස්සප ථේර)	347	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0123	1700-01-01	2023-11-18 22:15:13.849941+10:30	1
867	පරමත්ථදිපනිය	285	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0124	1700-01-01	2023-11-18 22:15:13.851153+10:30	1
868	නිරුත්ති දිපනිය (පරමත්ථදිපනිය ටිකාව)	377	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0125	1700-01-01	2023-11-18 22:15:13.853152+10:30	1
869	පට්ඨානඋද්දේසදිපනිය	47	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0126	1700-01-01	2023-11-18 22:15:13.855154+10:30	1
870	අනුදිපනි පාඨ	242	L1_C3	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	A0127	1700-01-01	2023-11-18 22:15:13.857154+10:30	1
871	ඥයාර්ථදිපනිය	122	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	339	\N	\N	14	\N	RA0023	1903-01-01	2023-11-18 22:15:13.859153+10:30	1
872	පරමාර්ථ ධර්ම මකරන්දය	181	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	30	\N	\N	16	\N	A0128	1917-01-01	2023-11-18 22:15:13.861153+10:30	1
873	පරමාර්ථ ප්‍රකාශනිය	23	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	A0129	1700-01-01	2023-11-18 22:15:13.862153+10:30	1
874	අභිධර්මය	209	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	340	\N	\N	12	\N	A0130	1946-01-01	2023-11-18 22:15:13.864152+10:30	1
875	විද්‍යාමාර්ග දීපනිය සහ සංක්ෂේප රූපසංග්‍රහ වර්ණනාව	89	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	341	\N	\N	12	\N	A0131	1922-01-01	2023-11-18 22:15:13.865153+10:30	1
876	අභිධම්මතථ සංගහො	55	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	342	\N	\N	12	\N	A0132	1908-01-01	2023-11-18 22:15:13.867153+10:30	1
877	නාමරූප පරිච්චේදෝ	128	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	12	\N	A0133	1912-01-01	2023-11-18 22:15:13.869152+10:30	1
878	චිත්ත චෛතසික විභාගය	122	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	128	\N	\N	12	\N	A0134	1928-01-01	2023-11-18 22:15:13.870153+10:30	1
879	පරමාර්ථ ස්වරූප භේදනිය	100	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	12	\N	A0135	1700-01-01	2023-11-18 22:15:13.872168+10:30	1
880	අභිධර්මාර්ථ සංග්‍රහ පරමාර්ථචන්ද්‍රිකා භාවාර්ථ ව්‍යාඛ්‍යව	278	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	343	\N	\N	12	\N	A0136	1929-01-01	2023-11-18 22:15:13.875153+10:30	1
881	අභිධර්මාර්ථ සංග්‍රහශුද්ධිය	23	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	344	\N	\N	12	\N	A0137	1893-01-01	2023-11-18 22:15:13.876153+10:30	1
882	සිංහල පුග්ගල පඤ්ඤත්ති විභාගය	262	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	345	\N	\N	12	\N	A0138	1954-01-01	2023-11-18 22:15:13.878152+10:30	1
883	ධම්සඟුණු නම් විජම්පෙළ	231	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	207	\N	\N	12	\N	A0139	1929-01-01	2023-11-18 22:15:13.880153+10:30	1
884	පට්ඨානප්‍රකරණං	244	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	346	\N	\N	12	\N	A0140	1942-01-01	2023-11-18 22:15:13.881153+10:30	1
885	විභංගප්‍රකරණං	350	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	347	\N	\N	12	\N	A0141	1913-01-01	2023-11-18 22:15:13.883153+10:30	1
886	සම්මෝහවිනොදනි නාමධෙය විභංගඅට්ඨකථා (ප්‍රථම භාගය)	246	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	347	\N	\N	12	\N	A0142	1910-01-01	2023-11-18 22:15:13.885152+10:30	1
887	අභිධර්මචින්තාමණි (ප්‍රථම භාගය)	117	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	37	\N	\N	12	\N	A0143	1938-01-01	2023-11-18 22:15:13.887153+10:30	1
888	අභිධම්මත්‍ථසංගහසංඛේපවන්නනා	60	L1_C3	L2_A7	L3_C2	\N		\N	2023-11-18	\N	\N	344	\N	\N	12	\N	A0144	1899-01-01	2023-11-18 22:15:13.889154+10:30	1
889	පරමාර්ථ විකාශනි (1, 2, 3)	583	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	204	\N	\N	12	\N	A0145	1942-01-01	2023-11-18 22:15:13.891153+10:30	1
890	SAMMOHA VINODANI	560	L1_C3	L2_A7	L3_C4	\N		\N	2023-11-18	\N	\N	119	\N	\N	12	\N	A0146	1923-01-01	2023-11-18 22:15:13.894154+10:30	1
891	ABHIDAMMATTHA SANGAHA	468	L1_C3	L2_A7	L3_C4	\N		\N	2023-11-18	\N	\N	348	\N	\N	12	\N	A0147	1956-01-01	2023-11-18 22:15:13.896154+10:30	1
892	BUDDHADATTA''S MANUALS OR SUMMARIES OF ABHIDHAMMA	204	L1_C3	L2_A7	L3_C4	\N		\N	2023-11-18	\N	\N	119	\N	\N	12	\N	A0148	1915-01-01	2023-11-18 22:15:13.899164+10:30	1
893	Manual Of Abidamma	659	L1_C3	L2_A7	L3_C4	\N		\N	2023-11-18	\N	\N	349	\N	\N	12	\N	A0149	1942-01-01	2023-11-18 22:15:13.901154+10:30	1
894	කුශලත්‍රිකය	32	L1_C3	L2_A7	L3_C1	\N		\N	2023-11-18	\N	\N	350	\N	\N	12	\N	A0150	1905-01-01	2023-11-18 22:15:13.903155+10:30	1
895	pali Dhathupatha and dathupatha Manjusa	94	L1_C5	L1_C5_C2	L3_C4	\N		\N	2023-11-18	\N	\N	\N	\N	\N	11	\N	P0102	1921-01-01	2023-11-18 22:15:13.905154+10:30	1
896	Pali Grammer	120	L1_C5	L1_C5_C2	L3_C4	\N		\N	2023-11-18	\N	\N	351	\N	\N	11	\N	P0103	2005-01-01	2023-11-18 22:15:13.907154+10:30	1
897	මොග්ගල්ලාන ව්‍යකරනං	220	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0104	1700-01-01	2023-11-18 22:15:13.909153+10:30	1
898	කච්චායන ව්‍යකරනං	209	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0105	1700-01-01	2023-11-18 22:15:13.911153+10:30	1
899	සද්දනිතිප්‍රකරණ (පදමාලා)	296	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0106	1700-01-01	2023-11-18 22:15:13.912153+10:30	1
900	සද්දනිතිප්‍රකරණ (ධාතුමාලා)	287	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0107	1700-01-01	2023-11-18 22:15:13.914153+10:30	1
901	පදරුපසිද්ධි	334	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0108	1700-01-01	2023-11-18 22:15:13.916003+10:30	1
902	මොග්ගල්ලානපංචිකා ටීකා	257	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0109	1700-01-01	2023-11-18 22:15:13.917004+10:30	1
903	පයෝගසිද්ධිපාඨ	226	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0110	1700-01-01	2023-11-18 22:15:13.919087+10:30	1
904	වුත්තෝදයපාඨ	18	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0111	1700-01-01	2023-11-18 22:15:13.921087+10:30	1
905	අභිධනප්‍රදිපිකා පාඨ	135	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0112	1700-01-01	2023-11-18 22:15:13.924089+10:30	1
906	අභිධනප්‍රදිප්කා ටීකා	326	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0113	1700-01-01	2023-11-18 22:15:13.926088+10:30	1
907	සුබෝධාලංකාර පාඨ	53	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0114	1700-01-01	2023-11-18 22:15:13.928088+10:30	1
908	සුබෝධාලංකාර ටීකා	276	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0115	1700-01-01	2023-11-18 22:15:13.929642+10:30	1
909	බාලාවතාර	55	L1_C5	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	P0116	1700-01-01	2023-11-18 22:15:13.931641+10:30	1
910	සරළ පාලි වියරණය	53	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0117	1700-01-01	2023-11-18 22:15:13.932641+10:30	1
911	පාළිපාඨ මඤ්ජරී ….... භාගය	67	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	156	\N	\N	17	\N	P0118	1931-01-01	2023-11-18 22:15:13.93464+10:30	1
912	පාළිපාඨ මඤ්ජරී…..... භාගය	-1	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	156	\N	\N	18	\N	P0119	1700-01-01	2023-11-18 22:15:13.935645+10:30	1
913	කාරක පුප්ඵ මඤ්ජරී	270	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	352	\N	\N	18	\N	P0120	1899-01-01	2023-11-18 22:15:13.938647+10:30	1
914	ධාත්වත්ථවණ්ණනා	222	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	353	\N	\N	19	\N	P0121	1927-01-01	2023-11-18 22:15:13.941645+10:30	1
915	ධාතුපාඨො ධාතුපාඨ සන්නය	26	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	P0122	1700-01-01	2023-11-18 22:15:13.942646+10:30	1
916	ධාතුපාඨවිලාසිනිය	100	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0123	1926-01-01	2023-11-18 22:15:13.944645+10:30	1
917	ධාත්වත්ව දීපනි	200	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	354	\N	\N	16	\N	P0124	1895-01-01	2023-11-18 22:15:13.945646+10:30	1
918	ධාත්වත්ථසංගහො	90	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	255	\N	\N	19	\N	P0125	1897-01-01	2023-11-18 22:15:13.947644+10:30	1
919	ශබ්දවෘත්තිප්‍රකාශය	86	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0126	1899-01-01	2023-11-18 22:15:13.948645+10:30	1
920	ගන්‍ධාභරණය	90	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0127	1898-01-01	2023-11-18 22:15:13.950149+10:30	1
921	වච්චවාචකය	58	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0128	1899-01-01	2023-11-18 22:15:13.952154+10:30	1
922	නාමිකසද්දමාලා	54	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	16	\N	P0129	1899-01-01	2023-11-18 22:15:13.954155+10:30	1
923	සන්න සහිත බාලප්පබෝධනය	168	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	355	\N	\N	16	\N	P0130	1913-01-01	2023-11-18 22:15:13.956155+10:30	1
924	කාරිකාව	162	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	16	\N	P0131	1897-01-01	2023-11-18 22:15:13.958154+10:30	1
925	සන්න සහිත ශබ්ධබිංදුව	46	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	111	\N	\N	16	\N	P0132	1888-01-01	2023-11-18 22:15:13.960154+10:30	1
926	පද භෙදය	40	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	16	\N	P0133	1895-01-01	2023-11-18 22:15:13.961154+10:30	1
927	පාලි නාමපද මාලාව හා ආඛ්‍යාත පදමාලාව	96	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	356	\N	\N	16	\N	P0134	1936-01-01	2023-11-18 22:15:13.962154+10:30	1
928	බාලාවතාර සංග්‍රහය 1st Edition	136	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	357	\N	\N	16	\N	P0135	1889-01-01	2023-11-18 22:15:13.964153+10:30	1
929	බාලාවතාර සංග්‍රහය 2nd Edition	164	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	357	\N	\N	16	\N	P0135	1913-01-01	2023-11-18 22:15:13.965154+10:30	2
930	සද්දත්‍ථ භෙද චින්තා	36	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	341	\N	\N	16	\N	P0136	1901-01-01	2023-11-18 22:15:13.967154+10:30	1
931	පාලි පදමාලාව - ප්‍රථම භාගය	128	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	358	\N	\N	19	\N	P0137	1970-01-01	2023-11-18 22:15:13.969131+10:30	1
932	විභත්‍යත්‍ථය	44	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0138	1905-01-01	2023-11-18 22:15:13.970156+10:30	1
933	රූපභෙදපපකාසිනිය	52	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	179	\N	\N	19	\N	P0139	1907-01-01	2023-11-18 22:15:13.972153+10:30	1
934	පාලි ව්‍යාකරණොදය	132	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	359	\N	\N	19	\N	P0140	1926-01-01	2023-11-18 22:15:13.974154+10:30	1
935	පාළි පදමාලාව හෙවත් පාළි වරනැගිල්ල	118	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	360	\N	\N	19	\N	P0141	1935-01-01	2023-11-18 22:15:13.976167+10:30	1
936	රූපමාලා වණණනා අථවා විභතත්‍යත්‍ථපපකාසිනී 2 nd Editions	72	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	361	\N	\N	19	\N	P0142	1924-01-01	2023-11-18 22:15:13.977187+10:30	1
937	රූපමාලා වණණනා අථවා විභතත්‍යත්‍ථපපකාසිනී 1st Edition	74	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	362	\N	\N	19	\N	P0142	1873-01-01	2023-11-18 22:15:13.979154+10:30	2
938	ආඛ්‍යාත ව්‍යාඛ්‍යා	26	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	363	\N	\N	19	\N	P0143	1922-01-01	2023-11-18 22:15:13.981154+10:30	1
939	නිපාතරතනාකරො	142	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	364	\N	\N	19	\N	P0144	1931-01-01	2023-11-18 22:15:13.982153+10:30	1
940	කච්චායන ධාතු මඤ්ජූසාව	74	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	365	\N	\N	19	\N	P0145	1872-01-01	2023-11-18 22:15:13.984154+10:30	1
941	පදසාධනං	104	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	366	\N	\N	19	\N	P0146	1932-01-01	2023-11-18 22:15:13.985154+10:30	1
942	පාලි-සිංහල අකාරාදිය, ප්‍රථම භාගය	148	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	367	\N	\N	19	\N	P0147	1931-01-01	2023-11-18 22:15:13.987154+10:30	1
943	ධාතුරූප රත්නාවලී	252	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	368	\N	\N	19	\N	P0148	1930-01-01	2023-11-18 22:15:13.989156+10:30	1
944	දිඨන්තරතනාවලී	62	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	178	\N	\N	19	\N	P0149	1926-01-01	2023-11-18 22:15:13.991155+10:30	1
945	මහා නෙක්ඛම්මචම්පූ	100	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	178	\N	\N	19	\N	P0150	1935-01-01	2023-11-18 22:15:13.992154+10:30	1
946	සම්මොහනාසනී	58	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	224	\N	\N	19	\N	P0151	1911-01-01	2023-11-18 22:15:13.994154+10:30	1
947	මජ්ජිමනිකාය මජ්ජිම පන්නාසක ටිකාව-01	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0155	1700-01-01	2023-11-18 22:15:13.995762+10:30	1
948	මනොරතපුරණි ටිකාව 02	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0156	1700-01-01	2023-11-18 22:15:13.996761+10:30	1
949	මජ්ජිමනිකාය මූල පන්නාසක ටිකාව 01 භාගය - 04	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0157	1700-01-01	2023-11-18 22:15:13.998762+10:30	1
950	මජ්ජිමනිකාය මූල පන්නාසක ටිකාව 02 භාගය - 07	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0158	1700-01-01	2023-11-18 22:15:14.000761+10:30	1
951	මජ්ජිමනිකාය උපරි පන්නාසක ටිකාව 09	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0159	1700-01-01	2023-11-18 22:15:14.002761+10:30	1
952	දීඝ නිකාය මහා වග්ග ටිකාව 06	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0160	1700-01-01	2023-11-18 22:15:14.005763+10:30	1
953	දීඝ නිකාය පාටික වග්ග ටිකාව 08	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0161	1700-01-01	2023-11-18 22:15:14.008762+10:30	1
954	සංයුක්ත නිකාය සගාථ වග්ග ටිකාව 10	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0162	1700-01-01	2023-11-18 22:15:14.010708+10:30	1
955	දීඝ නිකාය සීලක්ඛන්ධ වග්ග 11	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0163	1700-01-01	2023-11-18 22:15:14.012714+10:30	1
956	මනොරතපුරණි ටිකාව -12	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0164	1700-01-01	2023-11-18 22:15:14.013714+10:30	1
957	මනොරතපුරණි ටිකාව -15	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0165	1700-01-01	2023-11-18 22:15:14.015714+10:30	1
958	සංයුක්ත නිකාය සලායතන/ඛන්ධ/මහා වග්ග ටිකාව 17	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0166	1700-01-01	2023-11-18 22:15:14.017715+10:30	1
959	විශුද්ධි මාර්ගය	566	L1_C4	L1_C4_C1	L3_C2	\N		\N	2023-11-18	\N	\N	125	\N	\N	19	\N	B0017	1919-01-01	2023-11-18 22:15:14.019713+10:30	1
960	මිලින්දප්‍රශ්න	660	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	371	\N	\N	19	\N	B0018	1970-01-01	2023-11-18 22:15:14.021714+10:30	1
961	වීශුද්ධි දීපිකා	180	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	372	\N	\N	18	\N	B0019	1931-01-01	2023-11-18 22:15:14.023714+10:30	1
962	මධුරත්තපකාසිනි මිලින්දප්‍රශ්න ටීකා - 18	143	L1_C4	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	B0020	1916-01-01	2023-11-18 22:15:14.025518+10:30	1
963	පරමත්ථමඤ්ජුසා විසුද්ධිමග්ගටීකා - 05	563	L1_C4	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	B0021	1907-01-01	2023-11-18 22:15:14.026518+10:30	1
964	විශුද්ධි මාර්ගය 01	644	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	16	\N	B0022	1888-01-01	2023-11-18 22:15:14.028517+10:30	1
965	විශුද්ධි මාර්ගය 02	434	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	16	\N	B0023	1888-01-01	2023-11-18 22:15:14.029518+10:30	1
966	විශුද්ධි මාර්ගය 03	166	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	16	\N	B0024	1888-01-01	2023-11-18 22:15:14.031519+10:30	1
967	විශුද්ධි මාර්ගය 04	403	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	16	\N	B0025	1888-01-01	2023-11-18 22:15:14.033517+10:30	1
968	සකස්කඩ	4	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RG0030	1700-01-01	2023-11-18 22:15:14.034518+10:30	1
969	වදන් කවි පොත	10	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RG0031	1700-01-01	2023-11-18 22:15:14.035524+10:30	1
970	ගණපති යදින්න සහ ගණපති හෑල්ල	7	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RG0032	1700-01-01	2023-11-18 22:15:14.036522+10:30	1
971	නම් පොත	3	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RG0033	1700-01-01	2023-11-18 22:15:14.038523+10:30	1
972	මගුල් ලකුණ	4	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RG0034	1700-01-01	2023-11-18 22:15:14.039523+10:30	1
973	කවිසිළුමිණ හෙවත් කුසදාවත කුස රජුගේ උපත	259	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	378	\N	\N	17	\N	RG0035	1926-01-01	2023-11-18 22:15:14.041523+10:30	1
974	කවිසිළුමිණ 01	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0036	1700-01-01	2023-11-18 22:15:14.042561+10:30	1
975	කවිසිළුමිණ 02	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0036	1700-01-01	2023-11-18 22:15:14.043523+10:30	2
976	කාව්යශේඛරය තොටගමුවේ රාහුල හිමි	220	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	379	\N	\N	17	\N	RG0037	1872-01-01	2023-11-18 22:15:14.045408+10:30	1
977	කුවේණි අස්න සහ සිහබා අසුන	54	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	380	\N	\N	17	\N	RG0038	1927-01-01	2023-11-18 22:15:14.046408+10:30	1
978	සැළලිහිණි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0003	1700-01-01	2023-11-18 22:15:14.048408+10:30	1
979	ජිනධර්මවිකාශන	107	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RA0024	1700-01-01	2023-11-18 22:15:14.050408+10:30	1
980	දහම් සරණ	453	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	381	\N	\N	17	\N	RG0039	1931-01-01	2023-11-18 22:15:14.051629+10:30	1
981	දහම් සරණ විවරණය - ප්‍රථම භාගය	217	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	382	\N	\N	17	\N	RG0040	1931-01-01	2023-11-18 22:15:14.053629+10:30	1
982	දහම් සරණ විවරණය - ප්‍රථම භාගය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0041	1700-01-01	2023-11-18 22:15:14.055629+10:30	1
983	දහම් සරණ	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0042	1700-01-01	2023-11-18 22:15:14.058141+10:30	1
984	දහම්ගැට මාලාව	13	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	383	\N	\N	17	\N	RA0025	1893-01-01	2023-11-18 22:15:14.060141+10:30	1
985	දළදා පූජාවලිය	39	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	383	\N	\N	17	\N	RA0026	1893-01-01	2023-11-18 22:15:14.062141+10:30	1
986	ලෝකෝපකාරය	161	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	387	\N	\N	17	\N	RG0043	1924-01-01	2023-11-18 22:15:14.064142+10:30	1
987	ලෝකෝපකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	387	\N	\N	17	\N	RG0044	1700-01-01	2023-11-18 22:15:14.066141+10:30	1
988	ලෝකෝපකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	387	\N	\N	17	\N	RG0045	1700-01-01	2023-11-18 22:15:14.068142+10:30	1
989	ලෝකෝපකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	387	\N	\N	17	\N	RG0046	1700-01-01	2023-11-18 22:15:14.070141+10:30	1
990	ලෝකෝපකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	387	\N	\N	17	\N	RG0047	1700-01-01	2023-11-18 22:15:14.072142+10:30	1
991	ශ්‍රීන්ගාරය	115	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	389	\N	\N	17	\N	RG0048	1955-01-01	2023-11-18 22:15:14.074141+10:30	1
992	සමන්ත කූඨ වර්ණනා	244	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	390	\N	\N	17	\N	RG0049	1910-01-01	2023-11-18 22:15:14.076141+10:30	1
993	සිරීපාද පොත	32	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	391	\N	\N	17	\N	RG0050	1700-01-01	2023-11-18 22:15:14.078141+10:30	1
994	සාරාර්‍ත්‍ථචන්ද්‍රිකා නම් වූ සාරස්වතාර්‍ත්‍ථ ව්‍යාඛ්‍යාව	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RD0044	1700-01-01	2023-11-18 22:15:14.079167+10:30	1
995	සිංහල මේඝදුත කාව්‍යය	44	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	392	\N	\N	17	\N	RD0045	1934-01-01	2023-11-18 22:15:14.081141+10:30	1
996	සිංහල රගු වංසය	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RD0046	1700-01-01	2023-11-18 22:15:14.082141+10:30	1
997	හිතෝපදේශ සන්නය	222	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	393	\N	\N	17	\N	RD0047	1884-01-01	2023-11-18 22:15:14.084141+10:30	1
998	සරණ ගමන විනිශ්චය	40	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	341	\N	\N	20	\N	RA0027	1912-01-01	2023-11-18 22:15:14.086141+10:30	1
999	කර්ම වර්ණනාව	73	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	394	\N	\N	20	\N	RA0028	1920-01-01	2023-11-18 22:15:14.088142+10:30	1
1000	සන්න සහිත අසංඛෙය්‍ය චක්‍රය	10	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	395	\N	\N	18	\N	RA0029	1910-01-01	2023-11-18 22:15:14.090141+10:30	1
1001	චූලරාජ පිරිත සහ මහා රාජ පිරිත	40	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	396	\N	\N	18	\N	RA0030	1897-01-01	2023-11-18 22:15:14.092141+10:30	1
1002	චතුරාර්‍යසත්‍ය විභාගය	47	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	397	\N	\N	18	\N	RA0031	1927-01-01	2023-11-18 22:15:14.094141+10:30	1
1003	පිරිත් ප්‍රශ්නය	10	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RA0032	1899-01-01	2023-11-18 22:15:14.095142+10:30	1
1004	ශ්‍රී සද්ධර්මොවාදය	12	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RA0033	1700-01-01	2023-11-18 22:15:14.097141+10:30	1
1005	කර්ම විභාගය	143	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	398	\N	\N	18	\N	RA0034	1929-01-01	2023-11-18 22:15:14.099142+10:30	1
1006	තෘෂ්ණාදෝෂ දිපනිය	33	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	399	\N	\N	18	\N	RA0035	1938-01-01	2023-11-18 22:15:14.100141+10:30	1
1007	අන්තරායික ධර්ම	23	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	400	\N	\N	18	\N	RA0036	1957-01-01	2023-11-18 22:15:14.10214+10:30	1
1008	විශුද්ධිමග්ග 02	323	L1_C4	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	B0027	1700-01-01	2023-11-18 22:15:14.104144+10:30	1
1009	විශුද්ධිමග්ග මහා ටීකා 01	407	L1_C4	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	B0028	1700-01-01	2023-11-18 22:15:14.106141+10:30	1
1010	විශුද්ධිමග්ග මහා ටීකා 02	468	L1_C4	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	B0029	1700-01-01	2023-11-18 22:15:14.108141+10:30	1
1011	විශුද්ධිමග්ග නිධාන	76	L1_C4	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	B0030	1700-01-01	2023-11-18 22:15:14.109141+10:30	1
1012	දීඝ නිකාය සීලක්ඛන්ධවග්ග	206	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0167	1700-01-01	2023-11-18 22:15:14.112142+10:30	1
1013	දීඝ නිකාය මහා වග්ග	244	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0168	1700-01-01	2023-11-18 22:15:14.114141+10:30	1
1014	දීඝ නිකාය පාටිකවග්ග	224	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0169	1700-01-01	2023-11-18 22:15:14.116141+10:30	1
1015	මජ්ජිම නිකාය මුලපන්නසක	358	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0170	1700-01-01	2023-11-18 22:15:14.118142+10:30	1
1016	මජ්ජිම නිකාය මජ්ජිමපන්නසක	369	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0171	1700-01-01	2023-11-18 22:15:14.120141+10:30	1
1017	මජ්ජිම නිකාය උපරිපන්නසක	303	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0172	1700-01-01	2023-11-18 22:15:14.122141+10:30	1
1018	සංයුක්ත නිකාය සගාථවග්ග	241	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0173	1700-01-01	2023-11-18 22:15:14.124142+10:30	1
1019	සංයුක්ත නිකාය නිදානවග්ග	212	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0174	1700-01-01	2023-11-18 22:15:14.126141+10:30	1
1020	සංයුක්ත නිකාය ඛන්ධවග්ග	224	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0175	1700-01-01	2023-11-18 22:15:14.128143+10:30	1
1021	සංයුක්ත නිකාය සලායතනවග්ග	303	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0176	1700-01-01	2023-11-18 22:15:14.130141+10:30	1
1022	සංයුක්ත නිකාය මහාවග්ග	388	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0177	1700-01-01	2023-11-18 22:15:14.132141+10:30	1
1023	අංගුත්තර නිකාය එකනිපාත	46	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0178	1700-01-01	2023-11-18 22:15:14.134141+10:30	1
1024	අංගුත්තර නිකාය දුකනිපාත	47	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0179	1700-01-01	2023-11-18 22:15:14.136147+10:30	1
1025	අංගුත්තර නිකාය තිකනිපාත	185	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0180	1700-01-01	2023-11-18 22:15:14.138148+10:30	1
1026	අංගුත්තර නිකාය චතුක්කනිපාත	235	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0181	1700-01-01	2023-11-18 22:15:14.140147+10:30	1
1027	අංගුත්තර නිකාය පංචකනිපාත	212	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0182	1700-01-01	2023-11-18 22:15:14.142146+10:30	1
1028	අංගුත්තර නිකාය චක්කනිපාත	128	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0183	1700-01-01	2023-11-18 22:15:14.144148+10:30	1
1029	අංගුත්තර නිකාය සත්තකනිපාත	105	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0184	1700-01-01	2023-11-18 22:15:14.146146+10:30	1
1030	අංගුත්තර නිකාය අට්ටකනිපාත	140	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0185	1700-01-01	2023-11-18 22:15:14.148146+10:30	1
1031	අංගුත්තර නිකාය නවකනිපාත	83	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0186	1700-01-01	2023-11-18 22:15:14.149147+10:30	1
1032	අංගුත්තර නිකාය දසකනිපාත	224	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0187	1700-01-01	2023-11-18 22:15:14.151658+10:30	1
1033	අංගුත්තර නිකාය එකාදසකනිපාත	41	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0188	1700-01-01	2023-11-18 22:15:14.152658+10:30	1
1034	ඛුද්දක නිකාය ඛුද්ධක පාඨ පාලි	15	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0189	1700-01-01	2023-11-18 22:15:14.154658+10:30	1
1035	ඛුද්දක නිකාය ධම්මපද පාලි	52	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0190	1700-01-01	2023-11-18 22:15:14.156657+10:30	1
1036	ඛුද්දක නිකාය උදාන පාලි	101	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0191	1700-01-01	2023-11-18 22:15:14.158724+10:30	1
1037	ඛුද්දක නිකාය ඉතිවුත්තක පාලි	76	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0192	1700-01-01	2023-11-18 22:15:14.160657+10:30	1
1038	ඛුද්දක නිකාය සුත්තනිපාත පාලි	160	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0193	1700-01-01	2023-11-18 22:15:14.162658+10:30	1
1039	ඛුද්දක නිකාය විමානවත්ථු පාලි	122	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0194	1700-01-01	2023-11-18 22:15:14.164658+10:30	1
1040	ඛුද්දක නිකාය පේතවත්ථු පාලි	96	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0195	1700-01-01	2023-11-18 22:15:14.165658+10:30	1
1041	ඛුද්දක නිකාය ථේරගාථා පාලි	174	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0196	1700-01-01	2023-11-18 22:15:14.167658+10:30	1
1042	ඛුද්දක නිකාය ථේරීගාථා පාලි	66	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0197	1700-01-01	2023-11-18 22:15:14.169666+10:30	1
1043	ඛුද්දක නිකාය අපදානපාලි 01	545	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0198	1700-01-01	2023-11-18 22:15:14.170665+10:30	1
1044	ඛුද්දක නිකාය අපදානපාලි 02	365	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0199	1700-01-01	2023-11-18 22:15:14.172665+10:30	1
1045	ඛුද්දක නිකාය බුද්ධවංස පාලි	109	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0200	1700-01-01	2023-11-18 22:15:14.174696+10:30	1
1046	ඛුද්දක නිකාය චරියාපිටක පාලි	44	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0201	1700-01-01	2023-11-18 22:15:14.176665+10:30	1
1047	ඛුද්දක නිකාය ජාතක පාලි 01	401	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0202	1700-01-01	2023-11-18 22:15:14.178664+10:30	1
1048	ඛුද්දක නිකාය ජාතක පාලි 02	416	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0203	1700-01-01	2023-11-18 22:15:14.180183+10:30	1
1049	ඛුද්දක නිකාය මහානිද්දෙස පාලි	351	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0204	1700-01-01	2023-11-18 22:15:14.181175+10:30	1
1050	ඛුද්දක නිකාය චුලනිද්දෙස පාලි	262	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0205	1700-01-01	2023-11-18 22:15:14.183174+10:30	1
1051	ඛුද්දක නිකාය පටිසම්භිධාමග්ග පාලි	372	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0206	1700-01-01	2023-11-18 22:15:14.185172+10:30	1
1052	ඛුද්දක නිකාය නෙත්තිප්‍රකරණ	147	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0207	1700-01-01	2023-11-18 22:15:14.186174+10:30	1
1053	ඛුද්දක නිකාය මිලින්දප්‍රශ්න	344	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0208	1700-01-01	2023-11-18 22:15:14.188177+10:30	1
1054	ඛුද්දක නිකාය පෙටකොපදෙස	149	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0209	1700-01-01	2023-11-18 22:15:14.19118+10:30	1
1055	දීඝ නිකාය සීලක්ඛන්ධවග්ග අට්ටකථා	301	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0210	1700-01-01	2023-11-18 22:15:14.193172+10:30	1
1056	දීඝ නිකාය මහා වග්ග අට්ටකථා	366	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0211	1700-01-01	2023-11-18 22:15:14.195179+10:30	1
1057	දීඝ නිකාය පාටිකවග්ග අට්ටකථා	227	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0212	1700-01-01	2023-11-18 22:15:14.196156+10:30	1
1058	මජ්ජිම නිකාය මුලපන්නසක අට්ටකථා	633	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0213	1700-01-01	2023-11-18 22:15:14.198181+10:30	1
1059	මජ්ජිම නිකාය මජ්ජිමපන්නසක අට්ටකථා	270	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0214	1700-01-01	2023-11-18 22:15:14.19969+10:30	1
1060	මජ්ජිම නිකාය උපරිපන්නසක අට්ටකථා	222	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0215	1700-01-01	2023-11-18 22:15:14.201803+10:30	1
1061	සංයුක්ත නිකාය සගාථවග්ග අට්ටකථා	294	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0216	1700-01-01	2023-11-18 22:15:14.203804+10:30	1
1062	සංයුක්ත නිකාය නිදානවග්ග අට්ටකථා	212	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0217	1700-01-01	2023-11-18 22:15:14.2057+10:30	1
1063	සංයුක්ත නිකාය ඛන්ධවග්ග අට්ටකථා	92	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0218	1700-01-01	2023-11-18 22:15:14.207714+10:30	1
1064	සංයුක්ත නිකාය සලායතනවග්ග අට්ටකථා	142	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0219	1700-01-01	2023-11-18 22:15:14.209783+10:30	1
1065	සංයුක්ත නිකාය මහාවග්ග අට්ටකථා	176	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0220	1700-01-01	2023-11-18 22:15:14.210809+10:30	1
1066	අංගුත්තර නිකාය අට්ටකථා එකනිපාත	360	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0221	1700-01-01	2023-11-18 22:15:14.212782+10:30	1
1067	අංගුත්තර නිකාය අට්ටකථා දුක තික චතුක්ක නිපාත	358	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0222	1700-01-01	2023-11-18 22:15:14.214781+10:30	1
1068	අංගුත්තර නිකාය අට්ටකථා පංචක චක්ක සත්තකනිපාත	184	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0223	1700-01-01	2023-11-18 22:15:14.215782+10:30	1
1069	අංගුත්තර නිකාය අට්ටකථා නවක දසක එකාදසක නිපාත	159	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0224	1700-01-01	2023-11-18 22:15:14.217781+10:30	1
1070	ඛුද්දක නිකාය ඛුද්ධක පාඨ අට්ටකථා	197	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0225	1700-01-01	2023-11-18 22:15:14.219781+10:30	1
1071	ඛුද්දක නිකාය ධම්මපද අට්ටකථා 01	374	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0226	1700-01-01	2023-11-18 22:15:14.221784+10:30	1
1072	ඛුද්දක නිකාය ධම්මපද අට්ටකථා 02	387	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0227	1700-01-01	2023-11-18 22:15:14.222808+10:30	1
1073	ඛුද්දක නිකාය උදාන අට්ටකථා	330	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0228	1700-01-01	2023-11-18 22:15:14.224781+10:30	1
1074	ඛුද්දක නිකාය ඉතිවුත්තක අට්ටකථා	301	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0229	1700-01-01	2023-11-18 22:15:14.226781+10:30	1
1075	ඛුද්දක නිකාය සුත්තනිපාත අට්ටකථා	528	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0230	1700-01-01	2023-11-18 22:15:14.227782+10:30	1
1076	ඛුද්දක නිකාය විමානවත්ථු අට්ටකථා	284	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0231	1700-01-01	2023-11-18 22:15:14.229983+10:30	1
1077	ඛුද්දක නිකාය පේතවත්ථු අට්ටකථා	231	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0232	1700-01-01	2023-11-18 22:15:14.230983+10:30	1
1078	ඛුද්දක නිකාය ථේරගාථා අට්ටකථා 01	404	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0233	1700-01-01	2023-11-18 22:15:14.232983+10:30	1
1079	ඛුද්දක නිකාය ථේරගාථා අට්ටකථා 02	483	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0234	1700-01-01	2023-11-18 22:15:14.234983+10:30	1
1080	ඛුද්දක නිකාය ථේරීගාථා අට්ටකථා	279	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0235	1700-01-01	2023-11-18 22:15:14.236988+10:30	1
1081	ඛුද්දක නිකාය අපදාන අට්ටකථා	547	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0236	1700-01-01	2023-11-18 22:15:14.238988+10:30	1
1082	ඛුද්දක නිකාය බුද්ධවංස අට්ටකථා	318	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0237	1700-01-01	2023-11-18 22:15:14.239989+10:30	1
1083	ඛුද්දක නිකාය චරියාපිටක අට්ටකථා	281	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0238	1700-01-01	2023-11-18 22:15:14.241988+10:30	1
1084	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 01	448	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0239	1700-01-01	2023-11-18 22:15:14.24301+10:30	1
1085	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 02	346	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0240	1700-01-01	2023-11-18 22:15:14.244988+10:30	1
1086	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 03	441	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0241	1700-01-01	2023-11-18 22:15:14.246988+10:30	1
1087	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 04	427	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0242	1700-01-01	2023-11-18 22:15:14.248987+10:30	1
1088	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 05	477	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0243	1700-01-01	2023-11-18 22:15:14.250527+10:30	1
1089	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 06	287	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0244	1700-01-01	2023-11-18 22:15:14.252532+10:30	1
1090	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 07	353	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0245	1700-01-01	2023-11-18 22:15:14.253993+10:30	1
1091	ඛුද්දක නිකාය මහානිද්දෙස අට්ටකථා	374	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0246	1700-01-01	2023-11-18 22:15:14.255999+10:30	1
1092	ඛුද්දක නිකාය චුලනිද්දෙස අට්ටකථා	123	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0247	1700-01-01	2023-11-18 22:15:14.257998+10:30	1
1093	ඛුද්දක නිකාය පටිසම්භිධාමග්ග අට්ටකථා 01	328	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0248	1700-01-01	2023-11-18 22:15:14.259821+10:30	1
1094	ඛුද්දක නිකාය පටිසම්භිධාමග්ග අට්ටකථා 02	244	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0249	1700-01-01	2023-11-18 22:15:14.260761+10:30	1
1095	ඛුද්දක නිකාය නෙත්තිප්‍රකරණ අට්ටකථා	240	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0250	1700-01-01	2023-11-18 22:15:14.262748+10:30	1
1096	දීඝ නිකාය සීලක්ඛන්ධවග්ග ටීකා	339	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0251	1700-01-01	2023-11-18 22:15:14.264737+10:30	1
1097	දීඝ නිකාය මහා වග්ග ටීකා	308	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0252	1700-01-01	2023-11-18 22:15:14.266746+10:30	1
1098	දීඝ නිකාය පාටිකවග්ග ටීකා	247	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0253	1700-01-01	2023-11-18 22:15:14.267743+10:30	1
1099	දීඝ නිකාය සීලක්ඛන්ධවග්ග අභිනව ටීකා 01	419	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0254	1700-01-01	2023-11-18 22:15:14.269822+10:30	1
1100	දීඝ නිකාය සීලක්ඛන්ධවග්ග අභිනව ටීකා 02	366	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0255	1700-01-01	2023-11-18 22:15:14.27183+10:30	1
1101	මජ්ජිම නිකාය මුලපන්නසක ටීකා	598	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0256	1700-01-01	2023-11-18 22:15:14.273832+10:30	1
1102	මජ්ජිම නිකාය මජ්ජිමපන්නසක ටීකා	176	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0257	1700-01-01	2023-11-18 22:15:14.274825+10:30	1
1103	මජ්ජිම නිකාය උපරිපන්නසක ටීකා	204	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0258	1700-01-01	2023-11-18 22:15:14.276823+10:30	1
1104	සංයුක්ත නිකාය සගාථවග්ග ටීකා	286	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0259	1700-01-01	2023-11-18 22:15:14.277824+10:30	1
1105	සංයුක්ත නිකාය නිදානවග්ග ටීකා	170	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0260	1700-01-01	2023-11-18 22:15:14.279824+10:30	1
1106	සංයුක්ත නිකාය ඛන්ධවග්ග ටීකා	71	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0261	1700-01-01	2023-11-18 22:15:14.281822+10:30	1
1107	සංයුක්ත නිකාය සලායතනවග්ග ටීකා	93	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0262	1700-01-01	2023-11-18 22:15:14.283822+10:30	1
1108	සංයුක්ත නිකාය මහාවග්ග ටීකා	141	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0263	1700-01-01	2023-11-18 22:15:14.284824+10:30	1
1109	අංගුත්තර නිකාය ටීකා එකනිපාත	247	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0264	1700-01-01	2023-11-18 22:15:14.286824+10:30	1
1110	අංගුත්තර නිකාය ටීකා දුක තික චතුක්ක නිපාත	328	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0265	1700-01-01	2023-11-18 22:15:14.288822+10:30	1
1111	අංගුත්තර නිකාය ටීකා පංචක චක්ක සත්තකනිපාත	169	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0266	1700-01-01	2023-11-18 22:15:14.290931+10:30	1
1112	අංගුත්තර නිකාය ටීකා අට්ටක නවක දසක එකාදසක නිපාත	143	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0267	1700-01-01	2023-11-18 22:15:14.291988+10:30	1
1113	නෙත්තිප්‍රකරණ ටීකා	132	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0268	1700-01-01	2023-11-18 22:15:14.293938+10:30	1
1114	නෙත්තිවිභාවිනි	310	L1_C2	L2_A6	L3_C1	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	S0269	1700-01-01	2023-11-18 22:15:14.295954+10:30	1
1115	මජ්ජිම නිකායො (පාඨමො භාගො)	398	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	401	\N	\N	18	\N	S0270	1924-01-01	2023-11-18 22:15:14.297965+10:30	1
1116	ඛුද්දකපාඨ ධම්මපද උදාන ඉතිවුත්තක පාළි	206	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	402	\N	\N	18	\N	S0271	1926-01-01	2023-11-18 22:15:14.299957+10:30	1
1117	අංගුත්තරනිකායො පාලි	1170	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	403	\N	\N	18	\N	S0272	1893-01-01	2023-11-18 22:15:14.300955+10:30	1
1118	අංගුත්තරනිකායට්ඨකථාටීකා - 01	223	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	404	\N	\N	18	\N	S0273	1930-01-01	2023-11-18 22:15:14.302953+10:30	1
1119	අග්ගිකන්දෝපම සුත්‍ර සන්නය	25	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0274	1914-01-01	2023-11-18 22:15:14.303937+10:30	1
1120	සමන්තපාසාදිකා විනයසංවණ්ණානා	877	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	405	\N	\N	18	\N	V0131	1900-01-01	2023-11-18 22:15:14.305953+10:30	1
1121	ඔවාද ප්‍රාතිමොක්ෂය	20	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0132	1897-01-01	2023-11-18 22:15:14.307952+10:30	1
1122	විනයත්තප්පකාසිනි භාවාර්ත්ථ සහිත චුල්ලවග්ග ව්යාඛ්යාව - 01 - 02	404	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	406	\N	\N	18	\N	V0133	1927-01-01	2023-11-18 22:15:14.308953+10:30	1
1123	පුරාණ පාරුපනවත සහ අති පුරාණ පාරුපනවත	35	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	407	\N	\N	18	\N	V0134	1914-01-01	2023-11-18 22:15:14.310908+10:30	1
1124	මුලුසික සන්නය	48	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	408	\N	\N	18	\N	V0135	1887-01-01	2023-11-18 22:15:14.311911+10:30	1
1125	සතර පාරාජිකා විනිශ්චය	25	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0136	1897-01-01	2023-11-18 22:15:14.313906+10:30	1
1126	සාසනසුද්ධ දීපනිය	40	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	409	\N	\N	18	\N	V0137	1899-01-01	2023-11-18 22:15:14.315906+10:30	1
1127	සුද්‍ධච්ඡාද විභාවිනිය	48	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0138	1885-01-01	2023-11-18 22:15:14.316906+10:30	1
1128	විසුද්ධිමග්ගො පාළි	580	L1_C4	L1_C4_C1	L3_C2	\N		\N	2023-11-18	\N	\N	119	\N	\N	18	\N	B0032	1914-01-01	2023-11-18 22:15:14.318906+10:30	1
1129	බණපිරිත් කතිකාවත	24	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RA0037	1906-01-01	2023-11-18 22:15:14.319812+10:30	1
1130	කථින විනිශ්චය	55	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	410	\N	\N	16	\N	RA0038	1909-01-01	2023-11-18 22:15:14.32195+10:30	1
1131	අංගුත්තර නිකාය ගාථා සන්නය	163	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	154	\N	\N	18	\N	S0275	1908-01-01	2023-11-18 22:15:14.323966+10:30	1
1132	සිඛ වළඳ හා සිඛ වළඳ විනිස සහිත සිඛ වළඳ විනිස ප්‍රදීපය	171	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	411	\N	\N	18	\N	V0139	1950-01-01	2023-11-18 22:15:14.325965+10:30	1
1133	විනයත්ථදීපනී මාතිකට්ඨකථා ව්යාඛ්යානය 01	473	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	190	\N	\N	19	\N	V0140	2020-01-01	2023-11-18 22:15:14.326971+10:30	1
1134	විනයත්ථදීපනී මාතිකට්ඨකථා ව්යාඛ්යානය 02	335	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	190	\N	\N	19	\N	V0140	2021-01-01	2023-11-18 22:15:14.328965+10:30	2
1135	ධර්‍ම පදාර්‍ත්‍ථ කථා ගාථාසන්නය.	89	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	93	\N	\N	18	\N	S0276	1889-01-01	2023-11-18 22:15:14.330967+10:30	1
1136	සීමාවිනිශ්චය	176	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	412	\N	\N	14	\N	V0141	1968-01-01	2023-11-18 22:15:14.332949+10:30	1
1137	මුලුසික සන්නය	38	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0142	1924-01-01	2023-11-18 22:15:14.333966+10:30	1
1138	ඛුද්දසික්ඛා සුමංගලප්පසාදනියා ටිකාය	202	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	413	\N	\N	18	\N	V0143	1898-01-01	2023-11-18 22:15:14.33597+10:30	1
1139	සීමාලංකාර සංග්‍රහ සන්නය	56	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	414	\N	\N	18	\N	V0144	1904-01-01	2023-11-18 22:15:14.337957+10:30	1
1140	පරමාර්ථ විභාගය සහ විනයොපදේශය	506	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	415	\N	\N	18	\N	V0145	1939-01-01	2023-11-18 22:15:14.339956+10:30	1
1141	කම්මවාචා	46	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	416	\N	\N	18	\N	V0146	1918-01-01	2023-11-18 22:15:14.341953+10:30	1
1142	පාචිත්‍යදියෝජනා	350	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0147	1700-01-01	2023-11-18 22:15:14.343971+10:30	1
1143	පාරුපනවත	92	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	V0148	1900-01-01	2023-11-18 22:15:14.344971+10:30	1
1144	කම්මවාචා	55	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	417	\N	\N	12	\N	V0149	1907-01-01	2023-11-18 22:15:14.346972+10:30	1
1145	භික්ෂු ප්‍රාතිමෝක්‍ෂය සහ භික්ෂුණි ප්‍රතිමොක්ෂය	102	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	418	\N	\N	12	\N	V0150	1914-01-01	2023-11-18 22:15:14.347971+10:30	1
1146	විනයත්ථ මංජුසා නාම කංඛාවිතරණි ටීකා	312	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	419	\N	\N	12	\N	V0151	1700-01-01	2023-11-18 22:15:14.348988+10:30	1
1147	උභයමාතිකාපාලිය	244	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	420	\N	\N	12	\N	V0152	1914-01-01	2023-11-18 22:15:14.351547+10:30	1
1148	ඛන්ධක විනය	380	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	421	\N	\N	12	\N	V0153	1966-01-01	2023-11-18 22:15:14.352546+10:30	1
1149	කඞඛාවිතරණී නාම පාතිමොක්ඛ වණණනා.	252	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	422	\N	\N	12	\N	V0154	1930-01-01	2023-11-18 22:15:14.354529+10:30	1
1150	මෙහෙණ සස්න	204	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	423	\N	\N	12	\N	V0155	1956-01-01	2023-11-18 22:15:14.356548+10:30	1
1151	සික්ඛාපද වලඤජන	116	L1_C1	L1_C1_C1	L3_C2	\N		\N	2023-11-18	\N	\N	424	\N	\N	12	\N	V0156	1901-01-01	2023-11-18 22:15:14.358545+10:30	1
1152	සිකවලද හා සිකවලද විනිස	140	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	425	\N	\N	12	\N	V0157	1834-01-01	2023-11-18 22:15:14.360062+10:30	1
1153	මහණකම	136	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	25	\N	\N	12	\N	V0158	1956-01-01	2023-11-18 22:15:14.361059+10:30	1
1154	විසුද්ධි මග්ග සන්න (ප්‍රථම භාගය)	300	L1_C4	L1_C4_C1	L3_C1	\N		\N	2023-11-18	\N	\N	426	\N	\N	18	\N	B0033	1927-01-01	2023-11-18 22:15:14.36306+10:30	1
1155	ශිල නිර්දේශය	402	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	248	\N	\N	12	\N	V0159	1700-01-01	2023-11-18 22:15:14.365059+10:30	1
1156	විනය ප්‍රශ්න පත්‍ර 1989-2014	55	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	12	\N	V0160	1700-01-01	2023-11-18 22:15:14.366059+10:30	1
1157	සංයුක්ත නිකාය නිදාන වග්ග ටිකාව 13	-1	L1_C2	L2_A11	L3_C1	\N		\N	2023-11-18	\N	\N	110	\N	\N	14	\N	S0277	1700-01-01	2023-11-18 22:15:14.368059+10:30	1
1158	මහා පරිනිර්වාණ සුත්‍රය අර්‍ත්‍ථව්‍යාඛ්‍යානය	254	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0278	1700-01-01	2023-11-18 22:15:14.369059+10:30	1
1159	අංගුත්තර නිකාය 1	438	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	427	\N	\N	18	\N	S0279	1952-01-01	2023-11-18 22:15:14.37106+10:30	1
1160	අංගුත්තර නිකාය 2	600	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	427	\N	\N	18	\N	S0279	1971-01-01	2023-11-18 22:15:14.372059+10:30	2
1161	සිංහල චර්‍ය්‍යපිටකාර්‍ථවර්‍ණනා	388	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	154	\N	\N	18	\N	S0280	1962-01-01	2023-11-18 22:15:14.374059+10:30	1
1162	සන්න සහිත චරියාපිටකය	160	L1_C2	L2_A10	L3_C1	\N		\N	2023-11-18	\N	\N	428	\N	\N	18	\N	S0281	1904-01-01	2023-11-18 22:15:14.37506+10:30	1
1163	පරමත්ථ දීපනී නාම චරියාපිටකඅට්ඨ කථා	282	L1_C2	L2_A10	L3_C2	\N		\N	2023-11-18	\N	\N	154	\N	\N	18	\N	S0282	1920-01-01	2023-11-18 22:15:14.377059+10:30	1
1164	දම්පියා අටුවා සන්නය ගැටපදය	368	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	429	\N	\N	18	\N	S0283	1952-01-01	2023-11-18 22:15:14.379085+10:30	1
1165	දම්පියා අටුවා ගැටපදය විවරණය	222	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	430	\N	\N	18	\N	S0284	1967-01-01	2023-11-18 22:15:14.38106+10:30	1
1166	එළු උමංදාව	260	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	431	\N	\N	18	\N	S0285	1950-01-01	2023-11-18 22:15:14.38206+10:30	1
1167	ධම්මපද පුරාණ සන්නය	214	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	203	\N	\N	18	\N	S0286	1926-01-01	2023-11-18 22:15:14.384059+10:30	1
1168	ධම්මපද පුරාණ සන්නය	208	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	13	\N	\N	18	\N	S0287	1911-01-01	2023-11-18 22:15:14.385093+10:30	1
1169	ධම්මපද විවරණය	852	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	432	\N	\N	18	\N	S0288	1962-01-01	2023-11-18 22:15:14.387059+10:30	1
1170	The Dammapada	102	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	433	\N	\N	18	\N	S0289	1959-01-01	2023-11-18 22:15:14.39006+10:30	1
1171	Buddavamsa and chariya-pitaka	124	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	434	\N	\N	18	\N	S0290	1882-01-01	2023-11-18 22:15:14.391059+10:30	1
1172	ධර්‍මමාත්‍ථර්‍ දීපනී	370	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	435	\N	\N	18	\N	S0291	1936-01-01	2023-11-18 22:15:14.39306+10:30	1
1173	The Dammapada 02	108	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	433	\N	\N	18	\N	S0292	1940-01-01	2023-11-18 22:15:14.395059+10:30	1
1174	අපදාන පාලි	516	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	436	\N	\N	18	\N	S0293	1930-01-01	2023-11-18 22:15:14.396059+10:30	1
1175	දශජාතක කථා වස්තුව	422	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	437	\N	\N	18	\N	S0294	1928-01-01	2023-11-18 22:15:14.398059+10:30	1
1176	ධම්මපදං	34	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0295	1700-01-01	2023-11-18 22:15:14.399059+10:30	1
1177	ධම්මපදටඨකථා	700	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	438	\N	\N	18	\N	S0296	1933-01-01	2023-11-18 22:15:14.401059+10:30	1
1178	ධම්මපදය	148	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	13	\N	\N	18	\N	S0297	1889-01-01	2023-11-18 22:15:14.402059+10:30	1
1179	භූරිදත්ත - වෙස්සන්තර ජාතක විවරණය	326	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	439	\N	\N	18	\N	S0298	1955-01-01	2023-11-18 22:15:14.40406+10:30	1
1180	විමානවස්තුප්‍රකරණය ප්‍රේතවස්තුප්‍රකරණය	430	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	440	\N	\N	18	\N	S0299	1901-01-01	2023-11-18 22:15:14.40606+10:30	1
1181	අංගුලිමාල සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	441	\N	\N	18	\N	S0300	1891-01-01	2023-11-18 22:15:14.408059+10:30	1
1182	අග්ගිකඛන්ධෝපම සූත්‍රසන්නය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0301	1900-01-01	2023-11-18 22:15:14.410059+10:30	1
1183	ජාතක අටුවා ගැටපදය	264	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	425	\N	\N	18	\N	S0302	1943-01-01	2023-11-18 22:15:14.411059+10:30	1
1184	ජාතක ගාථා සන්නය	570	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	442	\N	\N	18	\N	S0303	1929-01-01	2023-11-18 22:15:14.413059+10:30	1
1185	ජාතක පාලි	360	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	443	\N	\N	18	\N	S0304	1944-01-01	2023-11-18 22:15:14.414096+10:30	1
1186	දික්සඟිය (භාවය)	382	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	444	\N	\N	18	\N	S0305	1965-01-01	2023-11-18 22:15:14.416058+10:30	1
1187	මහා පරිනිර්වාණ ධර්මය	302	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	445	\N	\N	18	\N	S0306	1962-01-01	2023-11-18 22:15:14.417059+10:30	1
1188	අච්ඡරියබ්භුත සූත්‍රය	52	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0307	1897-01-01	2023-11-18 22:15:14.419059+10:30	1
1189	අඤ්ඤාකොණ්ඩඤ්ඤ සූත්‍රය	32	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	446	\N	\N	18	\N	S0308	1887-01-01	2023-11-18 22:15:14.421063+10:30	1
1190	අටුවා සන්න සහිත ධම්මික සූත්‍රය	32	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0309	1895-01-01	2023-11-18 22:15:14.422095+10:30	1
1191	අටුවා-සන්න සහිත චෙතොඛිල සූත්‍රය	32	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0310	1897-01-01	2023-11-18 22:15:14.424058+10:30	1
1192	අනාගත වංශ දේශනාව (මෛත්‍රෙය වර්ණනාව)	38	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0311	1901-01-01	2023-11-18 22:15:14.425059+10:30	1
1193	ආර්‍යවංශ සූත්‍රය	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	447	\N	\N	18	\N	S0312	1898-01-01	2023-11-18 22:15:14.426059+10:30	1
1194	ආලවක සුත්තං	70	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	448	\N	\N	18	\N	S0313	1951-01-01	2023-11-18 22:15:14.428059+10:30	1
1195	උම්මග්ග ජාතකය	274	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	382	\N	\N	18	\N	S0314	1907-01-01	2023-11-18 22:15:14.429059+10:30	1
1196	උම්මග්ග ජාතකය ගැටපද විවරණය සහිතයි	243	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	449	\N	\N	18	\N	S0315	1904-01-01	2023-11-18 22:15:14.431058+10:30	1
1197	උම්මග්ග ජාතකය	230	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	48	\N	\N	18	\N	S0316	1907-01-01	2023-11-18 22:15:14.433059+10:30	1
1198	චූලපණණමා සූත්‍රය	20	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0317	1893-01-01	2023-11-18 22:15:14.434059+10:30	1
1199	තිරොකුඩ්ඩ සූත්‍ර සන්නය සහ නිධිකණ්ඩ සූත්‍ර සන්නය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0318	1889-01-01	2023-11-18 22:15:14.434861+10:30	1
1200	ථෙරිගාථා ව්‍යාඛ්‍යා	312	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	450	\N	\N	18	\N	S0319	1958-01-01	2023-11-18 22:15:14.437232+10:30	1
1201	දම්සක් පැවතුම් සූත්‍රය	92	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	451	\N	\N	18	\N	S0320	1915-01-01	2023-11-18 22:15:14.439168+10:30	1
1202	දශසංඥා විභාගය	26	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	436	\N	\N	18	\N	S0321	1916-01-01	2023-11-18 22:15:14.441143+10:30	1
1203	ධම්මහදයවිභංග සූත්‍රය	86	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	452	\N	\N	18	\N	S0322	1906-01-01	2023-11-18 22:15:14.443144+10:30	1
1204	නවංගුපොසථ සූත්‍රය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	453	\N	\N	18	\N	S0323	1700-01-01	2023-11-18 22:15:14.444145+10:30	1
1205	නෙත්තිපපකරණං	160	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	454	\N	\N	18	\N	S0324	1923-01-01	2023-11-18 22:15:14.446142+10:30	1
1206	පුරාණ සන්න සහිත බාලපණ්ඩිත සූත්‍රය	56	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0325	1893-01-01	2023-11-18 22:15:14.447148+10:30	1
1207	පුරාණ සන්න සහිත මහා සතිපට්ඨාන සූත්‍රය	192	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	455	\N	\N	18	\N	S0326	1928-01-01	2023-11-18 22:15:14.449144+10:30	1
1208	පෙළ සහිත මහා ප්‍රධාන සූත්‍ර සන්නය සහ ප්‍රත්‍යවෙක්ෂා ක්‍රමය	60	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	341	\N	\N	18	\N	S0327	1915-01-01	2023-11-18 22:15:14.450672+10:30	1
1209	ප්‍රවචනාථර්‍ චන්ද්‍රිකා ථේරීගාථා පාලි	130	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	401	\N	\N	18	\N	S0328	1926-01-01	2023-11-18 22:15:14.452704+10:30	1
1210	ප්‍රාප්තකම්ම සූත්‍රය	54	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	456	\N	\N	18	\N	S0329	1892-01-01	2023-11-18 22:15:14.454708+10:30	1
1211	ප්‍රේතවස්තු වර්ණනාව	428	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	284	\N	\N	18	\N	S0330	1926-01-01	2023-11-18 22:15:14.456706+10:30	1
1212	මජ්ජිම නිකායො පාඨමො භාගො	350	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	18	\N	S0331	1946-01-01	2023-11-18 22:15:14.458705+10:30	1
1213	මජ්ජිම නිකායො දුතියො භාගො	292	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	18	\N	S0331	1946-01-01	2023-11-18 22:15:14.459704+10:30	2
1214	මජ්ජිම නිකායො තතියො භාගො	328	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	18	\N	S0331	1939-01-01	2023-11-18 22:15:14.461704+10:30	3
1215	මජ්ඣිමනිකායො පාලි	931	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	262	\N	\N	18	\N	S0331	1937-01-01	2023-11-18 22:15:14.463702+10:30	4
1216	මහා සතිපට්ඨාන භාවාර්ථ සන්නය	56	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0332	1916-01-01	2023-11-18 22:15:14.464704+10:30	1
1217	මහාතිර්ථායතන සූත්‍රය	40	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0333	1901-01-01	2023-11-18 22:15:14.465704+10:30	1
1218	මහානාම සුත්තං	28	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0334	1700-01-01	2023-11-18 22:15:14.466687+10:30	1
1219	මහාසමය සූත්‍රය ආදී සූත්‍ර හත	78	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0335	1895-01-01	2023-11-18 22:15:14.468704+10:30	1
1220	මහා සතිපට්ඨාන සූත්‍ර සන්නය	186	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	457	\N	\N	18	\N	S0336	1700-01-01	2023-11-18 22:15:14.469741+10:30	1
1221	ලක්ඛණ සූත්‍රය	88	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	458	\N	\N	18	\N	S0337	1916-01-01	2023-11-18 22:15:14.472747+10:30	1
1222	ලොකානුවිචරණ සුත්‍රාන්ත ව්‍යාඛ්‍යානය	26	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0338	1907-01-01	2023-11-18 22:15:14.474747+10:30	1
1223	වත්ථුපම සුත්තං	36	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0339	1700-01-01	2023-11-18 22:15:14.475746+10:30	1
1224	විස්තර සන්න සහිත ආටානාටිය සූත්‍රය	52	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	187	\N	\N	18	\N	S0340	1922-01-01	2023-11-18 22:15:14.477746+10:30	1
1225	ශුභ සූත්‍රය හෙවත් චූලකම්මවිභංග සූත්‍රය	48	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	441	\N	\N	18	\N	S0341	1890-01-01	2023-11-18 22:15:14.478948+10:30	1
1226	සමන්නෙසනා සහිත සඟි බණ මැදුම්සඟිය	338	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	459	\N	\N	18	\N	S0342	1957-01-01	2023-11-18 22:15:14.480954+10:30	1
1227	සමිඞිසූත්‍ර සන්නය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0343	1898-01-01	2023-11-18 22:15:14.481955+10:30	1
1228	සල්ල සූත්‍රය	14	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	460	\N	\N	18	\N	S0344	1700-01-01	2023-11-18 22:15:14.483953+10:30	1
1229	සවිස්තර මංගල සූත්‍රය හෙවත් දෙලෝ දියුණුව	150	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	443	\N	\N	18	\N	S0345	1946-01-01	2023-11-18 22:15:14.484491+10:30	1
1230	සප්ත භාර්‍යයා සූත්‍රය නය දහස	20	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0346	1899-01-01	2023-11-18 22:15:14.486755+10:30	1
1231	සාරාර්ථදීපිකා නම් වූ ජාතකාරථකථා ව්‍යාඛ්‍යාව	368	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	461	\N	\N	18	\N	S0347	1926-01-01	2023-11-18 22:15:14.488755+10:30	1
1232	සිතියම් සහිත උම්මග්ග ජාතකය	260	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	48	\N	\N	18	\N	S0348	1909-01-01	2023-11-18 22:15:14.489755+10:30	1
1233	සුමංගලවිලාසිනී නාමා දීඝනිකායට්ඨකථා	402	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	462	\N	\N	18	\N	S0349	1898-01-01	2023-11-18 22:15:14.491755+10:30	1
1234	සීහොපම සූත්‍ර වර්ණනාව	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	463	\N	\N	18	\N	S0350	1700-01-01	2023-11-18 22:15:14.492756+10:30	1
1235	සුත්තසංගහ පාළි	168	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	464	\N	\N	18	\N	S0351	1700-01-01	2023-11-18 22:15:14.494755+10:30	1
1236	සුත්තසංගහට්ඨකථා	252	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	465	\N	\N	18	\N	S0352	1928-01-01	2023-11-18 22:15:14.495756+10:30	1
1237	සුත්තසංගහො	158	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	284	\N	\N	18	\N	S0353	1935-01-01	2023-11-18 22:15:14.496756+10:30	1
1238	සූත්‍රනිපාතය පුරාණ අර්ථව්‍යාඛ්‍යාන සහිත.	236	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	466	\N	\N	18	\N	S0354	1914-01-01	2023-11-18 22:15:14.498755+10:30	1
1239	මනොරථපුරණි නාමධෙය අංගොත්තරනිකායාර්ථ කථාව	862	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	467	\N	\N	18	\N	S0355	1922-01-01	2023-11-18 22:15:14.499755+10:30	1
1240	සන්න සහිත අෂ්ඨිපුඤ්ජ සූත්‍රය සහ පාවෙය්‍යක සූත්‍රය	14	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0356	1897-01-01	2023-11-18 22:15:14.500754+10:30	1
1241	සන්න සහිත ආමගන්ධ සූත්‍රය	38	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	468	\N	\N	18	\N	S0357	1911-01-01	2023-11-18 22:15:14.502755+10:30	1
1242	සන්න සහිත ආලවක සූත්‍රය 3	68	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0358	1897-01-01	2023-11-18 22:15:14.503755+10:30	1
1243	සන්න සහිත ආලවක සූත්‍රය	70	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0359	1910-01-01	2023-11-18 22:15:14.505755+10:30	1
1244	සන්න සහිත ආශිර්විෂෝපම සූත්‍රය හෙවත් නයි සතරදෙනා	60	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	469	\N	\N	18	\N	S0360	1955-01-01	2023-11-18 22:15:14.506755+10:30	1
1245	සන්න සහිත ආශිර්විෂෝපම සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0361	1891-01-01	2023-11-18 22:15:14.507755+10:30	1
1246	සන්න සහිත කාමභොගී සූත්‍රය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0362	1896-01-01	2023-11-18 22:15:14.508793+10:30	1
1247	සන්න සහිත චක්‍රවර්තිසීහනාද සූත්‍රය	84	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0363	1895-01-01	2023-11-18 22:15:14.510799+10:30	1
1248	සන්න සහිත චුන්ද සූත්‍රය	12	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0364	1896-01-01	2023-11-18 22:15:14.511799+10:30	1
1249	සන්න සහිත දානුප්පත්ති සූත්‍රය	14	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	470	\N	\N	18	\N	S0365	1892-01-01	2023-11-18 22:15:14.512799+10:30	1
1250	සන්න සහිත පරාභව සූත්‍රය	68	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	471	\N	\N	18	\N	S0366	1891-01-01	2023-11-18 22:15:14.513799+10:30	1
1251	සන්න සහිත මල්ලිකොවාද සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0367	1894-01-01	2023-11-18 22:15:14.515798+10:30	1
1252	සන්න සහිත මහා දේවදූත සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0368	1891-01-01	2023-11-18 22:15:14.516799+10:30	1
1253	සන්න සහිත මහා පරිනිර්වාණ සූත්‍රය	236	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	472	\N	\N	18	\N	S0369	1914-01-01	2023-11-18 22:15:14.517799+10:30	1
1254	සන්න සහිත මහා සතිපට්ඨාන සූත්‍රය	138	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0370	1883-01-01	2023-11-18 22:15:14.519418+10:30	1
1255	සන්න සහිත මූලපරියාය සූත්‍රය	54	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	473	\N	\N	18	\N	S0371	1914-01-01	2023-11-18 22:15:14.521543+10:30	1
1256	සන්න සහිත රට්ඨපාල සූත්‍රය	68	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0372	1890-01-01	2023-11-18 22:15:14.522425+10:30	1
1257	සන්න සහිත රථකාර සූත්‍රය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0373	1926-01-01	2023-11-18 22:15:14.523525+10:30	1
1258	සන්න සහිත විමුක්ති සූත්‍රය	14	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0374	1700-01-01	2023-11-18 22:15:14.525532+10:30	1
1259	සන්න සහිත විශාඛුපොසථ සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0375	1700-01-01	2023-11-18 22:15:14.52653+10:30	1
1260	සන්න සහිත වෙරඤ්ජ සූත්‍රය	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	474	\N	\N	18	\N	S0376	1893-01-01	2023-11-18 22:15:14.528464+10:30	1
1261	සන්න සහිත සම්මා දිට්ඨි සූත්‍රය	42	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	475	\N	\N	18	\N	S0377	1899-01-01	2023-11-18 22:15:14.529546+10:30	1
1262	අටුවා සන්න සහිත අපුත්තක සූත්‍රය	20	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0378	1900-01-01	2023-11-18 22:15:14.530526+10:30	1
1263	අටුවා සන්න සහිත කර්මනිදාන සූත්‍රය	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0379	1897-01-01	2023-11-18 22:15:14.532533+10:30	1
1264	අර්ථකථා සහිත කායවිච්ඡන්දනික සූත්‍රය නොහොත් විජය සූත්‍රය	52	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0380	1898-01-01	2023-11-18 22:15:14.53353+10:30	1
1265	කාලදාන සූත්‍රය	14	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0381	1895-01-01	2023-11-18 22:15:14.535468+10:30	1
1266	තමොතමපරායණ සූත්‍රය	20	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0382	1897-01-01	2023-11-18 22:15:14.536604+10:30	1
1267	දාරුක්ඛන්ධෝපම සූත්‍රය	26	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0383	1900-01-01	2023-11-18 22:15:14.538499+10:30	1
1268	පදාර්ථ භාවාර්ථ සහිත විජය සූත්‍රය	42	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0384	1700-01-01	2023-11-18 22:15:14.540574+10:30	1
1269	පබ්බතුපම සූත්‍රය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0385	1897-01-01	2023-11-18 22:15:14.541576+10:30	1
1270	පුරාණ සන්න සහිත අරක සූත්‍රය	16	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0386	1894-01-01	2023-11-18 22:15:14.542572+10:30	1
1271	පුරාණ සන්න සහිත උපොසථ සූත්‍රය	46	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0387	1891-01-01	2023-11-18 22:15:14.543577+10:30	1
1272	පුරාණ සන්න සහිත කසීභාරද්වාජ සූත්‍රය	32	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0388	1896-01-01	2023-11-18 22:15:14.544591+10:30	1
1273	පුරාතන සන්න සහිත ධජග්ග සූත්‍රය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0389	1899-01-01	2023-11-18 22:15:14.545579+10:30	1
1274	පෙළ සහිත ඡානුස්සති සූත්‍රය සන්නය	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0390	1895-01-01	2023-11-18 22:15:14.547575+10:30	1
1275	පෙළ සහිත සප්තආර්‍යධන සූත්‍ර සන්නය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0391	1896-01-01	2023-11-18 22:15:14.548578+10:30	1
1276	පෙළ සහිත සුමනා සූත්‍රය සන්නය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0392	1896-01-01	2023-11-18 22:15:14.549476+10:30	1
1277	මෛථුනසංයෝග සූත්‍රය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	476	\N	\N	18	\N	S0393	1896-01-01	2023-11-18 22:15:14.551083+10:30	1
1278	වසල සූත්‍රය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0394	1898-01-01	2023-11-18 22:15:14.552128+10:30	1
1279	විස්තර සන්න අටුවා සහිත තිරොකුඩ්ඩ සූත්‍රය සහ නිධිකණ්ඩ සූත්‍රය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0395	1895-01-01	2023-11-18 22:15:14.554094+10:30	1
1280	වෙනාගපුර සූත්‍ර සන්නය	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0396	1899-01-01	2023-11-18 22:15:14.55509+10:30	1
1281	සන්න සහිත වච්ඡගොත්ත සූත්‍රය	16	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0397	1900-01-01	2023-11-18 22:15:14.557129+10:30	1
1282	සන්න සහිත වජ්ජ සූත්‍රය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0398	1896-01-01	2023-11-18 22:15:14.558127+10:30	1
1283	සන්න සහිත වෙලාම සූත්‍රය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0399	1892-01-01	2023-11-18 22:15:14.559192+10:30	1
1284	සන්න සහිත ව්‍යඝ්‍රපද්‍ය සූත්‍රය	24	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0400	1900-01-01	2023-11-18 22:15:14.56013+10:30	1
1285	සප්පුරිසදාන සූත්‍රය	26	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0401	1897-01-01	2023-11-18 22:15:14.561089+10:30	1
1286	සමචිත්ත පරියාය සූත්‍රය	24	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0402	1899-01-01	2023-11-18 22:15:14.562191+10:30	1
1287	සරභ සූත්‍රය	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0403	1897-01-01	2023-11-18 22:15:14.56419+10:30	1
1288	The Anguttara Nikaya	140	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0404	1883-01-01	2023-11-18 22:15:14.566168+10:30	1
1289	Jathaka Tales	514	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	478	\N	\N	18	\N	S0405	1916-01-01	2023-11-18 22:15:14.567274+10:30	1
1290	Monorathapurani II	396	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0406	1930-01-01	2023-11-18 22:15:14.569128+10:30	1
1291	Paramattajothika Kuddaka Pata I	278	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0407	1915-01-01	2023-11-18 22:15:14.571102+10:30	1
1292	Paramattajothika Suttanipatha II	234	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0408	1917-01-01	2023-11-18 22:15:14.572109+10:30	1
1293	Paramattha Dipani Udanatthakatha	524	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0409	1926-01-01	2023-11-18 22:15:14.57411+10:30	1
1294	Petawattu	110	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0410	1888-01-01	2023-11-18 22:15:14.576103+10:30	1
1295	Saddamma Pajjothika Mahaniddesa	258	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0411	1931-01-01	2023-11-18 22:15:14.578104+10:30	1
1296	Vimanavattu	394	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	477	\N	\N	18	\N	S0412	1901-01-01	2023-11-18 22:15:14.579105+10:30	1
1297	Ummagga Jathaka	264	L1_C2	L2_A13	L3_C4	\N		\N	2023-11-18	\N	\N	479	\N	\N	18	\N	S0413	1898-01-01	2023-11-18 22:15:14.582104+10:30	1
1298	භාවසන්න සහිත මිත්තානිසංස- මොරපරිත්ත දෙසනා	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	480	\N	\N	18	\N	S0414	1949-01-01	2023-11-18 22:15:14.584105+10:30	1
1299	භාවසන්න සහිත මහා මංගල සූත්‍රය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	481	\N	\N	18	\N	S0415	1950-01-01	2023-11-18 22:15:14.586104+10:30	1
1300	භාව සන්න සහිත ගිරිමානන්ද සූත්‍රය	30	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	482	\N	\N	18	\N	S0416	1950-01-01	2023-11-18 22:15:14.588108+10:30	1
1301	භාවසන්න සහිත සච්චවිභංග සූත්‍රය	38	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	483	\N	\N	18	\N	S0417	1951-01-01	2023-11-18 22:15:14.590105+10:30	1
1302	ධජග්ග සූත්‍රය	44	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	484	\N	\N	18	\N	S0418	1932-01-01	2023-11-18 22:15:14.592111+10:30	1
1303	භාව සන්න සහිත අභිණහපච්චවෙකඛිතබ්බ සූත්‍රය	72	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0419	1935-01-01	2023-11-18 22:15:14.59411+10:30	1
1304	අනාගත වංශ දේශනාව	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0420	1700-01-01	2023-11-18 22:15:14.59611+10:30	1
1305	වාසෙට්ඨ සුත්තං	38	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0421	1700-01-01	2023-11-18 22:15:14.597112+10:30	1
1306	නිද්දේසපාළි	414	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	152	\N	\N	18	\N	S0422	1933-01-01	2023-11-18 22:15:14.598208+10:30	1
1307	දීඝනිකායො.	680	L1_C2	L2_A13	L3_C2	\N		\N	2023-11-18	\N	\N	486	\N	\N	18	\N	S0423	1939-01-01	2023-11-18 22:15:14.600195+10:30	1
1309	සරලාර්ථකෞමුදී ජාතකාර්ථකථාව්‍යාඛ්‍යාව	128	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	303	\N	\N	18	\N	S0425	1927-01-01	2023-11-18 22:15:14.603205+10:30	1
1310	සංයුක්ත නිකාය ගාථා සන්නය	160	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0426	1700-01-01	2023-11-18 22:15:14.605189+10:30	1
1311	පපඤ්ච සූදනී මජ්ඣිමනිකාය අට්ටකථා	602	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	488	\N	\N	18	\N	S0427	1924-01-01	2023-11-18 22:15:14.607118+10:30	1
1312	නය සාගරොත්පත්තිය හෙවත් චතුරාර්‍යසත්‍යය	17	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	489	\N	\N	18	\N	S0428	1926-01-01	2023-11-18 22:15:14.60911+10:30	1
1313	මධ්‍යම ප්‍රතිපදාව හෙවත් ආර්ය අෂ්ටාංගික මාර්ගය	13	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	489	\N	\N	18	\N	S0429	1930-01-01	2023-11-18 22:15:14.61011+10:30	1
1314	නිවන නොහොත් ආර්ය පුද්ගලයන් එකසිය අට	28	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0430	1915-01-01	2023-11-18 22:15:14.61211+10:30	1
1315	භාව සන්න සහිත පාසාදික සූත්‍රය	106	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0431	1937-01-01	2023-11-18 22:15:14.61311+10:30	1
1316	භාව සන්න සහිත අග්ගඤ්ඤ සූත්‍රය	76	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0432	1937-01-01	2023-11-18 22:15:14.615126+10:30	1
1317	භාව සන්න සහිත කාලාම සූත්‍රය	82	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0433	1936-01-01	2023-11-18 22:15:14.617218+10:30	1
1318	භාව සන්න සහිත කකචූපම සූත්‍රය	48	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0434	1934-01-01	2023-11-18 22:15:14.61833+10:30	1
1319	භාව සන්න සහිත චුල්ලකම්ම විභංග සූත්‍රය	34	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0435	1936-01-01	2023-11-18 22:15:14.620325+10:30	1
1320	භාව සන්න සහිත චුල්ලහත්ථිපදොපම සූත්‍රය	48	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0436	1934-01-01	2023-11-18 22:15:14.622329+10:30	1
1321	භාව සන්න සහිත බාලපණ්ඩිත සූත්‍රය	66	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0437	1934-01-01	2023-11-18 22:15:14.62432+10:30	1
1322	භාව සන්න සහිත සමචිත්තපරියාය සූත්‍රය	36	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	485	\N	\N	18	\N	S0438	1934-01-01	2023-11-18 22:15:14.625335+10:30	1
1323	භාව සන්න සහිත වම්මික සූත්‍රය	22	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0439	1923-01-01	2023-11-18 22:15:14.626264+10:30	1
1324	පායාසිරාජඤ්ඤ සූත්‍රය	84	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	490	\N	\N	18	\N	S0440	1935-01-01	2023-11-18 22:15:14.628264+10:30	1
1325	භාව සන්න සහිත වසල සූත්‍රය	18	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	90	\N	\N	18	\N	S0441	1934-01-01	2023-11-18 22:15:14.630328+10:30	1
1326	සංයුක්ත ප්‍රදීපිකා	268	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	262	\N	\N	18	\N	S0442	1935-01-01	2023-11-18 22:15:14.631273+10:30	1
1327	සද්ධර්ම කෞමුදි නම් භාවාර්ථවිවරණ සහිත ධම්මපද පාළි	314	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	491	\N	\N	18	\N	S0443	1946-01-01	2023-11-18 22:15:14.633331+10:30	1
1328	සිංහල සන්න සහිත සප්තසූරයෝද්ගමන සූත්‍රය	62	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0444	1885-01-01	2023-11-18 22:15:14.634272+10:30	1
1329	අග්ගිකභාරද්වාජ සූත්‍ර සන්නය	46	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	S0445	1932-01-01	2023-11-18 22:15:14.635266+10:30	1
1330	මහා සමය සූත්‍ර සන්නය	130	L1_C2	L2_A13	L3_C1	\N		\N	2023-11-18	\N	\N	492	\N	\N	18	\N	S0446	1933-01-01	2023-11-18 22:15:14.637393+10:30	1
1331	සෙනෙහ ශතකය හෙවත් බෙහෙත් තෙල් පොත	88	L1_C6	L1_C6_C5	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	18	\N	RE0031	1901-01-01	2023-11-18 22:15:14.638332+10:30	1
1332	Prakrutha Prakasha	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RD0048	1700-01-01	2023-11-18 22:15:14.639298+10:30	1
1333	Prakrutha Prakasha - sinhala	-1	L1_C6	L1_C6_C4	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RD0049	1700-01-01	2023-11-18 22:15:14.640389+10:30	1
1334	නාමලිඟානුශාසනය (අමරකෝෂය - අමරසිංහය)	-1	L1_C6	L1_C6_C4	L3_C3	\N		\N	2023-11-18	\N	\N	\N	\N	\N	11	\N	RD0050	1700-01-01	2023-11-18 22:15:14.642378+10:30	1
1335	ජිනවචන කෝෂය	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	493	\N	\N	19	\N	RK0005	1956-01-01	2023-11-18 22:15:14.643389+10:30	1
1336	ඉංග්‍රීසි සිංහල -දෙමළ ශබ්දකෝෂය	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RK0006	1700-01-01	2023-11-18 22:15:14.64433+10:30	1
1337	ශ්රී සුමංගල සිංහල ශබ්දකෝෂය 1 අ-න	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	152	\N	\N	19	\N	RK0007	1952-01-01	2023-11-18 22:15:14.646377+10:30	1
1338	SINHALA SAHITYA VISHVA KOSHAYA	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RK0008	1700-01-01	2023-11-18 22:15:14.64739+10:30	1
1339	RUWANMAL NIGHANTUWA OR NAMARATNA MALAWA	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RK0009	1700-01-01	2023-11-18 22:15:14.648331+10:30	1
1340	සිංහල අක්ෂර වින්‍යාස අකාරාදිය	143	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	494	\N	\N	19	\N	RK0010	2003-01-01	2023-11-18 22:15:14.650389+10:30	1
1341	GUNASENA SINGHALA MAHA AKARADHIYA PRATHAMA BHAGAYA	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RK0011	1700-01-01	2023-11-18 22:15:14.651387+10:30	1
1342	ශ්රී සද්ධර්ම කෝෂය	-1	L1_C6	L1_C6_C14	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RK0012	1700-01-01	2023-11-18 22:15:14.651387+10:30	1
1343	බුද්ධ ගද්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0051	1700-01-01	2023-11-18 22:15:14.652919+10:30	1
1344	භක්ති ශතකය හෙවත් බෞද්ධ ශතකය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0052	1700-01-01	2023-11-18 22:15:14.654862+10:30	1
1345	Sanda Kinduru da kawa	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0053	1700-01-01	2023-11-18 22:15:14.655865+10:30	1
1346	Sinhala sahithya wanshaya	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0054	1700-01-01	2023-11-18 22:15:14.657916+10:30	1
1347	Siya bas maldama	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0055	1700-01-01	2023-11-18 22:15:14.658923+10:30	1
1348	අන්ධභූත ජාතකය කාව්‍ය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0056	1700-01-01	2023-11-18 22:15:14.659865+10:30	1
1349	අමාවතුර Udrutha	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0057	1700-01-01	2023-11-18 22:15:14.660862+10:30	1
1350	උපදෙශ ශතකය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0058	1700-01-01	2023-11-18 22:15:14.662913+10:30	1
1397	සංඛ්‍යා ධර්ම	142	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	504	\N	\N	19	\N	RA0054	2009-01-01	2023-11-18 22:15:14.72485+10:30	1
1351	බුදුගුණ අලංකාර ප්‍රදීපය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0059	1700-01-01	2023-11-18 22:15:14.663922+10:30	1
1352	බුදුගුණ අලංකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0060	1700-01-01	2023-11-18 22:15:14.664916+10:30	1
1353	බුදුගුණ අලංකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0061	1700-01-01	2023-11-18 22:15:14.665932+10:30	1
1354	බුදුගුණ අලංකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0062	1700-01-01	2023-11-18 22:15:14.666925+10:30	1
1355	මෙතේ බුදුගුණ අලංකාරය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0063	1700-01-01	2023-11-18 22:15:14.667911+10:30	1
1356	ප්‍රත්‍ය ශතකය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0064	1700-01-01	2023-11-18 22:15:14.669922+10:30	1
1357	පුරාණ නාමාවලිය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0065	1700-01-01	2023-11-18 22:15:14.670828+10:30	1
1358	දොරකඩ අස්න	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0066	1700-01-01	2023-11-18 22:15:14.672934+10:30	1
1359	කුවේණි අස්න හා සිහබා අස්න	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0067	1700-01-01	2023-11-18 22:15:14.67385+10:30	1
1360	කුස ජාතක කාව්‍ය විවරණය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0068	1700-01-01	2023-11-18 22:15:14.675923+10:30	1
1361	කුස ජාතක කාව්‍ය සංවර්ණනා 50 51 NA	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0069	1700-01-01	2023-11-18 22:15:14.676919+10:30	1
1362	කුස ජාතක කාව්‍ය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0070	1700-01-01	2023-11-18 22:15:14.677878+10:30	1
1363	ගංගාරෝහණ වර්ණනාව හා සන්නය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0071	1700-01-01	2023-11-18 22:15:14.678861+10:30	1
1364	දඹදෙණි අස්න	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0072	1700-01-01	2023-11-18 22:15:14.679913+10:30	1
1365	Parakumba siritha	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0073	1700-01-01	2023-11-18 22:15:14.680913+10:30	1
1366	Parakumba siritha	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0074	1700-01-01	2023-11-18 22:15:14.68292+10:30	1
1367	Parakumba siritha	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0075	1700-01-01	2023-11-18 22:15:14.683913+10:30	1
1368	Parakumba siritha	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0076	1700-01-01	2023-11-18 22:15:14.684919+10:30	1
1369	Daham Sonda Kawa	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0077	1700-01-01	2023-11-18 22:15:14.68586+10:30	1
1370	Ganga Rohana Vivaranaya	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0078	1700-01-01	2023-11-18 22:15:14.687893+10:30	1
1371	Ganga Rohana warnanawa	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0079	1700-01-01	2023-11-18 22:15:14.688867+10:30	1
1372	පදාර්ථව්‍යාඛ්‍යන සහිත කව්සිළුමිණ PA 14 15 NA	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0080	1700-01-01	2023-11-18 22:15:14.689914+10:30	1
1373	ගුත්තිල කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0081	1700-01-01	2023-11-18 22:15:14.691929+10:30	1
1374	ගුත්තිල කාව්‍ය දිපනිය PA 86 87 120 121 124 125	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0082	1700-01-01	2023-11-18 22:15:14.692924+10:30	1
1375	ගුත්තිල කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0083	1700-01-01	2023-11-18 22:15:14.693925+10:30	1
1376	ගුත්තිල කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0084	1700-01-01	2023-11-18 22:15:14.695917+10:30	1
1377	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 1 Edition	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0085	1700-01-01	2023-11-18 22:15:14.696947+10:30	1
1378	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 2 Edition	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0086	1700-01-01	2023-11-18 22:15:14.697868+10:30	1
1379	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 4 Edition	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0087	1700-01-01	2023-11-18 22:15:14.699927+10:30	1
1380	ධර්මප්‍රදීපිකා ග්‍රන්ථිපද විවරණය අවසාන භාගය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0088	1700-01-01	2023-11-18 22:15:14.700917+10:30	1
1381	ධර්මප්‍රදීපිකා ග්‍රන්ථිපද විවරණය පළමු භාගය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0089	1700-01-01	2023-11-18 22:15:14.701917+10:30	1
1382	සන්න සහිත දහම් ගැට මාලාව	24	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RA0039	1700-01-01	2023-11-18 22:15:14.702868+10:30	1
1383	සන්න සහිත දහම් ගැටේ	20	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RA0040	1887-01-01	2023-11-18 22:15:14.704866+10:30	1
1384	කර්ම විපාක	108	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	495	\N	\N	16	\N	RA0041	1700-01-01	2023-11-18 22:15:14.705829+10:30	1
1385	සුගතෝවාද සංග්‍රහව	14	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	RA0042	1900-01-01	2023-11-18 22:15:14.706828+10:30	1
1386	පද්‍යමධුව	58	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	13	\N	\N	16	\N	RA0043	1887-01-01	2023-11-18 22:15:14.708859+10:30	1
1387	පාවචන න්‍යාය	102	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	496	\N	\N	16	\N	RA0044	1700-01-01	2023-11-18 22:15:14.709847+10:30	1
1388	බුදුගුණ සන්නය	62	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	497	\N	\N	16	\N	RA0045	1889-01-01	2023-11-18 22:15:14.711844+10:30	1
1389	රතනතත්යාලංකාරො	15	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	498	\N	\N	16	\N	RA0046	1901-01-01	2023-11-18 22:15:14.712851+10:30	1
1390	මාසඍතු ලක්ෂණය	50	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	20	\N	\N	16	\N	RA0047	1874-01-01	2023-11-18 22:15:14.713845+10:30	1
1391	පරිත්රාණ ප්රශ්නය	63	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	499	\N	\N	16	\N	RA0048	1910-01-01	2023-11-18 22:15:14.715845+10:30	1
1392	සාරාර්ථ සංග්රහව	511	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	500	\N	\N	16	\N	RA0049	1913-01-01	2023-11-18 22:15:14.716846+10:30	1
1393	සංසාරය හා නිර්වාණය	14	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	501	\N	\N	19	\N	RA0050	1940-01-01	2023-11-18 22:15:14.718846+10:30	1
1394	පුරාණ හිමගත වර්ණනාව හෙවත් ශ්රී පාද වන්දනා ගමන	20	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0051	1700-01-01	2023-11-18 22:15:14.719828+10:30	1
1395	ශ්‍රී සද්ධර්ම ප්‍රදීප	490	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	502	\N	\N	17	\N	RA0052	1956-01-01	2023-11-18 22:15:14.720827+10:30	1
1396	නව අරහාදී බුදු ගුණ විභාගය	50	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	503	\N	\N	16	\N	RA0053	1700-01-01	2023-11-18 22:15:14.723828+10:30	1
1398	විශුද්ධිමග්ග 01	324	L1_C4	L2_A6	L3_C2	\N		\N	2023-11-18	\N	\N	38	\N	\N	16	\N	B0026	1700-01-01	2023-11-18 22:15:14.726862+10:30	1
1399	සංඛ්‍යා ධර්ම දීපිකා	289	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	412	\N	\N	19	\N	RA0055	1951-01-01	2023-11-18 22:15:14.728844+10:30	1
1400	සද්ධර්ම සාරාර්ථ සංග්‍රහය	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0056	1700-01-01	2023-11-18 22:15:14.729168+10:30	1
1401	සද්ධර්ම සාරාර්ථ සංග්‍රහය	570	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	505	\N	\N	19	\N	RA0057	1957-01-01	2023-11-18 22:15:14.731174+10:30	1
1402	සද්ධර්මරත්නාකරය	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0058	1700-01-01	2023-11-18 22:15:14.731757+10:30	1
1403	සදහම් මග	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0059	1700-01-01	2023-11-18 22:15:14.733838+10:30	1
1404	උපාසක ජිනාලන්කාරය	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0060	1700-01-01	2023-11-18 22:15:14.734838+10:30	1
1405	මිලින්ද ප්‍රශ්නය	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0061	1700-01-01	2023-11-18 22:15:14.735837+10:30	1
1406	මිලින්ද ප්‍රශ්නය	-1	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0062	1700-01-01	2023-11-18 22:15:14.736842+10:30	1
1407	මහා පිරිත් පොත	358	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	506	\N	\N	19	\N	RA0063	1954-01-01	2023-11-18 22:15:14.738851+10:30	1
1408	සන්න සහිත මහා පිරිත් පොත් වහන්සේ	342	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	507	\N	\N	19	\N	RA0064	1700-01-01	2023-11-18 22:15:14.741842+10:30	1
1409	ආර්ය ධර්ම	220	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	508	\N	\N	19	\N	RA0065	1938-01-01	2023-11-18 22:15:14.742842+10:30	1
1410	සමීපාතීතයෙහි බෞද්ධාචාර්ය්යෝ	249	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	119	\N	\N	19	\N	RA0066	1905-01-01	2023-11-18 22:15:14.744842+10:30	1
1411	දහම් සරණ	453	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	381	\N	\N	19	\N	RA0067	1931-01-01	2023-11-18 22:15:14.745842+10:30	1
1412	සමන්ත කූඨ වර්ණනා	244	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	509	\N	\N	19	\N	RA0068	1910-01-01	2023-11-18 22:15:14.747842+10:30	1
1413	ථෙරවාද න්‍යාය	213	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	510	\N	\N	19	\N	RA0069	1992-01-01	2023-11-18 22:15:14.748842+10:30	1
1414	ජයමංගල ගාථා	9	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	511	\N	\N	19	\N	RA0070	1912-01-01	2023-11-18 22:15:14.749842+10:30	1
1415	තෙරුවන් මාලාව	20	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	512	\N	\N	19	\N	RA0071	1893-01-01	2023-11-18 22:15:14.751347+10:30	1
1416	ප්‍රාතිහාර්ය ශතකය	74	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0072	1864-01-01	2023-11-18 22:15:14.753353+10:30	1
1417	මුණිගුනාලංකාරය	34	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	513	\N	\N	19	\N	RA0073	1889-01-01	2023-11-18 22:15:14.755353+10:30	1
1418	සන්න සහිත දහම් ගැටය	22	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	514	\N	\N	19	\N	RA0074	1899-01-01	2023-11-18 22:15:14.757353+10:30	1
1419	විමතිවිච්ඡේදනී	205	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RA0075	1700-01-01	2023-11-18 22:15:14.758353+10:30	1
1420	Payoga Siddi	-1	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0152	1700-01-01	2023-11-18 22:15:14.759046+10:30	1
1421	සුබෝධාලංකාරො ලංකානන්ද ව්‍යාඛ්‍යාව	-1	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0153	1700-01-01	2023-11-18 22:15:14.760351+10:30	1
1422	Balawathara Vivaranaya	-1	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0154	1700-01-01	2023-11-18 22:15:14.761356+10:30	1
1423	පදරූපසිද්ධි සහ රූපසිද්ධිටීකා (ටීකාසහිත)	487	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	518	\N	\N	19	\N	P0155	1700-01-01	2023-11-18 22:15:14.763357+10:30	1
1424	පදරූපසිද්ධි	335	L1_C5	L1_C5_C2	L3_C2	\N		\N	2023-11-18	\N	\N	\N	\N	\N	16	\N	P0156	1700-01-01	2023-11-18 22:15:14.764357+10:30	1
1425	හිතෝපදේශ සන්නය	250	L1_C6	L1_C6_C4	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	11	\N	RD0051	1878-01-01	2023-11-18 22:15:14.765356+10:30	1
1426	ආනාපානසති භාවනාව	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	191	\N	\N	19	\N	RJ0026	1700-01-01	2023-11-18 22:15:14.767356+10:30	1
1427	මරණානුස්සති කම්මට්ඨානං	-1	L1_C6	L1_C6_C10	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	19	\N	RJ0027	1700-01-01	2023-11-18 22:15:14.768357+10:30	1
1428	සප්ත විසුද්ධි කමටහන් භාවනා	-1	\N	\N	\N	\N		\N	2023-11-18	\N	\N	519	\N	\N	\N	\N	R0390	1700-01-01	2023-11-18 22:15:14.769104+10:30	1
1429	ත්‍රිපිටක පරීක්ෂණය	176	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	520	\N	\N	19	\N	RA0076	1939-01-01	2023-11-18 22:15:14.771361+10:30	1
1430	භික්ශු ශිලය	138	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	521	\N	\N	12	\N	V0161	1893-01-01	2023-11-18 22:15:14.773359+10:30	1
1431	විනය අපට්චඡන්නභාව විනිශ්චය	30	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	522	\N	\N	12	\N	V0162	1892-01-01	2023-11-18 22:15:14.775359+10:30	1
1432	ශ්‍රමණ දුශ්ශිල සරණාගමන විභාගය	20	L1_C1	L1_C1_C1	L3_C1	\N		\N	2023-11-18	\N	\N	522	\N	\N	12	\N	V0163	1892-01-01	2023-11-18 22:15:14.77636+10:30	1
1433	දහම් ගැට	85	L1_C6	L1_C6_C1	L3_C1	\N		\N	2023-11-18	\N	\N	523	\N	\N	19	\N	RA0077	1958-01-01	2023-11-18 22:15:14.778461+10:30	1
1434	කතිකාවත්සඟරා i NA Last 8 9 NA	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0015	1700-01-01	2023-11-18 22:15:14.77892+10:30	1
1435	දළදා පූජාවලිය (1893)	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0016	1700-01-01	2023-11-18 22:15:14.780925+10:30	1
1436	රසවාහිනී ග්_රන්ථිපදාර්ත්ථ විවරණය - සුමතිපාල හිමි සීලක්ඛන්ධ හිමි 1913	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0017	1700-01-01	2023-11-18 22:15:14.781926+10:30	1
1437	රසවාහිනී ටීකා සාරත්ථ දීපිකා - සිද්ධාර්ථ හිමි 1907	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0018	1700-01-01	2023-11-18 22:15:14.782927+10:30	1
1438	රසවාහිනී පාළි - සරණතිස්ස හිමි 1913	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0019	1700-01-01	2023-11-18 22:15:14.783927+10:30	1
1439	රසවාහිනී	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0020	1700-01-01	2023-11-18 22:15:14.784926+10:30	1
1440	සිංහල ථූපවංශය සිතියම් සහිත - 1955 ගලගම සරණංකර	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0021	1700-01-01	2023-11-18 22:15:14.786927+10:30	1
1441	රාජාවලිය 1923 විරසිංහ	104	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	524	\N	\N	17	\N	RC0022	1923-01-01	2023-11-18 22:15:14.788927+10:30	1
1442	Dhathuwansha	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0023	1700-01-01	2023-11-18 22:15:14.790926+10:30	1
1443	Dalada Siritha	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0024	1700-01-01	2023-11-18 22:15:14.791926+10:30	1
1445	සන්න සහිත සාසනවංසදීප	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0026	1700-01-01	2023-11-18 22:15:14.793926+10:30	1
1446	SUBHODINI VHAYKYA NAM U HATTHVNGGLA VIHARAVANSA SNNAYA A	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0027	1700-01-01	2023-11-18 22:15:14.794926+10:30	1
1447	ලෝකප්පදිපකසාරෝ	238	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	525	\N	\N	17	\N	RC0028	1928-01-01	2023-11-18 22:15:14.796926+10:30	1
1448	Attanagalu viharawansa	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0029	1700-01-01	2023-11-18 22:15:14.797925+10:30	1
1449	BAUDDA RAJADANI PILIBADA THORATHURU NAM U PAHIYANGALAGE DESHATHNA VARTHAVA	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0030	1700-01-01	2023-11-18 22:15:14.798926+10:30	1
1450	bauddha Sthupa	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0031	1700-01-01	2023-11-18 22:15:14.799936+10:30	1
1451	Buddha Bhumi Ithihasaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0032	1700-01-01	2023-11-18 22:15:14.801279+10:30	1
1452	Buddha Chinthawe Ithihasaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0033	1700-01-01	2023-11-18 22:15:14.803279+10:30	1
1453	Dalada Puda	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0034	1700-01-01	2023-11-18 22:15:14.804279+10:30	1
1454	Dalada Puwatha	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0035	1700-01-01	2023-11-18 22:15:14.806278+10:30	1
1455	Dipawansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0036	1700-01-01	2023-11-18 22:15:14.807278+10:30	1
1456	DIPAVANSO SIHALA BASAMYANUVADA SAMUPETHO A	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0037	1700-01-01	2023-11-18 22:15:14.809278+10:30	1
1457	Mahawansa Pali	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0038	1700-01-01	2023-11-18 22:15:14.810278+10:30	1
1458	Mahawanso	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0039	1700-01-01	2023-11-18 22:15:14.811278+10:30	1
1459	Mahawansa	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0040	1700-01-01	2023-11-18 22:15:14.812279+10:30	1
1460	Manurajaniya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0041	1700-01-01	2023-11-18 22:15:14.813279+10:30	1
1461	NIKAYA SANGRAHAWA OR SASANAWATARAYA	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0042	1700-01-01	2023-11-18 22:15:14.814278+10:30	1
1462	Nithi Rathnawali	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0043	1700-01-01	2023-11-18 22:15:14.815372+10:30	1
1463	ඉතිහාසයේ මුලාරම්භය 125	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0044	1700-01-01	2023-11-18 22:15:14.817379+10:30	1
1464	සිංහල දේව පුරාණය	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0045	1700-01-01	2023-11-18 22:15:14.818379+10:30	1
1465	අත්තනගලු විහාර වංශය කවි	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	526	\N	\N	17	\N	RC0046	1897-01-01	2023-11-18 22:15:14.821379+10:30	1
1466	දලදා විස්තරය 1892 කේ. ආර්. පී.	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0047	1700-01-01	2023-11-18 22:15:14.822379+10:30	1
1467	Sinhala Bodiwansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0048	1700-01-01	2023-11-18 22:15:14.823378+10:30	1
1468	Sinhala basha Ithihasaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0049	1700-01-01	2023-11-18 22:15:14.825378+10:30	1
1469	Sinhala Grantha wansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0050	1700-01-01	2023-11-18 22:15:14.826378+10:30	1
1470	Sinhala Lekaka parapura	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0051	1700-01-01	2023-11-18 22:15:14.827379+10:30	1
1471	Sinhala Mahawansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0052	1700-01-01	2023-11-18 22:15:14.828236+10:30	1
1472	Sinhala Mahawansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0053	1700-01-01	2023-11-18 22:15:14.830387+10:30	1
1473	Thupawansaya	-1	L1_C6	L2_A12	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RC0054	1700-01-01	2023-11-18 22:15:14.831387+10:30	1
1474	සැළලිහිණි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0004	1700-01-01	2023-11-18 22:15:14.832388+10:30	1
1475	සැළලිහිණි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0005	1700-01-01	2023-11-18 22:15:14.833388+10:30	1
1476	සැළලිහිණි විවරණය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0006	1700-01-01	2023-11-18 22:15:14.835387+10:30	1
1477	සැළලිහිණි සංදේශ වර්ණනාව	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0007	1700-01-01	2023-11-18 22:15:14.836388+10:30	1
1478	සැළලිහිණි සංදේශ සාරාර්ථ වර්ණනාව	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0008	1700-01-01	2023-11-18 22:15:14.837394+10:30	1
1479	සැළලිහිණි සංදේශ	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0009	1700-01-01	2023-11-18 22:15:14.838473+10:30	1
1480	අෂ්ටනාරී සන්දේසය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	527	\N	\N	17	\N	RF0010	1910-01-01	2023-11-18 22:15:14.840478+10:30	1
1481	කිරල් සංදේශය	22	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	528	\N	\N	17	\N	RF0011	1940-01-01	2023-11-18 22:15:14.84248+10:30	1
1482	ගිරා සංදේශ සන්නය	103	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	529	\N	\N	17	\N	RF0012	1883-01-01	2023-11-18 22:15:14.843479+10:30	1
1483	හංස සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0013	1700-01-01	2023-11-18 22:15:14.844479+10:30	1
1484	හංස සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0014	1700-01-01	2023-11-18 22:15:14.846479+10:30	1
1485	සමනල සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0015	1700-01-01	2023-11-18 22:15:14.84748+10:30	1
1486	sinhala sandesawaliya	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0016	1700-01-01	2023-11-18 22:15:14.848479+10:30	1
1487	ඇටිකුකුළු සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0017	1700-01-01	2023-11-18 22:15:14.850479+10:30	1
1488	කිරල් සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0018	1700-01-01	2023-11-18 22:15:14.85148+10:30	1
1489	කෝකිල සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0019	1700-01-01	2023-11-18 22:15:14.852553+10:30	1
1490	ගොන්කවඩි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0020	1700-01-01	2023-11-18 22:15:14.854553+10:30	1
1491	තිසර සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0021	1700-01-01	2023-11-18 22:15:14.856553+10:30	1
1492	දියසැවුල් සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0022	1700-01-01	2023-11-18 22:15:14.857552+10:30	1
1493	දියසැවුල් සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0023	1700-01-01	2023-11-18 22:15:14.858597+10:30	1
1494	නිලකොබෝ සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0024	1700-01-01	2023-11-18 22:15:14.860643+10:30	1
1495	පරෙවි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0025	1700-01-01	2023-11-18 22:15:14.861604+10:30	1
1496	පරෙවි සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0026	1700-01-01	2023-11-18 22:15:14.863629+10:30	1
1497	මයුර සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0027	1700-01-01	2023-11-18 22:15:14.865195+10:30	1
1498	මල්කවුඩු සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0028	1700-01-01	2023-11-18 22:15:14.866194+10:30	1
1499	වනසැවුල් හස්න	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0029	1700-01-01	2023-11-18 22:15:14.868193+10:30	1
1500	වලුකුරුළු සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0030	1700-01-01	2023-11-18 22:15:14.869194+10:30	1
1501	සන්දෙස කථා	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0031	1700-01-01	2023-11-18 22:15:14.870194+10:30	1
1502	සන්න සහිත අලුකොබෝ සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0032	1700-01-01	2023-11-18 22:15:14.872195+10:30	1
1503	සන්න සහිත ගිරා සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0033	1700-01-01	2023-11-18 22:15:14.874194+10:30	1
1504	සන්න සහිත රාමඤ්ඤ සංදේශය	-1	L1_C6	L1_C6_C6	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RF0034	1700-01-01	2023-11-18 22:15:14.875194+10:30	1
1505	අමාරසය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0090	1700-01-01	2023-11-18 22:15:14.877194+10:30	1
1506	භුරිදත්ත ජාතක කාව්‍ය‍ය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0091	1700-01-01	2023-11-18 22:15:14.878194+10:30	1
1507	කන්ටහාල ජාතකය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0092	1700-01-01	2023-11-18 22:15:14.880194+10:30	1
1508	කව්මිනි මල්දම	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0093	1700-01-01	2023-11-18 22:15:14.881194+10:30	1
1509	සමනල හෑල්ල	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0094	1700-01-01	2023-11-18 22:15:14.883193+10:30	1
1510	සත් බස් රුවන් හර	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0095	1700-01-01	2023-11-18 22:15:14.884194+10:30	1
1511	සුභාශිත විවරනය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0096	1700-01-01	2023-11-18 22:15:14.885194+10:30	1
1512	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0097	1700-01-01	2023-11-18 22:15:14.887194+10:30	1
1513	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0098	1700-01-01	2023-11-18 22:15:14.888196+10:30	1
1514	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0099	1700-01-01	2023-11-18 22:15:14.890194+10:30	1
1515	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0100	1700-01-01	2023-11-18 22:15:14.891225+10:30	1
1516	තෙරුවන් මාලාව	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0101	1700-01-01	2023-11-18 22:15:14.893194+10:30	1
1517	කාව්‍යශේඛර මහා කාව්‍යය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0102	1700-01-01	2023-11-18 22:15:14.894194+10:30	1
1518	බුදුගුණ අලංකාරය වලානේ සන්නය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0103	1700-01-01	2023-11-18 22:15:14.895194+10:30	1
1519	බුදුගුණ අලංකාරය විවරණය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0104	1700-01-01	2023-11-18 22:15:14.897194+10:30	1
1520	ලෝවැඩ සඟරාව	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0105	1700-01-01	2023-11-18 22:15:14.898193+10:30	1
1521	සියබස් මල්දම	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0106	1700-01-01	2023-11-18 22:15:14.900194+10:30	1
1522	සියබස් මල්දම	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0107	1700-01-01	2023-11-18 22:15:14.901193+10:30	1
1523	සියබස් මල්දම	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0108	1700-01-01	2023-11-18 22:15:14.902194+10:30	1
1524	සුභාෂිතය	-1	L1_C6	L1_C6_C7	L3_C1	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RG0109	1700-01-01	2023-11-18 22:15:14.904194+10:30	1
1525	සප්ත විසුද්ධි කමටහන් භාවනා	-1	\N	\N	\N	\N		\N	2023-11-18	\N	\N	519	\N	\N	\N	\N	RJ0028	1700-01-01	2023-11-18 22:15:14.905194+10:30	1
1526	සතර කමටහන් භාවනා	-1	\N	\N	\N	\N		\N	2023-11-18	\N	\N	530	\N	\N	\N	\N	RJ0029	1700-01-01	2023-11-18 22:15:14.907193+10:30	1
1527	sinhala-akshara-malawa-by-Rev.-G.-Vipula	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	\N	\N	\N	17	\N	RL0045	1700-01-01	2023-11-18 22:15:14.90827+10:30	1
1528	සිංහල ව්යාකරණ පද නීතිය	-1	L1_C6	L1_C6_C12	\N	\N		\N	2023-11-18	\N	\N	102	\N	\N	17	\N	RL0046	1889-01-01	2023-11-18 22:15:14.910279+10:30	1
\.


--
-- TOC entry 3528 (class 0 OID 17919)
-- Dependencies: 245
-- Data for Name: core_bookmark; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_bookmark (id, page, book_id, user_id) FROM stdin;
\.


--
-- TOC entry 3531 (class 0 OID 18005)
-- Dependencies: 248
-- Data for Name: core_booktemp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.core_booktemp (id, catalog_no, title, author_name, published_year, pages, language, status, source, category1, category2) FROM stdin;
2023	V0064	උභය ප්‍රාතිමෝක්‍ෂය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	විනය	\N
2024	C0001	කෙලෙස් එක්දහස් පන්සියය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
1424	A0003	අත්ථසාලිනී අර්ථකථා සන්නය (දම් සඟුණු අටුවා සන්නය)	සද්ධානන්දතිස්ස හා සුධම්මානන්දතිස්ස හිමිවරු	1911-01-01	272	Sinhala	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1425	A0004	අභිධම්ම මාතිකා ස්වරුපාර්ථ	සීලවතී පිරිස් මිය	1992-01-01	204	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1426	A0005	අභිධම්ම හා සුත්තන්ත මාතිකා සන්නය	ඌවෙ විමලසාර හිමි	1910-01-01	198	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2025	C0002	චත්තාළීසාකාර මහා විපස්සනා භාවනාව	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2026	C0003	චතුරාර්‍ය්‍ය සත්‍යය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
1429	A0008	අභිධම්මමාතිකා පාළි ව්‍යාඛ්‍යානය	සද්ධම්මපාල රත්නායක ශුරින්	1949-01-01	139	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1430	A0009	පරමත්තමහෝදදී අභිධම්මාවතාරය සන්නය; ප්‍රථම භාගය	ඇම් අනෝමදස්සී හිමි	1914-01-01	260	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1431	A0010	අභිධර්ම කෝෂය - පරමාර්ථ රත්නාවලී; ප්‍රථම භාගය	මොරටුවේ සාසනරතන හිමි	1948-01-01	356	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1432	A0011	අභිධර්ම චන්ද්‍රිකාව	මාතර ධර්මවංශ හිමි	1981-01-01	501	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1433	A0011	අභිධර්ම චන්ද්‍රිකාව	මාතර ධර්මවංශ හිමි	1981-01-01	563	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1434	A0012	ධර්මවිභාගසංක්ෂේපය	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	1888-01-01	64	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
1435	A0013	අභිධර්ම ප්‍රකාශය; ප්‍රථම භාගය	දොඩම්පහළ කවිධජ හිමි	1939-01-01	497	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1436	A0014	අභිධර්ම ප්‍රවේශනය	දොඩම්පහළ කවිධජ හිමි	2010-01-01	384	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1437	A0015	පරමාර්ථ ශාරධර්ම විනිශ්චය නොහොත් අභිධර්ම ප්‍රවේශය	ශ්‍රී සුජාත තිස්ස හිමි	1921-01-01	124	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1438	A0016	අභිධර්ම මධු බින්දුව	කහන්දාමුවදොර සුමංගල හිමි	1921-01-01	26	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1439	A0017	අභිධර්මාර්ත්ථ විභාවනි සන්නය (01)	ඇම් ධර්මරත්න පඬිතුමා	1903-01-01	512	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1440	A0017	අභිධර්මාර්ත්ථ විභාවනි සන්නය (02)	ඇම් ධර්මරත්න පඬිතුමා	1903-01-01	300	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1441	A0018	අභිධර්මාර්ත්ථ සංග්‍රහයෙහි ස්වරූප	සීලවතී පීරිස් මිය	1996-01-01	354	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1442	A0019	අභිධර්මාර්ථ ප්‍රදීපිකා 1	අමරදාස රත්නපාල මහතා	1964-01-01	545	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1443	A0020	අභිධර්මාර්ථ ප්‍රදීපිකා 2	අමරදාස රත්නපාල මහතා	1964-01-01	556	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1444	A0021	අභිධර්මාර්ථ ප්‍රදීපිකා 3	අමරදාස රත්නපාල මහතා	1964-01-01	555	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1445	A0022	අභිධර්මාර්ථ ප්‍රදීපිකා 4	අමරදාස රත්නපාල මහතා	1964-01-01	643	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1446	A0023	අභිධර්මාර්ථ සංග්‍රහය ප්‍රශ්නෝත්තරව්‍යාඛ්‍යා	හික්කඩුවේ ශ්‍රී සුමංගල හිමි	1909-01-01	143	Sinhala	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1447	A0024	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; තෙවන සංස්කරණය	සිරි පඤ්ඤාමොලීතිස්ස හිමි	1926-01-01	273	Sinhala	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1448	A0024	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; සිව්වන සංස්කරණය	වලගෙදර සෝමාලෝක තිස්ස හිමි	1950-01-01	290	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
1449	A0024	අභිධර්මාර්ථ සංග්‍රහ පුරාණ සන්නය; පස්වන සංස්කරණය	වලගෙදර සෝමාලෝක තිස්ස හිමි	1960-01-01	302	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2027	C0004	ධර්‍ම විනිශ්චය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
1451	A0026	ධාතුකථා ප්‍රකරණපාළිය සන්නය	දික්වැල්ලේ ගුණරතන හිමි	1912-01-01	258	Sinhala	Full	Archive.org	අභිධර්ම	අභිධර්ම
1452	A0026	ධාතුකථා ප්‍රකරණපාළිය සන්නය	දික්වැල්ලේ ගුණරතන හිමි	1912-01-01	244	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1454	A0028	සිත සිරුර සහ නිවන හෙවත් ධම්මසංගනී	යාගොඩ ධම්මප්‍රභ හිමි	1964-01-01	\N	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2028	C0005	නිර්වාණ විනිශ්චය හා පුනුරුප්පත්ති ක්‍රමය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
1456	A0030	පට්ඨාන දේසනා සාරය	යාගොඩ ධම්මප්‍රභ හිමි	1962-01-01	476	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1457	A0031	පට්ඨාන ප්‍රකරණ භාව සන්නය	හඳුන්කඩුවේ සුමන හිමි	1926-01-01	300	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1458	A0032	පරමත්ථවිනිච්ඡය සහ පරමත්ථ විභාවිනී	අම්බලන්ගොඩ දේවානන්ද හිමි	1926-01-01	359	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1459	A0033	ලෝක නිත්ථරණය - හේතුඵල වාදය	වෙඬරුවේ අනෝමදස්සී හිමි	1955-01-01	211	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1460	A0034	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 01	මොරටුවේ මේධානන්ද හිමි	1929-01-01	608	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1461	A0034	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 02	මොරටුවේ මේධානන්ද හිමි	1929-01-01	494	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1462	A0034	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 03	මොරටුවේ මේධානන්ද හිමි	1929-01-01	428	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1463	A0034	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 04	මොරටුවේ මේධානන්ද හිමි	1950-01-01	310	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1464	A0034	විභඞ්ග අටුවා සන්නය - අභිධර්මප්‍රදීපිකා 05	මොරටුවේ මේධානන්ද හිමි	1954-01-01	510	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1465	A0035	විමුක්ති මාර්ගොදය (බොජ්ඣංග)	දික්වැල්ලේ සීලරතන හිමි	1930-01-01	284	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1466	A0036	සච්ච සංඛේප ටීකා සන්නය	මොරටුවේ මේධානන්ද හිමි	1912-01-01	220	Sinhala	Full	Dammadana Web	අභිධර්ම	අභිධර්ම
1467	A0037	විස්තර භාවසන්න සහිත පටිච්චසමුප්පදය	ඇම් සී ද සිල්වා මහතා	1935-01-01	96	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1468	A0038	වීථි භාසා ටීකාව ‌හෙවත් වීථි විභාගය	දිගන සුගතවංශ හිමි	\N	66	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1469	A0039	වීථි විභාගය සහිත පට්ඨාන ත්‍රී රාසිය	නා උයනේ අරියධම්ම හිමි	2011-01-01	84	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1470	A0040	අභිධර්මාර්ථ සංග්‍රහ සන්නය; අත් පිටපත	වජිරාරාමය	1930-01-01	325	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2029	A0070	පට්ඨාන මහා පකරණ සන්නය 01	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	402	Sinhala	Full	Path Nirwana	අභිධර්ම	\N
1472	A0042	ස්කන්ධාදීන්ගේ විභාගය හා විමුක්ති සංග්‍රහය	හෝමාගම සීලරතන හිමි	1925-01-01	222	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1473	A0043	අභිධර්මය - ප්‍රථම භාගය	දෙවිනුවර ඤාණාවාස හිමි	1955-01-01	78	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2030	C0006	පටිච්චසමුප්පාද විවරණය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2031	C0007	පාරමිතා ප්‍ර‍කරණය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2034	C0010	බුද්ධ නීති සංග්‍ර‍හය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2035	C0011	බෝධි පූජාව	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
1453	A0027	විමුක්ති සංග්‍රහය	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	1888-01-01	150	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
1422	A0001	අත්ථසාලිනි අත්ථයෝජනා	කෝදාගොඩ පඤ්ඤාසේකර හිමි (ඤාණකිත්ති හිමි)	1890-01-01	305	Pali	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1423	A0002	අභිධම්මත්‍ථ විභාවිනි ටිකාය	වැලිතර පඤ්ඤානන්ද හිමි	1896-01-01	187	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2036	C0012	බෝධිපාක්ෂික ධර්ම විස්තරය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2037	C0013	බෞද්ධයාගේ අත්පොත	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2038	C0014	මංගල ධර්ම විස්තරය - ගොඩිගමුවේ සෝරත හිමි	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2039	C0015	වඤ්චක ධර්ම හා චිත්තෝපක්ලේශ ධර්ම	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2040	C0016	විදර්ශනා භාවනා ක්‍රමය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2041	V0065	විනය කර්ම පොත	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	විනය	\N
2042	V0066	ශාසනාවතරණය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	විනය	\N
2043	C0017	සතිපට්ඨාන භාවනා ක්‍ර‍මය (බුරුමයේ)	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2044	C0018	සතිපට්ඨාන භාවනා විවේචනය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2045	C0019	සූවිසි මහ ගුණය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2778	RK0005	ජිනවචන කෝෂය	මාවිත්තර රේවත හිමි	1956-01-01	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2779	RK0006	ඉංග්‍රීසි සිංහල -දෙමළ ශබ්දකෝෂය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2780	RK0007	ශ්රී සුමංගල සිංහල ශබ්දකෝෂය 1 අ-න	වැලිවිටියේ සෝරත හිමි	1952-01-01	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2781	RK0008	SINHALA SAHITYA VISHVA KOSHAYA	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2782	RK0009	RUWANMAL NIGHANTUWA OR NAMARATNA MALAWA	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2783	RK0010	සිංහල අක්ෂර වින්‍යාස අකාරාදිය	සඳගෝමි කෝපරහේවා	2003-01-01	143	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2784	RK0011	GUNASENA SINGHALA MAHA AKARADHIYA PRATHAMA BHAGAYA	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2785	RK0012	ශ්රී සද්ධර්ම කෝෂය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2123	S0105	ඉතිවුත්තක පාලි	බොද්‍ධ සම්මේලනය	1965-01-01	123	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2132	A0078	සාට්ඨකථං ධම්මසංගනිප්පකරණං	සුමංගල හිමි/ සීලරතන හිමි	1910-01-01	83	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2133	A0079	ධාතුකථාප්පකරණ පාලි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	93	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2134	A0080	පට්ඨානප්පකරණ පාළි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	1520	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2135	A0081	පුග්ගල පඤ්ඤත්තිප්පකරණ පාලි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	77	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2138	S0113	මජ්ඣිමනිකාය 1 මූලපණ්ණාසකය	විද්‍යාලඞ්කාර	1946-01-01	448	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2139	A0082	යමකප්පකරණ පාළි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	732	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2141	V0070	විනය චුල්ලවග්ගපාළි	බෙන්තර ශ්‍රද්‍ධාතිස්ස හිමි	1915-01-01	444	Pali	Full	Archive.org	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2158	A0083	විභඞ්ගප්පකරණ පාළි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	330	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2159	S0114	විමානපෙතවත්‍ථු ථෙරථෙරීගාථා පාළි -	මොරොන්තුඩුවේ ධම්මානන්ද හිමි	1930-01-01	404	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
1488	R0015	තේලකටහගාථා	ධම්මවිචය ග්‍රන්ථ	\N	18	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2160	S0115	සංයුත්ත නිකාය පාලි	බණ්ඩාරමුල්ලේ අමරසීහ හිමි	1926-01-01	1136	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2606	S0282	පරමත්ථ දීපනී නාම චරියාපිටකඅට්ඨ කථා	විලේගොඩ ධම්මානන්ද හිමි	1920-01-01	282	Pali	Full	Paramaththa	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
1508	RE0001	අභිනව යෝගමුක්තාවලිය	ඩි සි යාගබමුනු	1900-01-01	38	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1509	RE0002	ගෙඩි වෙදකම	\N	\N	100	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1510	RE0003	චරක සංහිතාව	ආර් බුද්ධදාස	1960-01-01	992	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1511	RE0004	ද්‍රව්‍යගුණ නිඝණ්ටුව	ජි ඩබ් ගේබ්‍රියෙල් ගුණවර්ධන	1912-01-01	334	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1512	RE0005	නාඩි ඥානතරංගිණිය	ජේ පි ජයතිලක වෙද අප්පුහාමි	1892-01-01	30	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1513	RE0006	නාඩි ප්‍රකාශය	දොන් හරමානිස් අල්විස්	1890-01-01	24	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1514	RE0007	පුරාණ සර්ප විෂ චිකිත්සා	\N	1948-01-01	190	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1515	RE0008	භාරත රෝග නිවාරණ ක්‍රම	මඩබාවිට විජයසෝම හිමි	1977-01-01	40	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1516	RE0009	භෙෂජසංග්‍රහව	ඇන් ඒ පෙරේරා	1892-01-01	36	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1517	RE0010	භෛෂජ්‍ය දර්‍පණය	\N	\N	68	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1518	RE0011	භෛෂජ්යදර්පණය	ජේ පෙරේරා	\N	98	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1519	RE0012	මාධවනිදාන	බටුවන්තුඩාවේ පඬිතුමා	1859-01-01	470	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1520	RE0013	යොග මාලාව හෙවත් සත්‍යාසාර යෝග සංග්‍රහව	සරදියෙල් අප්පුහාමි	1892-01-01	20	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1521	RE0014	යොගශතකය	බටුවන්තුඩාවේ පඬිතුමා	1898-01-01	44	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1522	RE0015	යොගාර්ණවය	කිරිඇල්ලේ ඤාණවිමල නා හිමි	1942-01-01	105	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1523	RE0016	යෝගරත්නාකරය	ජෝර්ජ් රන්දුනු සමරතුංග	1897-01-01	456	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1524	RE0017	යෝගසේකරය	ඇම් ඩි ආර් අප්පුහාමි	1902-01-01	78	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1525	RE0018	වටිකා ප්‍රකරණය	\N	\N	264	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1526	RE0019	වෛද්‍යක සාරාර්ථ සංග්‍රහය	ආරියදාස කුමාරසිංහ	1987-01-01	1272	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1527	RE0020	වෛද්‍යචින්තාමණි භෛෂද්‍ය සංග්‍රහව.	බි ජයසිංහ අප්පුහාමි	1909-01-01	572	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1528	RE0021	වෛද්‍යජීවනය	පුංචි බණ්ඩාර	1902-01-01	90	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1529	RE0022	ශාර්ඞගධර සංහිතාව	ආරියදාස කුමාරසිංහ	1962-01-01	284	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1530	RE0023	සතශෙලාකය	ඒකනායක කුරුප්පු ආරච්චි	1862-01-01	58	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1531	RE0024	සරස්වතී නිඝණ්ටුව	ජි ඩබ් ගේබ්‍රියෙල් ගුණවර්ධන	1918-01-01	146	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1532	RE0025	සිඞෞෂධ නිඝණ්ටුව	හරමානිස් සමරසිංහ	1911-01-01	172	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1533	RE0026	සුශ්‍රැත සංහිතාව	ආර් බුද්ධදාස	1962-01-01	1000	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1534	RE0027	සුශ්‍රැත නිදානස්ථානය	එච් ඩි අබේවර්ධන අප්පුහාමි	1891-01-01	102	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1535	RE0028	සුශ්‍රැත ශාරිරස්ථානය	බටුවන්තුඩාවේ පඬිතුමා	1882-01-01	122	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1632	RL0016	සිදත් සඟරා සන්නය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1536	RE0029	සුශ්‍රැත සූත්‍රස්ථානය	එස් ඒබ්‍රහම් ප්‍රනාන්දු	1896-01-01	88	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1537	RE0030	සෙනෙහ විධිය හෙවත් බෙහෙත් තෙල් පොත.	ඇල් බි ප්‍රේරා	1902-01-01	108	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
1538	RH0001	වුත්තෝදය, සන්නය, විවරණය හා ටීකාව	උදම්මිට ධම්මරක්ඛිතතිස්ස හිමි	1916-01-01	88	\N	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1539	RH0002	සන්න සහිත වුත්තෝදය	විමලජෝති හිමි	1915-01-01	36	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1540	RH0003	සන්න සහිත වුත්තෝදය	විමලජෝති හිමි	1915-01-01	42	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1541	RH0004	එළුඡන්දසය	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1542	RH0005	එලු සඳස් ලකුණ.	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1543	RH0006	වුත්තාලංකාරය නම් වූ වුත්තෝදය වර්ණනාව	ගල්පොතුගොඩ ඤාණවංස හිමි	2021-01-01	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1544	RH0007	වුත්තෝදය ලංකානන්ද ව්‍යාඛ්‍යාව 01	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1545	RH0008	වුත්තෝදය ලංකානන්ද ව්‍යාඛ්‍යාව 02	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1546	RH0009	වෘත්ත මාලාඛ්යාව	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1547	RH0010	වෘත්තමාලව	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1548	RH0011	සඤ්ජීවනී ව්‍යාඛ්‍යා සහිත එලු සඳස් ලකුණ	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1549	RH0012	සරලාව්‍යාඛ්‍යා සහිත වෘත්තරත්නාකරය	\N	\N	\N	\N	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	ඡන්දොලංකාර
1550	RD0001	A Manual Of Sanskrit Composition And Translation	Mahadhyapaka Rakhaldas	1923-01-01	306	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1551	RD0002	Ardha-Magadhi	Dr P L Vaidya	1941-01-01	184	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1552	RD0003	Arkaprakasha	\N	\N	264	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1553	RD0004	Kavikalpadruma	Vopadewa Goswami	1876-01-01	52	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1554	RD0005	Kavyadarsa of Dandin	SK Belvalkar	1924-01-01	162	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1555	RD0006	Megha Dutha	\N	\N	132	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1556	RD0007	Megha Dutha	HH Wilson	1867-01-01	194	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1557	RD0008	Nala and Damayanthi	Norman M Penzer	1936-01-01	234	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1558	RD0009	Nalodaya	\N	\N	172	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1559	RD0010	Rajaprashasti	Pandit Jibananda Vidyasagar	1888-01-01	42	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1560	RD0011	Retnavali	Sri arshadeva	1832-01-01	112	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1561	RD0012	Taittriyopanisad	Swami Sarvananda	1942-01-01	174	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1562	RD0013	THE CATUHSATAKA OF ARYADEVA	Aryadewa	1931-01-01	330	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1563	RD0014	Uttara Rama Cheritra	Bhavabhuthi	1831-01-01	142	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1564	RD0015	Vachaspatya	Taranatha Tarkavachspathi	1873-01-01	834	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1565	RD0016	Vedanta-sara	ඇම් හිරියන්න	1929-01-01	86	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1566	RD0017	VIVEKACHUDAMANI	Sri Sankaracharya	1932-01-01	262	Sanskrit	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1567	RD0018	අභිඥානශාකුන්තලය	පැළැනේ ශ්‍රි වජිරඤාන හිමි	1956-01-01	396	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1568	RD0019	අමර ශබ්දාවලී	W Jemis Fernando	1922-01-01	248	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1569	RD0020	අමරකොෂය	මැද්දේපොල	1934-01-01	366	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1570	RD0021	අමරුශතකය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1571	RD0022	ඍතුසංහාරකාව්‍යය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1572	RD0023	කවිකල්පද්‍රැම නාමධෙය මුග්ධබොධධාතුපාඨය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1573	RD0024	කාව්‍යාදර්‍ශය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1574	RD0025	ජානකීහරණ මහා කාව්‍යය	කුමාරදාස/ ධර්මාරාම හිමි	1891-01-01	344	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1575	RD0026	දශ කුමාර චරිත (පූර්ව පීඨිකා) මංගල ව්‍යාඛ්‍යානය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1576	RD0027	දශකුමාර චරිත (උත්තර පිඨිකා) මංගල ව්‍යාඛ්‍යානය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1577	RD0028	ධාතුරූපාවලිය හෙවත් සංස්කෘත ආඛ්‍යාතවරනැගිල්ල	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1578	RD0029	භක්ති ශතකය හෙවත් බෞද්ධ ශතකය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1579	RD0030	භගවත්ගීතා	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1580	RD0031	මේඝදූතය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1581	RD0032	යතිදූතම්	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1582	RD0033	රඝුවංශ මහා කාව්‍යය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1583	RD0034	විස්තරාර්ථ සහිත සාරස්වත ප්‍රක්‍රියා ව්‍යාඛ්‍යානය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1584	RD0035	විස්තරාර්ථ සහිත සාරස්වතාඛ්‍යාත ව්‍යාඛ්‍යානය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1585	RD0036	ශික්ෂා සංග්‍රහව සහ ශික්ෂා සංග්‍රහාර්ථ ව්‍යාඛ්‍යානය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1586	RD0037	ශිශුපාලවධ මහා කාව්‍යය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1587	RD0038	සංස්කෘත භාෂාවතරණය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1588	RD0039	සංස්කෘත වරනැගිල්ල	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1589	RD0040	සංස්කෘත ශබ්දමාලාව	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1590	RD0041	සකුන්තලා; අභිඥාන ශාකුන්තල	කාලිදාස/ මාවුස්සාගොල්ලේ සිරිසුමන	1954-01-01	68	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1591	RD0042	සන්න සහිත කාව්‍යාදර්‍ශය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1592	RD0043	සන්න සහිත ව්‍යාසකාරය	\N	\N	\N	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
1593	RB0001	සම්පිණ්ඩිතමහානිදානය	කොල්ලුපිටියේ මහින්දසංඝ රක්ඛිත හිමි	2006-01-01	422	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1594	RB0002	ගෞතම කේන්ද්‍රය	බලන්ගොඩ ජයසේකර	\N	15	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1595	RB0003	ජිනරාජ වංශය - බුද්ධ චරිතය	ඩී පි එච් අභයරත්න	1930-01-01	196	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1596	RB0004	ශාඛ්‍යමුණීන්ද්‍රාවදානය බුද්ධ චරිතය	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	\N	438	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1597	RB0005	ජිනචරිතය - සන්න සහිත	වලානේ ධම්මානන්ද හිමි	1886-01-01	103	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1598	RB0006	සන්න සහිත ජිනචරිතය	වලානේ ශ්‍රී සිද්ධාර්ථ ධම්මානන්ද හිමි	1886-01-01	106	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1633	RL0017	විබත් මල් දම	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1599	RB0006	සන්න සහිත ජිනචරිතය	වලානේ ශ්‍රී සිද්ධාර්ථ ධම්මානන්ද හිමි	1930-01-01	112	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1600	RB0007	අනාගත වංශය මෙතේ බුදුසිරිත	විල්ගම්මුල සංඝරාජ හිමි	\N	196	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1601	RB0008	මහා ධම්මපාල ජාතකය	\N	\N	10	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1602	RB0009	පන්සිය පණස් ජාතක පොත	වේරගොඩ අමරමෝලි හිමි	1961-01-01	1000	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1603	RB0010	අභිසම්බෝධි අලංකාරය සන්න සහිත	\N	1897-01-01	40	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1604	RB0011	උම්මග්ග ජාතකය පුරාණ පිටපත	විලියම් පෙරේරා / ගුණරතන හිමි	1875-01-01	164	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1605	RB0012	ලක්ඛණ සතකං	සුරියගොඩ සුමංගල හිමි	1898-01-01	22	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1606	RB0013	ජිනාලංකාර වර්ණනාව	භදන්ත බුද්ධරක්ඛිත හිමි	1913-01-01	304	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1607	RB0014	ජිනාලංකාරය	භදන්ත බුද්ධරක්ඛිත හිමි	1900-01-01	108	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1608	RB0015	ශ්‍රී සද්ධර්මාවවාද සංග්‍රහය	තිබ්බටුවාවේ ශ්‍රී බුද්ධරක්ඛිත හිමි	1956-01-01	610	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1609	RB0016	ශ්‍රී සද්ධර්මාවවාද සංග්‍රහය	තිබ්බටුවාවේ ශ්‍රී බුද්ධරක්ඛිත හිමි	1901-01-01	602	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1610	RB0017	පන්සිය පණස් ජාතක පොත Part 01	එෆ් මුණසිංහ	1928-01-01	118	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1611	RB0017	පන්සිය පණස් ජාතක පොත Part 02	එෆ් මුණසිංහ	1929-01-01	922	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1612	RB0018	බුද්ධගුණ ගාථාවලී	\N	\N	85	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1613	RB0019	බුද්ධවංශ දෙසනාව හා පරංජස දීපනිය	\N	1899-01-01	74	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1614	RB0020	ශාක්‍යසිංහාවදානය හෙවත් බුද්ධ චරිතය	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	1957-01-01	312	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1615	RB0021	ජිනවංශ දීපං	මොරටුවේ මේධානන්ද හිමි	1917-01-01	800	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1616	RB0022	ඉති කුමාරිගේ කතාව	\N	\N	20	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	බුද්ධ චරිත
1617	RL0001	සිංහල ව්‍යාකරණය	කාටර්	1862-01-01	40	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1618	RL0002	සිංහල ව්‍යාකරණය; සිදත් සඟරාව	ශ්‍රී සුමංගල හිමි	1884-01-01	190	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1619	RL0003	සිදත් සඟරාව	අමරසිංහ	1892-01-01	108	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1620	RL0004	සිදත් සඟරාවේ පුරාතන සන්නය	දොන් අන්ද්රිස් සිල්වා බටුවන්තුඩාවේ පඬිතුමා	1877-01-01	115	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1621	RL0005	සිදත් සඟරාවේ ලියන සන්නය	ජෝන් පෙරේරා	1876-01-01	48	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1622	RL0006	සිංහලයේ වචන වෙන් කිරීම	\N	1991-01-01	22	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1623	RL0007	විබත් මල් දම	\N	1883-01-01	27	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1624	RL0008	සිංහල ව්‍යාකරණය පද නිතිය	වේරගම පුංචිබණ්ඩාර	1890-01-01	94	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1625	RL0009	ඉබේ සකුව	\N	1963-01-01	90	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1626	RL0010	සිංහල ග්‍රන්තාර්ණවය	\N	\N	279	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1627	RL0011	ශබ්දානුසාසනය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1628	RL0012	සිදත් සඟරා භාව සන්නය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1629	RL0013	සිදත් සඟරා භාව සන්නය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1630	RL0014	සිදත් සඟරා	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1631	RL0015	සිදත් සඟරා සන්නය 1	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1634	RL0018	නිරුක්ති බින්දු	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1635	RL0019	ලකුණු සර 1883	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1636	RL0020	සිදත් සඟරාව sannaya ha gatapadaya	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1637	RL0021	සිද්ධාන්ත පරික්ෂනය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1638	RL0022	සිංහල ධාතු රත්නාවලී	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1639	RL0023	සියබස්ලකර	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1640	RL0024	සියබස්ලකර	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1641	RL0025	සියබස්ලකර	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1642	RL0026	හෙලදිව් අබිදානවත	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1643	RL0027	වර්ණ ප්‍රශ්නය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1644	RL0028	ව්‍යාකරන රත්න	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1645	RL0029	සිංහල ව්‍යාකරන	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1646	RL0030	සිංහල ව්‍යාකරන පොත	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1647	RL0031	SINHALA PRAKRTAYA	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1648	RL0032	අක්ෂර ශික්ෂා	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1649	RL0033	හෙලදාරුවනකර	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1650	RL0034	කවි ශික්ෂා	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1651	RL0035	ක්‍රියා විවරනය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1652	RL0036	මුලක්ඛර	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1653	RL0037	පද නීතිය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1654	RL0038	පදවිනිස	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1655	RL0039	ප්‍රබන්ධ සංග්‍රහ	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1656	RL0040	ප්‍රබන්ධොපදෙශය	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1657	RL0041	Sinhala Grammer	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1658	RL0042	Sinhala Grammer	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1659	RL0043	Sinhala Grammer	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1660	RL0044	Sinhala Grammer	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
1661	RG0001	අමාවතුර	ගුරුළුගෝමී	1958-01-01	565	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1662	RG0002	අමාවතුර ගැටපද	බෝරුක්ගමුවේ රේවත	1899-01-01	52	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1663	RG0003	අමාවතුර	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1664	RG0004	අමාවතුර	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1665	RG0005	අමාවතුර	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1666	RG0006	සිරි රහල් පබඳ	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1668	RC0002	ථූපවංස කථා	\N	\N	69	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1669	RC0003	දාඨාවංශය	රන්ජිත් වනරතන	1994-01-01	242	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1670	RG0007	පූජාවලිය	කිරිඇල්ලේ ඤාණවිමල හිමි/ මයුරපාද පරිවේණාධිපති	1951-01-01	844	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1671	RG0008	බුත්සරණ	වැලිවිටියේ සෝරත හිමි / විද්‍යාචක්‍රවර්තී	1959-01-01	344	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1672	RG0009	බුත්සරණ	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1673	RG0010	බුත්සරණ	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1674	RG0011	බාරස කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1675	RG0012	බාරස කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1676	RG0013	සඟසරණ	විද්යාචක්රවර්තී	1929-01-01	92	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1677	RC0004	මහාවංශය	BCC	\N	765	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1679	RG0014	සඟසරණ	විද්යාචක්රවර්තී	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1680	RG0015	යසෝදරාවත	\N	\N	19	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1681	RG0016	යසෝදරාවත	\N	\N	19	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1682	RC0006	රසවාහිනී ජම්බුදීපුප්පත්ති කථා	රන්ජිත් වනරතන	1978-01-01	126	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1683	RC0007	රසවාහිනී ලංකාදීපුප්පත්ති කථා	රන්ජිත් වනරතන	1978-01-01	213	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1684	RC0008	සිංහල දිපවංශය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1685	RG0017	රසවාහිනී	සිද්ධාර්ථ හිමි	1900-01-01	306	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1686	RG0018	රසවාහිනි සන්නය වේදේහ හිමි	ඊ.ආර්. ගුණරත්න	1898-01-01	139	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1687	RG0019	රසවාහිනී සිංහල අනුවාදය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1688	RG0020	ලෝවැඩ සඟරාව	විදාගම මෛත්‍රිය හිමි	\N	17	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1689	RG0021	ලෝවැඩ සඟරාව	විදාගම මෛත්‍රිය හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1690	RG0022	ලෝවැඩ සඟරාව	විදාගම මෛත්‍රිය හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1691	RG0023	ලෝවැඩ සඟරාව	විදාගම මෛත්‍රිය හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1692	RA0001	සද්ධර්ම රත්නාවලිය	ධර්මසේන මහා ස්ථවිර	1961-01-01	1265	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
1693	RA0002	සද්ධර්මාලංකාරය	ජයබාහු ධර්මකීර්ති හිමි	\N	805	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
1694	RF0001	සැළලිහිණි සංදේශය	තොටගමුවේ රාහුල හිමි	\N	15	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
1695	RF0002	සැළලිහිණි සංදේශය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
1696	RC0009	සිහලවත්තුප්‍රකරන Pali	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1697	RG0024	සිරිත් මල්දම	ඇම් ඇල් සිල්වා ගුරුමුහන්දිරම්	\N	23	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1698	RA0003	සහස්සවත්ථුප්‍රකරණ	පොල්වත්තේ බුද්ධදත්ත හිමි	1959-01-01	234	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
1699	RC0010	සිහලවත්තුප්‍රකරන Sinhala	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1700	RC0011	සිංහල ථූපවංස ගන්ථි පද වන්නණා	ඒ එස් පෙරේරා	1923-01-01	63	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1701	RC0012	පාලි ථුපවංශ ගැටපදය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1702	RA0004	දුර්වාදී හර්ධ විධාරණ	ධනුර්ධරාචාර්ය	1899-01-01	365	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
1703	RG0025	සුභාෂිතය	අලගියවන්න මුකවෙටිතුමා	\N	34	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1678	RC0005	රසවාහිනී ගාථාසන්නය	මුල්ලේරියාවේ විපුලසාර හිමි	\N	\N	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2157	V0086	විනය මහාවග්ග පාලි	හේවාවිතාරණ	1958-01-01	460	Pali	Full	Path Nirwana	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
1711	S0001	දීඝ නිකාය 1 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1712	S0002	දීඝ නිකාය 2 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1713	S0003	මජ්ඣිම නිකාය 1 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1760	P0001	ත්‍රිභාෂාරත්නාකරය	පොල්වත්තේ බුද්ධදත්ත හිමි	1927-01-01	150	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1761	P0002	පඨමපාඨාවලී	පොල්වත්තේ බුද්ධදත්ත හිමි	1958-01-01	83	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1750	A0044	අභිධර්මය - චතුර්ථ භාගය	දෙවිනුවර ඤාණාවාස හිමි	1953-01-01	188	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1751	A0045	පට්ඨානඋද්දේසදිපනිය	බලන්ගොඩ ආනන්දමෛත්‍රිය නා හිමි	1962-01-01	105	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1752	A0046	අභිධම්මාවතාරය	පොල්වත්තේ බුද්ධදත්ත හිමි	1954-01-01	274	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1753	A0047	අභිධම්ම මාතෘකා ස්වරුපය	පොල්වත්තේ බුද්ධදත්ත හිමි	1911-01-01	98	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1754	A0048	පරමාර්ථප්‍රදීප අභිධර්මර්ත සංග්‍රහ සන්නය	දෙහිගස්පේ පියදස්සි හිමි	1931-01-01	568	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1755	A0049	සද්ධර්ම මධුව	පානදුරේ සෝමරතන හිමි	\N	27	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
1762	P0003	පාලිහුරුව කියවීම පොත	බලංගොඩ ඤාණවිහාරි හිමි	\N	388	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1763	P0004	පාලිහුරුව වන්දනා පොත	බලංගොඩ ඤාණවිහාරි හිමි	\N	129	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1764	P0005	පාලිහුරුව පාඩම් පොත	බලංගොඩ ඤාණවිහාරි හිමි	\N	174	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1766	P0007	පාලිභාෂාවතරණය 1	පොල්වත්තේ බුද්ධදත්ත හිමි	2007-01-01	139	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2750	S0423	දීඝනිකායො.	වැලිතර ඤාණවාස හිමි	1939-01-01	680	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
1773	P0014	සරල පාලි ප්‍රවේශය	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	1993-01-01	286	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1774	P0015	සරල පාලි ශික්ෂකය	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	1972-01-01	252	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1775	P0016	අභිධානප්පදීපිකා සුචි	වස්කඩුවේ සුභූති හිමි	1893-01-01	564	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1776	P0017	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු	රඹුක්වැල්ලේ විපස්සි හිමි	1997-01-01	326	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1801	P0035	කච්චායන විග්‍රහ ටීකා	වෙලගෙදර සිරි සුමේධතිස්ස හිමි	\N	112	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1802	P0036	කච්චායන සුත්ත නිද්දෙසො.	\N	\N	144	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1803	P0037	කච්චායනවුත්ති	ධම්මකිත්ති ධම්මාරාම හිමි	1904-01-01	152	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1804	P0038	පාලි නාම වරනැගිල්ල සහ ආඛ්‍යාත වරනැගිල්ල	\N	1873-01-01	88	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1805	P0039	නාමමාලා හෙවත් නාම වරනැගිල්ල	වස්කඩුවේ ශ්‍රී සුභූති හිමි	1876-01-01	341	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1809	P0042	බුද්ධිප්පසාදිනි පදසාධනටීකා	ධිරානනද හිමි හා වාචිස්සර හිමි	1908-01-01	138	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1810	P0043	කච්චායන ධාතු මඤ්ජූසාව	බටුවන්තුඩාවේ පඬිතුමා	1891-01-01	58	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1811	P0044	පාලි ව්‍යාකරණ සමාලෝචනා	අඹන්පොල ඤාණවිමල හිමි	1953-01-01	116	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1812	P0045	පාලිගද්‍යපද්‍යරචනා	පොල්වත්තේ බුද්ධදත්ත හිමි	1962-01-01	156	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1833	P0064	තත්ව දීපිකා නම් වූ බාලාවතාර වර්‍ණණනාව - 2nd Edition	යගිරල පඤ්ඤානන්ද හිමි	1934-01-01	634	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1834	P0065	බාලාවතාර සුගණඨිසාරය	කහවේ රතනසාර හිමි	1905-01-01	116	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1837	P0068	බාලාවතාර සුගම සන්නය	\N	\N	171	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1844	P0073	බාලාවතාර සුත්‍ර වර්ණනාව	වැලිතර ඤාණවිමල හිමි	1914-01-01	468	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1845	P0074	මහාරූපසිද්ධි	ධම්මකිත්ති ධම්මාරාම හිමි	1915-01-01	326	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1846	P0075	මහාරූපසිද්ධි - සන්දේහවිඝාතනී සන්නය	බද්දේගම ධම්මරතන හිමි	1936-01-01	686	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1847	P0076	මහා රුපසිද්ධි හා මහා රුප සිද්ධි ටිකාව	කළුකොන්දයාවේ පඤ්ඤාසේකර හිමි	1964-01-01	464	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1849	P0078	මහාරූපසිද්ධි සන්නය 1st Edition	මැදගම සුමංගල/ බද්දේගම ධම්මරතන හිමි	1891-01-01	460	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1853	P0081	රූපසිද්ධි ප්‍රමොදිනී	පරදුවේ පදුමජෝති හිමි/ලේල්වල අරියජෝති හිමි	1954-01-01	374	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1854	P0082	මුඛමත්තදීපනී	ධම්මරතන හිමි	1910-01-01	664	Pali	Full	Archive.org	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1856	P0084	මොග්ගල්ලාන පංචිකා	ධම්මානන්ද හිමි	1931-01-01	498	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1857	P0085	මොග්ගල්ලාන පංචිකා ප්‍රදීපය	ශ්‍රී රාහුල සංඝරාජ හිමි	1896-01-01	222	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1860	P0088	මොග්ගල්ලායනව්‍යාකරණං	බටුවන්තුඩාවේ පඬිතුමා	1890-01-01	102	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2290	A0124	පරමත්ථදිපනිය	ධම්මවිචය ග්‍රන්ථ	\N	285	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1875	V0001	01 පාරාජිකා පාළි - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1876	V0002	02 පාචිත්තිය පාළි 1 භික්ෂු විභංගය - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1877	V0003	03 පාචිත්තිය පාළි 2 භික්ෂුණි විභංගය - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1878	V0004	04 මහාවග්ග පාළි 1 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1879	V0005	05 මහාවග්ග පාළි 2 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1880	V0006	06 චුල්ලවග්ග පාළි 1 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1881	V0007	07 චුල්ලවග්ග පාළි 2 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1882	V0008	08 පරිවාර පාළි 1 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1883	V0009	09 පරිවාර පාළි 2 - විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	විනය	බුද්ධ ජයන්ති ත්‍රිපිටකය
1884	S0040	10 දීඝ නිකාය 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1885	S0041	11 දීඝ නිකාය 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1886	S0042	12 දීඝ නිකාය 3 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1887	S0043	13 මජ්ඣිම නිකාය 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1888	S0044	14 මජ්ඣිම නිකාය 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1889	S0045	15 මජ්ඣිම නිකාය 3 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1863	P0091	ව්‍යාකරණසදදසින්‍ධු ප්‍රථම- ද්විතිය - තෘතිය භාගය - පාලි පාරිභාෂිකශබ්දකෝෂය	විදුරුපොල පියතිස්ස හිමි	1929-01-01	708	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1890	S0046	16 සංයුත්ත නිකාය 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1891	S0047	17 සංයුත්ත නිකාය 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1892	S0048	18 සංයුත්ත නිකාය 3 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1893	S0049	19 සංයුත්ත නිකාය 4 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1894	S0050	20 සංයුත්ත නිකාය 5-1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1895	S0051	21 සංයුත්ත නිකාය 5-2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1896	S0052	22 අංගුත්තර නිකාය 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1897	S0053	23 අංගුත්තර නිකාය 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1898	S0054	24 අංගුත්තර නිකාය 3 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1899	S0055	25 අංගුත්තර නිකාය 4 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1900	S0056	26 අංගුත්තර නිකාය 5 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1901	S0057	27 අංගුත්තර නිකාය 6 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1902	S0058	28 ඛුද්දක පාඨ - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1903	S0059	29 සුත්ත නිපාතය - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1904	S0060	30 විමානවත්ථු පාළි පේතවත්ථු පාළි - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1905	S0061-62	31 ථෙරගාථා පාළි ථෙරීගාථා පාළි - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1906	S0063	32 ජාතක පාළි 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1907	S0064	33 ජාතක පාළි 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1908	S0065	34 ජාතක පාළි 3 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1909	S0066	35 මහා නිද්දේස පාළි - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1910	S0067	36 චූල නිද්දේස පාළි - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1911	S0068	37 පටිසම්භිදාමග්ගප්පකරණ 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1912	S0069	38 පටිසම්භිදාමග්ගප්පකරණ 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1913	S0070	39 අපදාන පාලි - භික්ඛූ අපදාන 1 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1914	S0071	40 අපදාන පාලි - භික්ඛූ අපදාන 2 - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1915	S0072	41 අපදාන පාලි - භික්ඛූනී අපදාන - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1943	RJ0012	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 5-6	පාඖක් ශයාඩෝ	\N	216	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1916	S0073	42 බුද්ධවංස පාළි චරියාපිටක පාළි - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1917	S0074	43 නෙත්තිප්පකරණ - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1918	S0075	44 පෙටකොපදෙසො - සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බුද්ධ ජයන්ති ත්‍රිපිටකය
1919	A0054	45 ධම්මසංගණී ප්‍රකරණය - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	613	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1920	A0055	46 විභංග ප්‍රකරණය 1 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	429	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1921	A0056	47 විභංග ප්‍රකරණය 2 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	353	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1922	A0057	48 කථාවත්ථු ප්‍රකරණය 1 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	619	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1923	A0058	49 කථාවත්ථු ප්‍රකරණය 2 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	587	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1924	A0059	50 කථාවත්ථු ප්‍රකරණය 3 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	547	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1925	A0060	51 ධාතුකථා පුග්ගල පඤ්ඤත්ති ප්‍රකරණ - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	440	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1926	A0061	52 යමක ප්‍රකරණ 1 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	579	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1927	A0062	53 යමක ප්‍රකරණ 2-1 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	818	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1928	A0063	54 යමක ප්‍රකරණ 2-2 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	552	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1929	A0064	55 පට්ඨාන ප්‍රකරණ 1 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	593	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1930	A0065	56 පට්ඨාන ප්‍රකරණ 2 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	623	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1931	A0066	57 පට්ඨාන ප්‍රකරණ 3 - අභිධම්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය	\N	616	Sinhala	Full	Path Nirwana	අභිධර්ම	බුද්ධ ජයන්ති ත්‍රිපිටකය
1932	RJ0001	ආනාපානසති Deshanawa	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1933	RJ0002	ආනාපානසති භාවනාව	බළන්ගොඩ ආනන්ද මෛත්‍රිය හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1934	RJ0003	ආනාපානසති භාවනාව අර්ථ විවරණ සහිත	මහව ඤාණාලෝක හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1935	RJ0004	කමටහන් දේශනා	මාතර ඥානාරාම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1936	RJ0005	කර්මස්ථාන ප්‍රදීපය	යෝගාශ්‍රම සංස්ථාව	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1937	RJ0006	කර්මස්ථාන විභාවිනි	මඩවල ධම්මතිලක හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1938	RJ0007	පා අවුක් භාවනා මාර්ගය (සමථ - විපස්සනා)	යෝගාශ්‍රම සංස්ථාව	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1939	RJ0008	බුද්ධානුස්සති සහ චතුවිශාරද භාවනාව	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1940	RJ0009	බෞද්ධ භාවනා	යාගොඩ ධර්මප්‍රභ හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1941	RJ0010	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 1-2	පාඖක් ශයාඩෝ	\N	170	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1942	RJ0011	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 3-4	පාඖක් ශයාඩෝ	\N	289	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
2397	RG0034	මගුල් ලකුණ	\N	\N	4	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
1944	RJ0013	මහාසී විපස්සනා භාවනා ක්‍රමය Chapter 7-8	පාඖක් ශයාඩෝ	\N	399	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1945	RJ0014	මෛත්‍රී අශුභ මරණසති භාවනා	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1946	RJ0015	මොක්පුර රන්දොර all books	පාඖක් ශයාඩෝ	2000-01-01	1154	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1947	RJ0016	විදර්ශනා ගුරු පොත	යාගොඩ ධර්මප්‍රභ හිමි	2007-01-01	213	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1948	RJ0017	විපස්සනා භාවනා ක්‍රමය	මහාසී සයාඩෝ හිමි, නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1949	RJ0018	විපස්සනාව පෙළගැස්ම	මහාසී සයාඩෝ හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1950	RJ0019	විශුද්ධි භාවනාව	දෙවිනුවර ඤාණාවාස හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1951	RJ0020	ශමථ විදර්ශනා භාවනා මාර්ගය	මාතර ඥාණාරාම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1952	RJ0021	සතිපට්ඨාන භාවනාව	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1953	RJ0022	සම සතළිස් කර්මස්ථාන භාවනා	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1954	RJ0023	බුදුගුණ භාවනාව	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1955	RJ0024	සතිපට්ඨාන විපස්සනා භාවනා	දෙවිනුවර ඤාණාවාස හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1956	RJ0025	අභිධර්ම භාවනා 1	නාඋයනේ අරියධම්ම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
1957	B0001	විමුත්ති මග්ගො	මහාරිට්ඨ උපතිස්ස ථෙර	\N	205	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1958	B0002	විශුද්ධි මාර්ග මහා සන්නය	බෙන්තර ශ්‍රද්ධාතිස්ස හිමි	1949-01-01	1847	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1959	B0003	විශුද්ධි මාර්ග මහා සන්නය BBC	ඉඳුරුවේ උත්ත්රානනද හිමි	2004-01-01	1097	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1960	B0004	විශුද්ධි මාර්ගය	ඉඳුරුවේ උත්ත්රානනද හිමි	2004-01-01	1110	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1961	B0005	විශුද්ධි මාර්ගය	මාතර ධර්මවංශ හිමි	1960-01-01	1216	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1962	B0006	Path of Purification	ඤාණමොලී හිමි	1957-01-01	857	English	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1963	B0007	විශුද්ධි මාර්ගය - ප්‍රථම භාගය	කඹුරුපිටියේ ධම්මරතන හිමි	1847-01-01	251	Sinhala	Full	Archive.org	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1964	B0008	විශුද්ධි මාර්ගය - දෙවන භාගය	කඹුරුපිටියේ ධම්මරතන හිමි	1847-01-01	287	Sinhala	Full	Archive.org	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1965	B0009	විසුද්ධි මග්ග සන්න	වෑබඩ සංඝරතන හිමි	1949-01-01	\N	Sinhala	Full	Daham Madura	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
1969	V0013	මහාවග්ග පාළි සන්නය	කරගම්පිටියේ ජෝතිරතන හිමි	1928-01-01	324	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
1972	V0016	විනය මහානිස්සය (01, 02)	තුඩුවේවත්තේ සිරිපඤ්ඤාසිහ හිමි	1933-01-01	254	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
1973	V0017	විනයාර්‍ථදිපිකා නම් විනය විනිශ්චය සන්නය	වලගෙදර සෝමාලෝක හිමි	1918-01-01	64	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
1974	V0018	විනය සංග්‍රහය	වල්ගොව්වාගොඩ සුමංගල හිමි	1946-01-01	146	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
1976	V0020	අධිකරණ විනිශ්චය	ගාල්ලේ පඤ්ඤාසීහ හිමි	1938-01-01	54	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1978	V0022	කංඛාවිතරණී පිටපොත	කලුකොඳයාවේ පඤඤසේකර හිමි	1936-01-01	164	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
1979	V0023	කුදුසික හා පුරාතන විස්තර සන්නය	මොරගල්ලේ ඤානොභාසතිස්ස හිමි	1928-01-01	222	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1980	V0024	සන්න සහිත කුදුසික	හරුමල්ගොඩ ශ්‍රී සුමංගල හිමි	1928-01-01	216	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1981	V0025	ගරුභාණ්ඩ විනිච්ඡය	කලුකොඳයාවේ පඤඤසේකර හිමි	1939-01-01	54	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1982	V0026	රත්නාර්ථසූදනිය ප්‍රාතිමෝක්ෂ වර්ණනාව	පනම්ගල ජිනරතන/ රත්ගම පඤ්ඤාසේකර	1944-01-01	414	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1983	V0027	පාරුපනනය - සීලරතන සරණජෝතිතිස්ස හිමි	සීලරතන සරණජෝතිතිස්ස හිමි	1948-01-01	108	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1984	V0028	පාරුපනපාලි	කෝදාගොඩ ඤාණාලෝක හිමි	1939-01-01	63	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1986	V0030	පාලිමුත්තකවිනයවිනිච්ඡය	මඩිහේ සුගතසිරි හිමි	2000-01-01	836	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1987	V0031	බද්ධ සිමා හා සංඝදාන විනිශ්චය	කෝදාගොඩ උපසේන හිමි	1901-01-01	80	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1988	V0032	කුදුසික විවරණය	වැලිගම ශ්‍රී ඤාණරතන හිමි	1953-01-01	219	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1989	V0033	හෙරණ සික හා හෙරණ සික විනිස	කැලිගම විජිතනන්ද හිමි	1985-01-01	97	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1990	V0034	අධිකරණ විනිශ්චය	නිතලව ශ්‍රී ඤානිස්සර හිමි	1954-01-01	91	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1991	V0035	පාතිමොක්ක විවරණය	බුජ්ජම්පොල ධම්මපරයනතිස්ස හිමි	2009-01-01	459	Sinhala	Full	My Library	විනය	භික්ෂු විනය
1993	V0037	භික්‍ෂු භික්‍ෂුණි උභයප්‍රාතිමොක්‍ෂය.	ධම්මකුසල හා ධම්මාධාරා හිමි	1927-01-01	150	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1994	V0038	භික්ෂු ප්‍රාතිමෝක්ෂය සහ විනය කරුණු	කිතුල්ගොඩ ආරණ්‍ය	\N	289	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1995	V0039	භික්ෂූන් වහන්සේට මුදල් කැපද	වරකාගොඩ සීලරතන හිමි	\N	16	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1996	V0040	මහවග ගැටපදය	උහන්ඕවිට සාසනතිලක හිමි	1942-01-01	92	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1997	V0041	වත්තඛන්ධකය හෙවත් වත් සමුහය හෙවත් වත් සමුහය	උපරතන හිමි	1905-01-01	92	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1999	V0043	විසුන්ගාම සිමා විනිශ්චය	අග්ගධමාභීවංස මහා හිමි	1926-01-01	76	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2000	V0044	පුරාන පරිවාර ගංථිපදය	බැන්ඩියමුල්ලේ ධම්මරතන හිමි	1914-01-01	52	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2001	V0045	ව්‍යාඛ්‍ය සහිත සිමා ලක්ඛණදිපනිය	අඹගහපිටියේ විමලසාරතිස්ස නා හිමි	\N	92	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2002	V0046	මුලුසික වර්ණනාව	සිනාවත්තේ ගුනාලන්කාරතිස්ස හිමි	1935-01-01	146	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2003	V0047	විනය කෝෂය - 1, 2 කාණ්ඩය	මොරටුවේ සාසන රතන හිමි	1955-01-01	484	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
1977	V0021	විනයවිනිච්ඡය හා උත්තරවිනිච්ඡය	පොල්වත්තේ බුද්ධදත්ත නා හිමි	1952-01-01	302	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
2004	V0048	පාරාජිකා පාලි ගැටපදය	අමිතිරිගල පඤ්ඤානන්ද හිමි	1942-01-01	78	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2005	V0049	සංක්ෂිප්ත භික්‍ෂු ශිලය	නා උයනේ අරියධම්ම හිමි	1977-01-01	146	Sinhala	Full	Na Uyana	විනය	භික්ෂු විනය
2006	V0050	සුජනප්පමොදිනි - විනය පාළි ගාථා අර්ථ ව්‍යාඛ්‍යාව	වටද්දර මේධානන්ද හිමි	1929-01-01	222	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2007	V0051	විනය පිටකය	හෙක්ටර් පෙරේරා	1975-01-01	70	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2008	V0052	විනය මහා සන්‍යය	විගොඩ ගුනාලංකාර හිමි	1973-01-01	622	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2018	A0067	අභිධර්ම මාර්ගය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	356	Sinhala	Full	Path Nirwana	අභිධර්ම	\N
2010	V0054	විනිශ්චයාර්ත්ථදීපනී විනයවිනිශ්චය ව්යාඛ්යානය	ලංකාගොඩ ධීරානන්ද හිමි	1956-01-01	994	Sinhala	Full	Na Uyana	විනය	භික්ෂු විනය
2011	V0055	කුදුසික	බේරුවල සුමේධංකර හිමි	1894-01-01	178	Sinhala	partial	Path Nirwana	විනය	භික්ෂු විනය
2012	V0056	ශිල නිර්දේශය	ධර්මරත්න පඬිතුමා	1911-01-01	306	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2013	V0057	සංවර සීල දීපනිය	පල්ලේගම රත්නාලංකාර හිමි	1938-01-01	112	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2019	A0068	අභිධර්මයේ මූලික කරුණු	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	213	Sinhala	Full	Path Nirwana	අභිධර්ම	\N
2015	V0059	සාරාර්‍ථ මඤ්ජරි නම් වූ විනය ගැටපදය	වරාගොඩ අමරමෝලි හිමි	1946-01-01	242	Sinhala	partial	Na Uyana	විනය	භික්ෂු විනය
2016	V0060	සාමණේර බණ දහම් පොත	කල්‍යාණී යෝගාශ්‍රම	1987-01-01	60	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2020	A0069	අභිධර්මාර්ථ සංග්‍රහය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	153	Sinhala	Full	Path Nirwana	අභිධර්ම	\N
2022	V0063	උපසම්පදා ශීලය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	විනය	\N
2568	V0136	සතර පාරාජිකා විනිශ්චය	\N	1897-01-01	25	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2046	RG0026	සුභාෂිතය	අලගියවන්න මුකවෙටිතුමා	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2047	RG0027	සුභාෂිතය	අලගියවන්න මුකවෙටිතුමා	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2048	RA0005	අටුවා කතාවස්තු	පොල්වත්තේ බුද්ධදත්ත හිමි	1951-01-01	80	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2049	V0067	අරුණ හා අරුණෝද්ගමන විනිශ්චය.	ග්‍රීසියේ ඤාණදස්සන හිමි	\N	121	Sinhala	Full	Path Nirwana	විනය	වෙනත්
2050	S0076	දම්පියා අටුවා ගැටපදය	ඩී. බී. ජයතිලක	1932-01-01	330	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2051	S0077	දම්පියා අටුවා ගැටපදය	දොඩම්පහල සුමංගල හිමි	1891-01-01	99	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2032	C0008	පුණ්‍යෝපදේශය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2033	C0009	පොහොය දිනය	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	\N
2054	S0079	ආර්යවංශ ධර්ම පුස්තක මාලා 1	මොරටුවේ සාසනරතන හිමි	1948-01-01	142	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2055	S0079	ආර්යවංශ ධර්ම පුස්තක මාලා 2	මොරටුවේ සාසනරතන හිමි	1948-01-01	194	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2056	S0079	ආර්යවංශ ධර්ම පුස්තක මාලා 3	මොරටුවේ සාසනරතන හිමි	1948-01-01	176	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2057	S0079	ආර්යවංශ ධර්ම පුස්තක මාලා 4	මොරටුවේ සාසනරතන හිමි	1948-01-01	180	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2058	S0080	ඉතිවුත්තක පාලිය	කිරිවත්තුඩුවේ ධර්මකීර්ති හිමි	1961-01-01	432	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2059	B0010	තෙලකටාහගාථා 01	බි එස් පියසේන	2010-01-01	27	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2060	RA0006	ථෙරවාදී බෞද්ධාචාර්ය්‍යයෝ	පොල්වත්තේ බුද්ධදත්ත හිමි	1960-01-01	230	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2065	A0070	පට්ඨාන මහා පකරණ සන්නය 02	රේරුකානේ චන්ද්‍රවිමල හිමි	\N	337	Sinhala	Full	Path Nirwana	අභිධර්ම	\N
2064	S0081	ධර්මපද ප්‍රදීපය	වම්බටුවැවේ ධර්මකීර්ති හිමි	1962-01-01	365	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2066	A0071	අභිධර්ම විභාගය	නිවන්දම ධර්මකීර්ති හිමි	2000-01-01	256	Sinhala	Full	My Library	අභිධර්ම	අභිධර්ම
2067	A0072	බෞද්ධ ඤාණාලෝකය ධාතුමනසිකාර දීපනී	භදන්ත සිරිධම්ම හිමි	1916-01-01	106	Sinhala	Full	Path Nirwana	අභිධර්ම	වෙනත්
2069	S0083	නෙත්තිප්‍රදීපය	රත්මලානේ ධර්මාරාම හිමි	1900-01-01	84	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2070	S0084	නෙත්තිසාරාර්ත්ථදීපනී නම් නෙත්ති ව්‍යඛ්‍යාව	කෝදාගොඩ උපසේන හිමි	1933-01-01	295	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2071	RA0007	පංචමහාවාදය	මොහොට්ටිවත්තේ ගුණානන්ද හිමි	\N	361	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2072	A0073	පටිච්චසමුප්පාදය	දම්පැල්ලේ ගුණසිරි හිමි	1956-01-01	47	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2073	A0074	පටිච්චසමුප්පාදය සිංහල භාවය - Part 05	වලානේ ශ්‍රී විජයනන්ද හිමි	1938-01-01	35	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2074	RG0028	පද්‍යාවබෝධිනී - සමන්තකූට වණ්ණනා ව්‍යාඛ්‍යා	රැකඩහේනේ චන්ද්‍රජෝති හිමි	1941-01-01	69	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2076	RA0008	ප්‍රේතවස්තු වර්ණනාව	\N	\N	435	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2077	RA0009	පාලි සාහිත්‍යය	පොල්වත්තේ බුද්ධදත්ත හිමි	1962-01-01	559	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2078	RA0010	පිරුවානා පොත් වහන්සේ - 1	\N	\N	384	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2079	RA0011	පිරුවානා පොත් වහන්සේ - 2	\N	\N	432	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2080	RA0012	බුද්ධ ඇදහිල්ල	කිරිඇල්ලේ ඤාණවිමල හිමි	1983-01-01	455	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2081	S0086	බොජ්ඣංග ධර්ම විභාගය	මුරුන්දෙනියේ පඤ්ඤානන්ද හිමි	1914-01-01	82	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2082	RA0013	භාරතීය බෞද්ධාචාර්ය්‍යයෝ	පොල්වත්තේ බුද්ධදත්ත හිමි	1949-01-01	267	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2062	RK0002	දේශීය වෛද්‍ය ශබ්දකෝෂය	කිරිඇල්ලේ ඤාණවිමල හිමි	1959-01-01	563	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2084	S0088	මනොරඤජනී නම් වූ මනොරථපූරණි අංගුත්තරනිකායට්ඨ කථා සිංහල අනුවාදය	ලබුගම ලංකානන්ද නාහිමි	1951-01-01	401	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2085	S0088	මනොරන්ජනී මනෝරථපූරණී භාවසන්නය	රයිගම ඉන්ද්‍රජෝති නා හිමි	1929-01-01	400	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2086	S0089	මහා සතිපට්ඨාන සූත්‍ර වර්ණනාව	ලබුගම ලංකානන්ද හිමි	\N	197	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2087	RA0014	මාරවිජය - පංචමාර දමනය	දෙවිනුවර ඤාණවාස හිමි	1957-01-01	252	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2088	\N	හෙළදිව අභිදාන වත	සරණපාල හිමි	1917-01-01	55	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වෙනත්
2178	S0125	උදානපාළි අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2068	S0082	දීඝනිකාය ටීකා	හේනේගම කල්‍යාණසිරි හිමි	1967-01-01	831	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත්
2063	RK0003	අමර ශබ්ධාවලි; සංස්කෘත සිංහල ශබ්දකෝෂය	ඤාණවිමල හිමි	1022-01-01	123	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2075	S0085	පපඤ්ච දීපිකා මජ්ඣිමනිකාය අට්ටකථා සිංහල	ලබුගම ලංකානන්ද හිමි	1936-01-01	810	Sinhala	Full	Path Nirwana	සූත්‍ර	සිංහල අටුවා
2089	S0090	විමලාර්ත්ථවාහිනී මජ්ඣිම නිකාය ව්‍යාඛ්‍යාව පාලි සිංහල	කේ ශ්‍රී ධර්මකිර්ති ධම්මනන්ද හිමි	1927-01-01	944	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2091	S0092	මංගලතථදිපනි	සිරිමංගල හිමි	1927-01-01	862	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2092	S0093	සාමඤ්ඤඵල සූත්‍ර වර්ණනාව - ප්‍රතිපත්ති ශාසනය Part II	\N	\N	64	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2094	RA0015	සිංහල විමානවස්තු ප්‍රකරණය	මාකෙහෙල්වල ධම්මනනද හිමි	1939-01-01	259	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2095	B0010	තෙලකටාහගාථා 02	යු පි ඒකනායක	1908-01-01	50	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2096	B0010	තෙලකටාහගාථා 03	සිරිසුමන හිමි	1900-01-01	94	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2098	S0095	නියාම දිපනිය	ලේදී සයාඩෝ හිමි/ අරංගල සිරිධම්ම හිමි	1918-01-01	63	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2099	B0012	සද්ධම්මොපායනය	ආනන්ද හිමි/ බටුවන්තුඩාවේ පඬිතුමා	1911-01-01	142	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2100	B0013	විශුද්ධි මාර්ගය 1 BCC	BCC	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2101	B0014	විශුද්ධි මාර්ගය 2BCC	BCC	\N	\N	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2102	S0096	සාරත්තදීපානි නම් අංගුත්තර නිකාය ව්‍යාඛ්‍යාව	වම්බටුවැවේ සිරිනිවාස හිමි	1937-01-01	574	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2103	S0097	අංගුත්තර නිකාය සන්නය - 1,2,3 Completed	වැල්මිල්ලේ ධර්මකීර්ත්ති හිමි	1938-01-01	488	Sinhala	Full	Paramaththa	සූත්‍ර	සූත්‍ර
2104	S0098	පදාර්ථ විස්තරාර්ථ සහිත සංයුක්ත නිකාය නිදාන වර්ගය	නුගවෙල පඤ්ඤාජෝති හිමි	1939-01-01	88	Sinhala	Full	Paramaththa	සූත්‍ර	සූත්‍ර
2105	S0099	මහා සතිපට්ටහන වර්ණනාව සන්නය 02	හරමිටිගලේ ධීරානන්ද හිමි	1898-01-01	64	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2106	RA0016	සද්ධම්ම සංගහ	ගම්මද්දේගොඩ පුඤ්ඤසාර හිමි/ ධම්මකිත්ති මහාසාමි	1989-01-01	252	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2107	S0099	මහා සතිපට්ටහන වර්ණනාව සන්නය 02	හරමිටිගලේ ධීරානන්ද හිමි	1916-01-01	641	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2108	S0099	මහා සතිපට්ටහන වර්ණනාව සන්නය 03 -වේදනානු -චිත්තානුපස්සනා	හරමිටිගලේ ධීරානන්ද හිමි	1951-01-01	288	Sinhala	Full	Na Uyana	සූත්‍ර	සූත්‍ර
2109	S0100	සුත්‍ර සංග්‍රහව	වස්කඩුවේ මෙධාවිතිස්ස හිමි	1935-01-01	536	Sinhala	Full	Na Uyana	සූත්‍ර	සූත්‍ර
2110	S0101	සද්ධර්මසාගර ධර්මපදවර්ණනාව 1	අම්බලන්ගොඩ ධම්මකුසල හිමි	1967-01-01	1042	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2111	S0102	සද්ධර්මසාගර ධර්මපදවර්ණනාව 2	අම්බලන්ගොඩ ධම්මකුසල හිමි	1967-01-01	959	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2112	S0103	සද්ධර්මසාගර ධර්මපදවර්ණනාව 3	අම්බලන්ගොඩ ධම්මකුසල හිමි	1967-01-01	763	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2113	B0015	සන්න සහිත ජාතිදුක්ඛ විභාගය හෙවත් කාය විරති ගාථා	කේ ඤාණරතන තිස්ස හිමි	1914-01-01	78	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2115	RC0014	ථූපවංශය පාළි	ධම්මරතන හිමි	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2116	RA0017	සිතුවම් සහිත ධම්මපදය	වේරගොඩ සාරද හිමි	\N	434	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2117	B0015	සන්න සහිත ජාතිදුක්ඛ විභාගය හෙවත් කාය විරති ගාථා	\N	\N	82	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2125	S0106	ඛුද්දකපාඨ පාලි සිංහල	බොද්‍ධ සම්මේලනය	1965-01-01	118	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2126	S0107	දීඝනිකාය 1 පාලි සිංහල	පලන්නොරුවේ විමලධම්ම හිමි	1952-01-01	1165	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2120	RA0018	කර්ම විභාගය	මැදඋයන්ගොඩ විමලකීර්ති හිමි	1961-01-01	124	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2121	S0104	පපණ්‍චසූදනී මජ්ඣිමනිකාය 01	අට්ටකථා පාලි - අළුවිහාර	1917-01-01	584	Sinhala	Full	Path Nirwana	සූත්‍ර	සූත්‍ර
2127	S0108	දීඝනිකාය 2 පාලි සිංහල	පලන්නොරුවේ විමලධම්ම හිමි	1952-01-01	606	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2128	S0109	දීඝනිකාය මහාවර්‍ගය පාලි සිංහල	ඩබ්. ඒ සමරසේකර / බොද්‍ධ සම්මේලනය	1905-01-01	717	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2129	S0110	දීඝනිකාය ශීලස්කන්‍ධවර්‍ගය පාලි සිංහල	ඩබ්. ඒ සමරසේකර / බොද්‍ධ සම්මේලනය	1905-01-01	559	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2136	S0111	කරණීයමෙත්ත සූත්‍ර වර්ණනාව	වල්පිට සිරි සුමනතිස්ස හිමි	1926-01-01	22	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2137	S0112	උපෞෂත ශිලවිභාවිනිය	රත්මලානේ සරණතිස්ස හිමි	\N	36	Sinhala	Full	Na Uyana	සූත්‍ර	වෙනත්
2142	V0071	උදකුක්ඛේපසිමා විභාවිනි	නාවල ධම්මානන්ද හිමි	2011-01-01	51	Sinhala	Full	\N	විනය	භික්ෂු විනය
2143	V0072	පුතිමුත්තභේසජ්ජ	උඩිරියගම ධම්මජිව හිමි	2006-01-01	75	Sinhala	Full	\N	විනය	භික්ෂු විනය
2144	V0073	විනයාලංකාරෝ	\N	\N	\N	Sinhala	Full	\N	විනය	භික්ෂු විනය
2145	V0074	සමන්ත පාසාදිකා 01	BCC - අම්බලන්ගොඩ කුසලධම්ම නා හිමි	1999-01-01	520	Sinhala	Full	Path Nirwana	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2146	V0075	සමන්ත පාසාදිකා 02	BCC - අම්බලන්ගොඩ කුසලධම්ම නා හිමි	1999-01-01	\N	Sinhala	Full	Path Nirwana	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2179	S0126	ඛුද්දකපාඨපාළි අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2147	V0076	සමන්ත පාසාදිකා 03	BCC - අම්බලන්ගොඩ කුසලධම්ම නා හිමි	1999-01-01	\N	Sinhala	Full	Path Nirwana	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2161	RK0004	ශබ්දාර්‍ත්‍ථරත්නාකරය සිංහල අකාරාදිය	බෝරුග්ගමුවේ රේවත හිමි	1916-01-01	706	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
2152	V0081	විනය පරිවාර පාලි- ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1957-01-01	289	Pali	Full	Path Nirwana	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2153	V0082	විනය පරිවාර පාලි	බෙන්තර සද්ධාතිස්ස හිමි	1928-01-01	315	Pali	Full	Path Nirwana	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2155	V0084	විනය පරිවාර පාලි	හේවාවිතාරණ	1961-01-01	341	Pali	Full	Path Nirwana	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2154	V0083	කංඛාවිතරණි ප්‍රාතිමෝක්ෂ වර්ණනාව	BCC- කපිල අභයවංශ	1999-01-01	312	Sinhala	Full	Path Nirwana	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2156	V0085	විනය පාරාජික පාලි	පලන්නොරුවේ විමලධම්ම නා හිමි	1950-01-01	331	Pali	Full	Path Nirwana	විනය	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2162	V0087	චරියා සහ වත් - යෝගාශ්රමය	කල්‍යාණී යෝගාශ්‍රම	1952-01-01	13	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2163	S0116	තෙසැත්තෑ ඤාණ කථා	කැන්දලියද්දපාළුවේ ධම්මිස්සර හිමි	1972-01-01	791	Sinhala	Full	Path Nirwana	සූත්‍ර	වෙනත්
2164	A0084	යමක වාචනා මාර්ගය	ඤාණින්ද සෙයාඩෝ හිමි, නාඋයනේ අරියධම්ම හිමි	1989-01-01	835	Sinhala	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
2166	A0086	ධම්මසඞ්ගණි අටුවාව	BCC	\N	474	Sinhala	Full	Path Nirwana	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2167	A0087	පංචප්පකරණ අටුවාව 1	BCC	\N	254	Sinhala	Full	Path Nirwana	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2168	A0088	පංචප්පකරණ අටුවාව 2	BCC	\N	206	Sinhala	Full	Path Nirwana	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2169	A0089	විභංග අටුවාව	BCC	\N	447	Sinhala	Full	Path Nirwana	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2170	S0117	ථෙරිගාථා අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2171	S0118	ධම්මපද අටුවාව 01	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2172	S0119	ධම්මපද අටුවාව 02	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2173	S0120	විමානවත්ථු අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2174	S0121	අංගුත්තර නිකාය අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2175	S0122	අංගුත්තර නිකාය අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2176	S0123	ආපදානපාලි අටුවාව (1, 2)	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2177	S0124	ඉතිවුත්තක අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2180	S0127	චරියාපිටක අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2181	S0128	චූලනිද්දේසපාලි අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2182	S0129	මහානිද්දේසපාලි අටුවාව	BCC	\N	518	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2183	S0130	ථේරගාථා අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2184	S0131	ථේරගාථා අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2185	S0132	නෙත්තිප්පකරණ අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2186	S0133	පටිසම්භිදාමග්ග අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2187	S0134	පේතවත්ථු අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2188	S0135	බුද්ධවංස අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2189	S0136	සුත්ත නිපාත අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2190	S0137	චතුභාණවාර අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2191	S0138	ජාතක අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2192	S0139	ජාතක අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2193	S0140	ජාතක අටුවාව 3	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2194	S0141	ජාතක අටුවාව 4	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2195	S0142	ජාතක අටුවාව 5	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2196	S0143	ජාතක අටුවාව 6	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2197	S0144	ජාතක අටුවාව 7	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2198	S0145	දීඝනිකාය අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2199	S0146	දීඝනිකාය අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2200	S0147	මජ්ඣිම නිකාය අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2201	S0148	මජ්ඣිම නිකාය අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2202	S0149	මජ්ඣිම නිකාය අටුවාව 3	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2203	S0150	මජ්ඣිම නිකාය අටුවාව 4	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2204	S0151	සංයුක්ත නිකාය අටුවාව 1	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2205	S0152	සංයුක්ත නිකාය අටුවාව 2	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2206	S0153	සංයුක්ත නිකාය අටුවාව 3	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2207	S0154	සුත්තසංගහ අටුවාව	BCC	\N	\N	Sinhala	Full	Path Nirwana	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2208	V0088	ආණා දේසනා කර්ම වාක්‍ය පොත	කල්‍යාණී යෝගාශ්‍රම	2019-01-01	519	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2209	RG0029	දහම්සොඬකව	වැලිවිටියේ සෝරත හිමි/ අලගියවන්න මුකවෙටිතුමා	1934-01-01	144	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2210	RA0019	පොහොය වර්ණනාව	මාපලගම සෝමිස්සර හිමි	1968-01-01	179	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2211	V0089	වහලය ගලවන්න භික්ෂු ප්‍රාතිමෝක්‍ෂය	ඇස්වත්තේ රේවත හිමි	2005-01-01	604	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2395	RG0032	ගණපති යදින්න සහ ගණපති හෑල්ල	\N	\N	7	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2212	RA0020	සිංහල සාරසඞ්ග්‍රහය	කහවේ සුමංගල හිමි	1929-01-01	321	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2213	RA0021	බුදුසමයේ පැනෙන මාරයා	කන්දරපංගුවේ ධම්මසිරි හිමි	2009-01-01	210	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2214	RA0022	සංඛ්‍යා ධර්මපද වර්ණනා	කන්දරපංගුවේ ධම්මසිරි හිමි	2006-01-01	712	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2215	V0090	අපේ විනය පොත	නා උයන අරණ්‍ය	2015-01-01	149	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2216	V0091	අධිමාස පකාසිනි	ධම්මතිලක නා හිමි	1921-01-01	10	Sinhala	Full	\N	විනය	භික්ෂු විනය
2217	V0092	අධිමාස මණ්ඩලය	එස්.ඩී.එස්. ජයරත්න	1906-01-01	30	Sinhala	Full	\N	විනය	භික්ෂු විනය
2218	V0093	නිකාය සංග්රහය හෙවත් ශාශනාවතාරය	ධර්මකිර්ති හිමි	1922-01-01	32	Sinhala	Full	\N	විනය	භික්ෂු විනය
2219	V0094	අපේ උත්තර පොත	නා උයන අරණ්‍ය	\N	132	Sinhala	Full	\N	විනය	භික්ෂු විනය
2220	V0095	සුගත විධත්ති විධානය	දොඩන්දුවේ ශ්‍රී සිලස්කන්ධ හිමි	1894-01-01	51	Sinhala	Full	\N	විනය	භික්ෂු විනය
2221	V0096	සාරාර්ථදීපනි විනය ටීකා 01- (16)	BCC	\N	\N	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2222	V0097	සාරාර්ථදීපනි විනය ටීකා 02 - (19)	BCC	\N	\N	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2223	V0098	සාරාර්ථදීපනි විනය ටීකා 03 - (21)	BCC	\N	\N	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2224	V0099	විනයාලංකාර ටීකා 01 (20)	BCC	\N	465	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2225	V0100	විනයාලංකාර ටීකා 02 (22)	BCC	\N	427	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2226	V0101	විමතිවිනොදනී ටීකා (23)	BCC	\N	421	Sinhala	Full	My Library	විනය	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2227	V0102	සාමණේර ප්‍රශ්ණ සන්නය	බෙන්තර ශ්‍රී සරණංකර හිමි	1899-01-01	183	183	Full	Na Uyana	විනය	භික්ෂු විනය
2228	V0103	කංඛාවිතරණි මාතිකා අට්ටකථා හේවාවිතාරණ	හේවාවිතාරණ පාලි අටුවා	2014-01-01	251	Pali	Full	Path Nirwana	විනය	පාලි අටුවා
2253	V0128	ප්‍රාතිමොක්ඛදීපිකා	විගොඩ ගුනාලංකාර හිමි	1959-01-01	313	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2254	V0129	සංවාසදිපනිය	සිරි ධම්ම හිමි	1915-01-01	55	Sinhala	Full	Polgasduwa	විනය	භික්ෂු විනය
2255	V0130	පාතිමොක්ඛ සාරය	කේ ඤාණසාර හිමි	1935-01-01	40	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2257	A0091	නාම රූප සමාසය	ධම්මපාල හිමි	1908-01-01	80	Sinhala	Full	Polgasduwa	අභිධර්ම	අභිධර්ම
2258	A0092	අභිධර්ම පරීක්ෂණය	හේන්පිටගෙදර ඤාණ හිමි	1960-01-01	188	Sinhala	Full	Polgasduwa	අභිධර්ම	අභිධර්ම
2259	A0093	අභිධම්මත්ත විකාසිනි (අභිධර්මාර්ථ ටිකාව)	BCC	\N	785	Sinhala	Full	My Library	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2260	A0094	අභිධම්මත්ත විභාවිනි ටීකා	BCC	\N	529	Sinhala	Full	My Library	අභිධර්ම	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2261	A0095	පංචස්ඛන්ධ විභාගය	ඛේන්දලුවේ ධිරානන්ද හිමි	1954-01-01	166	Sinhala	Full	My Library	අභිධර්ම	අභිධර්ම
2262	A0096	සප්ත විශුද්ධි නිර්දේශ	නිතලව ශ්‍රී ඤානිස්සර හිමි	\N	\N	Sinhala	Full	My Library	අභිධර්ම	අභිධර්ම
2256	A0090	ධම්මසංගනීප්‍රකරණo	මොරටුවේ දේවානන්ද හිමි	\N	244	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
1735	S0025	බුද්ධවංස අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
2299	A0132	අභිධම්මතථ සංගහො	දේවමිත්ත හිමි/ හික්කඩුවේ ශ්‍රී සුමංගල හිමි	1908-01-01	55	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2294	RA0023	ඥයාර්ථදිපනිය	ඊ ඩබ් වීරරත්න	1903-01-01	122	Sinhala	Full	My Library	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2295	A0128	පරමාර්ථ ධර්ම මකරන්දය	මොරටුවේ මේධානන්ද හිමි	1917-01-01	181	Sinhala	Full	Na Uyana	අභිධර්ම	අභිධර්ම
2296	A0129	පරමාර්ථ ප්‍රකාශනිය	\N	\N	23	Sinhala	Full	Paramaththa	අභිධර්ම	අභිධර්ම
2297	A0130	අභිධර්මය	ඌහන්විට සාසනතිලක හිමි	1946-01-01	209	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2298	A0131	විද්‍යාමාර්ග දීපනිය සහ සංක්ෂේප රූපසංග්‍රහ වර්ණනාව	සිරිධම්ම හිමි	1922-01-01	89	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2301	A0134	චිත්ත චෛතසික විභාගය	පානදුරේ සෝමරතන හිමි	1928-01-01	122	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2302	A0135	පරමාර්ථ ස්වරූප භේදනිය	\N	\N	100	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2300	A0133	නාමරූප පරිච්චේදෝ	පොල්වත්තේ බුද්ධදත්ත හිමි	1912-01-01	128	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2303	A0136	අභිධර්මාර්ථ සංග්‍රහ පරමාර්ථචන්ද්‍රිකා භාවාර්ථ ව්‍යාඛ්‍යව	සද්ධානන්ද හිමි	1929-01-01	278	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2304	A0137	අභිධර්මාර්ථ සංග්‍රහශුද්ධිය	ඇම් ධර්මරත්න මයා	1893-01-01	23	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2305	A0138	සිංහල පුග්ගල පඤ්ඤත්ති විභාගය	මුද්දරගම ධම්මාලංකාර හිමි	1954-01-01	262	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2313	A0146	SAMMOHA VINODANI	පොල්වත්තේ බුද්ධදත්ත හිමි	1923-01-01	560	English	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2314	A0147	ABHIDAMMATTHA SANGAHA	වජිරාරාම නාරද හිමි	1956-01-01	468	English	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2315	A0148	BUDDHADATTA''S MANUALS OR SUMMARIES OF ABHIDHAMMA	පොල්වත්තේ බුද්ධදත්ත හිමි	1915-01-01	204	English	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2316	A0149	Manual Of Abidamma	භික්ඛු කාශ්‍යප	1942-01-01	659	English	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2306	A0139	ධම්සඟුණු නම් විජම්පෙළ	බෙන්තර සද්ධාතිස්ස හිමි	1929-01-01	231	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2307	A0140	පට්ඨානප්‍රකරණං	දොඩම්පහල කවිධජ හිමි	1942-01-01	244	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2308	A0141	විභංගප්‍රකරණං	වැල්මිල්ලේ රතනජෝති හිමි	1913-01-01	350	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2318	P0102	pali Dhathupatha and dathupatha Manjusa	\N	1921-01-01	94	English	Full	Archive.org	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2319	P0103	Pali Grammer	Williuem Geiger	2005-01-01	120	English	Full	Archive.org	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2309	A0142	සම්මෝහවිනොදනි නාමධෙය විභංගඅට්ඨකථා (ප්‍රථම භාගය)	වැල්මිල්ලේ රතනජෝති හිමි	1910-01-01	246	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2333	P0117	සරළ පාලි වියරණය	\N	\N	53	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2334	P0118	පාළිපාඨ මඤ්ජරී ….... භාගය	කහඳාමෝදර පියරතන හිමි	1931-01-01	67	Pali	Full	National Library	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2335	P0119	පාළිපාඨ මඤ්ජරී…..... භාගය	කහඳාමෝදර පියරතන හිමි	\N	\N	Pali	Full	Paramaththa	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2396	RG0033	නම් පොත	\N	\N	3	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2336	P0120	කාරක පුප්ඵ මඤ්ජරී	භණ්ඩාර රාජගුරු	1899-01-01	270	Pali	Full	Paramaththa	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2337	P0121	ධාත්වත්ථවණ්ණනා	පණ්ඩිත වජිරඤාණ හිමි	1927-01-01	222	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2338	P0122	ධාතුපාඨො ධාතුපාඨ සන්නය	\N	\N	26	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2339	P0123	ධාතුපාඨවිලාසිනිය	වැලිතොට ඤාණතිලක හිමි	1926-01-01	100	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2341	P0125	ධාත්වත්ථසංගහො	ධම්මාලංකාර හිමි	1897-01-01	90	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2342	P0126	ශබ්දවෘත්තිප්‍රකාශය	වැලිතොට ඤාණතිලක හිමි	1899-01-01	86	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2343	P0127	ගන්‍ධාභරණය	වැලිතොට ඤාණතිලක හිමි	1898-01-01	90	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2384	B0017	විශුද්ධි මාර්ගය	හේවාවිතාරණ අටුවා	1919-01-01	566	Pali	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2370	S0155	මජ්ජිමනිකාය මජ්ජිම පන්නාසක ටිකාව-01	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2371	S0156	මනොරතපුරණි ටිකාව 02	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2372	S0157	මජ්ජිමනිකාය මූල පන්නාසක ටිකාව 01 භාගය - 04	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2373	S0158	මජ්ජිමනිකාය මූල පන්නාසක ටිකාව 02 භාගය - 07	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2374	S0159	මජ්ජිමනිකාය උපරි පන්නාසක ටිකාව 09	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2375	S0160	දීඝ නිකාය මහා වග්ග ටිකාව 06	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2376	S0161	දීඝ නිකාය පාටික වග්ග ටිකාව 08	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2377	S0162	සංයුක්ත නිකාය සගාථ වග්ග ටිකාව 10	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2378	S0163	දීඝ නිකාය සීලක්ඛන්ධ වග්ග 11	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2379	S0164	මනොරතපුරණි ටිකාව -12	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2380	S0165	මනොරතපුරණි ටිකාව -15	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2381	S0166	සංයුක්ත නිකාය සලායතන/ඛන්ධ/මහා වග්ග ටිකාව 17	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2382	\N	සේතුබන්ධ ව්‍යඛ්‍යාව 1,2	කහමුවදොර ශ්‍රී පියරතන හිමි	1933-01-01	\N	\N	\N	\N	ඉපැරණි ග්‍රන්ථ	වෙනත්
2383	\N	හෙළදිව නව නාමාවලී රීති	ඇම්.ඩී.ඩී. කරුණාතිලක	1927-01-01	\N	\N	\N	\N	ඉපැරණි ග්‍රන්ථ	වෙනත්
2385	B0018	මිලින්දප්‍රශ්න	ගලගම සරණංකර හිමි	1970-01-01	660	Sinhala	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2386	B0019	වීශුද්ධි දීපිකා	මාකුරේ ගුණරතන හිමි	1931-01-01	180	Sinhala	Full	Paramaththa	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2387	B0020	මධුරත්තපකාසිනි මිලින්දප්‍රශ්න ටීකා - 18	BCC	1916-01-01	143	Sinhala	Full	My Library	ධර්ම සංග්‍රහ ග්‍රන්ථ	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2388	B0021	පරමත්ථමඤ්ජුසා විසුද්ධිමග්ගටීකා - 05	BCC	1907-01-01	563	Sinhala	Full	My Library	ධර්ම සංග්‍රහ ග්‍රන්ථ	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2389	B0022	විශුද්ධි මාර්ගය 01	ධර්මරත්න පඬිතුමා	1888-01-01	644	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2390	B0023	විශුද්ධි මාර්ගය 02	ධර්මරත්න පඬිතුමා	1888-01-01	434	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2391	B0024	විශුද්ධි මාර්ගය 03	ධර්මරත්න පඬිතුමා	1888-01-01	166	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2392	B0025	විශුද්ධි මාර්ගය 04	ධර්මරත්න පඬිතුමා	1888-01-01	403	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2393	RG0030	සකස්කඩ	\N	\N	4	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2394	RG0031	වදන් කවි පොත	\N	\N	10	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2398	\N	සිරිලක කඩයිම් පොත	එස් සිල්වා	1916-01-01	31	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	වෙනත්
2399	\N	Bibliography-of-Ceylon_Vol-I_HAIG_1970	\N	1970-01-01	\N	English	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2400	\N	Bibliography-of-Ceylon_Vol-II_HAIG_1970	\N	1970-01-01	\N	English	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2401	\N	Bibliography-of-Ceylon_Vol-III_HAIG_1976	\N	1976-01-01	\N	English	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2402	\N	Catalogue of the Colombo Museum Library Pali Sinhala and Sanskrit Manuscriptsc 1894	\N	1894-01-01	\N	English	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2403	\N	Catalogue of the Hugh Nevill Collection - Somadasa Volume 1	\N	\N	\N	English	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2404	\N	රුවන්මල හා පියුම් මල	බටුවන්තුඩාවේ පඬිතුමා	1892-01-01	113	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2405	\N	ශ්‍රී වික්‍රම රත්නාලන්කාරය	ඩබ් ඇම් පුන්චිබණ්ඩාර	\N	24	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2406	\N	අතීත වාක්ය දීපණිය	ඇලෙක්සැන්ඩර් මැන්දිස්	1899-01-01	90	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2407	\N	වෘත්තමාලාක්‍යව (සිංහල ග්‍රන්තර්ණවය)	සිංහල ග්‍රන්තර්ණවය	\N	11	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2408	\N	උතුරුකුරු දිවයින් විස්තරය	කරුණාතිලක අප්පුහාමි	1932-01-01	11	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2409	RG0035	කවිසිළුමිණ හෙවත් කුසදාවත කුස රජුගේ උපත	මඩුගල්ලේ සිද්ධාර්ථ	1926-01-01	259	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2410	RG0036	කවිසිළුමිණ 01	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2411	RG0036	කවිසිළුමිණ 02	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2412	RG0037	කාව්යශේඛරය තොටගමුවේ රාහුල හිමි	හික්කඩුවේ ශ්රී සුමංගල	1872-01-01	220	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2413	RG0038	කුවේණි අස්න සහ සිහබා අසුන	දොඩන්ගමුවේ ශ්රී ධර්මරත්න	1927-01-01	54	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2414	RF0003	සැළලිහිණි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2415	\N	ග්‍රන්ථසාරය	\N	1875-01-01	136	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2416	RA0024	ජිනධර්මවිකාශන	\N	\N	107	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2417	RG0039	දහම් සරණ	වැන්දබෝනා	1931-01-01	453	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2418	RG0040	දහම් සරණ විවරණය - ප්‍රථම භාගය	කුමාරතුංග මුනිදාස	1931-01-01	217	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2419	RG0041	දහම් සරණ විවරණය - ප්‍රථම භාගය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2420	RG0042	දහම් සරණ	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2421	RA0025	දහම්ගැට මාලාව	ඇල් ජි ප්‍රේරා	1893-01-01	13	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2422	RA0026	දළදා පූජාවලිය	ඇල් ජි ප්‍රේරා	1893-01-01	39	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2423	\N	රාමායනය	අභයසිංහ	2005-01-01	119	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2424	\N	ලංකාව සහ සිංහලයෝ Ceylon and the Cingalese	Henry Sirr පරිවර්තනය - 2004 ප්_රේමචන්ද්ර අල්විස්	1850-01-01	119	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2425	\N	ලකුණු සර	\N	1883-01-01	16	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2426	\N	ලිච්චවී කතාව	සිල්වා සහ ප්රේරා අප්පුහාමි	1889-01-01	12	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2427	RG0043	ලෝකෝපකාරය	තොටගමුවේ රණස්ගල්ලේ හිමි	1924-01-01	161	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2428	RG0044	ලෝකෝපකාරය	තොටගමුවේ රණස්ගල්ලේ හිමි	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2429	RG0045	ලෝකෝපකාරය	තොටගමුවේ රණස්ගල්ලේ හිමි	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2430	RG0046	ලෝකෝපකාරය	තොටගමුවේ රණස්ගල්ලේ හිමි	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2431	RG0047	ලෝකෝපකාරය	තොටගමුවේ රණස්ගල්ලේ හිමි	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2432	\N	ව්යාසකාරය සහ හිතෝපදේශයේ පළමු පරිච්චේදය	පෙරේරා	1908-01-01	25	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2433	\N	ශ්රී ලංකා ජාතික ග්රන්ථ නාමාවලිය පූර්ව කාලීන	\N	\N	75	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වෙනත්
2434	RG0048	ශ්‍රීන්ගාරය	සේදරමන්	1955-01-01	115	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2435	RG0049	සමන්ත කූඨ වර්ණනා	වේදේහ මහා සාමි/ ශ්රී සිධාර්ථ ධම්මානන්ද සහ මහගොඩ ශ්රී ඥානිස්සර	1910-01-01	244	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2436	RG0050	සිරීපාද පොත	පි බි වත්තුහාමි	\N	32	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2437	RD0044	සාරාර්‍ත්‍ථචන්ද්‍රිකා නම් වූ සාරස්වතාර්‍ත්‍ථ ව්‍යාඛ්‍යාව	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2438	RD0045	සිංහල මේඝදුත කාව්‍යය	කේ එච් ද සිල්වා	1934-01-01	44	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2439	RD0046	සිංහල රගු වංසය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2440	RD0047	හිතෝපදේශ සන්නය	වැලිගම ශ්රී සුමංගල හිමි	1884-01-01	222	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2441	RA0027	සරණ ගමන විනිශ්චය	සිරිධම්ම හිමි	1912-01-01	40	Sinhala	Full	Polgasduwa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2442	RA0028	කර්ම වර්ණනාව	මලලගම ශ්‍රී විජයනාග හිමි	1920-01-01	73	Sinhala	Full	Polgasduwa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2443	RA0029	සන්න සහිත අසංඛෙය්‍ය චක්‍රය	රතන හිමි	1910-01-01	10	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2444	RA0030	චූලරාජ පිරිත සහ මහා රාජ පිරිත	සුභූති හිමි	1897-01-01	40	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2445	RA0031	චතුරාර්‍යසත්‍ය විභාගය	සරණංකර සඟරාජ හිමි	1927-01-01	47	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2446	RA0032	පිරිත් ප්‍රශ්නය	\N	1899-01-01	10	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2447	RA0033	ශ්‍රී සද්ධර්මොවාදය	\N	\N	12	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2448	RA0034	කර්ම විභාගය	ඉස්වැල්ලේ ජිනරතන හිමි	1929-01-01	143	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2449	RA0035	තෘෂ්ණාදෝෂ දිපනිය	චාල්ස් ඩයස්	1938-01-01	33	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2450	RA0036	අන්තරායික ධර්ම	ගබ්බෙල උපනන්ද හිමි	1957-01-01	23	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2567	V0135	මුලුසික සන්නය	සිරි සද්ධම්මාචරිය හිමි	1887-01-01	48	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
1783	P0020	සන්න සහිත කච්චායනසාරය	වැලිතොට ඤාණතිලකතිස්ස හිමි	1892-01-01	54	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1784	P0021	ආඛ්‍යාත නය දීපනී	ගල්වෙහෙර අරියඤාණ හිමි	1936-01-01	137	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1786	P0023	කච්චායන නාමික රූපමාලා ආඛ්‍යාත රූපමාලා	ධම්මකිත්ති ධම්මාරාම හිමි	1950-01-01	70	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1788	P0025	සන්න සහිත කච්චායන භේදය	කොස්ගොඩ පඤ්ඤාරාම හිමි	1912-01-01	105	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1789	P0026	පද සිඬි විග්‍රහ සහිත කාත්‍යායන සන්නය 01	හල්තොට ගිරිමානන්ද හිමි/ අරියජෝති හිමි	1911-01-01	178	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1790	P0026	පද සිඬි විග්‍රහ සහිත කාත්‍යායන සන්නය 02	හල්තොට ගිරිමානන්ද හිමි/ අරියජෝති හිමි	1911-01-01	169	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1791	P0027	කච්චායන සූත්‍ර පාඨය - සන්න සහිත 1St Edition	ගුණරතන හිමි හා සුමතිපාල හිමි	1904-01-01	206	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1792	P0027	කච්චායන සූත්‍ර පාඨය - සන්න සහිත 2nd Edition	ගුණරතන හිමි හා සුමතිපාල හිමි	1925-01-01	212	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1427	A0006	අභිධම්මත්ථ විකාසිනී - අභිධම්මාවතාර ටීකා	පොල්වත්තේ බුද්ධත්ත නා හිමි	1961-01-01	477	Pali	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1428	A0007	අභිධම්මත්ථ විභාවිනී - අභිධම්මත්ථ සංගහ ටීකා	දෙහිගස්පේ පඤ්ඤාසාර හිමි	1933-01-01	178	Pali	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1450	A0025	අභිධර්මාර්ථ සංග්‍රහ සංඛේප වන්නනා ටීකා	වැල්ලම්පිටියේ සුමනසාර හිමි	1930-01-01	119	Pali	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1455	A0029	අභිධම්මතථ සංගහො - නවනීත ටීකා	කොසම්බිකුල ධම්මානන්ද ශුරින්	1969-01-01	205	Pali	Full	Path Nirwana	අභිධර්ම	අභිධර්ම
1471	A0041	සම්මෝහවිනෝදනි අත්ථයෝජනා	කෝදාගොඩ පඤ්ඤාසේකර හිමි (ඤාණකිත්ති හිමි)	1890-01-01	287	Pali	Full	Paramaththa	අභිධර්ම	අභිධර්ම
1667	RC0001	ජිනකාලමාලී	වී ඩි එස් ගුණවර්ධන	\N	171	Pali	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
1966	V0010	පාරාජිකා පාලි	තෙල්වත්තේ සිරි අරියවංස හිමි	1925-01-01	264	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1967	V0011	පරිවාර පාළි	පිවි ඇම්වී පඤ්ඤාලොකාසභා හිමි	1905-01-01	328	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1968	V0012	මගවග විනය පොත් වහන්සේ	බෙන්තර සද්ධාතිස්ස හිමි	1933-01-01	450	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1970	V0014	පාචිත්තිය පාලි	තෙල්වත්තේ සිරි අරියවංස හිමි	1925-01-01	360	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1971	V0015	සාරත්‍ථදීපනි නාම සමන්තපාසාදිකාය විනයඨකථාය ටීකා	දේවරක්ඛිත හිමි	1933-01-01	920	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1975	V0019	පාලිමුත්තක විනයවිනිච්ඡය සංගහ ටීකා	කෝට්ටගොඩ පඤ්ඤාසාර හිමි	1908-01-01	162	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
1985	V0029	පාලිමුත්තකවිනයවිනිච්ඡය	කහවේ සිරිසුමංගල රතනසාර හිමි	1931-01-01	434	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
1992	V0036	භික්ඛුපාතිමොක්ඛ සමෙතා ගණඨිදීපනී	විමලරන්සිතිස්ස හිමි	\N	124	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
1998	V0042	අධිකරණ විභාග සංගහෝ	කේ සුමේධ හිමි	1913-01-01	44	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
2009	V0053	විනයවිනිච්ඡය	අම්බලන්ගොඩ සිරි සුමන තිස්ස හිමි	1914-01-01	358	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
2014	V0058	සන්දේහ ඝාතිනී - කංඛාවිතරණී සන්නය	රුවන්ගිරි කන්ද ආරණ්‍ය	\N	216	Pali	partial	Path Nirwana	විනය	භික්ෂු විනය
2017	V0061	සමන්තපාසාදිකාය නාම විනයඨකථාය	ලේල්වල සිරිසද්ධම්මාචරිය සිරිනිවාස හිමි	1933-01-01	874	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
2021	V0062	සීමානයදප්පනය	ධම්මාලංකාර හිමි	1885-01-01	288	Pali	Full	Archive.org	විනය	භික්ෂු විනය
2052	S0078	ජාතකට්ඨකථා බුද්ධඝෝස හිමි 01	සීලානන්ද හිමි	1892-01-01	400	Pali	Full	Na Uyana	සූත්‍ර	වෙනත්
2053	S0078	ජාතකට්ඨකථා බුද්ධඝෝස හිමි 02	සීලානන්ද හිමි	1913-01-01	646	Pali	Full	Na Uyana	සූත්‍ර	වෙනත්
2083	S0087	පටිසම්භිදාමග්ග ගණ්ඨිපදත්ථ වණ්ණනා	තුඩාවේ අරියවංශ හිමි	1962-01-01	378	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත්
2090	S0091	දසදානවත්ථුප්‍රකරණය	\N	1898-01-01	46	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2093	S0094	සාරත්ථ මඤ්ජූසා - මනෝරථපුරණී ටීකා	සුගුනසාර හා රතනසාර හිමි	1907-01-01	162	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත්
2097	B0011	සොතබ්බමාලිනි	අහුන්ගල්ලේ විමලසිරිතිස්ස හිමි	1911-01-01	156	Pali	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2114	RC0013	බ්රම්ම වංශ විනිශ්චය - බුරුම - අමරපුර නිකාය 1878	\N	\N	\N	Pali	Full	Archive.org	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2118	B0016	පරමත්ථමඤ්ජුසා විසුද්ධිමග්ගටීකා - Part 01/02/03	මොරොන්තුඩුවේ ධම්මානන්ද හිමි (ධම්මපාල ථෙර)	1928-01-01	676	Pali	Full	Path Nirwana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2119	V0068	විමතිවිනොදනී සමන්තපාසාදිකා ටීකා	චෝළිය කස්සප ථෙර	1935-01-01	617	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
2122	S0104	පපණ්‍චසූදනී මජ්ඣිමනිකාය 02-03	අට්ටකථා පාලි - අළුවිහාර	1926-01-01	583	Pali	Full	Path Nirwana	සූත්‍ර	වෙනත්
1795	P0029	කච්චායනව්‍යාකරණං	\N	\N	50	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2124	A0075	කථාවත්‍ථුප්පකරණ පාලි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	375	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2130	A0076	ධම්මසඞ්ගණිප්පකරණ පාලි - ශ්‍රීපාද	කිරිඇල්ලේ ඤාණවිමල හිමි	1953-01-01	265	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2131	A0077	ධම්මසඞ්ගණිප්පකරණ පාලි	හේවාවිතාරණ	1953-01-01	269	Pali	Full	Path Nirwana	අභිධර්ම	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2140	V0069	විනය චුල්ලවග්ගපාළි සුළුවග	බෙන්තර ශ්‍රද්‍ධාතිස්ස හිමි	1928-01-01	423	Pali	Full	Path Nirwana	විනය	භික්ෂු විනය
2165	A0085	අත්තසාලිනි ලිනත්තපද වන්නනා - අභිධම්ම මුලටීකා	දෙහිගස්පේ පඤ්ඤාසාර හිමි	1938-01-01	174	Pali	Full	Na Uyana	අභිධර්ම	අභිධර්ම
2559	S0271	ඛුද්දකපාඨ ධම්මපද උදාන ඉතිවුත්තක පාළි	අරංගල සිරිධම්ම හිමි	1926-01-01	206	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2562	S0274	අග්ගිකන්දෝපම සුත්‍ර සන්නය	\N	1914-01-01	25	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2564	V0132	ඔවාද ප්‍රාතිමොක්ෂය	\N	1897-01-01	20	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2565	V0133	විනයත්තප්පකාසිනි භාවාර්ත්ථ සහිත චුල්ලවග්ග ව්යාඛ්යාව - 01 - 02	මිණිවන්ගොඩ පඤ්ඤාතිස්ස හිමි	1927-01-01	404	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2566	V0134	පුරාණ පාරුපනවත සහ අති පුරාණ පාරුපනවත	අතුරලියේ ශ්‍රී සුමංගල හිමි	1914-01-01	35	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2571	B0032	විසුද්ධිමග්ගො පාළි	පොල්වත්තේ බුද්ධදත්ත හිමි	1914-01-01	580	Pali	Full	Paramaththa	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2581	V0143	ඛුද්දසික්ඛා සුමංගලප්පසාදනියා ටිකාය	සුමනජෝති හිමි	1898-01-01	202	Pali	Full	Paramaththa	විනය	භික්ෂු විනය
2558	S0270	මජ්ජිම නිකායො (පාඨමො භාගො)	ධර්මකීර්ති ශ්‍රී ධම්මානන්ද හිමි	1924-01-01	398	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2560	S0272	අංගුත්තරනිකායො පාලි	දේවමිත්ත හිමි	1893-01-01	1170	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2561	S0273	අංගුත්තරනිකායට්ඨකථාටීකා - 01	වීරවර්ධන	1930-01-01	223	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2563	V0131	සමන්තපාසාදිකා විනයසංවණ්ණානා	සිරිසුමන තිස්ස හිමි	1900-01-01	877	Pali	Full	Paramaththa	විනය	භික්ෂු විනය
2569	V0137	සාසනසුද්ධ දීපනිය	දෙකඳුවල සුමනසාර හිමි	1899-01-01	40	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2570	V0138	සුද්‍ධච්ඡාද විභාවිනිය	\N	1885-01-01	48	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2572	RA0037	බණපිරිත් කතිකාවත	\N	1906-01-01	24	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2573	RA0038	කථින විනිශ්චය	කපුගම ධම්මක්ඛන්ධ හිමි	1909-01-01	55	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2574	S0275	අංගුත්තර නිකාය ගාථා සන්නය	විලේගොඩ ධම්මානන්ද හිමි	1908-01-01	163	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2575	V0139	සිඛ වළඳ හා සිඛ වළඳ විනිස සහිත සිඛ වළඳ විනිස ප්‍රදීපය	මැදඋයන්ගොඩ විමලකිත්ති හිමි	1950-01-01	171	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2576	V0140	විනයත්ථදීපනී මාතිකට්ඨකථා ව්යාඛ්යානය 01	මහව ඤාණාලෝක හිමි	2020-01-01	473	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2577	V0140	විනයත්ථදීපනී මාතිකට්ඨකථා ව්යාඛ්යානය 02	මහව ඤාණාලෝක හිමි	2021-01-01	335	Sinhala	Full	Path Nirwana	විනය	භික්ෂු විනය
2578	S0276	ධර්‍ම පදාර්‍ත්‍ථ කථා ගාථාසන්නය.	සුරියගොඩ සුමංගල හිමි	1889-01-01	89	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2579	V0141	සීමාවිනිශ්චය	බලපිටියේ විශුද්ධාලෝක හිමි	1968-01-01	176	Sinhala	Full	My Library	විනය	භික්ෂු විනය
2580	V0142	මුලුසික සන්නය	\N	1924-01-01	38	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2582	V0144	සීමාලංකාර සංග්‍රහ සන්නය	ඤානානන්ද සිරිසද්දම්මජෝතිපාල හිමි	1904-01-01	56	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2583	V0145	පරමාර්ථ විභාගය සහ විනයොපදේශය	විටියල සිරි සාරානන්ද හිමි	1939-01-01	506	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2584	V0146	කම්මවාචා	කිත්තිසිරි සුමංගල හිමි	1918-01-01	46	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2585	V0147	පාචිත්‍යදියෝජනා	\N	\N	350	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2586	V0148	පාරුපනවත	\N	1900-01-01	92	Sinhala	Full	Paramaththa	විනය	භික්ෂු විනය
2587	V0149	කම්මවාචා	සෝමානන්ද හිමි	1907-01-01	55	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2590	V0152	උභයමාතිකාපාලිය	විමලසාර හිමි	1914-01-01	244	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2591	V0153	ඛන්ධක විනය	හේන්පිටගෙදර ඤානසිහ හිමි	1966-01-01	380	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2593	V0155	මෙහෙණ සස්න	වැලිගම ඤානරතන හිමි	1956-01-01	204	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2595	V0157	සිකවලද හා සිකවලද විනිස	ඩී බි ජයතිලක	1834-01-01	140	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2596	V0158	මහණකම	යාගොඩ ධම්මප්‍රභ හිමි	1956-01-01	136	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2597	B0033	විසුද්ධි මග්ග සන්න (ප්‍රථම භාගය)	පරවාහැර වජිරඤාණ හිමි	1927-01-01	300	Sinhala	Full	Paramaththa	ධර්ම සංග්‍රහ ග්‍රන්ථ	ධර්ම සංග්‍රහ ග්‍රන්ථ
2598	V0159	ශිල නිර්දේශය	ධර්මරත්න පඬිතුමා	\N	402	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2599	V0160	විනය ප්‍රශ්න පත්‍ර 1989-2014	\N	\N	55	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2600	S0277	සංයුක්ත නිකාය නිදාන වග්ග ටිකාව 13	BCC	\N	\N	Sinhala	Full	My Library	සූත්‍ර	බෞද්ධ සංස්කෘත මධ්‍යස්ථාන මුද්‍රණය
2601	S0278	මහා පරිනිර්වාණ සුත්‍රය අර්‍ත්‍ථව්‍යාඛ්‍යානය	\N	\N	254	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2602	S0279	අංගුත්තර නිකාය 1	බොද්ධ සම්මේලනය	1952-01-01	438	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2588	V0150	භික්ෂු ප්‍රාතිමෝක්‍ෂය සහ භික්ෂුණි ප්‍රතිමොක්ෂය	ජි එෆ් මුණසිංහ	1914-01-01	102	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
2589	V0151	විනයත්ථ මංජුසා නාම කංඛාවිතරණි ටීකා	යූ.පී.ඒකනායක	\N	312	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
2603	S0279	අංගුත්තර නිකාය 2	බොද්ධ සම්මේලනය	1971-01-01	600	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2604	S0280	සිංහල චර්‍ය්‍යපිටකාර්‍ථවර්‍ණනා	විලේගොඩ ධම්මානන්ද හිමි	1962-01-01	388	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2605	S0281	සන්න සහිත චරියාපිටකය	රන්දොඹේ සුදස්සන හිමි	1904-01-01	160	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත් ත්‍රිපිටක ග්‍රන්ථ
2607	S0283	දම්පියා අටුවා සන්නය ගැටපදය	රස්නකවැවේ ශ්‍රී සද්ධර්මවංස හිමි	1952-01-01	368	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2608	S0284	දම්පියා අටුවා ගැටපදය විවරණය	මැදඋදන්ගොඩ විමලකිත්ති හිමි	1967-01-01	222	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2609	S0285	එළු උමංදාව	පරවාහැර පේමානන්ද හිමි/ ගලගම ධම්මික හිමි	1950-01-01	260	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2610	S0286	ධම්මපද පුරාණ සන්නය	කඹුරුපිටියේ ධම්මරතන හිමි	1926-01-01	214	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2611	S0287	ධම්මපද පුරාණ සන්නය	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	1911-01-01	208	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2612	S0288	ධම්මපද විවරණය	මොරගල්ලේ සිරි ඤාණෝභාසතිස්ස හිමි	1962-01-01	852	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2613	S0289	The Dammapada	Narada Thero	1959-01-01	102	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2614	S0290	Buddavamsa and chariya-pitaka	Richard Moris	1882-01-01	124	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2615	S0291	ධර්‍මමාත්‍ථර්‍ දීපනී	රත්ගම ශ්‍රී පඤ්ඤාසේකර හිමි	1936-01-01	370	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2616	S0292	The Dammapada 02	Narada Thero	1940-01-01	108	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2618	S0294	දශජාතක කථා වස්තුව	කළුතර ගුණානන්ද හිමි	1928-01-01	422	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2619	S0295	ධම්මපදං	\N	\N	34	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2621	S0297	ධම්මපදය	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	1889-01-01	148	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2622	S0298	භූරිදත්ත - වෙස්සන්තර ජාතක විවරණය	ලයනල් ලොකුලියන	1955-01-01	326	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2623	S0299	විමානවස්තුප්‍රකරණය ප්‍රේතවස්තුප්‍රකරණය	තෙල්වත්තේ මහානාග සිලානනද හිමි	1901-01-01	430	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2624	S0300	අංගුලිමාල සූත්‍රය	ගිරිදර රතනජෝති හිමි	1891-01-01	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2625	S0301	අග්ගිකඛන්ධෝපම සූත්‍රසන්නය	\N	1900-01-01	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2626	S0302	ජාතක අටුවා ගැටපදය	ඩී බි ජයතිලක	1943-01-01	264	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2627	S0303	ජාතක ගාථා සන්නය	බද්දේගම ශ්‍රී ධම්මරතන හිමි	1929-01-01	570	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2629	S0305	දික්සඟිය (භාවය)	බලංගොඩ ආනන්දමෛත්‍රිය හිමි	1965-01-01	382	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2630	S0306	මහා පරිනිර්වාණ ධර්මය	බම්බරන්දේ සිරි සීවලී හිමි	1962-01-01	302	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2631	S0307	අච්ඡරියබ්භුත සූත්‍රය	\N	1897-01-01	52	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2632	S0308	අඤ්ඤාකොණ්ඩඤ්ඤ සූත්‍රය	මාලමුල්ලේ විමලරතන හිමි	1887-01-01	32	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2633	S0309	අටුවා සන්න සහිත ධම්මික සූත්‍රය	\N	1895-01-01	32	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2634	S0310	අටුවා-සන්න සහිත චෙතොඛිල සූත්‍රය	\N	1897-01-01	32	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2635	S0311	අනාගත වංශ දේශනාව (මෛත්‍රෙය වර්ණනාව)	\N	1901-01-01	38	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2636	S0312	ආර්‍යවංශ සූත්‍රය	මිරිස්සේ ඤාණරතනතිස්ස හිමි	1898-01-01	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2638	S0314	උම්මග්ග ජාතකය	කුමාරතුංග මුනිදාස	1907-01-01	274	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2710	S0383	දාරුක්ඛන්ධෝපම සූත්‍රය	\N	1900-01-01	26	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2639	S0315	උම්මග්ග ජාතකය ගැටපද විවරණය සහිතයි	එච් දී එස් අබේරත්න	1904-01-01	243	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2640	S0316	උම්මග්ග ජාතකය	බටුවන්තුඩාවේ පඬිතුමා	1907-01-01	230	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2641	S0317	චූලපණණමා සූත්‍රය	\N	1893-01-01	20	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2642	S0318	තිරොකුඩ්ඩ සූත්‍ර සන්නය සහ නිධිකණ්ඩ සූත්‍ර සන්නය	\N	1889-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2643	S0319	ථෙරිගාථා ව්‍යාඛ්‍යා	ජයවික්‍රම හා කාහඟආරච්චි	1958-01-01	312	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2644	S0320	දම්සක් පැවතුම් සූත්‍රය	වෙනිවැල්කොළ ඉන්ද්‍රජෝති හිමි	1915-01-01	92	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2645	S0321	දශසංඥා විභාගය	පොල්වත්තේ සිරි බුද්දදත්ත හිමි	1916-01-01	26	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2646	S0322	ධම්මහදයවිභංග සූත්‍රය	පින්වත්තේ සෝමානන්ද හිමි	1906-01-01	86	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2647	S0323	නවංගුපොසථ සූත්‍රය	බන්දියමුල්ලේ ධම්මරතන හිමි	\N	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2649	S0325	පුරාණ සන්න සහිත බාලපණ්ඩිත සූත්‍රය	\N	1893-01-01	56	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2650	S0326	පුරාණ සන්න සහිත මහා සතිපට්ඨාන සූත්‍රය	තුඩාවේ ආර්යවංශ හිමි	1928-01-01	192	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2651	S0327	පෙළ සහිත මහා ප්‍රධාන සූත්‍ර සන්නය සහ ප්‍රත්‍යවෙක්ෂා ක්‍රමය	සිරිධම්ම හිමි	1915-01-01	60	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2653	S0329	ප්‍රාප්තකම්ම සූත්‍රය	මඩුගල්ලේ සිද්ධාර්ථ හිමි	1892-01-01	54	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2654	S0330	ප්‍රේතවස්තු වර්ණනාව	යු පි ඒකනායක	1926-01-01	428	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2659	S0332	මහා සතිපට්ඨාන භාවාර්ථ සන්නය	\N	1916-01-01	56	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2660	S0333	මහාතිර්ථායතන සූත්‍රය	\N	1901-01-01	40	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2662	S0335	මහාසමය සූත්‍රය ආදී සූත්‍ර හත	\N	1895-01-01	78	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2663	S0336	මහා සතිපට්ඨාන සූත්‍ර සන්නය	බුද්ධරක්ඛිත සාරානන්ද හිමි	\N	186	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2664	S0337	ලක්ඛණ සූත්‍රය	මාදම්පේ සංඝරක්ඛිත හිමි	1916-01-01	88	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2665	S0338	ලොකානුවිචරණ සුත්‍රාන්ත ව්‍යාඛ්‍යානය	\N	1907-01-01	26	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2667	S0340	විස්තර සන්න සහිත ආටානාටිය සූත්‍රය	උදම්මිට ධම්මරක්ඛිත හිමි	1922-01-01	52	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2668	S0341	ශුභ සූත්‍රය හෙවත් චූලකම්මවිභංග සූත්‍රය	ගිරිදර රතනජෝති හිමි	1890-01-01	48	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2669	S0342	සමන්නෙසනා සහිත සඟි බණ මැදුම්සඟිය	යක්කඩුවේ පඤ්ඤාරාම හිමි	1957-01-01	338	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2670	S0343	සමිඞිසූත්‍ර සන්නය	\N	1898-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2671	S0344	සල්ල සූත්‍රය	ජී ධම්මාලෝක හිමි	\N	14	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2672	S0345	සවිස්තර මංගල සූත්‍රය හෙවත් දෙලෝ දියුණුව	නාරද හිමි	1946-01-01	150	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2673	S0346	සප්ත භාර්‍යයා සූත්‍රය නය දහස	\N	1899-01-01	20	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2674	S0347	සාරාර්ථදීපිකා නම් වූ ජාතකාරථකථා ව්‍යාඛ්‍යාව	අහුන්ගල්ලේ විමලකීර්ති තිස්ස හිමි	1926-01-01	368	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2675	S0348	සිතියම් සහිත උම්මග්ග ජාතකය	බටුවන්තුඩාවේ පඬිතුමා	1909-01-01	260	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2677	S0350	සීහොපම සූත්‍ර වර්ණනාව	උරාපොල වජිරවංසතිස්ස හිමි	\N	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2681	S0354	සූත්‍රනිපාතය පුරාණ අර්ථව්‍යාඛ්‍යාන සහිත.	පඤ්ඤානන්ද හිමි	1914-01-01	236	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2683	S0356	සන්න සහිත අෂ්ඨිපුඤ්ජ සූත්‍රය සහ පාවෙය්‍යක සූත්‍රය	\N	1897-01-01	14	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2684	S0357	සන්න සහිත ආමගන්ධ සූත්‍රය	කළුතර ධම්මානන්ද හිමි	1911-01-01	38	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2685	S0358	සන්න සහිත ආලවක සූත්‍රය 3	\N	1897-01-01	68	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2686	S0359	සන්න සහිත ආලවක සූත්‍රය	\N	1910-01-01	70	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2687	S0360	සන්න සහිත ආශිර්විෂෝපම සූත්‍රය හෙවත් නයි සතරදෙනා	වලිපැන්නේ ශ්‍රී උපතිස්ස හිමි	1955-01-01	60	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2688	S0361	සන්න සහිත ආශිර්විෂෝපම සූත්‍රය	\N	1891-01-01	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2689	S0362	සන්න සහිත කාමභොගී සූත්‍රය	\N	1896-01-01	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2690	S0363	සන්න සහිත චක්‍රවර්තිසීහනාද සූත්‍රය	\N	1895-01-01	84	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2691	S0364	සන්න සහිත චුන්ද සූත්‍රය	\N	1896-01-01	12	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2692	S0365	සන්න සහිත දානුප්පත්ති සූත්‍රය	උඩුගම්පොල සවර්ණජෝති හිමි	1892-01-01	14	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2693	S0366	සන්න සහිත පරාභව සූත්‍රය	කළුතර සරානනද හිමි	1891-01-01	68	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2694	S0367	සන්න සහිත මල්ලිකොවාද සූත්‍රය	\N	1894-01-01	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2695	S0368	සන්න සහිත මහා දේවදූත සූත්‍රය	\N	1891-01-01	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2696	S0369	සන්න සහිත මහා පරිනිර්වාණ සූත්‍රය	කිත්තන්ගොඩ සරණංකර හිමි	1914-01-01	236	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2697	S0370	සන්න සහිත මහා සතිපට්ඨාන සූත්‍රය	\N	1883-01-01	138	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2698	S0371	සන්න සහිත මූලපරියාය සූත්‍රය	උදුගොඩ රතනපාල හිමි	1914-01-01	54	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2699	S0372	සන්න සහිත රට්ඨපාල සූත්‍රය	\N	1890-01-01	68	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2700	S0373	සන්න සහිත රථකාර සූත්‍රය	\N	1926-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2701	S0374	සන්න සහිත විමුක්ති සූත්‍රය	\N	\N	14	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2702	S0375	සන්න සහිත විශාඛුපොසථ සූත්‍රය	\N	\N	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2703	S0376	සන්න සහිත වෙරඤ්ජ සූත්‍රය	මාගම්මන මේධානන්ද හිමි	1893-01-01	36	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2704	S0377	සන්න සහිත සම්මා දිට්ඨි සූත්‍රය	මුල්ලපිටියේ මෙධාවිතිස්ස හිමි	1899-01-01	42	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2705	S0378	අටුවා සන්න සහිත අපුත්තක සූත්‍රය	\N	1900-01-01	20	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2706	S0379	අටුවා සන්න සහිත කර්මනිදාන සූත්‍රය	\N	1897-01-01	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2707	S0380	අර්ථකථා සහිත කායවිච්ඡන්දනික සූත්‍රය නොහොත් විජය සූත්‍රය	\N	1898-01-01	52	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2708	S0381	කාලදාන සූත්‍රය	\N	1895-01-01	14	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2709	S0382	තමොතමපරායණ සූත්‍රය	\N	1897-01-01	20	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2711	S0384	පදාර්ථ භාවාර්ථ සහිත විජය සූත්‍රය	\N	\N	42	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2712	S0385	පබ්බතුපම සූත්‍රය	\N	1897-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2713	S0386	පුරාණ සන්න සහිත අරක සූත්‍රය	\N	1894-01-01	16	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2714	S0387	පුරාණ සන්න සහිත උපොසථ සූත්‍රය	\N	1891-01-01	46	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2715	S0388	පුරාණ සන්න සහිත කසීභාරද්වාජ සූත්‍රය	\N	1896-01-01	32	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2716	S0389	පුරාතන සන්න සහිත ධජග්ග සූත්‍රය	\N	1899-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2717	S0390	පෙළ සහිත ඡානුස්සති සූත්‍රය සන්නය	\N	1895-01-01	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2718	S0391	පෙළ සහිත සප්තආර්‍යධන සූත්‍ර සන්නය	\N	1896-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2719	S0392	පෙළ සහිත සුමනා සූත්‍රය සන්නය	\N	1896-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2720	S0393	මෛථුනසංයෝග සූත්‍රය	තංගල්ලේ ඤාණවිමලතිස්ස හිමි	1896-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2721	S0394	වසල සූත්‍රය	\N	1898-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2722	S0395	විස්තර සන්න අටුවා සහිත තිරොකුඩ්ඩ සූත්‍රය සහ නිධිකණ්ඩ සූත්‍රය	\N	1895-01-01	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2723	S0396	වෙනාගපුර සූත්‍ර සන්නය	\N	1899-01-01	36	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2724	S0397	සන්න සහිත වච්ඡගොත්ත සූත්‍රය	\N	1900-01-01	16	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2725	S0398	සන්න සහිත වජ්ජ සූත්‍රය	\N	1896-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2726	S0399	සන්න සහිත වෙලාම සූත්‍රය	\N	1892-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2727	S0400	සන්න සහිත ව්‍යඝ්‍රපද්‍ය සූත්‍රය	\N	1900-01-01	24	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2728	S0401	සප්පුරිසදාන සූත්‍රය	\N	1897-01-01	26	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2729	S0402	සමචිත්ත පරියාය සූත්‍රය	\N	1899-01-01	24	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2730	S0403	සරභ සූත්‍රය	\N	1897-01-01	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2731	S0404	The Anguttara Nikaya	Pali Text Society	1883-01-01	140	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2732	S0405	Jathaka Tales	H T Francis and Thomas	1916-01-01	514	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2733	S0406	Monorathapurani II	Pali Text Society	1930-01-01	396	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2734	S0407	Paramattajothika Kuddaka Pata I	Pali Text Society	1915-01-01	278	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2735	S0408	Paramattajothika Suttanipatha II	Pali Text Society	1917-01-01	234	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2736	S0409	Paramattha Dipani Udanatthakatha	Pali Text Society	1926-01-01	524	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2737	S0410	Petawattu	Pali Text Society	1888-01-01	110	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2738	S0411	Saddamma Pajjothika Mahaniddesa	Pali Text Society	1931-01-01	258	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2739	S0412	Vimanavattu	Pali Text Society	1901-01-01	394	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2740	S0413	Ummagga Jathaka	TB Yatawara	1898-01-01	264	English	Full	Paramaththa	සූත්‍ර	වෙනත්
2741	S0414	භාවසන්න සහිත මිත්තානිසංස- මොරපරිත්ත දෙසනා	පහමුනුතොට සුධම්මානන්ද හිමි	1949-01-01	36	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2742	S0415	භාවසන්න සහිත මහා මංගල සූත්‍රය	වෙඬරුවේ අනවමදර්ශී හිමි	1950-01-01	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2743	S0416	භාව සන්න සහිත ගිරිමානන්ද සූත්‍රය	කහටපිටියේ දේවරක්ඛිත හිමි	1950-01-01	30	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2744	S0417	භාවසන්න සහිත සච්චවිභංග සූත්‍රය	මාතර ඤාණරාම හිමි	1951-01-01	38	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2745	S0418	ධජග්ග සූත්‍රය	මුල්ලේගම සිලාලංකාර හිමි	1932-01-01	44	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2746	S0419	භාව සන්න සහිත අභිණහපච්චවෙකඛිතබ්බ සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1935-01-01	72	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2747	S0420	අනාගත වංශ දේශනාව	\N	\N	36	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2748	S0421	වාසෙට්ඨ සුත්තං	\N	\N	38	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2749	S0422	නිද්දේසපාළි	වැලිවිටියේ සෝරත හිමි	1933-01-01	414	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2752	S0425	සරලාර්ථකෞමුදී ජාතකාර්ථකථාව්‍යාඛ්‍යාව	පලන්නොරුවේ විමලධම්ම හිමි	1927-01-01	128	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2753	S0426	සංයුක්ත නිකාය ගාථා සන්නය	\N	\N	160	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2754	S0427	පපඤ්ච සූදනී මජ්ඣිමනිකාය අට්ටකථා	බුද්ධරක්ඛිත හිමි	1924-01-01	602	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2755	S0428	නය සාගරොත්පත්තිය හෙවත් චතුරාර්‍යසත්‍යය	නාගවිල ධම්මාරාම හිමි	1926-01-01	17	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2756	S0429	මධ්‍යම ප්‍රතිපදාව හෙවත් ආර්ය අෂ්ටාංගික මාර්ගය	නාගවිල ධම්මාරාම හිමි	1930-01-01	13	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2757	S0430	නිවන නොහොත් ආර්ය පුද්ගලයන් එකසිය අට	\N	1915-01-01	28	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2758	S0431	භාව සන්න සහිත පාසාදික සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1937-01-01	106	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2759	S0432	භාව සන්න සහිත අග්ගඤ්ඤ සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1937-01-01	76	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2760	S0433	භාව සන්න සහිත කාලාම සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1936-01-01	82	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2761	S0434	භාව සන්න සහිත කකචූපම සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1934-01-01	48	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2762	S0435	භාව සන්න සහිත චුල්ලකම්ම විභංග සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1936-01-01	34	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2763	S0436	භාව සන්න සහිත චුල්ලහත්ථිපදොපම සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1934-01-01	48	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2764	S0437	භාව සන්න සහිත බාලපණ්ඩිත සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1934-01-01	66	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2765	S0438	භාව සන්න සහිත සමචිත්තපරියාය සූත්‍රය	කලුකොදයාවේ පඤ්ඤාසේකර හිමි	1934-01-01	36	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2766	S0439	භාව සන්න සහිත වම්මික සූත්‍රය	\N	1923-01-01	22	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2767	S0440	පායාසිරාජඤ්ඤ සූත්‍රය	බද්දේගම පියරතන හිමි	1935-01-01	84	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2768	S0441	භාව සන්න සහිත වසල සූත්‍රය	වේරගොඩ අමරමෝලි හිමි	1934-01-01	18	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2769	S0442	සංයුක්ත ප්‍රදීපිකා	කිරිඇල්ලේ ඤාණවිමල හිමි	1935-01-01	268	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2770	S0443	සද්ධර්ම කෞමුදි නම් භාවාර්ථවිවරණ සහිත ධම්මපද පාළි	මොරෙන්තුඩුවේ ශ්‍රී ධම්මානන්ද හිමි	1946-01-01	314	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2771	S0444	සිංහල සන්න සහිත සප්තසූරයෝද්ගමන සූත්‍රය	\N	1885-01-01	62	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2772	S0445	අග්ගිකභාරද්වාජ සූත්‍ර සන්නය	\N	1932-01-01	46	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2773	S0446	මහා සමය සූත්‍ර සන්නය	උවේ පඤ්ඤානන්ද හිමි	1933-01-01	130	Sinhala	Full	Paramaththa	සූත්‍ර	වෙනත්
2774	RE0031	සෙනෙහ ශතකය හෙවත් බෙහෙත් තෙල් පොත	\N	1901-01-01	88	Sinhala	Full	Paramaththa	ඉපැරණි ග්‍රන්ථ	වෛද්‍ය ග්‍රන්ථ හා නිඝණ්ඩු
2775	RD0048	Prakrutha Prakasha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2776	RD0049	Prakrutha Prakasha - sinhala	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2777	RD0050	නාමලිඟානුශාසනය (අමරකෝෂය - අමරසිංහය)	\N	\N	\N	Sanskrit	Full	Archive.org	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2786	RG0051	බුද්ධ ගද්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2787	RG0052	භක්ති ශතකය හෙවත් බෞද්ධ ශතකය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2788	RG0053	Sanda Kinduru da kawa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2789	RG0054	Sinhala sahithya wanshaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2790	RG0055	Siya bas maldama	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2791	RG0056	අන්ධභූත ජාතකය කාව්‍ය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2792	RG0057	අමාවතුර Udrutha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2793	RG0058	උපදෙශ ශතකය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2794	RG0059	බුදුගුණ අලංකාර ප්‍රදීපය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2795	RG0060	බුදුගුණ අලංකාරය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2796	RG0061	බුදුගුණ අලංකාරය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2797	RG0062	බුදුගුණ අලංකාරය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2798	RG0063	මෙතේ බුදුගුණ අලංකාරය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2799	RG0064	ප්‍රත්‍ය ශතකය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2800	RG0065	පුරාණ නාමාවලිය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2801	RG0066	දොරකඩ අස්න	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2802	RG0067	කුවේණි අස්න හා සිහබා අස්න	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2803	RG0068	කුස ජාතක කාව්‍ය විවරණය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2804	RG0069	කුස ජාතක කාව්‍ය සංවර්ණනා 50 51 NA	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2805	RG0070	කුස ජාතක කාව්‍ය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2806	RG0071	ගංගාරෝහණ වර්ණනාව හා සන්නය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2807	RG0072	දඹදෙණි අස්න	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2808	RG0073	Parakumba siritha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2809	RG0074	Parakumba siritha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2810	RG0075	Parakumba siritha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2811	RG0076	Parakumba siritha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2812	RG0077	Daham Sonda Kawa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2813	RG0078	Ganga Rohana Vivaranaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2814	RG0079	Ganga Rohana warnanawa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2815	RG0080	පදාර්ථව්‍යාඛ්‍යන සහිත කව්සිළුමිණ PA 14 15 NA	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2816	RG0081	ගුත්තිල කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2817	RG0082	ගුත්තිල කාව්‍ය දිපනිය PA 86 87 120 121 124 125	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2818	RG0083	ගුත්තිල කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2819	RG0084	ගුත්තිල කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2820	RG0085	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 1 Edition	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2821	RG0086	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 2 Edition	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2822	RG0087	ධර්මප්‍රදීපිකාව මහාබෝධිවංශපරිකථා 4 Edition	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2823	RG0088	ධර්මප්‍රදීපිකා ග්‍රන්ථිපද විවරණය අවසාන භාගය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2824	RG0089	ධර්මප්‍රදීපිකා ග්‍රන්ථිපද විවරණය පළමු භාගය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2825	RA0039	සන්න සහිත දහම් ගැට මාලාව	\N	\N	24	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2826	RA0040	සන්න සහිත දහම් ගැටේ	\N	1887-01-01	20	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2827	RA0041	කර්ම විපාක	රිදියගම සුධම්මවාස හිමි	\N	108	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2828	RA0042	සුගතෝවාද සංග්‍රහව	\N	1900-01-01	14	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2829	RA0043	පද්‍යමධුව	හෙය්යන්තුදුවේ දේවමිත්ත හිමි	1887-01-01	58	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2830	RA0044	පාවචන න්‍යාය	මඩබාවිට ඤානාවාස හිමි	\N	102	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2831	RA0045	බුදුගුණ සන්නය	වැලිවිටියේ ධම්මරතන හිමි	1889-01-01	62	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2832	RA0046	රතනතත්යාලංකාරො	ඩී එම් සිල්වා	1901-01-01	15	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2833	RA0047	මාසඍතු ලක්ෂණය	හික්කඩුවේ ශ්‍රී සුමංගල හිමි	1874-01-01	50	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2834	RA0048	පරිත්රාණ ප්රශ්නය	බැලගම සුබෝදානන්ද හිමි	1910-01-01	63	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2835	RA0049	සාරාර්ථ සංග්රහව	වැලිවිට සරණංකර කේ. සුගුණසාර සහ ඒ. සෝමානන්ද	1913-01-01	511	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2836	RA0050	සංසාරය හා නිර්වාණය	පැලෑණේ වජිරඥාන හිමි	1940-01-01	14	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2837	RA0051	පුරාණ හිමගත වර්ණනාව හෙවත් ශ්රී පාද වන්දනා ගමන	\N	\N	20	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2838	RA0052	ශ්‍රී සද්ධර්ම ප්‍රදීප	එම් ඒ අමරසිංහ හිමි	1956-01-01	490	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2839	RA0053	නව අරහාදී බුදු ගුණ විභාගය	හෝමාගම සීලරතන හිමි/ ස්කන්ධවිභාගයේ කොටසකි	\N	50	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2840	RA0054	සංඛ්‍යා ධර්ම	වලතර සෝභිත හිමි	2009-01-01	142	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2842	RA0055	සංඛ්‍යා ධර්ම දීපිකා	බලපිටියේ විශුද්ධාලෝක හිමි	1951-01-01	289	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2843	RA0056	සද්ධර්ම සාරාර්ථ සංග්‍රහය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2844	RA0057	සද්ධර්ම සාරාර්ථ සංග්‍රහය	වැලිවිට සරණංකර හිමි	1957-01-01	570	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2845	RA0058	සද්ධර්මරත්නාකරය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2846	RA0059	සදහම් මග	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2847	RA0060	උපාසක ජිනාලන්කාරය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2848	RA0061	මිලින්ද ප්‍රශ්නය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2849	RA0062	මිලින්ද ප්‍රශ්නය	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2850	RA0063	මහා පිරිත් පොත	කිරිවත්තුඩුවේ පඤ්ඤාසාර හිමි	1954-01-01	358	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2851	RA0064	සන්න සහිත මහා පිරිත් පොත් වහන්සේ	දෙවුන්දර වාචිස්සර හිමි	\N	342	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2852	RA0065	ආර්ය ධර්ම	කුදාහිල්ලේ පඤ්ඤාරාම හිමි	1938-01-01	220	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2853	RA0066	සමීපාතීතයෙහි බෞද්ධාචාර්ය්යෝ	පොල්වත්තේ බුද්ධදත්ත හිමි	1905-01-01	249	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2854	RA0067	දහම් සරණ	වැන්දබෝනා	1931-01-01	453	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2855	RA0068	සමන්ත කූඨ වර්ණනා	වේදේහ මහා සාමි - ශ්රී සිධාර්ථ ධම්මානන්ද සහ මහගොඩ ශ්රී ඥානිස්සර	1910-01-01	244	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2856	RA0069	ථෙරවාද න්‍යාය	හෑගොඩ ඛේමානන්ද හිමි	1992-01-01	213	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2857	RA0070	ජයමංගල ගාථා	පි තුඩුවේ ගුණවර්ධන	1912-01-01	9	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2858	RA0071	තෙරුවන් මාලාව	ගිනිගත්පිටියේ හිමි	1893-01-01	20	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2859	RA0072	ප්‍රාතිහාර්ය ශතකය	\N	1864-01-01	74	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2860	RA0073	මුණිගුනාලංකාරය	මඩිහේ සිරි සුමිත්ත හිමි	1889-01-01	34	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2861	RA0074	සන්න සහිත දහම් ගැටය	ධර්මසෙන හිමි	1899-01-01	22	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2862	RA0075	විමතිවිච්ඡේදනී	\N	\N	205	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2863	\N	භික්ෂුණී පැවිද්ද	Bikku Analayo	2018-01-01	247	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	\N
2864	\N	තෙලෙස් ධුතාංග	කල්යානි යෝගාශ්‍රම	\N	8	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	\N
2865	\N	දලදා විස්තරය	කේ. ආර්. පී.	1892-01-01	9	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	\N
2617	S0293	අපදාන පාලි	පොල්වත්තේ සිරි බුද්දදත්ත හිමි	1930-01-01	516	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2871	RD0051	හිතෝපදේශ සන්නය	\N	1878-01-01	250	\N	Full	Archive.org	ඉපැරණි ග්‍රන්ථ	සංස්කෘත භාෂාව හා සාහිත්‍ය
2872	RJ0026	ආනාපානසති භාවනාව	මාතර ඥානාරාම හිමි	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
2873	RJ0027	මරණානුස්සති කම්මට්ඨානං	\N	\N	\N	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	භාවනා කමටහන්
2874	R0390	සප්ත විසුද්ධි කමටහන් භාවනා	මාතර ඥාණාරාම මාහිමි	\N	\N	\N	\N	\N	\N	\N
2875	R0391	\N	\N	\N	\N	\N	\N	\N	\N	\N
2876	R0392	\N	\N	\N	\N	\N	\N	\N	\N	\N
2877	R0393	\N	\N	\N	\N	\N	\N	\N	\N	\N
2878	R0394	\N	\N	\N	\N	\N	\N	\N	\N	\N
2879	R0395	\N	\N	\N	\N	\N	\N	\N	\N	\N
2880	R0396	\N	\N	\N	\N	\N	\N	\N	\N	\N
2881	R0397	\N	\N	\N	\N	\N	\N	\N	\N	\N
2882	R0398	\N	\N	\N	\N	\N	\N	\N	\N	\N
2883	R0399	\N	\N	\N	\N	\N	\N	\N	\N	\N
2884	R0400	\N	\N	\N	\N	\N	\N	\N	\N	\N
2885	RA0076	ත්‍රිපිටක පරීක්ෂණය	හිත්තැටියේ උදිත හිමි	1939-01-01	176	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2886	V0161	භික්ශු ශිලය	උඩුගම්පොල ස්වණ්ණඣොත්‍යසභ	1893-01-01	138	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2887	V0162	විනය අපට්චඡන්නභාව විනිශ්චය	පි එ පිරිස්	1892-01-01	30	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2888	V0163	ශ්‍රමණ දුශ්ශිල සරණාගමන විභාගය	පි එ පිරිස්	1892-01-01	20	Sinhala	Full	Daham Madura	විනය	භික්ෂු විනය
2889	\N	ධාතුරූපාවලිය හෙවත් ආඛ්‍යාත වරනැගිල්ල	\N	1886-01-01	57	\N	\N	\N	\N	\N
2890	\N	විදග්ධමුඛමණ්ඩන	සීලක්ඛන්ධ හිමි	1902-01-01	137	\N	\N	\N	\N	\N
2891	\N	අවදාන කල්පලතා	\N	1940-01-01	966	\N	\N	\N	\N	\N
2892	RA0077	දහම් ගැට	ගන්දර වීරසූරිය	1958-01-01	85	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	පැරණි ධර්ම ග්‍රන්ථ
2893	RC0015	කතිකාවත්සඟරා i NA Last 8 9 NA	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2894	RC0016	දළදා පූජාවලිය (1893)	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2620	S0296	ධම්මපදටඨකථා	සිරි ඤාණිස්සර හිමි	1933-01-01	700	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2628	S0304	ජාතක පාලි	නාරද හිමි	1944-01-01	360	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2895	RC0017	රසවාහිනී ග්_රන්ථිපදාර්ත්ථ විවරණය - සුමතිපාල හිමි සීලක්ඛන්ධ හිමි 1913	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2896	RC0018	රසවාහිනී ටීකා සාරත්ථ දීපිකා - සිද්ධාර්ථ හිමි 1907	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2897	RC0019	රසවාහිනී පාළි - සරණතිස්ස හිමි 1913	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2898	RC0020	රසවාහිනී	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2899	RC0021	සිංහල ථූපවංශය සිතියම් සහිත - 1955 ගලගම සරණංකර	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2900	RC0022	රාජාවලිය 1923 විරසිංහ	විරසිංහ	1923-01-01	104	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2901	RC0023	Dhathuwansha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2902	RC0024	Dalada Siritha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2903	RC0025	Bodhiwansha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2904	RC0026	සන්න සහිත සාසනවංසදීප	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2905	RC0027	SUBHODINI VHAYKYA NAM U HATTHVNGGLA VIHARAVANSA SNNAYA A	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2906	RC0028	ලෝකප්පදිපකසාරෝ	හබුරුගල පියරතන හිමි	1928-01-01	238	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2907	RC0029	Attanagalu viharawansa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2908	RC0030	BAUDDA RAJADANI PILIBADA THORATHURU NAM U PAHIYANGALAGE DESHATHNA VARTHAVA	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2909	RC0031	bauddha Sthupa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2910	RC0032	Buddha Bhumi Ithihasaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2911	RC0033	Buddha Chinthawe Ithihasaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2912	RC0034	Dalada Puda	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2913	RC0035	Dalada Puwatha	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2914	RC0036	Dipawansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2915	RC0037	DIPAVANSO SIHALA BASAMYANUVADA SAMUPETHO A	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2916	RC0038	Mahawansa Pali	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2917	RC0039	Mahawanso	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2918	RC0040	Mahawansa	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2919	RC0041	Manurajaniya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2920	RC0042	NIKAYA SANGRAHAWA OR SASANAWATARAYA	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2921	RC0043	Nithi Rathnawali	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2922	RC0044	ඉතිහාසයේ මුලාරම්භය 125	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2923	RC0045	සිංහල දේව පුරාණය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2924	RC0046	අත්තනගලු විහාර වංශය කවි	ඥානරතන සංශෝධනය	1897-01-01	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2925	RC0047	දලදා විස්තරය 1892 කේ. ආර්. පී.	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2926	RC0048	Sinhala Bodiwansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2927	RC0049	Sinhala basha Ithihasaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2928	RC0050	Sinhala Grantha wansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2929	RC0051	Sinhala Lekaka parapura	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2930	RC0052	Sinhala Mahawansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2931	RC0053	Sinhala Mahawansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2932	RC0054	Thupawansaya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	වංශ කථා හා ඉතිහාසය
2933	RF0004	සැළලිහිණි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2934	RF0005	සැළලිහිණි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2935	RF0006	සැළලිහිණි විවරණය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2936	RF0007	සැළලිහිණි සංදේශ වර්ණනාව	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2937	RF0008	සැළලිහිණි සංදේශ සාරාර්ථ වර්ණනාව	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2938	RF0009	සැළලිහිණි සංදේශ	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2939	RF0010	අෂ්ටනාරී සන්දේසය	ඇම්.ඩී. දාම්පි අප්පුහාමි	1910-01-01	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2940	RF0011	කිරල් සංදේශය	ඩි ඇස් අමරතුංග	1940-01-01	22	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2941	RF0012	ගිරා සංදේශ සන්නය	ජයතිලක අප්පුහාමි	1883-01-01	103	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2942	RF0013	හංස සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2943	RF0014	හංස සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2944	RF0015	සමනල සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2945	RF0016	sinhala sandesawaliya	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2946	RF0017	ඇටිකුකුළු සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2947	RF0018	කිරල් සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2948	RF0019	කෝකිල සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2949	RF0020	ගොන්කවඩි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2950	RF0021	තිසර සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2951	RF0022	දියසැවුල් සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2952	RF0023	දියසැවුල් සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2953	RF0024	නිලකොබෝ සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2954	RF0025	පරෙවි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2955	RF0026	පරෙවි සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2956	RF0027	මයුර සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2957	RF0028	මල්කවුඩු සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2958	RF0029	වනසැවුල් හස්න	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2959	RF0030	වලුකුරුළු සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2960	RF0031	සන්දෙස කථා	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2961	RF0032	සන්න සහිත අලුකොබෝ සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2962	RF0033	සන්න සහිත ගිරා සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2963	RF0034	සන්න සහිත රාමඤ්ඤ සංදේශය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සංදේශ
2964	RG0090	අමාරසය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2965	RG0091	භුරිදත්ත ජාතක කාව්‍ය‍ය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2966	RG0092	කන්ටහාල ජාතකය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2967	RG0093	කව්මිනි මල්දම	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2968	RG0094	සමනල හෑල්ල	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2969	RG0095	සත් බස් රුවන් හර	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2970	RG0096	සුභාශිත විවරනය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2971	RG0097	සුභාෂිතය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2972	RG0098	සුභාෂිතය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2973	RG0099	සුභාෂිතය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2974	RG0100	සුභාෂිතය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2975	RG0101	තෙරුවන් මාලාව	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2976	RG0102	කාව්‍යශේඛර මහා කාව්‍යය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2977	RG0103	බුදුගුණ අලංකාරය වලානේ සන්නය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2978	RG0104	බුදුගුණ අලංකාරය විවරණය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2979	RG0105	ලෝවැඩ සඟරාව	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2980	RG0106	සියබස් මල්දම	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2981	RG0107	සියබස් මල්දම	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2982	RG0108	සියබස් මල්දම	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2983	RG0109	සුභාෂිතය	\N	\N	\N	Sinhala	Full	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල සාහිත්‍ය
2984	RJ0028	සප්ත විසුද්ධි කමටහන් භාවනා	මාතර ඥාණාරාම මාහිමි	\N	\N	\N	\N	\N	\N	\N
2985	RJ0029	සතර කමටහන් භාවනා	නාඋයනේ මාහිමි	\N	\N	\N	\N	\N	\N	\N
2986	RL0045	sinhala-akshara-malawa-by-Rev.-G.-Vipula	\N	\N	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
2987	RL0046	සිංහල ව්යාකරණ පද නීතිය	වේරගම පුංචිබණ්ඩාර	1889-01-01	\N	\N	\N	National Library	ඉපැරණි ග්‍රන්ථ	සිංහල භාෂාව
2988	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2989	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2990	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2991	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2992	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2993	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2994	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2995	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2996	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2997	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2998	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2999	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
3000	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2637	S0313	ආලවක සුත්තං	තොටගමුවේ විමලඤාණතිස්ස හිමි	1951-01-01	70	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
1474	R0001	මහා වංශය පාලි	ධම්මවිචය ග්‍රන්ථ	\N	526	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1475	R0002	චුලවංශ ග්‍රන්ථ පාලි	ධම්මවිචය ග්‍රන්ථ	\N	23	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1476	R0003	සාසනවංසප්‍රදීපිකා	ධම්මවිචය ග්‍රන්ථ	\N	136	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1477	R0004	රසවාහිනී	ධම්මවිචය ග්‍රන්ථ	\N	145	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1478	R0005	සිමාවිශෝධනි	ධම්මවිචය ග්‍රන්ථ	\N	102	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1479	R0006	වෙස්සන්තරාගිති	ධම්මවිචය ග්‍රන්ථ	\N	91	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1480	R0007	මොග්ගල්ලාන වුත්තිවිවරණපංචිකා	ධම්මවිචය ග්‍රන්ථ	\N	155	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1481	R0008	ථූපවංස	ධම්මවිචය ග්‍රන්ථ	\N	93	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1482	R0009	ධාඨාවංස	ධම්මවිචය ග්‍රන්ථ	\N	59	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1483	R0010	ධතුපාටවිලාසිනි	ධම්මවිචය ග්‍රන්ථ	\N	7	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1484	R0011	ධාතුවංස	ධම්මවිචය ග්‍රන්ථ	\N	57	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1485	R0012	අත්තනගාලුවිහාරවංස	ධම්මවිචය ග්‍රන්ථ	\N	33	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1486	R0013	ජිනචරිතය	ධම්මවිචය ග්‍රන්ථ	\N	60	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1487	R0014	ජිනවංසදීපං	ධම්මවිචය ග්‍රන්ථ	\N	312	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1489	R0016	මිලින්දටීකා	ධම්මවිචය ග්‍රන්ථ	\N	88	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1490	R0017	පදමන්ජරි	ධම්මවිචය ග්‍රන්ථ	\N	81	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1491	R0018	පදසධනම්	ධම්මවිචය ග්‍රන්ථ	\N	79	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1492	R0019	සද්දබින්දුප්‍රකරණ	ධම්මවිචය ග්‍රන්ථ	\N	8	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1493	R0020	කච්චායනධාතුමංජුසා	ධම්මවිචය ග්‍රන්ථ	\N	22	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1494	R0021	සමන්තකුටවර්ණනා	ධම්මවිචය ග්‍රන්ථ	\N	101	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1495	R0022	නමක්කාර පාලි ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	152	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1496	R0023	බුදුගුණ ගාථාවලි	ධම්මවිචය ග්‍රන්ථ	\N	85	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1497	R0024	ජිනාලංකාර	ධම්මවිචය ග්‍රන්ථ	\N	35	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1498	R0025	චානක්‍යනීති පාලි	ධම්මවිචය ග්‍රන්ථ	\N	20	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1499	R0026	චතුරාරඛදිපනි	ධම්මවිචය ග්‍රන්ථ	\N	69	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1500	R0027	ධම්මනිති	ධම්මවිචය ග්‍රන්ථ	\N	47	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1501	R0028	කවිපදනීති	ධම්මවිචය ග්‍රන්ථ	\N	50	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1502	R0029	ලෝකනීති	ධම්මවිචය ග්‍රන්ථ	\N	31	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1503	R0030	මහාරහනීති	ධම්මවිචය ග්‍රන්ථ	\N	44	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1504	R0031	නරදක්ඛදිපනි	ධම්මවිචය ග්‍රන්ථ	\N	63	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1505	R0032	නිතිමන්ජරි	ධම්මවිචය ග්‍රන්ථ	\N	47	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1506	R0033	සුරස්සතිනීති	ධම්මවිචය ග්‍රන්ථ	\N	21	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1507	R0034	සුත්තන්තනීති	ධම්මවිචය ග්‍රන්ථ	\N	12	Sinhala	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2310	A0143	අභිධර්මචින්තාමණි (ප්‍රථම භාගය)	දෙවිනුවර ඤාණාවාස හිමි	1938-01-01	117	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2312	A0145	පරමාර්ථ විකාශනි (1, 2, 3)	වෑබඩ සංඝරතන හිමි	1942-01-01	583	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2317	A0150	කුශලත්‍රිකය	රත්මලානේ ධම්මාදාර හිමි	1905-01-01	32	Sinhala	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2451	B0027	විශුද්ධිමග්ග 02	ධම්මවිචය ග්‍රන්ථ	\N	323	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2648	S0324	නෙත්තිපපකරණං	දෙනිපිටියේ සුදස්සී හිමි	1923-01-01	160	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2652	S0328	ප්‍රවචනාථර්‍ චන්ද්‍රිකා ථේරීගාථා පාලි	ධර්මකීර්ති ශ්‍රී ධම්මානන්ද හිමි	1926-01-01	130	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2655	S0331	මජ්ජිම නිකායො පාඨමො භාගො	කිරිඇල්ලේ ඤාණවිමල හිමි	1946-01-01	350	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2656	S0331	මජ්ජිම නිකායො දුතියො භාගො	කිරිඇල්ලේ ඤාණවිමල හිමි	1946-01-01	292	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2657	S0331	මජ්ජිම නිකායො තතියො භාගො	කිරිඇල්ලේ ඤාණවිමල හිමි	1939-01-01	328	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2658	S0331	මජ්ඣිමනිකායො පාලි	කිරිඇල්ලේ ඤාණවිමල හිමි	1937-01-01	931	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2661	S0334	මහානාම සුත්තං	\N	\N	28	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2666	S0339	වත්ථුපම සුත්තං	\N	\N	36	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2676	S0349	සුමංගලවිලාසිනී නාමා දීඝනිකායට්ඨකථා	සරණංකර හිමි	1898-01-01	402	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2678	S0351	සුත්තසංගහ පාළි	ධිරානනද හිමි	\N	168	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2679	S0352	සුත්තසංගහට්ඨකථා	සිරිසුගතපාල හිමි	1928-01-01	252	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2680	S0353	සුත්තසංගහො	යු පි ඒකනායක	1935-01-01	158	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2682	S0355	මනොරථපුරණි නාමධෙය අංගොත්තරනිකායාර්ථ කථාව	රත්මලානේ ධර්මකිර්ති ශ්‍රී ධර්මාරාම හිමි	1922-01-01	862	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2751	S0424	උදානං	මුල්ලපිටිගම විජිතජෝති හිමි	1913-01-01	104	Pali	Full	Paramaththa	සූත්‍ර	වෙනත්
2229	V0104	පාරාජිකා පාළි	ධම්මවිචය ග්‍රන්ථ	\N	351	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2230	V0105	පාචිත්තිය පාළි	ධම්මවිචය ග්‍රන්ථ	\N	423	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2231	V0106	චුල්ලවග්ග පාළි	ධම්මවිචය ග්‍රන්ථ	\N	462	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2232	V0107	මහාවග්ග පාළි	ධම්මවිචය ග්‍රන්ථ	\N	560	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2233	V0108	පරිවාර පාළි	ධම්මවිචය ග්‍රන්ථ	\N	355	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2234	V0109	පාරාජිකා පාළි අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	615	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2452	B0028	විශුද්ධිමග්ග මහා ටීකා 01	ධම්මවිචය ග්‍රන්ථ	\N	407	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2453	B0029	විශුද්ධිමග්ග මහා ටීකා 02	ධම්මවිචය ග්‍රන්ථ	\N	468	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2454	B0030	විශුද්ධිමග්ග නිධාන	ධම්මවිචය ග්‍රන්ථ	\N	76	Sinhala	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2455	S0167	දීඝ නිකාය සීලක්ඛන්ධවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	206	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2456	S0168	දීඝ නිකාය මහා වග්ග	ධම්මවිචය ග්‍රන්ථ	\N	244	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2457	S0169	දීඝ නිකාය පාටිකවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	224	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2458	S0170	මජ්ජිම නිකාය මුලපන්නසක	ධම්මවිචය ග්‍රන්ථ	\N	358	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2459	S0171	මජ්ජිම නිකාය මජ්ජිමපන්නසක	ධම්මවිචය ග්‍රන්ථ	\N	369	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2460	S0172	මජ්ජිම නිකාය උපරිපන්නසක	ධම්මවිචය ග්‍රන්ථ	\N	303	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2461	S0173	සංයුක්ත නිකාය සගාථවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	241	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2462	S0174	සංයුක්ත නිකාය නිදානවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	212	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2463	S0175	සංයුක්ත නිකාය ඛන්ධවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	224	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2464	S0176	සංයුක්ත නිකාය සලායතනවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	303	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2465	S0177	සංයුක්ත නිකාය මහාවග්ග	ධම්මවිචය ග්‍රන්ථ	\N	388	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2466	S0178	අංගුත්තර නිකාය එකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	46	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2467	S0179	අංගුත්තර නිකාය දුකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	47	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2468	S0180	අංගුත්තර නිකාය තිකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	185	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2469	S0181	අංගුත්තර නිකාය චතුක්කනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	235	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2470	S0182	අංගුත්තර නිකාය පංචකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	212	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2471	S0183	අංගුත්තර නිකාය චක්කනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	128	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2472	S0184	අංගුත්තර නිකාය සත්තකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	105	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2473	S0185	අංගුත්තර නිකාය අට්ටකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	140	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2474	S0186	අංගුත්තර නිකාය නවකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	83	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2475	S0187	අංගුත්තර නිකාය දසකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	224	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2476	S0188	අංගුත්තර නිකාය එකාදසකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	41	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2477	S0189	ඛුද්දක නිකාය ඛුද්ධක පාඨ පාලි	ධම්මවිචය ග්‍රන්ථ	\N	15	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2478	S0190	ඛුද්දක නිකාය ධම්මපද පාලි	ධම්මවිචය ග්‍රන්ථ	\N	52	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2479	S0191	ඛුද්දක නිකාය උදාන පාලි	ධම්මවිචය ග්‍රන්ථ	\N	101	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2480	S0192	ඛුද්දක නිකාය ඉතිවුත්තක පාලි	ධම්මවිචය ග්‍රන්ථ	\N	76	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2481	S0193	ඛුද්දක නිකාය සුත්තනිපාත පාලි	ධම්මවිචය ග්‍රන්ථ	\N	160	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2482	S0194	ඛුද්දක නිකාය විමානවත්ථු පාලි	ධම්මවිචය ග්‍රන්ථ	\N	122	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2483	S0195	ඛුද්දක නිකාය පේතවත්ථු පාලි	ධම්මවිචය ග්‍රන්ථ	\N	96	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2484	S0196	ඛුද්දක නිකාය ථේරගාථා පාලි	ධම්මවිචය ග්‍රන්ථ	\N	174	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2485	S0197	ඛුද්දක නිකාය ථේරීගාථා පාලි	ධම්මවිචය ග්‍රන්ථ	\N	66	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2486	S0198	ඛුද්දක නිකාය අපදානපාලි 01	ධම්මවිචය ග්‍රන්ථ	\N	545	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2487	S0199	ඛුද්දක නිකාය අපදානපාලි 02	ධම්මවිචය ග්‍රන්ථ	\N	365	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2488	S0200	ඛුද්දක නිකාය බුද්ධවංස පාලි	ධම්මවිචය ග්‍රන්ථ	\N	109	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2489	S0201	ඛුද්දක නිකාය චරියාපිටක පාලි	ධම්මවිචය ග්‍රන්ථ	\N	44	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2490	S0202	ඛුද්දක නිකාය ජාතක පාලි 01	ධම්මවිචය ග්‍රන්ථ	\N	401	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2491	S0203	ඛුද්දක නිකාය ජාතක පාලි 02	ධම්මවිචය ග්‍රන්ථ	\N	416	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2492	S0204	ඛුද්දක නිකාය මහානිද්දෙස පාලි	ධම්මවිචය ග්‍රන්ථ	\N	351	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2493	S0205	ඛුද්දක නිකාය චුලනිද්දෙස පාලි	ධම්මවිචය ග්‍රන්ථ	\N	262	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2494	S0206	ඛුද්දක නිකාය පටිසම්භිධාමග්ග පාලි	ධම්මවිචය ග්‍රන්ථ	\N	372	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2495	S0207	ඛුද්දක නිකාය නෙත්තිප්‍රකරණ	ධම්මවිචය ග්‍රන්ථ	\N	147	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2496	S0208	ඛුද්දක නිකාය මිලින්දප්‍රශ්න	ධම්මවිචය ග්‍රන්ථ	\N	344	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2497	S0209	ඛුද්දක නිකාය පෙටකොපදෙස	ධම්මවිචය ග්‍රන්ථ	\N	149	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2498	S0210	දීඝ නිකාය සීලක්ඛන්ධවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	301	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2499	S0211	දීඝ නිකාය මහා වග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	366	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2500	S0212	දීඝ නිකාය පාටිකවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	227	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2501	S0213	මජ්ජිම නිකාය මුලපන්නසක අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	633	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2502	S0214	මජ්ජිම නිකාය මජ්ජිමපන්නසක අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	270	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2503	S0215	මජ්ජිම නිකාය උපරිපන්නසක අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	222	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2504	S0216	සංයුක්ත නිකාය සගාථවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	294	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2505	S0217	සංයුක්ත නිකාය නිදානවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	212	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2506	S0218	සංයුක්ත නිකාය ඛන්ධවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	92	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1855	P0083	මුඛමත්තදීපනී (සන්න සහිත)	\N	\N	527	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2507	S0219	සංයුක්ත නිකාය සලායතනවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	142	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2508	S0220	සංයුක්ත නිකාය මහාවග්ග අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	176	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2509	S0221	අංගුත්තර නිකාය අට්ටකථා එකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	360	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2510	S0222	අංගුත්තර නිකාය අට්ටකථා දුක තික චතුක්ක නිපාත	ධම්මවිචය ග්‍රන්ථ	\N	358	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2511	S0223	අංගුත්තර නිකාය අට්ටකථා පංචක චක්ක සත්තකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	184	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2512	S0224	අංගුත්තර නිකාය අට්ටකථා නවක දසක එකාදසක නිපාත	ධම්මවිචය ග්‍රන්ථ	\N	159	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2513	S0225	ඛුද්දක නිකාය ඛුද්ධක පාඨ අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	197	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2514	S0226	ඛුද්දක නිකාය ධම්මපද අට්ටකථා 01	ධම්මවිචය ග්‍රන්ථ	\N	374	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2515	S0227	ඛුද්දක නිකාය ධම්මපද අට්ටකථා 02	ධම්මවිචය ග්‍රන්ථ	\N	387	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2516	S0228	ඛුද්දක නිකාය උදාන අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	330	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2517	S0229	ඛුද්දක නිකාය ඉතිවුත්තක අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	301	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2518	S0230	ඛුද්දක නිකාය සුත්තනිපාත අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	528	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2519	S0231	ඛුද්දක නිකාය විමානවත්ථු අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	284	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2520	S0232	ඛුද්දක නිකාය පේතවත්ථු අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	231	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2521	S0233	ඛුද්දක නිකාය ථේරගාථා අට්ටකථා 01	ධම්මවිචය ග්‍රන්ථ	\N	404	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2522	S0234	ඛුද්දක නිකාය ථේරගාථා අට්ටකථා 02	ධම්මවිචය ග්‍රන්ථ	\N	483	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2523	S0235	ඛුද්දක නිකාය ථේරීගාථා අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	279	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2524	S0236	ඛුද්දක නිකාය අපදාන අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	547	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2525	S0237	ඛුද්දක නිකාය බුද්ධවංස අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	318	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2526	S0238	ඛුද්දක නිකාය චරියාපිටක අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	281	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2527	S0239	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 01	ධම්මවිචය ග්‍රන්ථ	\N	448	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2528	S0240	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 02	ධම්මවිචය ග්‍රන්ථ	\N	346	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2529	S0241	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 03	ධම්මවිචය ග්‍රන්ථ	\N	441	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2530	S0242	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 04	ධම්මවිචය ග්‍රන්ථ	\N	427	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2531	S0243	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 05	ධම්මවිචය ග්‍රන්ථ	\N	477	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2532	S0244	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 06	ධම්මවිචය ග්‍රන්ථ	\N	287	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2533	S0245	ඛුද්දක නිකාය ජාතක පාලි අට්ටකථා 07	ධම්මවිචය ග්‍රන්ථ	\N	353	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2534	S0246	ඛුද්දක නිකාය මහානිද්දෙස අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	374	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2535	S0247	ඛුද්දක නිකාය චුලනිද්දෙස අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	123	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2536	S0248	ඛුද්දක නිකාය පටිසම්භිධාමග්ග අට්ටකථා 01	ධම්මවිචය ග්‍රන්ථ	\N	328	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2537	S0249	ඛුද්දක නිකාය පටිසම්භිධාමග්ග අට්ටකථා 02	ධම්මවිචය ග්‍රන්ථ	\N	244	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2538	S0250	ඛුද්දක නිකාය නෙත්තිප්‍රකරණ අට්ටකථා	ධම්මවිචය ග්‍රන්ථ	\N	240	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2539	S0251	දීඝ නිකාය සීලක්ඛන්ධවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	339	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2540	S0252	දීඝ නිකාය මහා වග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	308	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2541	S0253	දීඝ නිකාය පාටිකවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	247	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2542	S0254	දීඝ නිකාය සීලක්ඛන්ධවග්ග අභිනව ටීකා 01	ධම්මවිචය ග්‍රන්ථ	\N	419	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2543	S0255	දීඝ නිකාය සීලක්ඛන්ධවග්ග අභිනව ටීකා 02	ධම්මවිචය ග්‍රන්ථ	\N	366	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2544	S0256	මජ්ජිම නිකාය මුලපන්නසක ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	598	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2545	S0257	මජ්ජිම නිකාය මජ්ජිමපන්නසක ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	176	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2546	S0258	මජ්ජිම නිකාය උපරිපන්නසක ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	204	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2547	S0259	සංයුක්ත නිකාය සගාථවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	286	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2548	S0260	සංයුක්ත නිකාය නිදානවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	170	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2549	S0261	සංයුක්ත නිකාය ඛන්ධවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	71	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2550	S0262	සංයුක්ත නිකාය සලායතනවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	93	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2551	S0263	සංයුක්ත නිකාය මහාවග්ග ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	141	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2552	S0264	අංගුත්තර නිකාය ටීකා එකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	247	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2553	S0265	අංගුත්තර නිකාය ටීකා දුක තික චතුක්ක නිපාත	ධම්මවිචය ග්‍රන්ථ	\N	328	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2554	S0266	අංගුත්තර නිකාය ටීකා පංචක චක්ක සත්තකනිපාත	ධම්මවිචය ග්‍රන්ථ	\N	169	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2555	S0267	අංගුත්තර නිකාය ටීකා අට්ටක නවක දසක එකාදසක නිපාත	ධම්මවිචය ග්‍රන්ථ	\N	143	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2556	S0268	නෙත්තිප්‍රකරණ ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	132	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2557	S0269	නෙත්තිවිභාවිනි	ධම්මවිචය ග්‍රන්ථ	\N	310	Sinhala	Full	Na Uyana	සූත්‍ර	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1704	RI0001	ත්‍රිපිටක සූචිය	පොල්වත්තේ බුද්ධදත්ත හිමි	1953-01-01	285	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1705	RI0002	ත්‍රිපිටක සූචිය රන්පියවර	මකුලුදුවේ අමිත හිමි	\N	530	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1706	RI0003	බුද්ධ ජයන්ති ත්‍රිපිටක අර්ථ කෝෂය	BCC	\N	\N	Sinhala	Full	My Library	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1707	RI0004	බුද්ධ ජයන්ති ත්‍රිපිටක සූත්‍ර සුචිය	BCC	\N	129	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1708	RI0005	සූත්‍රධර්ම නාමාවලිය	\N	\N	201	Sinhala	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
2235	V0110	පාචිත්තිය පාළි අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	214	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2236	V0111	චුල්ලවග්ග පාළි අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	126	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2237	V0112	මහාවග්ග පාළි අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	186	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2238	V0113	පරිවාර පාළි අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	115	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2239	V0114	සාරාර්ථදීපානි ටිකාව 01	ධම්මවිචය ග්‍රන්ථ	\N	394	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2240	V0115	සාරාර්ථදීපානි ටිකාව 02	ධම්මවිචය ග්‍රන්ථ	\N	396	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2241	V0116	සාරාර්ථදීපානි ටිකාව 03	ධම්මවිචය ග්‍රන්ථ	\N	476	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2242	V0117	වජිරබුද්ධි ටිකාව	ධම්මවිචය ග්‍රන්ථ	\N	630	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2243	V0118	විමතිවිනෝදනී ටිකාව	ධම්මවිචය ග්‍රන්ථ	\N	654	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2244	V0119	ද්වෙමතික පාලි ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	316	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2245	V0120	කංඛාවිතරණි පුරාණ ටිකාව	ධම්මවිචය ග්‍රන්ථ	\N	106	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2246	V0121	කංඛාවිතරණි අභිනව ටිකාව	ධම්මවිචය ග්‍රන්ථ	\N	320	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2247	V0122	විනයාලංකාර ටිකාව	ධම්මවිචය ග්‍රන්ථ	\N	591	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2248	V0123	ඛුද්දක සිඛා- මූල සික්ඛා	ධම්මවිචය ග්‍රන්ථ	\N	364	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2249	V0124	විනයසංග්‍රහ අට්ටකතා	ධම්මවිචය ග්‍රන්ථ	\N	394	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2250	V0125	විනය විනිශ්චය ටිකා	ධම්මවිචය ග්‍රන්ථ	\N	729	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2251	V0126	විනය විනිශ්චය- උත්තර විනිශ්චය	ධම්මවිචය ග්‍රන්ථ	\N	429	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2252	V0127	පාචිත්‍යාදී යෝජනා	ධම්මවිචය ග්‍රන්ථ	\N	526	Pali	Full	Na Uyana	විනය	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2263	A0097	ධම්මසංගණී ප්‍රකරණය - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	281	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2264	A0098	විභංග ප්‍රකරණය - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	446	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2265	A0099	ධාතුකථාප්‍රකරණය - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	90	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2266	A0100	පුග්ගල පඤ්ඤත්ති ප්‍රකරණ - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	80	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2267	A0101	කථාවත්ථු ප්‍රකරණය - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	445	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2268	A0102	යමක ප්‍රකරණ 1 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	364	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2269	A0103	යමක ප්‍රකරණ 2 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	365	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2270	A0104	යමක ප්‍රකරණ 3- අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	459	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2271	A0105	පට්ඨාන ප්‍රකරණ 1 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	451	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2272	A0106	පට්ඨාන ප්‍රකරණ 2 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	494	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2273	A0107	පට්ඨාන ප්‍රකරණ 3 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	594	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2274	A0108	පට්ඨාන ප්‍රකරණ 4 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	627	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2275	A0109	පට්ඨාන ප්‍රකරණ 5 - අභිධම්ම	ධම්මවිචය ග්‍රන්ථ	\N	399	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2287	A0121	අභිධම්මාවතාර	ධම්මවිචය ග්‍රන්ථ	\N	562	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2288	A0122	අභිධම්මාවතාර පුරාන ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	545	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2289	A0123	මෝහවිච්චේදනී (චෝලිය කස්සප ථේර)	ධම්මවිචය ග්‍රන්ථ	\N	347	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2291	A0125	නිරුත්ති දිපනිය (පරමත්ථදිපනිය ටිකාව)	ධම්මවිචය ග්‍රන්ථ	\N	377	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2292	A0126	පට්ඨානඋද්දේසදිපනිය	ධම්මවිචය ග්‍රන්ථ	\N	47	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2293	A0127	අනුදිපනි පාඨ	ධම්මවිචය ග්‍රන්ථ	\N	242	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1741	S0031	ජාතක පාළි 5 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
2841	B0026	විශුද්ධිමග්ග 01	ධම්මවිචය ග්‍රන්ථ	\N	324	Pali	Full	Na Uyana	ධර්ම සංග්‍රහ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2061	RK0001	පාලි-සිංහල ශබ්දකෝෂය	මඩිතියවෙල සිරි සුමංගල හිමි	1965-01-01	545	Pali	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	සුචි / ශබ්ධකෝෂ
1714	S0004	මජ්ඣිම නිකාය 2 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1715	S0005	මජ්ඣිම නිකාය 3 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1716	S0006	මජ්ඣිම නිකාය 4 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1717	S0007	සංයුත්ත නිකාය 1 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1718	S0008	සංයුත්ත නිකාය 2 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1719	S0009	සංයුත්ත නිකාය 3 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1720	S0010	අංගුත්තර නිකාය 1 -අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1721	S0011	අංගුත්තර නිකාය 2 -අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1722	S0012	ඛුද්දක පාඨ - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1723	S0013	ධම්මපද අටුවාව 01 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1724	S0014	ධම්මපද අටුවාව 02 අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1725	S0015	උදානපාළි අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1726	S0016	ඉතිවුත්තක අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1727	S0017	සුත්ත නිපාත අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1728	S0018	විමානවත්ථු අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1729	S0019	පේතවත්ථු අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1730	S0020	ථේරගාථා අටුවාව - පාළි 1	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1731	S0021	ථේරගාථා අටුවාව - පාළි 2	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1732	S0022	ථෙරිගාථා අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1733	S0023	ආපදානපාලි අටුවාව - පාළි 01	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1734	S0024	ආපදානපාලි අටුවාව - පාළි 02	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1736	S0026	චරියාපිටක අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1710	RI0007	අට්ටකතා සුචි - දෙවන භාගය	කොස්ගොඩ සිරි සුමේධ හිමි	1950-01-01	228	Pali	Full	Na Uyana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1765	P0006	කථාසල්ලාපසික්ඛා හෙවත් පාළි කථා පුහුණුව	බුරුමයේ ජනකාභිවංස හිමි	\N	186	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1767	P0008	පාලිභාෂාවතරණය 2	පොල්වත්තේ බුද්ධදත්ත හිමි	2007-01-01	239	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1808	P0041	පදසාධනය	පියදස්සි හිමි	1905-01-01	210	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1828	P0060	බාලාවතාරො	ඒ සාරානන්ද හිමි	1901-01-01	100	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1737	S0027	ජාතක පාළි 1 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1738	S0028	ජාතක පාළි 2 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1739	S0029	ජාතක පාළි 3 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1740	S0030	ජාතක පාළි 4 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1768	P0009	පාලිභාෂාවතරණය 3	පොල්වත්තේ බුද්ධදත්ත හිමි	2007-01-01	232	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1769	P0010	පාලිභාෂාව	වේරගොඩ අමරමෝලි හිමි	1995-01-01	250	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1770	P0011	පාලිභාෂාවතරණයතුර	මලලගම සුමනනන්ද හිමි	1948-01-01	71	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1771	P0012	පාළිපාඨාවලී	පොල්වත්තේ බුද්ධදත්ත හිමි	2008-01-01	142	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1772	P0013	පාළිපාඨාවලී	පොල්වත්තේ බුද්ධදත්ත හිමි	2008-01-01	136	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1777	P0018	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 01 Edition	වස්කඩුවේ සුභූති හිමි	1883-01-01	381	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1778	P0018	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 02 Edition	වස්කඩුවේ සුභූති හිමි	1883-01-01	384	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1779	P0018	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 03 Edition	වස්කඩුවේ සුභූති හිමි	1900-01-01	288	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1780	P0018	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 05;01 Edition	වස්කඩුවේ සුභූති හිමි	1900-01-01	283	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1781	P0018	අභිධානප්පදීපිකා හෙවත් පාලිනිඝණ්ඩු 01; 02 Edition	වස්කඩුවේ සුභූති හිමි	1900-01-01	284	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1782	P0019	කාත්‍යායන ෂඩාකාර වර්‍ණණනාව	නැබොඩ සීලරතන හිමි/ උරුගොඩ ඤානිස්සර හිමි	1928-01-01	72	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2349	P0133	පද භෙදය	වැලිතොට ඤාණතිලක හිමි	1895-01-01	40	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2350	P0134	පාලි නාමපද මාලාව හා ආඛ්‍යාත පදමාලාව	මොරගල්ලේ ඤාණෝභාස හිමි	1936-01-01	96	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2351	P0135	බාලාවතාර සංග්‍රහය 1st Edition	සිටිනාමළුවේ ධම්මජෝති හිමි	1889-01-01	136	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2352	P0135	බාලාවතාර සංග්‍රහය 2nd Edition	සිටිනාමළුවේ ධම්මජෝති හිමි	1913-01-01	164	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2353	P0136	සද්දත්‍ථ භෙද චින්තා	සිරිධම්ම හිමි	1901-01-01	36	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2867	P0153	සුබෝධාලංකාරො ලංකානන්ද ව්‍යාඛ්‍යාව	\N	\N	\N	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2868	P0154	Balawathara Vivaranaya	\N	\N	\N	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1796	P0030	කච්චායනව්‍යාකරණං	ගුණරතන හිමි	1886-01-01	148	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1797	P0031	කච්චායනව්‍යාකරණං	ගුණරතන හිමි	1913-01-01	146	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1798	P0032	කච්චායන භෙදො	මාතර ධම්මවංශ හිමි ලද්දුව සෝමරත්න හිමි	1906-01-01	162	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1799	P0033	භාවාර්ථ කෞමුදී කාත්‍යායනභෙද වර්ණනාව	පාරුතොට ධම්මාරාම හිමි	\N	60	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1800	P0034	කච්චායන භෙදො	\N	1886-01-01	22	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1813	P0046	පාලිවාක්‍යවිවේචනය	පොල්වත්තේ බුද්ධදත්ත හිමි	1933-01-01	112	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1817	P0050	පාලිවාක්‍යරචනාව සහ පරිවර්තනපරිචය	පොල්වත්තේ බුද්ධදත්ත හිමි	1947-01-01	136	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1818	P0051	පාවචනොපායනී මාගධීපණ්ණිකා (ප්‍රථම - ද්විතීය භාගය)	විලේගොඩ ධම්මානන්ද හිමි	1912-01-01	252	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1820	P0053	පාළිපාඨ මඤ්ජරී නවීන භාගය	කහඳාමෝදර පියරතන හිමි	1980-01-01	68	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1824	P0056	බාලාවතාර පුච්ඡාවිස්සජ්ජනං	කේ ජෝතිරතන හිමි	1915-01-01	422	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1825	P0057	බාලාවතාර ටීකා	උත්තම මංගල බුද්ධඝෝෂ හිමි	1901-01-01	74	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2311	A0144	අභිධම්මත්‍ථසංගහසංඛේපවන්නනා	ඇම් ධර්මරත්න මයා	1899-01-01	60	Pali	Full	Daham Madura	අභිධර්ම	අභිධර්ම
2320	P0104	මොග්ගල්ලාන ව්‍යකරනං	ධම්මවිචය ග්‍රන්ථ	\N	220	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2321	P0105	කච්චායන ව්‍යකරනං	ධම්මවිචය ග්‍රන්ථ	\N	209	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2324	P0108	පදරුපසිද්ධි	ධම්මවිචය ග්‍රන්ථ	\N	334	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1826	P0058	සන්න සහිත නාමපද මාලාව සහ ආඛ්‍යාතපද මාලාව	\N	1907-01-01	80	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1829	P0061	බාලාවතාරො	ධම්මකිත්ති ධම්මාරාම හිමි	1902-01-01	94	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1830	P0062	බාලාවතාර ව්‍යාඛ්‍යා - බාලාවබොධිනී - (2)	\N	\N	199	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1831	P0063	සත්‍යාවතාරය	කේ එස් කිර්තිරතන හිමි	1903-01-01	28	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1861	P0089	සුබෝධාලංකාරය	දොඩම්දුවේ ධර්මසේන හිමි	1910-01-01	212	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1840	P0070	බාලාවතාර බලනසන්නය	එල්ලාවල සංකිච්ච හිමි	1899-01-01	206	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1835	P0066	බාලාවතාර ගඩලාදෙනි සන්නය	\N	1917-01-01	202	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1865	P0093	විභත්තිකථා	වාරන විහාරවාසි පඤ්ඤානන්ද හිමි	1905-01-01	42	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1866	P0094	සන්න සහිත ශබ්ධසාරාත්‍ථර්‍ ජාලිනිය	සීලක්ඛන්ධ හිමි	1900-01-01	140	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1867	P0095	සන්න සහිත ශබ්ධසාරාත්‍ථර්‍ ජාලිනිය	සීලානන්ද හිමි	1902-01-01	182	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1868	P0096	සන්ධිදීපනී 1st Edition	යෝගියානේ නන්දාරාමතිස්ස හිමි	1886-01-01	102	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1869	P0096	සන්ධිදීපනී 2nd Edition	යෝගියානේ නන්දාරාමතිස්ස හිමි	1921-01-01	104	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1870	P0097	සුබෝධාලංකාරො	ඒ බි පෙරේරා	1897-01-01	30	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1871	P0098	සන්න සහිත සම්බන්ධචින්තා	කළුතර සාරානන්ද හිමි/ ආරණ්‍යවාසී ගෝතම හිමි	1891-01-01	112	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1872	P0099	සුධීරමුඛමණ්ඩනං - පාලිසමාසචක්කං	රතනජෝති හිමි	1910-01-01	47	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1873	P0100	සුබෝධාලංකාරය - පුරාතන සන්න සහිත	උදම්මිට ධම්මරක්ඛිත හිමි	1910-01-01	233	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1874	P0101	සම්බන්ධ චින්තා	කළුතර සාරානන්ද හිමි/ ආරණ්‍යවාසී ගෝතම හිමි	1891-01-01	30	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2344	P0128	වච්චවාචකය	වැලිතොට ඤාණතිලක හිමි	1899-01-01	58	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2354	P0137	පාලි පදමාලාව - ප්‍රථම භාගය	ජේ ඩබ් පවුලස් ද සිල්වා	1970-01-01	128	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2355	P0138	විභත්‍යත්‍ථය	වැලිතොට ඤාණතිලක හිමි	1905-01-01	44	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2356	P0139	රූපභෙදපපකාසිනිය	වැලිතොට ඤාණතිලක හිමි	1907-01-01	52	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2357	P0140	පාලි ව්‍යාකරණොදය	යටලමත්තේ සරණංකර හිමි	1926-01-01	132	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2358	P0141	පාළි පදමාලාව හෙවත් පාළි වරනැගිල්ල	චන්ද්‍රකිර්ති ශ්‍රී පියරතන හිමි	1935-01-01	118	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2359	P0142	රූපමාලා වණණනා අථවා විභතත්‍යත්‍ථපපකාසිනී 2 nd Editions	ගිරිදර ශ්‍රී බුද්ධරක්ඛිත හිමි	1924-01-01	72	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2360	P0142	රූපමාලා වණණනා අථවා විභතත්‍යත්‍ථපපකාසිනී 1st Edition	එම් සුනන්ද හිමි	1873-01-01	74	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2361	P0143	ආඛ්‍යාත ව්‍යාඛ්‍යා	හිරිපිටියේ සාසනවංස හිමි	1922-01-01	26	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2362	P0144	නිපාතරතනාකරො	ගුණානන්ද හිමි	1931-01-01	142	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2363	P0145	කච්චායන ධාතු මඤ්ජූසාව	සිලවංස හිමි	1872-01-01	74	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2364	P0146	පදසාධනං	ධම්මකිර්ති ශ්‍රී ධම්මානන්ද හිමි	1932-01-01	104	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2365	P0147	පාලි-සිංහල අකාරාදිය, ප්‍රථම භාගය	බොරුග්ගමුවේ ශ්‍රී රේවත හිමි	1931-01-01	148	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2366	P0148	ධාතුරූප රත්නාවලී	අම්බලන්ගොඩ කුසලධම්ම හිමි	1930-01-01	252	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2367	P0149	දිඨන්තරතනාවලී	විදුරුපොල පියතිස්ස හිමි	1926-01-01	62	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2368	P0150	මහා නෙක්ඛම්මචම්පූ	විදුරුපොල පියතිස්ස හිමි	1935-01-01	100	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2369	P0151	සම්මොහනාසනී	කෝදාගොඩ උපසේන හිමි	1911-01-01	58	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2870	P0156	පදරූපසිද්ධි	\N	\N	335	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2322	P0106	සද්දනිතිප්‍රකරණ (පදමාලා)	ධම්මවිචය ග්‍රන්ථ	\N	296	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2323	P0107	සද්දනිතිප්‍රකරණ (ධාතුමාලා)	ධම්මවිචය ග්‍රන්ථ	\N	287	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2325	P0109	මොග්ගල්ලානපංචිකා ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	257	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2326	P0110	පයෝගසිද්ධිපාඨ	ධම්මවිචය ග්‍රන්ථ	\N	226	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2327	P0111	වුත්තෝදයපාඨ	ධම්මවිචය ග්‍රන්ථ	\N	18	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2328	P0112	අභිධනප්‍රදිපිකා පාඨ	ධම්මවිචය ග්‍රන්ථ	\N	135	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2329	P0113	අභිධනප්‍රදිප්කා ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	326	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2330	P0114	සුබෝධාලංකාර පාඨ	ධම්මවිචය ග්‍රන්ථ	\N	53	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2331	P0115	සුබෝධාලංකාර ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	276	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2332	P0116	බාලාවතාර	ධම්මවිචය ග්‍රන්ථ	\N	55	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1785	P0022	සන්න සහිත කච්චායන ධාතු මඤ්ජූසාව	ධම්මසිරි හිමි	\N	54	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1787	P0024	එකක්ඛර කෝසය	වැලිතොට ඤාණතිලකතිස්ස හිමි	1886-01-01	122	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1793	P0028	කච්චායනවණණනා	බුස්සේගම පඤ්ඤාලංකාර හිමි හා හික්කඩුවේ සුමනසාර හිමි	1905-01-01	506	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1794	P0028	කච්චායනවණණනා	බුස්සේගම පඤ්ඤාලංකාර හිමි හා හික්කඩුවේ සුමනසාර හිමි	1905-01-01	491	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1806	P0039	නාම මාලා	වස්කඩුවේ ශ්‍රී සුභූති හිමි	1965-01-01	415	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1807	P0040	පදසාධන සන්නය	ශ්‍රී ධම්මානන්ද	1932-01-01	366	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1814	P0047	පාලි පදාවතාරය	වැලිවිටියේ සෝරත හිමි	1937-01-01	127	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1815	P0048	පාළි නාමපද මාලාව සහ ආඛ්‍යාත නාමපද මාලාව	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	1948-01-01	84	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1816	P0049	ආඛ්‍යාත පදය	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	1889-01-01	62	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1819	P0052	බාලපපබොධනං	ධම්මරතන හිමි	1887-01-01	60	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1821	P0054	ශ්‍රීඃ බාලාවබොධනය	දිඹුලාගල මහා කාශ්යප - සීලක්ඛන්ධ හිමි	1924-01-01	426	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1822	P0055	බාලාවතාරො - සුබොධිකාය ටීකාය 1st Edition	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	1892-01-01	350	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1823	P0055	බාලාවතාරො - සුබොධිකාය ටීකාය 2nd Edition	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	1913-01-01	344	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1827	P0059	බාලාවතාරො	\N	\N	86	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1832	P0064	තත්ව දීපිකා නම් වූ බාලාවතාර වර්‍ණණනාව - 1st Edition	යගිරල පඤ්ඤානන්ද හිමි	1928-01-01	662	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1836	P0067	ගඩලාදෙණි සන්නයයි	හික්කඩුවේ ශ්‍රී සුමංගල නා හිමි	1877-01-01	210	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1838	P0069	බාලාවතාර සූත්‍ර නිර්‍දෙදශය 1st Edition	බටුවන්තුඩාවේ පඬිතුමා	1986-01-01	112	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1839	P0069	බාලාවතාර සූත්‍ර නිර්‍දෙදශය 2nd Edition	බටුවන්තුඩාවේ පඬිතුමා	1915-01-01	94	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1842	P0071	ඔකොඳපොල සන්නය හෙවත් බාලාවතාර ලියන සන්නය	බටුවන්තුඩාවේ පඬිතුමා	1888-01-01	150	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1843	P0072	ඔකඳපොල සන්නය නමින් ප්‍රසිද්ධ බාලාවතාර ලියන සන්නය	බද්දේගම ශ්‍රී කිර්තිරතන හිමි	1927-01-01	144	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1848	P0077	මහාරූපසිද්ධි ටීකා	තංගල්ලේ පාලිත හිමි	1903-01-01	138	Pali	partial	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1850	P0078	මහාරූපසිද්ධි සන්නය 2nd Edition	බද්දේගම ධම්මරතන හිමි	1926-01-01	460	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1851	P0079	මහාරූපසිද්ධි සන්නය	දෙහිගස්පේ පඤ්ඤාසාර හිමි	1927-01-01	504	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1852	P0080	මහාසදදනීතිපපකරණං	අරුග්ගොඩ සීලානන්ද හිමි	1909-01-01	920	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1858	P0086	මොග්ගල්ලානව්‍යාකරණ විරිතසන්‍යය	ධම්මකිත්ති සිරි ධම්මනනද හිමි	1927-01-01	448	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1859	P0087	මොග්ගල්ලානණ්වාදිවුත්ති	ධම්මකිත්ති සිරි ධම්මනනද හිමි	1929-01-01	114	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1862	P0090	කචචායන ඡබබිධ සුතතවණණනා	වීරගල ඉන්ද්‍රජෝති හිමි	1928-01-01	102	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
1864	P0092	වාචකොපදේශය	වැලිතොට ඤාණතිලක හිමි	1902-01-01	78	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2340	P0124	ධාත්වත්ව දීපනි	හිඟුල්වල ජිනරතන හිමි	1895-01-01	200	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2345	P0129	නාමිකසද්දමාලා	වැලිතොට ඤාණතිලක හිමි	1899-01-01	54	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2346	P0130	සන්න සහිත බාලප්පබෝධනය	සුධම්මාලංකාර හිමි	1913-01-01	168	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2347	P0131	කාරිකාව	වැලිතොට ඤාණතිලක හිමි	1897-01-01	162	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2348	P0132	සන්න සහිත ශබ්ධබිංදුව	මුල්ලේරියාවේ විපුලසාර හිමි	1888-01-01	46	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2592	V0154	කඞඛාවිතරණී නාම පාතිමොක්ඛ වණණනා.	කාලවිල ඉන්ද්‍රරතන හිමි	1930-01-01	252	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
2594	V0156	සික්ඛාපද වලඤජන	වෑකඩ පඤ්ඤානන්ද හිමි	1901-01-01	116	Pali	Full	Daham Madura	විනය	භික්ෂු විනය
2869	P0155	පදරූපසිද්ධි සහ රූපසිද්ධිටීකා (ටීකාසහිත)	කුණ්ඩසාලේ අරනගවෙසි හිමි	\N	487	Pali	Full	Path Nirwana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2866	P0152	Payoga Siddi	\N	\N	\N	Pali	Full	Na Uyana	පාලි ව්‍යාකරණ ග්‍රන්ථ	පාලි භාෂාව
2276	A0110	අත්තසාලිනි ධම්මසඞ්ගණි අටුවාව	ධම්මවිචය ග්‍රන්ථ	\N	394	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2277	A0111	පංචප්පකරණ අටුවාව	ධම්මවිචය ග්‍රන්ථ	\N	438	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2278	A0112	විභංග අටුවාව	ධම්මවිචය ග්‍රන්ථ	\N	445	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2279	A0113	ධම්මසංගිනි මුලටිකා	ධම්මවිචය ග්‍රන්ථ	\N	187	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2280	A0114	ධම්මසංගිනි අනුටිකා	ධම්මවිචය ග්‍රන්ථ	\N	194	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2281	A0115	විභංගමුලටීකා	ධම්මවිචය ග්‍රන්ථ	\N	175	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2282	A0116	විභංග අනුටිකා	ධම්මවිචය ග්‍රන්ථ	\N	216	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2283	A0117	පන්චප්‍රකරන මුලටිකා	ධම්මවිචය ග්‍රන්ථ	\N	179	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2284	A0118	පන්චප්‍රකරන අනුටිකා	ධම්මවිචය ග්‍රන්ථ	\N	287	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2285	A0119	අභිධම්ම මාතිකා ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	94	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
2286	A0120	අභිධම්මත්ත විභාවිනි ටීකා	ධම්මවිචය ග්‍රන්ථ	\N	213	Pali	Full	Na Uyana	අභිධර්ම	ඡට්ට සංගායන ග්‍රන්ථ (පාලි)
1709	RI0006	අට්ටකතා සුචි - ප්‍රථම භාගය	කොස්ගොඩ සිරි සුමේධ හිමි	1950-01-01	342	Pali	Full	Path Nirwana	ඉපැරණි ග්‍රන්ථ	ත්‍රිපිටක සුචි
1742	S0032	ජාතක පාළි 6 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1743	S0033	ජාතක පාළි 7 - අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1744	S0034	මහා නිද්දේස පාළි අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1745	S0035	චූල නිද්දේස පාළි අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1746	S0036	පටිසම්භිදාමග්ගප්පකරණ අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1747	S0037	නෙත්තිප්පකරණ අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1748	S0038	සුත්තසංගහ අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1749	S0039	චතුභාණවාර අටුවාව - පාළි	හේවාවිතාරණ අටුවා	\N	\N	Pali	Full	Path Nirwana	සූත්‍ර	පාලි අටුවා
1756	A0050	පංචප්පකරණ අටුවාව - පාළි 1	හේවාවිතාරණ අටුවා	2010-01-01	234	Pali	Full	Path Nirwana	අභිධර්ම	පාලි අටුවා
1757	A0051	පංචප්පකරණ අටුවාව - පාළි 2	හේවාවිතාරණ අටුවා	2010-01-01	198	Pali	Full	Path Nirwana	අභිධර්ම	පාලි අටුවා
1758	A0052	අත්ථසාලිනි ධම්මසංගණී අටුවාව - පාළි	හේවාවිතාරණ අටුවා	1940-01-01	395	Pali	Full	Path Nirwana	අභිධර්ම	පාලි අටුවා
1759	A0053	සම්මෝහවිනොදනි විභංග අටුවාව - පාළි	හේවාවිතාරණ අටුවා	1932-01-01	391	Pali	Full	Path Nirwana	අභිධර්ම	පාලි අටුවා
2148	V0077	සමන්ත පාසාදිකා 01	හේවාවිතාරණ පාලි අටුවා	2014-01-01	382	Pali	Full	Na Uyana	විනය	පාලි අටුවා
2149	V0078	සමන්ත පාසාදිකා 02	හේවාවිතාරණ පාලි අටුවා	2000-01-01	365	Pali	Full	Na Uyana	විනය	පාලි අටුවා
2150	V0079	සමන්ත පාසාදිකා 03	හේවාවිතාරණ පාලි අටුවා	2015-01-01	155	Pali	Full	Na Uyana	විනය	පාලි අටුවා
2151	V0080	සමන්ත පාසාදිකා 04	හේවාවිතාරණ පාලි අටුවා	1948-01-01	350	Pali	Full	Na Uyana	විනය	පාලි අටුවා
\.

-- Completed on 2023-12-22 11:01:16

--
-- PostgreSQL database dump complete
--
 