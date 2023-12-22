--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)



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

set schema  't2';

TRUNCATE django_content_type CASCADE;
TRUNCATE auth_group CASCADE;
TRUNCATE auth_permission CASCADE;

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: t1; Owner: admin
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	customer	client
2	customer	domain
3	admin	logentry
4	auth	permission
5	auth	group
6	auth	user
7	contenttypes	contenttype
8	sessions	session
9	settings	nature
10	settings	step
11	settings	localauthority
12	settings	divisionalsecy
13	settings	gndivision
14	settings	landregistry
15	clients	clientcompany
16	clients	clientperson
17	cases	case
18	cases	notarypublic
19	cases	notarialcase
20	cases	partydoc
21	cases	opposingcounsel
22	cases	caseparty
23	cases	caseschedule
24	cases	lawyer
25	documents	doctemplate
26	documents	templatetag
27	documents	doctemplatetag
28	diary	casediary
29	customer	userprofile
30	home	userprofile
31	cases	journalentry
32	cases	minute
33	cases	note
34	cases	pleading
35	cases	proceeding
36	cases	casepayment
37	cases	correspondence
38	cases	casetask
39	cases	legalbusiness
40	cases	appointment
41	cases	caseincome
42	home	authcredential
43	django_q	schedule
44	django_q	task
45	django_q	failure
46	django_q	success
47	django_q	ormq
48	home	taskprogress
49	cases	opposingparty
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: t1; Owner: admin
--

COPY auth_group (id, name) FROM stdin;
1	Full Access
2	Customer Admin
3	Case Editor
4	Case Viewer
5	Diary Editor
6	Diary Viewer
7	Finance Viewer
8	Finance Editor
10	Contacts View
11	Contacts Editor
12	UserAccess Viewer
13	UserAccess Editor
9	Generate Docs Yes
\.




--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: t1; Owner: admin
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add client	1	add_client
2	Can change client	1	change_client
3	Can delete client	1	delete_client
4	Can view client	1	view_client
5	Can add domain	2	add_domain
6	Can change domain	2	change_domain
7	Can delete domain	2	delete_domain
8	Can view domain	2	view_domain
9	Can add log entry	3	add_logentry
10	Can change log entry	3	change_logentry
11	Can delete log entry	3	delete_logentry
12	Can view log entry	3	view_logentry
13	Can add permission	4	add_permission
14	Can change permission	4	change_permission
15	Can delete permission	4	delete_permission
16	Can view permission	4	view_permission
17	Can add group	5	add_group
18	Can change group	5	change_group
19	Can delete group	5	delete_group
20	Can view group	5	view_group
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add content type	7	add_contenttype
26	Can change content type	7	change_contenttype
27	Can delete content type	7	delete_contenttype
28	Can view content type	7	view_contenttype
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
33	Can add nature	9	add_nature
34	Can change nature	9	change_nature
35	Can delete nature	9	delete_nature
36	Can view nature	9	view_nature
37	Can add step	10	add_step
38	Can change step	10	change_step
39	Can delete step	10	delete_step
40	Can view step	10	view_step
41	Can add local authority	11	add_localauthority
42	Can change local authority	11	change_localauthority
43	Can delete local authority	11	delete_localauthority
44	Can view local authority	11	view_localauthority
45	Can add divisional secy	12	add_divisionalsecy
46	Can change divisional secy	12	change_divisionalsecy
47	Can delete divisional secy	12	delete_divisionalsecy
48	Can view divisional secy	12	view_divisionalsecy
49	Can add gn division	13	add_gndivision
50	Can change gn division	13	change_gndivision
51	Can delete gn division	13	delete_gndivision
52	Can view gn division	13	view_gndivision
53	Can add land registry	14	add_landregistry
54	Can change land registry	14	change_landregistry
55	Can delete land registry	14	delete_landregistry
56	Can view land registry	14	view_landregistry
57	Can add client company	15	add_clientcompany
58	Can change client company	15	change_clientcompany
59	Can delete client company	15	delete_clientcompany
60	Can view client company	15	view_clientcompany
61	Can add client person	16	add_clientperson
62	Can change client person	16	change_clientperson
63	Can delete client person	16	delete_clientperson
64	Can view client person	16	view_clientperson
65	Can add case	17	add_case
66	Can change case	17	change_case
67	Can delete case	17	delete_case
68	Can view case	17	view_case
69	Can add notary public	18	add_notarypublic
70	Can change notary public	18	change_notarypublic
71	Can delete notary public	18	delete_notarypublic
72	Can view notary public	18	view_notarypublic
73	Can add notarial case	19	add_notarialcase
74	Can change notarial case	19	change_notarialcase
75	Can delete notarial case	19	delete_notarialcase
76	Can view notarial case	19	view_notarialcase
77	Can add party doc	20	add_partydoc
78	Can change party doc	20	change_partydoc
79	Can delete party doc	20	delete_partydoc
80	Can view party doc	20	view_partydoc
81	Can add opposing counsel	21	add_opposingcounsel
82	Can change opposing counsel	21	change_opposingcounsel
83	Can delete opposing counsel	21	delete_opposingcounsel
84	Can view opposing counsel	21	view_opposingcounsel
85	Can add case party	22	add_caseparty
86	Can change case party	22	change_caseparty
87	Can delete case party	22	delete_caseparty
88	Can view case party	22	view_caseparty
89	Can add case schedule	23	add_caseschedule
90	Can change case schedule	23	change_caseschedule
91	Can delete case schedule	23	delete_caseschedule
92	Can view case schedule	23	view_caseschedule
93	Can add lawyer	24	add_lawyer
94	Can change lawyer	24	change_lawyer
95	Can delete lawyer	24	delete_lawyer
96	Can view lawyer	24	view_lawyer
97	Can add doc template	25	add_doctemplate
98	Can change doc template	25	change_doctemplate
99	Can delete doc template	25	delete_doctemplate
100	Can view doc template	25	view_doctemplate
101	Can add template tag	26	add_templatetag
102	Can change template tag	26	change_templatetag
103	Can delete template tag	26	delete_templatetag
104	Can view template tag	26	view_templatetag
105	Can add doc template tag	27	add_doctemplatetag
106	Can change doc template tag	27	change_doctemplatetag
107	Can delete doc template tag	27	delete_doctemplatetag
108	Can view doc template tag	27	view_doctemplatetag
109	Can add case diary	28	add_casediary
110	Can change case diary	28	change_casediary
111	Can delete case diary	28	delete_casediary
112	Can view case diary	28	view_casediary
113	Can add user profile	29	add_userprofile
114	Can change user profile	29	change_userprofile
115	Can delete user profile	29	delete_userprofile
116	Can view user profile	29	view_userprofile
117	Can add user profile	30	add_userprofile
118	Can change user profile	30	change_userprofile
119	Can delete user profile	30	delete_userprofile
120	Can view user profile	30	view_userprofile
121	Can add journal entry	31	add_journalentry
122	Can change journal entry	31	change_journalentry
123	Can delete journal entry	31	delete_journalentry
124	Can view journal entry	31	view_journalentry
125	Can add minute	32	add_minute
126	Can change minute	32	change_minute
127	Can delete minute	32	delete_minute
128	Can view minute	32	view_minute
129	Can add note	33	add_note
130	Can change note	33	change_note
131	Can delete note	33	delete_note
132	Can view note	33	view_note
133	Can add pleading	34	add_pleading
134	Can change pleading	34	change_pleading
135	Can delete pleading	34	delete_pleading
136	Can view pleading	34	view_pleading
137	Can add proceeding	35	add_proceeding
138	Can change proceeding	35	change_proceeding
139	Can delete proceeding	35	delete_proceeding
140	Can view proceeding	35	view_proceeding
141	Can add case payment	36	add_casepayment
142	Can change case payment	36	change_casepayment
143	Can delete case payment	36	delete_casepayment
144	Can view case payment	36	view_casepayment
145	Can add correspondence	37	add_correspondence
146	Can change correspondence	37	change_correspondence
147	Can delete correspondence	37	delete_correspondence
148	Can view correspondence	37	view_correspondence
149	Can add case tasks	38	add_casetasks
150	Can change case tasks	38	change_casetasks
151	Can delete case tasks	38	delete_casetasks
152	Can view case tasks	38	view_casetasks
153	Can add case task	38	add_casetask
154	Can change case task	38	change_casetask
155	Can delete case task	38	delete_casetask
156	Can view case task	38	view_casetask
157	Can add legal business	39	add_legalbusiness
158	Can change legal business	39	change_legalbusiness
159	Can delete legal business	39	delete_legalbusiness
160	Can view legal business	39	view_legalbusiness
161	Can add appointment	40	add_appointment
162	Can change appointment	40	change_appointment
163	Can delete appointment	40	delete_appointment
164	Can view appointment	40	view_appointment
165	Can add case income	41	add_caseincome
166	Can change case income	41	change_caseincome
167	Can delete case income	41	delete_caseincome
168	Can view case income	41	view_caseincome
169	Can add auth credential	42	add_authcredential
170	Can change auth credential	42	change_authcredential
171	Can delete auth credential	42	delete_authcredential
172	Can view auth credential	42	view_authcredential
173	Can add Scheduled task	43	add_schedule
174	Can change Scheduled task	43	change_schedule
175	Can delete Scheduled task	43	delete_schedule
176	Can view Scheduled task	43	view_schedule
177	Can add task	44	add_task
178	Can change task	44	change_task
179	Can delete task	44	delete_task
180	Can view task	44	view_task
181	Can add Failed task	45	add_failure
182	Can change Failed task	45	change_failure
183	Can delete Failed task	45	delete_failure
184	Can view Failed task	45	view_failure
185	Can add Successful task	46	add_success
186	Can change Successful task	46	change_success
187	Can delete Successful task	46	delete_success
188	Can view Successful task	46	view_success
189	Can add Queued task	47	add_ormq
190	Can change Queued task	47	change_ormq
191	Can delete Queued task	47	delete_ormq
192	Can view Queued task	47	view_ormq
193	Can add task progress	48	add_taskprogress
194	Can change task progress	48	change_taskprogress
195	Can delete task progress	48	delete_taskprogress
196	Can view task progress	48	view_taskprogress
197	Can add opposing party	49	add_opposingparty
198	Can change opposing party	49	change_opposingparty
199	Can delete opposing party	49	delete_opposingparty
200	Can view opposing party	49	view_opposingparty
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: t1; Owner: admin
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
117	1	117
118	1	118
119	1	119
120	1	120
121	1	121
122	1	122
123	1	123
124	1	124
125	1	125
126	1	126
127	1	127
128	1	128
129	1	129
130	1	130
131	1	131
132	1	132
133	1	133
134	1	134
135	1	135
136	1	136
137	1	137
138	1	138
139	1	139
140	1	140
141	1	141
142	1	142
143	1	143
144	1	144
145	1	145
146	1	146
147	1	147
148	1	148
149	1	149
150	1	150
151	1	151
152	1	152
153	1	153
154	1	154
155	1	155
156	1	156
157	1	157
158	1	158
159	1	159
160	1	160
161	1	161
162	1	162
163	1	163
164	1	164
165	1	165
166	1	166
167	1	167
168	1	168
169	1	169
170	1	170
171	1	171
172	1	172
173	1	173
174	1	174
175	1	175
176	1	176
177	1	177
178	1	178
179	1	179
180	1	180
181	1	181
182	1	182
183	1	183
184	1	184
185	1	185
186	1	186
187	1	187
188	1	188
189	1	189
190	1	190
191	1	191
192	1	192
193	1	193
194	1	194
195	1	195
196	1	196
197	1	197
198	1	198
199	1	199
200	1	200
201	2	1
202	2	2
203	2	3
204	2	4
205	2	8
206	2	12
207	2	13
208	2	14
209	2	15
210	2	16
211	2	20
212	2	21
213	2	22
214	2	23
215	2	24
216	2	25
217	2	26
218	2	27
219	2	28
220	2	32
221	2	33
222	2	34
223	2	35
224	2	36
225	2	37
226	2	38
227	2	39
228	2	40
229	2	41
230	2	42
231	2	43
232	2	44
233	2	45
234	2	46
235	2	47
236	2	48
237	2	49
238	2	50
239	2	51
240	2	52
241	2	53
242	2	54
243	2	55
244	2	56
245	2	57
246	2	58
247	2	59
248	2	60
249	2	61
250	2	62
251	2	63
252	2	64
253	2	65
254	2	66
255	2	67
256	2	68
257	2	69
258	2	70
259	2	71
260	2	72
261	2	73
262	2	74
263	2	75
264	2	76
265	2	77
266	2	78
267	2	79
268	2	80
269	2	81
270	2	82
271	2	83
272	2	84
273	2	85
274	2	86
275	2	87
276	2	88
277	2	89
278	2	90
279	2	91
280	2	92
281	2	93
282	2	94
283	2	95
284	2	96
285	2	97
286	2	98
287	2	99
288	2	100
289	2	101
290	2	102
291	2	103
292	2	104
293	2	105
294	2	106
295	2	107
296	2	108
297	2	109
298	2	110
299	2	111
300	2	112
301	2	113
302	2	114
303	2	115
304	2	116
305	2	117
306	2	118
307	2	119
308	2	120
309	2	121
310	2	122
311	2	123
312	2	124
313	2	125
314	2	126
315	2	127
316	2	128
317	2	129
318	2	130
319	2	131
320	2	132
321	2	133
322	2	134
323	2	135
324	2	136
325	2	137
326	2	138
327	2	139
328	2	140
329	2	141
330	2	142
331	2	143
332	2	144
333	2	145
334	2	146
335	2	147
336	2	148
337	2	149
338	2	150
339	2	151
340	2	152
341	2	153
342	2	154
343	2	155
344	2	156
345	2	160
346	2	161
347	2	162
348	2	163
349	2	164
350	2	165
351	2	166
352	2	167
353	2	168
354	2	169
355	2	170
356	2	171
357	2	172
358	2	176
359	2	177
360	2	178
361	2	179
362	2	180
363	2	184
364	2	188
365	2	193
366	2	194
367	2	195
368	2	196
369	2	197
370	2	198
371	2	199
372	2	200
373	3	128
374	3	129
375	3	130
376	3	131
377	3	132
378	3	133
379	3	134
380	3	135
381	3	136
382	3	137
383	3	138
384	3	139
385	3	140
386	3	141
387	3	142
388	3	143
389	3	144
390	3	145
391	3	146
392	3	147
393	3	148
394	3	149
395	3	150
396	3	151
397	3	152
398	3	153
399	3	154
400	3	155
401	3	156
402	3	161
403	3	162
404	3	163
405	3	164
406	3	165
407	3	166
408	3	167
409	3	168
410	3	65
411	3	66
412	3	67
413	3	68
414	3	197
415	3	198
416	3	199
417	3	200
418	3	73
419	3	74
420	3	75
421	3	76
422	3	77
423	3	78
424	3	79
425	3	80
426	3	85
427	3	86
428	3	87
429	3	88
430	3	89
431	3	90
432	3	91
433	3	92
434	3	121
435	3	122
436	3	123
437	3	124
438	3	125
439	3	126
440	3	127
441	4	128
442	4	164
443	4	68
444	4	132
446	4	200
447	4	136
448	4	76
449	4	140
451	4	156
452	4	124
453	4	80
454	4	148
455	4	84
456	4	88
457	4	92
458	4	152
459	5	112
460	5	109
461	5	110
462	5	111
463	6	112
464	7	168
465	7	144
466	8	165
467	8	166
468	8	167
469	8	168
470	8	141
471	8	142
472	8	143
473	8	144
474	10	96
475	10	64
476	10	72
477	10	60
478	11	96
479	11	64
480	11	69
481	11	70
482	11	71
483	11	72
484	11	63
485	11	61
486	11	62
487	11	57
488	11	58
489	11	59
490	11	60
491	11	93
492	11	94
493	11	95
494	12	24
495	13	24
496	13	21
497	13	22
498	13	23
\.


--
-- PostgreSQL database dump complete
--

SELECT COUNT(*) FROM django_content_type;

SELECT COUNT(*) auth_group FROM auth_group;

SELECT COUNT(*) FROM auth_permission;

SELECT COUNT(*) auth_group_permissions FROM auth_group_permissions;
