--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: bancos_mas_grandes; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.bancos_mas_grandes (
    "Name" text,
    "MC_USD_Billion" double precision,
    "MC_EUR_Billion" double precision,
    "MC_GBP_Billion" double precision,
    "MC_INR_Billion" double precision,
    "MC_CHF_Billion" double precision,
    "MC_JPY_Billion" double precision,
    "MC_ARG_Billion" double precision
);


ALTER TABLE public.bancos_mas_grandes OWNER TO ing_data;

--
-- Name: bitcoin_precios_30; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.bitcoin_precios_30 (
    fecha date,
    minimo bigint,
    maximo bigint,
    apertura bigint,
    cierre bigint
);


ALTER TABLE public.bitcoin_precios_30 OWNER TO ing_data;

--
-- Name: etl_archivos1; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.etl_archivos1 (
    nombre text,
    altura double precision,
    peso double precision
);


ALTER TABLE public.etl_archivos1 OWNER TO ing_data;

--
-- Name: etl_archivos_autos2; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.etl_archivos_autos2 (
    "modelo de auto" text,
    modelo text,
    precio double precision,
    combustible text
);


ALTER TABLE public.etl_archivos_autos2 OWNER TO ing_data;

--
-- Name: nutricion_frutas; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.nutricion_frutas (
    nombre character varying(25),
    id bigint,
    familia character varying(30),
    orden text,
    genero character varying(20),
    calorias bigint,
    grasas double precision,
    azucar double precision,
    carbohidratos double precision,
    proteinas double precision
);


ALTER TABLE public.nutricion_frutas OWNER TO ing_data;

--
-- Name: paises_pbi; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.paises_pbi (
    "Paises" text,
    "PBI" double precision
);


ALTER TABLE public.paises_pbi OWNER TO ing_data;

--
-- Name: peliculas_top_50; Type: TABLE; Schema: public; Owner: ing_data
--

CREATE TABLE public.peliculas_top_50 (
    "Rango_Promedio" bigint,
    "Peliculas" text,
    "Años" bigint
);


ALTER TABLE public.peliculas_top_50 OWNER TO ing_data;

--
-- Data for Name: bancos_mas_grandes; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.bancos_mas_grandes ("Name", "MC_USD_Billion", "MC_EUR_Billion", "MC_GBP_Billion", "MC_INR_Billion", "MC_CHF_Billion", "MC_JPY_Billion", "MC_ARG_Billion") FROM stdin;
JPMorgan Chase	432.92	367.98	316.03	36958.38	342.01	62535.29	535.09
Bank of America	231.52	196.79	169.01	19764.86	182.9	33443.06	286.16
Industrial and Commercial Bank of China	194.56	165.38	142.03	16609.59	153.7	28104.19	240.48
Agricultural Bank of China	160.68	136.58	117.3	13717.25	126.94	23210.23	198.6
HDFC Bank	157.91	134.22	115.27	13480.78	124.75	22810.1	195.18
Wells Fargo	155.87	132.49	113.79	13306.62	123.14	22515.42	192.66
HSBC Holdings PLC	148.9	126.56	108.7	12711.59	117.63	21508.6	184.04
Morgan Stanley	140.83	119.71	102.81	12022.66	111.26	20342.89	174.07
China Construction Bank	139.82	118.85	102.07	11936.43	110.46	20197	172.82
Bank of China	136.81	116.29	99.87	11679.47	108.08	19762.2	169.1
JPMorgan Chase	432.92	367.98	316.03	36958.38	342.01	62535.29	535.09
Bank of America	231.52	196.79	169.01	19764.86	182.9	33443.06	286.16
Industrial and Commercial Bank of China	194.56	165.38	142.03	16609.59	153.7	28104.19	240.48
Agricultural Bank of China	160.68	136.58	117.3	13717.25	126.94	23210.23	198.6
HDFC Bank	157.91	134.22	115.27	13480.78	124.75	22810.1	195.18
Wells Fargo	155.87	132.49	113.79	13306.62	123.14	22515.42	192.66
HSBC Holdings PLC	148.9	126.56	108.7	12711.59	117.63	21508.6	184.04
Morgan Stanley	140.83	119.71	102.81	12022.66	111.26	20342.89	174.07
China Construction Bank	139.82	118.85	102.07	11936.43	110.46	20197	172.82
Bank of China	136.81	116.29	99.87	11679.47	108.08	19762.2	169.1
JPMorgan Chase	432.92	367.98	316.03	36958.38	342.01	62535.29	535.09
Bank of America	231.52	196.79	169.01	19764.86	182.9	33443.06	286.16
Industrial and Commercial Bank of China	194.56	165.38	142.03	16609.59	153.7	28104.19	240.48
Agricultural Bank of China	160.68	136.58	117.3	13717.25	126.94	23210.23	198.6
HDFC Bank	157.91	134.22	115.27	13480.78	124.75	22810.1	195.18
Wells Fargo	155.87	132.49	113.79	13306.62	123.14	22515.42	192.66
HSBC Holdings PLC	148.9	126.56	108.7	12711.59	117.63	21508.6	184.04
Morgan Stanley	140.83	119.71	102.81	12022.66	111.26	20342.89	174.07
China Construction Bank	139.82	118.85	102.07	11936.43	110.46	20197	172.82
Bank of China	136.81	116.29	99.87	11679.47	108.08	19762.2	169.1
\.


--
-- Data for Name: bitcoin_precios_30; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.bitcoin_precios_30 (fecha, minimo, maximo, apertura, cierre) FROM stdin;
2025-06-08	105859	106348	106233	105859
2025-06-09	105443	110191	105724	110191
2025-06-10	108650	110265	110265	109750
2025-06-11	108421	110212	110212	108421
2025-06-12	105893	108705	108686	105893
2025-06-13	103639	105897	105897	105807
2025-06-14	104509	106068	106068	105396
2025-06-15	104735	106032	105459	105278
2025-06-16	105424	108771	105564	107711
2025-06-17	103645	107596	106842	104416
2025-06-18	103970	105449	104582	104927
2025-06-19	104021	105074	104820	104639
2025-06-20	103055	106036	104682	103098
2025-06-21	101588	103900	103291	101824
2025-06-22	98974	102949	102092	100744
2025-06-23	100545	105508	100904	105508
2025-06-24	104919	106091	105471	106028
2025-06-25	106035	107984	106035	107338
2025-06-26	106965	107961	107238	107027
2025-06-27	106556	107558	106977	107156
2025-06-28	107085	107502	107085	107390
2025-06-29	107238	108430	107332	108118
2025-06-30	107025	108706	108387	107151
2025-07-01	105558	107385	107135	105729
2025-07-02	105430	109608	105671	109172
2025-07-03	108708	110306	108876	109740
2025-07-04	107474	109602	109602	108260
2025-07-05	107985	108268	108015	108207
2025-07-06	107924	109273	108216	109273
2025-07-07	107930	109426	109222	108032
2025-07-08	107720	109073	108294	108229
\.


--
-- Data for Name: etl_archivos1; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.etl_archivos1 (nombre, altura, peso) FROM stdin;
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
alex	1.67	51.25
ajay	1.82	61.91
alice	1.76	69.41
ravi	1.73	64.56
joe	1.72	65.45
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
jack	1.74	55.93
tom	1.77	64.18
tracy	1.78	61.9
john	1.72	50.97
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
simon	1.72	50.97
jacob	1.7	54.73
cindy	1.69	57.81
ivan	1.72	51.77
\.


--
-- Data for Name: etl_archivos_autos2; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.etl_archivos_autos2 ("modelo de auto", modelo, precio, combustible) FROM stdin;
alto k10	2016	4253.73	Petrol
ignis	2017	7313.43	Petrol
sx4	2011	6567.16	Petrol
alto k10	2014	3731.34	Petrol
wagon r	2013	4328.36	Petrol
swift	2011	4477.61	Petrol
swift	2013	6194.03	Petrol
swift	2017	8955.22	Petrol
alto k10	2010	2910.45	Petrol
ciaz	2015	11119.4	Diesel
alto 800	2017	4253.73	Petrol
ciaz	2015	10223.88	Diesel
ciaz	2015	11194.03	Petrol
ertiga	2015	9104.48	Petrol
dzire	2009	3358.21	Petrol
ertiga	2016	11567.16	Diesel
ertiga	2015	10820.9	Diesel
ertiga	2016	11567.16	Diesel
wagon r	2015	4850.75	CNG
sx4	2010	3955.22	Petrol
ritz	2014	5000	Petrol
sx4	2013	7089.55	Diesel
ciaz	2017	10820.9	Petrol
wagon r	2011	4253.73	Petrol
swift	2014	6865.67	Diesel
vitara brezza	2018	13805.97	Diesel
ciaz	2015	10074.63	Petrol
s cross	2015	9701.49	Diesel
ciaz	2016	13059.7	Diesel
ciaz	2015	11119.4	Diesel
baleno	2016	8731.34	Petrol
alto k10	2014	3805.97	Petrol
sx4	2008	2910.45	Petrol
dzire	2014	8208.96	Diesel
omni	2012	1865.67	Petrol
ciaz	2014	11194.03	Petrol
ritz	2013	3955.22	Petrol
wagon r	2006	1567.16	Petrol
ertiga	2015	8656.72	Petrol
ciaz	2017	11567.16	Petrol
ritz	2012	4626.87	Diesel
ritz	2011	3507.46	Petrol
swift	2014	7388.06	Diesel
ertiga	2014	8955.22	Diesel
dzire	2014	8208.96	Diesel
sx4	2011	4402.99	CNG
dzire	2015	6940.3	Petrol
800	2003	522.39	Petrol
alto k10	2016	4477.61	Petrol
sx4	2003	3358.21	Petrol
fortuner	2012	22238.81	Diesel
fortuner	2015	34328.36	Diesel
innova	2017	26865.67	Diesel
fortuner	2013	23880.6	Diesel
innova	2005	4104.48	Petrol
corolla altis	2009	5373.13	Petrol
etios cross	2015	6716.42	Petrol
corolla altis	2010	7089.55	Petrol
etios g	2014	6119.4	Petrol
fortuner	2014	29835.82	Diesel
fortuner	2012	21641.79	Diesel
etios g	2014	7089.55	Petrol
corolla altis	2016	21268.66	Petrol
\.


--
-- Data for Name: nutricion_frutas; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.nutricion_frutas (nombre, id, familia, orden, genero, calorias, grasas, azucar, carbohidratos, proteinas) FROM stdin;
Persimmon	52	Ebenaceae	Rosales	Diospyros	81	0	18	18	0
Strawberry	3	Rosaceae	Rosales	Fragaria	29	0.4	5.4	5.5	0.8
Banana	1	Musaceae	Zingiberales	Musa	96	0.2	17.2	22	1
Tomato	5	Solanaceae	Solanales	Solanum	74	0.2	2.6	3.9	0.9
Pear	4	Rosaceae	Rosales	Pyrus	57	0.1	10	15	0.4
Durian	60	Malvaceae	Malvales	Durio	147	5.3	6.75	27.1	1.5
Blackberry	64	Rosaceae	Rosales	Rubus	40	0.4	4.5	9	1.3
Lingonberry	65	Ericaceae	Ericales	Vaccinium	50	0.34	5.74	11.3	0.75
Kiwi	66	Actinidiaceae	Struthioniformes	Apteryx	61	0.5	9	15	1.1
Lychee	67	Sapindaceae	Sapindales	Litchi	66	0.44	15	17	0.8
Pineapple	10	Bromeliaceae	Poales	Ananas	50	0.12	9.85	13.12	0.54
Fig	68	Moraceae	Rosales	Ficus	74	0.3	16	19	0.8
Gooseberry	69	Grossulariaceae	Saxifragales	Ribes	44	0.6	0	10	0.9
Passionfruit	70	Passifloraceae	Malpighiales	Passiflora	97	0.7	11.2	22.4	2.2
Plum	71	Rosaceae	Rosales	Prunus	46	0.28	9.92	11.4	0.7
Orange	2	Rutaceae	Sapindales	Citrus	43	0.2	8.2	8.3	1
GreenApple	72	Rosaceae	Rosales	Malus	21	0.1	6.4	3.1	0.4
Raspberry	23	Rosaceae	Rosales	Rubus	53	0.7	4.4	12	1.2
Watermelon	25	Cucurbitaceae	Cucurbitales	Citrullus	30	0.2	6	8	0.6
Lemon	26	Rutaceae	Sapindales	Citrus	29	0.3	2.5	9	1.1
Mango	27	Anacardiaceae	Sapindales	Mangifera	60	0.38	13.7	15	0.82
Blueberry	33	Rosaceae	Rosales	Fragaria	29	0.4	5.4	5.5	0
Apple	6	Rosaceae	Rosales	Malus	52	0.4	10.3	11.4	0.3
Guava	37	Myrtaceae	Myrtales	Psidium	68	1	9	14	2.6
Apricot	35	Rosaceae	Rosales	Prunus	15	0.1	3.2	3.9	0.5
Melon	41	Cucurbitaceae	Cucurbitaceae	Cucumis	34	0	8	8	0
Tangerine	77	Rutaceae	Sapindales	Citrus	45	0.4	9.1	8.3	0
Pitahaya	78	Cactaceae	Caryophyllales	Cactaceae	36	0.4	3	7	1
Lime	44	Rutaceae	Sapindales	Citrus	25	0.1	1.7	8.4	0.3
Pomegranate	79	Lythraceae	Myrtales	Punica	83	1.2	13.7	18.7	1.7
Dragonfruit	80	Cactaceae	Caryophyllales	Selenicereus	60	1.5	8	9	9
Grape	81	Vitaceae	Vitales	Vitis	69	0.16	16	18.1	0.72
Morus	82	Moraceae	Rosales	Morus	43	0.39	8.1	9.8	1.44
Feijoa	76	Myrtaceae	Myrtoideae	Sellowiana	44	0.4	3	8	0.6
Avocado	84	Lauraceae	Laurales	Persea	160	14.66	0.66	8.53	2
Kiwifruit	85	Actinidiaceae	Ericales	Actinidia	61	0.5	8.9	14.6	1.14
Cranberry	87	Ericaceae	Ericales	Vaccinium	46	0.1	4	12.2	0.4
Cherry	9	Rosaceae	Rosales	Prunus	50	0.3	8	12	1
Peach	86	Rosaceae	Rosales	Prunus	39	0.25	8.4	9.5	0.9
Jackfruit	94	Moraceae	Rosales	Artocarpus	95	0	19.1	23.2	1.72
Horned Melon	95	Cucurbitaceae	Cucurbitales	Cucumis	44	1.26	0.5	7.56	1.78
Hazelnut	96	Betulaceae	Fagales	Corylus	628	61	4.3	17	15
Pomelo	98	Rutaceae	Sapindales	Citrus	37	0	8.5	9.67	0.82
Mangosteen	99	Clusiaceae	Malpighiales	Garcinia	73	0.58	16.11	17.91	0.41
Pumpkin	100	Cucurbitaceae	Cucurbitales	Cucurbita	25	0.3	3.3	4.6	1.1
Japanese Persimmon	101	 Ebenaceae	 Ericales	Diospyros	70	0.2	13	19	0.6
Papaya	42	Caricaceae	Brassicales	Carica	39	0.3	4.4	5.8	0.5
Annona	103	Annonaceae	Rosales	Annonas	92	0.29	3.4	19.1	1.5
Ceylon Gooseberry	104	Salicaceae	Malpighiales	Dovyalis	47	0.3	8.1	9.6	1.2
\.


--
-- Data for Name: paises_pbi; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.paises_pbi ("Paises", "PBI") FROM stdin;
United States	26854.6
China	19373.59
Japan	4409.74
Germany	4308.85
India	3736.88
United Kingdom	3158.94
France	2923.49
Italy	2169.74
Canada	2089.67
Brazil	2081.24
Russia	2062.65
South Korea	1721.91
Australia	1707.55
Mexico	1663.16
Spain	1492.43
Indonesia	1391.78
Netherlands	1080.88
Saudi Arabia	1061.9
Turkey	1029.3
Switzerland	869.6
Taiwan	790.73
Poland	748.89
Argentina	641.1
Belgium	624.25
Sweden	599.05
Ireland	594.1
Thailand	574.23
Norway	554.1
Israel	539.22
Singapore	515.55
Austria	515.2
Nigeria	506.6
United Arab Emirates	498.98
Vietnam	449.09
Malaysia	447.03
Philippines	440.9
Bangladesh	420.52
Denmark	405.63
South Africa	399.02
Hong Kong	382.85
Egypt	378.11
Pakistan	\N
Iran	367.97
Chile	358.56
Romania	348.9
Colombia	334.69
Czech Republic	330.48
Finland	301.67
Peru	268.24
Iraq	267.89
Portugal	267.72
New Zealand	251.97
Kazakhstan	245.7
Greece	239.3
Qatar	219.57
Algeria	206.01
Hungary	188.5
Kuwait	164.71
Ethiopia	156.08
Ukraine	148.71
Morocco	138.78
Slovakia	127.53
Ecuador	121.29
Dominican Republic	121.29
Puerto Rico	120.84
Kenya	118.13
Angola	117.88
Cuba	\N
Oman	104.9
Guatemala	102.31
Bulgaria	100.64
Venezuela	96.63
Uzbekistan	92.33
Luxembourg	86.97
Tanzania	85.42
Turkmenistan	82.65
Croatia	78.88
Lithuania	78.35
Costa Rica	77.78
Uruguay	77.31
Panama	77.26
Ivory Coast	77.05
Sri Lanka	\N
Serbia	73.96
Belarus	73.54
Azerbaijan	70.03
DR Congo	69.47
Slovenia	68.11
Ghana	66.62
Myanmar	63.99
Jordan	52.06
Tunisia	49.82
Uganda	49.79
Cameroon	48.62
Latvia	47.4
Sudan	46.7
Libya	46.3
Bolivia	46.1
Bahrain	44.87
Paraguay	42.82
Nepal	42.1
Estonia	41.55
Macau	35.84
El Salvador	33.75
Honduras	32.86
Papua New Guinea	31.36
Senegal	31.22
Cyprus	30.86
Cambodia	30.63
Zimbabwe	29.93
Zambia	29.27
Iceland	28.62
Bosnia and Herzegovina	28.49
Trinidad and Tobago	28.22
Georgia	27.95
Haiti	26.58
Lebanon	\N
Armenia	23.72
Guinea	23.33
Burkina Faso	21.08
Mali	20.78
Gabon	20.33
Albania	20.18
Afghanistan	\N
Mozambique	19.91
Palestine	19.21
Botswana	19.57
Yemen	19.53
Malta	19.4
Benin	19.24
Nicaragua	17.29
Jamaica	17.25
Mongolia	16.91
Niger	16.62
Guyana	16.31
Brunei	15.99
Madagascar	15.97
North Korea	\N
Moldova	15.83
Syria	\N
North Macedonia	15.28
Equatorial Guinea	15.1
Mauritius	14.57
Bahamas	14.11
Laos	14.09
Namibia	13.49
Rwanda	13.15
Congo	13.03
Tajikistan	12.8
Kyrgyzstan	12.31
Chad	11.96
Malawi	11.28
Mauritania	10.97
New Caledonia	\N
Kosovo	9.99
Togo	9
Somalia	8.74
Monaco	\N
Bermuda	\N
Montenegro	7.03
South Sudan	7.01
Maldives	7
Liechtenstein	\N
Barbados	6.12
French Polynesia	\N
Cayman Islands	\N
Fiji	5.38
Eswatini	4.82
Liberia	4.38
Djibouti	3.92
Andorra	3.67
Aruba	3.63
Sierra Leone	3.52
Suriname	3.47
Burundi	3.23
Belize	3.16
Greenland	\N
Central African Republic	2.74
Curaçao	\N
Bhutan	2.68
Eritrea	2.67
Lesotho	2.58
Cape Verde	2.47
Gambia	2.28
Saint Lucia	2.26
East Timor	1.99
Seychelles	1.95
Guinea-Bissau	1.89
Antigua and Barbuda	1.86
San Marino	1.81
Zanzibar	\N
Solomon Islands	1.7
British Virgin Islands	\N
Comoros	1.35
Grenada	1.27
Vanuatu	1.06
Saint Kitts and Nevis	1.05
Saint Vincent and the Grenadines	1.04
Turks and Caicos Islands	\N
Samoa	0.9
Sint Maarten	\N
Dominica	0.68
São Tomé and Príncipe	0.62
Tonga	0.54
Micronesia	0.46
Marshall Islands	0.29
Cook Islands	\N
Palau	0.26
Anguilla	\N
Kiribati	0.25
Nauru	0.15
Montserrat	\N
Tuvalu	0.06
United States	26854.6
China	19373.59
Japan	4409.74
Germany	4308.85
India	3736.88
United Kingdom	3158.94
France	2923.49
Italy	2169.74
Canada	2089.67
Brazil	2081.24
Russia	2062.65
South Korea	1721.91
Australia	1707.55
Mexico	1663.16
Spain	1492.43
Indonesia	1391.78
Netherlands	1080.88
Saudi Arabia	1061.9
Turkey	1029.3
Switzerland	869.6
Taiwan	790.73
Poland	748.89
Argentina	641.1
Belgium	624.25
Sweden	599.05
Ireland	594.1
Thailand	574.23
Norway	554.1
Israel	539.22
Singapore	515.55
Austria	515.2
Nigeria	506.6
United Arab Emirates	498.98
Vietnam	449.09
Malaysia	447.03
Philippines	440.9
Bangladesh	420.52
Denmark	405.63
South Africa	399.02
Hong Kong	382.85
Egypt	378.11
Pakistan	\N
Iran	367.97
Chile	358.56
Romania	348.9
Colombia	334.69
Czech Republic	330.48
Finland	301.67
Peru	268.24
Iraq	267.89
Portugal	267.72
New Zealand	251.97
Kazakhstan	245.7
Greece	239.3
Qatar	219.57
Algeria	206.01
Hungary	188.5
Kuwait	164.71
Ethiopia	156.08
Ukraine	148.71
Morocco	138.78
Slovakia	127.53
Ecuador	121.29
Dominican Republic	121.29
Puerto Rico	120.84
Kenya	118.13
Angola	117.88
Cuba	\N
Oman	104.9
Guatemala	102.31
Bulgaria	100.64
Venezuela	96.63
Uzbekistan	92.33
Luxembourg	86.97
Tanzania	85.42
Turkmenistan	82.65
Croatia	78.88
Lithuania	78.35
Costa Rica	77.78
Uruguay	77.31
Panama	77.26
Ivory Coast	77.05
Sri Lanka	\N
Serbia	73.96
Belarus	73.54
Azerbaijan	70.03
DR Congo	69.47
Slovenia	68.11
Ghana	66.62
Myanmar	63.99
Jordan	52.06
Tunisia	49.82
Uganda	49.79
Cameroon	48.62
Latvia	47.4
Sudan	46.7
Libya	46.3
Bolivia	46.1
Bahrain	44.87
Paraguay	42.82
Nepal	42.1
Estonia	41.55
Macau	35.84
El Salvador	33.75
Honduras	32.86
Papua New Guinea	31.36
Senegal	31.22
Cyprus	30.86
Cambodia	30.63
Zimbabwe	29.93
Zambia	29.27
Iceland	28.62
Bosnia and Herzegovina	28.49
Trinidad and Tobago	28.22
Georgia	27.95
Haiti	26.58
Lebanon	\N
Armenia	23.72
Guinea	23.33
Burkina Faso	21.08
Mali	20.78
Gabon	20.33
Albania	20.18
Afghanistan	\N
Mozambique	19.91
Palestine	19.21
Botswana	19.57
Yemen	19.53
Malta	19.4
Benin	19.24
Nicaragua	17.29
Jamaica	17.25
Mongolia	16.91
Niger	16.62
Guyana	16.31
Brunei	15.99
Madagascar	15.97
North Korea	\N
Moldova	15.83
Syria	\N
North Macedonia	15.28
Equatorial Guinea	15.1
Mauritius	14.57
Bahamas	14.11
Laos	14.09
Namibia	13.49
Rwanda	13.15
Congo	13.03
Tajikistan	12.8
Kyrgyzstan	12.31
Chad	11.96
Malawi	11.28
Mauritania	10.97
New Caledonia	\N
Kosovo	9.99
Togo	9
Somalia	8.74
Monaco	\N
Bermuda	\N
Montenegro	7.03
South Sudan	7.01
Maldives	7
Liechtenstein	\N
Barbados	6.12
French Polynesia	\N
Cayman Islands	\N
Fiji	5.38
Eswatini	4.82
Liberia	4.38
Djibouti	3.92
Andorra	3.67
Aruba	3.63
Sierra Leone	3.52
Suriname	3.47
Burundi	3.23
Belize	3.16
Greenland	\N
Central African Republic	2.74
Curaçao	\N
Bhutan	2.68
Eritrea	2.67
Lesotho	2.58
Cape Verde	2.47
Gambia	2.28
Saint Lucia	2.26
East Timor	1.99
Seychelles	1.95
Guinea-Bissau	1.89
Antigua and Barbuda	1.86
San Marino	1.81
Zanzibar	\N
Solomon Islands	1.7
British Virgin Islands	\N
Comoros	1.35
Grenada	1.27
Vanuatu	1.06
Saint Kitts and Nevis	1.05
Saint Vincent and the Grenadines	1.04
Turks and Caicos Islands	\N
Samoa	0.9
Sint Maarten	\N
Dominica	0.68
São Tomé and Príncipe	0.62
Tonga	0.54
Micronesia	0.46
Marshall Islands	0.29
Cook Islands	\N
Palau	0.26
Anguilla	\N
Kiribati	0.25
Nauru	0.15
Montserrat	\N
Tuvalu	0.06
\.


--
-- Data for Name: peliculas_top_50; Type: TABLE DATA; Schema: public; Owner: ing_data
--

COPY public.peliculas_top_50 ("Rango_Promedio", "Peliculas", "Años") FROM stdin;
1	The Godfather	1972
2	Citizen Kane	1941
3	Casablanca	1942
4	The Godfather, Part II	1974
5	Singin' in the Rain	1952
6	Psycho	1960
7	Rear Window	1954
8	Apocalypse Now	1979
9	2001: A Space Odyssey	1968
10	Seven Samurai	1954
11	Vertigo	1958
12	Sunset Blvd	1950
13	Modern Times	1936
14	Lawrence of Arabia	1962
15	North by Northwest	1959
16	Star Wars	1977
17	Parasite	2019
18	Schindler's List	1993
19	Lord of the Rings: The Fellowship of the Ring	2001
20	Shawshank Redemption	1994
21	It's a Wonderful Life	1946
22	Pulp Fiction	1994
23	Avengers: Endgame	2019
24	City Lights	1931
25	One Flew Over the Cuckoo's Nest	1975
26	Goodfellas	1990
27	Raiders of the Lost Ark	1981
28	12 Angry Men	1957
29	The Silence of the Lambs	1991
30	Taxi Driver	1976
31	Saving Private Ryan	1998
32	E.T. the Extra Terrestrial	1982
33	Alien	1979
34	Spider-Man: Into the Spider-verse	2018
35	Blade Runner	1982
36	Double Indemnity	1944
37	The Dark Knight	2008
38	The Wizard of Oz	1939
39	Star Wars: Episode V- The Empire Strikes Back	1980
40	The Searchers	1956
41	Mad Max: Fury Road	2015
42	Inception	2010
43	Lord of the Rings: Return of the King	2003
44	The Matrix	1999
45	Fight Club	1999
46	Back to the Future	1985
47	It Happened One Night	1934
48	The Good, the Bad, and the Ugly	1966
49	Lord of the Rings: The Two Towers	2002
50	All About Eve	1950
\.


--
-- PostgreSQL database dump complete
--

