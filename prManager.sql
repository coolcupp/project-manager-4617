--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: project_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_users (
    project_id uuid NOT NULL,
    user_id uuid NOT NULL
);


ALTER TABLE public.project_users OWNER TO postgres;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL,
    description text
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    status character varying(255) NOT NULL,
    priority character varying(255) NOT NULL,
    project_id uuid
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- Name: user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_roles (
    user_id uuid NOT NULL,
    role_id uuid NOT NULL
);


ALTER TABLE public.user_roles OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: project_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_users (project_id, user_id) FROM stdin;
ecb02a3b-716c-48dd-b092-d98ba4c7e18f	863eb761-69f5-4275-aec6-d7f3a273ca2b
ecb02a3b-716c-48dd-b092-d98ba4c7e18f	816cb02e-daa1-4e97-bde4-87544e9ed475
1c1e4066-fd8e-41af-a869-bfd4ce936ad5	5a771b52-be57-4ea5-877d-4c3e69113ba4
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, description) FROM stdin;
ecb02a3b-716c-48dd-b092-d98ba4c7e18f	Проект А	Описание проекта А
1c1e4066-fd8e-41af-a869-bfd4ce936ad5	Проект Б	Описание проекта Б
1fa083dd-0b3b-4a28-804c-48b5ddc85408	Проект В	Описание проекта В
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, name) FROM stdin;
a6f91d0e-76ba-4ebd-956c-7c6008984d12	Администратор
8bfae83a-119d-468c-94a5-f25522467163	Участник
ebaecd37-ced0-4f0a-a8ba-600c29f0459e	Наблюдатель
\.


--
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks (id, name, description, status, priority, project_id) FROM stdin;
95c51e3a-fe1d-409e-9ffb-53309344ebb8	Задача 1	Описание задачи 1	Новая	Высокий	ecb02a3b-716c-48dd-b092-d98ba4c7e18f
fe89e421-efc7-4035-b13e-a249d0f1abd4	Задача 2	Описание задачи 2	В работе	Средний	ecb02a3b-716c-48dd-b092-d98ba4c7e18f
cc6c6347-95ec-43ea-a0d6-8b13082c11ba	Задача 3	Описание задачи 3	Завершена	Низкий	1c1e4066-fd8e-41af-a869-bfd4ce936ad5
\.


--
-- Data for Name: user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_roles (user_id, role_id) FROM stdin;
863eb761-69f5-4275-aec6-d7f3a273ca2b	a6f91d0e-76ba-4ebd-956c-7c6008984d12
816cb02e-daa1-4e97-bde4-87544e9ed475	8bfae83a-119d-468c-94a5-f25522467163
5a771b52-be57-4ea5-877d-4c3e69113ba4	ebaecd37-ced0-4f0a-a8ba-600c29f0459e
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password) FROM stdin;
863eb761-69f5-4275-aec6-d7f3a273ca2b	user1	user1@example.com	hash1
816cb02e-daa1-4e97-bde4-87544e9ed475	user2	user2@example.com	hash2
5a771b52-be57-4ea5-877d-4c3e69113ba4	user3	user3@example.com	hash3
\.


--
-- Name: project_users project_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_users
    ADD CONSTRAINT project_users_pkey PRIMARY KEY (project_id, user_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: user_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: project_users project_users_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_users
    ADD CONSTRAINT project_users_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: project_users project_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_users
    ADD CONSTRAINT project_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tasks tasks_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: user_roles user_roles_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- Name: user_roles user_roles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

