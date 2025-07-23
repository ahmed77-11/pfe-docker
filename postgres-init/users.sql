\connect "Med_FactorUsersDB"
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-23 00:46:03

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
-- TOC entry 4909 (class 1262 OID 35441)
-- Name: Med_FactorUsersDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Med_FactorUsersDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Tunisia.1252';


ALTER DATABASE "Med_FactorUsersDB" OWNER TO postgres;

\connect "Med_FactorUsersDB"

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
-- TOC entry 221 (class 1259 OID 37994)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    cin character varying(255),
    email character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    password character varying(255),
    archiver boolean,
    force_change_password boolean,
    profile_picture character varying(255),
    adherent bigint,
    is_adherent boolean
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 4903 (class 0 OID 37994)
-- Dependencies: 221
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, cin, email, firstname, lastname, password, archiver, force_change_password, profile_picture, adherent, is_adherent) VALUES (1, '12345678', 'admin2@gmail.com', 'ADMIN', NULL, '$2a$10$.GKQZ8iO8EGScMlEUk5gie.YynLKiKvvv9XucY8/bmrJ2CJoo2Y5W', false, false, '/uploads/09d904b5-b7e9-410c-a05b-28cfdb5ed754_9629170e-916c-4956-9e0a-96c69877cc68.jpg', NULL, false);
INSERT INTO public.user_role values (1,1);

--
-- TOC entry 4753 (class 2606 OID 38401)
-- Name: users uk6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- TOC entry 4755 (class 2606 OID 38002)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4757 (class 2606 OID 38000)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2025-07-23 00:46:03

--
-- PostgreSQL database dump complete
--

