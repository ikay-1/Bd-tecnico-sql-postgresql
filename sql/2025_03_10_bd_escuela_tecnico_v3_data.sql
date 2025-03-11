--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8
-- Dumped by pg_dump version 17.1

-- Started on 2025-03-10 20:30:30

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3574 (class 0 OID 1818680)
-- Dependencies: 314
-- Data for Name: cursos; Type: TABLE DATA; Schema: Francisco Franco; Owner: Comfe_owner
--

COPY "Francisco Franco".cursos (cursos_id, cursos_nombre) FROM stdin;
1	Curso Nivel 1 - Introducción a la Programación
2	Curso Nivel 2 - Programación Intermedia
3	Curso Nivel 3 - Programación Avanzada
4	Curso Nivel 4 - Algoritmos y Estructuras de Datos
5	Curso Nivel 5 - Desarrollo de Proyectos
\.


--
-- TOC entry 3580 (class 0 OID 1818719)
-- Dependencies: 320
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: Francisco Franco; Owner: Comfe_owner
--

COPY "Francisco Franco".estudiantes (estudiantes_id, estudiantes_documento, estudiantes_nombre, estudiantes_edad, estudiantes_tipo_sangre, cursos_id) FROM stdin;
1	1000000001	Pedro González	18	O+	1
2	1000000002	Ana Ramírez	19	A-	1
3	1000000003	Luis Fernández	20	B+	1
4	1000000004	Carla López	18	AB+	1
5	1000000005	Miguel Torres	19	O-	1
6	1000000006	Sara Méndez	21	A+	2
7	1000000007	Diego Cruz	22	B-	2
8	1000000008	Laura Vargas	20	O+	2
9	1000000009	Javier Mora	19	AB-	2
10	1000000010	Camila Díaz	21	A-	2
11	1000000011	Andrés Pardo	22	B+	2
12	1000000012	Mónica Ruiz	20	O-	2
13	1000000013	Santiago Herrera	21	A+	2
14	1000000014	Valentina Soto	19	AB+	3
15	1000000015	Daniela Vega	22	B-	3
16	1000000016	Fernando Ibáñez	20	A-	4
17	1000000017	Isabel Ortiz	21	O+	4
18	1000000018	Tomás Silva	19	B+	4
19	1000000019	Lucía Cárdenas	20	AB-	4
20	1000000020	Pablo Ríos	22	A+	4
21	1000000021	Esteban Gutiérrez	21	O-	4
22	1000000022	Mariana León	19	B-	4
23	1000000023	Samuel Méndez	20	A+	5
24	1000000024	Paula Castillo	22	AB+	5
25	1000000025	Emilio Castro	21	O+	5
\.


--
-- TOC entry 3576 (class 0 OID 1818689)
-- Dependencies: 316
-- Data for Name: profesores; Type: TABLE DATA; Schema: Francisco Franco; Owner: Comfe_owner
--

COPY "Francisco Franco".profesores (profesores_id, profesores_documento, profesores_nombre) FROM stdin;
1	100000001	Juan Pérez
2	100000002	María Gómez
3	100000003	Carlos Ramírez
4	100000004	Ana Torres
5	100000005	Luis Fernández
6	100000006	Laura Medina
7	100000007	José Morales
8	100000008	Claudia Ríos
9	100000009	Miguel Castro
10	100000010	Isabel Suárez
11	100000011	Pedro López
12	100000012	Carmen Vega
13	100000013	Andrés Silva
14	100000014	Sofía Navarro
15	100000015	Raúl Soto
16	100000016	Elena Fuentes
17	100000017	Héctor Ruiz
18	100000018	Mónica Cárdenas
19	100000019	Diego Herrera
20	100000020	Valeria Paredes
21	100000021	Samuel Ortiz
22	100000022	Natalia Blanco
23	100000023	Fernando Cruz
24	100000024	Camila Duarte
25	100000025	Javier Méndez
26	100000026	Paula Ibáñez
27	100000027	Emilio Vargas
28	100000028	Gabriela León
29	100000029	Alberto Molina
30	100000030	Rosa Salazar
\.


--
-- TOC entry 3578 (class 0 OID 1818698)
-- Dependencies: 318
-- Data for Name: materias; Type: TABLE DATA; Schema: Francisco Franco; Owner: Comfe_owner
--

COPY "Francisco Franco".materias (materias_id, materias_nombre, cursos_id, profesores_id) FROM stdin;
1	Matemáticas Básicas	1	1
2	Introducción a la Programación	1	2
3	Historia General	1	3
4	Física Básica	1	4
5	Inglés I	1	5
6	Ciencias Naturales	1	6
7	Álgebra Intermedia	2	7
8	Programación Intermedia	2	8
9	Historia Contemporánea	2	9
10	Física Intermedia	2	10
11	Inglés II	2	11
12	Biología	2	12
13	Cálculo	3	13
14	Programación Avanzada	3	14
15	Filosofía	3	15
16	Química	3	16
17	Inglés III	3	17
18	Ecología	3	18
19	Estadística	4	19
20	Algoritmos y Estructuras	4	20
21	Literatura	4	21
22	Física Avanzada	4	22
23	Inglés IV	4	23
24	Genética	4	24
25	Matemáticas Aplicadas	5	25
26	Desarrollo de Proyectos	5	26
27	Historia del Arte	5	27
28	Química Orgánica	5	28
29	Inglés V	5	29
30	Biotecnología	5	30
\.


--
-- TOC entry 3582 (class 0 OID 1826817)
-- Dependencies: 322
-- Data for Name: notas; Type: TABLE DATA; Schema: Francisco Franco; Owner: Comfe_owner
--

COPY "Francisco Franco".notas (notas_id, estudiantes_id, materias_id, notas_puntaje) FROM stdin;
1	1	1	4
2	1	1	5
3	1	1	1
4	1	1	4
5	2	1	2
6	2	1	4
7	2	1	2
8	2	1	2
9	3	1	1
10	3	1	3
11	3	1	1
12	3	1	3
13	4	1	4
14	4	1	5
15	4	1	2
16	4	1	5
17	5	1	4
18	5	1	4
19	5	1	3
20	5	1	3
21	6	1	5
22	6	1	3
23	6	1	2
24	1	2	3
25	1	2	2
26	1	2	3
27	1	2	3
28	2	2	2
29	2	2	5
30	2	2	1
31	2	2	4
32	3	2	5
33	3	2	1
34	3	2	4
35	3	2	5
36	4	2	2
37	4	2	5
38	4	2	5
39	4	2	3
40	5	2	2
41	5	2	1
42	5	2	4
43	5	2	4
44	6	2	1
45	6	2	5
46	6	2	2
47	6	2	5
48	1	3	3
49	1	3	4
50	1	3	1
51	1	3	3
52	2	3	2
53	2	3	5
54	2	3	3
55	2	3	1
56	3	3	2
57	3	3	3
58	3	3	2
59	3	3	4
60	4	3	1
61	4	3	3
62	4	3	1
63	4	4	3
64	5	3	3
65	5	3	4
66	5	3	2
67	5	3	2
68	6	3	3
69	6	3	3
70	6	3	2
71	6	3	3
72	1	4	1
73	1	4	4
74	1	4	5
75	1	4	1
76	2	4	2
77	2	4	2
78	2	4	5
79	2	4	1
80	3	4	1
81	3	4	1
82	3	4	5
83	3	4	4
84	4	4	5
85	4	4	5
86	4	4	4
87	4	4	5
88	5	4	4
89	5	4	5
90	5	4	4
91	5	4	3
92	6	4	4
93	6	4	1
94	6	4	5
95	6	4	1
96	1	5	5
97	1	5	5
98	1	5	5
99	1	5	5
100	2	5	4
101	2	5	2
102	2	5	3
103	2	5	3
104	3	5	3
105	3	5	5
106	3	5	2
107	3	5	5
108	4	5	3
109	4	5	1
110	4	5	1
111	4	5	2
112	5	5	3
113	5	5	5
114	5	5	2
115	5	5	2
116	6	5	5
117	6	5	1
118	6	5	1
119	6	5	2
120	1	6	4
121	1	6	5
122	1	6	2
123	1	6	4
124	2	6	3
125	2	6	5
126	2	6	2
127	2	6	3
128	3	6	4
129	3	6	5
130	3	6	3
131	3	6	4
132	4	6	3
133	4	6	3
134	4	6	1
135	4	2	4
136	5	6	5
137	5	6	2
138	5	6	3
139	5	6	2
140	6	6	5
141	6	6	1
142	6	6	3
143	6	6	2
144	8	7	5
145	8	7	3
146	9	7	4
147	9	7	5
148	10	7	4
149	10	7	1
150	11	7	4
151	11	7	5
152	12	7	4
153	12	7	1
154	13	7	1
155	13	7	5
156	14	7	4
157	14	7	4
158	8	8	1
159	8	8	1
160	9	8	3
161	9	8	2
162	10	8	4
163	10	8	1
164	11	8	1
165	11	8	2
166	12	8	3
167	12	8	4
168	13	8	1
169	13	8	2
170	14	8	4
171	14	8	2
172	8	9	5
173	8	9	2
174	9	9	4
175	9	9	4
176	10	9	2
177	10	9	5
178	11	9	5
179	11	9	3
180	12	9	1
181	12	9	4
182	13	9	1
183	13	9	2
184	14	9	4
185	14	9	3
186	8	10	1
187	8	10	4
188	9	10	1
189	9	10	3
190	10	10	3
191	10	10	1
192	11	10	4
193	11	10	5
194	12	10	3
195	12	10	5
196	13	10	1
197	13	10	1
198	14	10	3
199	14	10	1
200	8	11	5
201	8	11	5
202	9	11	4
203	9	11	2
204	10	11	5
205	10	11	3
206	11	11	5
207	11	11	1
208	12	11	2
209	12	11	5
210	13	11	2
211	13	11	1
212	14	11	5
213	14	11	1
214	15	13	5
215	15	13	1
216	15	13	4
217	15	13	4
218	15	13	2
219	15	13	4
220	15	13	2
221	15	13	5
222	15	13	5
223	15	13	4
224	16	13	1
225	16	13	5
226	16	13	4
227	16	13	3
228	16	13	4
229	16	13	4
230	16	13	2
231	16	13	1
232	16	13	3
233	16	13	5
234	15	14	4
235	15	14	2
236	15	14	1
237	15	14	5
238	15	14	2
239	15	14	4
240	15	14	2
241	15	14	1
242	15	14	4
243	15	14	5
244	16	14	4
245	16	14	1
246	16	14	4
247	16	14	3
248	16	14	2
249	16	14	2
250	16	14	1
251	16	14	1
252	16	14	1
253	16	14	3
254	15	15	5
255	15	15	2
256	15	15	4
257	15	15	3
258	15	15	1
259	15	15	4
260	15	15	4
261	15	15	1
262	15	15	3
263	15	15	1
264	16	15	3
265	16	15	4
266	16	15	3
267	16	15	1
268	16	15	4
269	16	15	5
270	16	15	1
271	16	15	2
272	16	15	3
273	16	15	5
274	15	16	5
275	15	16	3
276	15	16	2
277	15	16	5
278	15	16	4
279	15	16	3
280	15	16	1
281	15	16	5
282	15	16	3
283	15	16	2
284	16	16	3
285	16	16	1
286	16	16	5
287	16	16	1
288	16	16	1
289	16	16	3
290	16	16	2
291	16	16	4
292	16	16	4
293	16	16	4
294	15	17	2
295	15	17	1
296	15	17	4
297	15	17	5
298	15	17	1
299	15	17	2
300	15	17	4
301	15	17	1
302	15	17	4
303	15	17	2
304	16	17	4
305	16	17	4
306	16	17	2
307	16	17	2
308	16	17	4
309	16	17	3
310	16	17	4
311	16	17	2
312	16	17	3
313	16	17	3
314	15	18	2
315	15	18	1
316	15	18	4
317	15	18	3
318	15	18	5
319	15	18	3
320	15	18	2
321	15	18	4
322	15	18	2
323	15	18	3
324	16	18	5
325	16	18	3
326	16	18	5
327	16	18	4
328	16	18	3
329	16	18	1
330	16	18	5
331	16	18	1
332	16	18	3
333	16	18	1
334	17	19	2
335	17	19	4
336	17	19	5
337	18	19	1
338	18	19	3
339	18	19	5
340	19	19	3
341	19	19	5
342	19	19	3
343	20	19	3
344	20	19	1
345	20	19	2
346	21	19	2
347	21	19	5
348	21	19	5
349	22	19	2
350	22	19	1
351	22	19	2
352	17	20	1
353	17	20	3
354	17	20	4
355	18	20	3
356	18	20	2
357	18	20	4
358	19	20	2
359	19	20	1
360	19	20	3
361	20	20	1
362	20	20	3
363	20	20	3
364	21	20	3
365	21	20	3
366	21	20	3
367	22	20	3
368	22	20	4
369	22	20	2
370	17	21	2
371	17	21	4
372	17	21	3
373	18	21	4
374	18	21	1
375	18	21	1
376	19	21	2
377	19	21	1
378	19	21	4
379	20	21	5
380	20	21	3
381	20	21	3
382	21	21	5
383	21	21	1
384	21	21	1
385	22	21	3
386	22	21	4
387	22	21	4
388	17	22	5
389	17	22	4
390	17	22	3
391	18	22	5
392	18	22	3
393	18	22	3
394	19	22	2
395	19	22	3
396	19	22	1
397	20	22	3
398	20	22	1
399	20	22	4
400	21	22	5
401	21	22	1
402	21	22	1
403	22	22	3
404	22	22	4
405	22	22	3
406	17	23	2
407	17	23	1
408	17	23	2
409	18	23	3
410	18	23	2
411	18	23	5
412	19	23	2
413	19	23	4
414	19	23	4
415	20	23	5
416	20	23	5
417	20	23	1
418	21	23	3
419	21	23	4
420	21	23	1
421	22	23	3
422	22	23	5
423	22	23	4
424	17	24	4
425	17	24	5
426	17	24	2
427	18	24	1
428	18	24	5
429	18	24	5
430	19	24	1
431	19	24	3
432	19	24	5
433	20	24	4
434	20	24	5
435	20	24	1
436	21	24	1
437	21	24	3
438	21	24	4
439	22	24	2
440	22	24	4
441	22	24	3
442	23	25	3
443	24	25	2
444	25	25	5
445	23	26	4
446	24	26	1
447	25	26	1
448	23	27	5
449	24	27	5
450	25	27	1
451	23	28	2
452	24	28	3
453	25	28	1
454	23	29	4
455	24	29	3
456	25	29	5
\.


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 313
-- Name: cursos_cursos_id_seq; Type: SEQUENCE SET; Schema: Francisco Franco; Owner: Comfe_owner
--

SELECT pg_catalog.setval('"Francisco Franco".cursos_cursos_id_seq', 5, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 319
-- Name: estudiantes_estudiantes_id_seq; Type: SEQUENCE SET; Schema: Francisco Franco; Owner: Comfe_owner
--

SELECT pg_catalog.setval('"Francisco Franco".estudiantes_estudiantes_id_seq', 25, true);


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 317
-- Name: materias_materias_id_seq; Type: SEQUENCE SET; Schema: Francisco Franco; Owner: Comfe_owner
--

SELECT pg_catalog.setval('"Francisco Franco".materias_materias_id_seq', 30, true);


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 321
-- Name: notas_notas_id_seq; Type: SEQUENCE SET; Schema: Francisco Franco; Owner: Comfe_owner
--

SELECT pg_catalog.setval('"Francisco Franco".notas_notas_id_seq', 456, true);


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 315
-- Name: profesores_profesores_id_seq; Type: SEQUENCE SET; Schema: Francisco Franco; Owner: Comfe_owner
--

SELECT pg_catalog.setval('"Francisco Franco".profesores_profesores_id_seq', 30, true);


-- Completed on 2025-03-10 20:30:39

--
-- PostgreSQL database dump complete
--

