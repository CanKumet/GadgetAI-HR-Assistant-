--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

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
-- Data for Name: functions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.functions (id, name, description) FROM stdin;
1	get_employees	Tüm çalışanların listesini getirir.
2	add_employee	Yeni çalışan ekler.
3	update_salary	Çalışanın maaşını günceller.
4	delete_employee	Çalışanı siler.
5	get_employees_by_department	Belirli bir departmandaki çalışanları getirir.
6	get_highest_paid_employee	En yüksek maaş alan çalışanı getirir.
7	get_lowest_paid_employee	En düşük maaş alan çalışanı getirir.
8	get_average_salary	Şirketteki ortalama maaşı hesaplar.
9	get_employee_count_by_department	Her departmandaki çalışan sayısını getirir.
10	get_total_salary_by_department	Her departmandaki toplam maaşı getirir.
11	get_department_with_most_employees	En fazla çalışana sahip departmanı getirir.
12	get_user_data	Giriş yapan kullanıcının verilerini getirir. Kullanıcı yetkisini kontrol eder.
13	increase_all_salaries	Tüm çalışanların maaşlarına yüzde oranında zam yapar
14	change_password	Kullanıcının kendi şifresini değiştirmesini sağlar.
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name) FROM stdin;
1	admin
2	manager
3	employee
\.


--
-- Data for Name: role_functions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role_functions (role_id, function_id) FROM stdin;
1	1
1	2
1	3
1	4
1	5
1	6
1	7
1	8
1	9
1	10
1	11
1	12
1	13
1	14
2	1
2	2
2	3
2	5
2	6
2	7
2	8
2	9
2	10
3	14
3	13
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, fullname, email, salary, department, created_at) FROM stdin;
2	ayse.yilmaz	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Ayşe Yılmaz	ayse.yilmaz@example.com	120000	HR	2025-03-20 10:06:58.33
3	zeynep.tek	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Zeynep Tek	zeynep.tek@example.com	120000	IT	2025-03-20 10:06:58.33
4	burak.kurt	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Burak Kurt	burak.kurt@example.com	120000	HR	2025-03-20 10:06:58.33
5	fatih.can	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Fatih Can	fatih.can@example.com	120000	IT	2025-03-20 10:06:58.33
6	elif.celik	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Elif Çelik	elif.celik@example.com	120000	HR	2025-03-20 10:06:58.33
7	buse.kaya	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Buse Kaya	buse.kaya@example.com	120000	IT	2025-03-20 10:06:58.33
8	gorkem.yilmaz	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Görkem Yılmaz	gorkem.yilmaz@example.com	120000	HR	2025-03-20 10:06:58.33
9	eren.berk	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Eren Berk	eren.berk@example.com	120000	IT	2025-03-20 10:06:58.33
10	doğan.çevik	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Doğan Çevik	dogan.cevik@example.com	120000	HR	2025-03-20 10:06:58.33
11	ahmet.kara	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Ahmet Kara	ahmet.kara@example.com	120000	IT	2025-03-20 10:06:58.33
1	can.kumet	8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92	Can Kümet	can.kumet@example.com	150000	IT	2025-03-20 10:06:58.33
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (user_id, role_id) FROM stdin;
1	1
2	3
3	3
4	3
5	3
6	3
7	3
8	3
9	3
10	2
11	2
12	3
13	2
14	3
15	2
16	3
17	3
18	1
\.


--
-- Name: functions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.functions_id_seq', 14, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 18, true);


--
-- PostgreSQL database dump complete
--

