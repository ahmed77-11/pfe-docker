\connect "Med_FactorDB"
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-22 18:12:57

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5130 (class 1262 OID 32768)
-- Name: Med_FactorDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Med_FactorDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Tunisia.1252';


ALTER DATABASE "Med_FactorDB" OWNER TO postgres;

\connect "Med_FactorDB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 297 (class 1259 OID 116666)
-- Name: x_type_piece_identité; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."x_type_piece_identité" (
    x_type_piece_ident_id bigint NOT NULL,
    x_type_piece_ident_code character varying(255) NOT NULL,
    x_type_piece_ident_dsg character varying(255) NOT NULL,
    x_type_piece_ident_bool_pm_tun boolean NOT NULL,
    x_type_piece_ident_bool_pp_etr boolean NOT NULL,
    x_type_piece_ident_bool_pp_etr_non_res boolean NOT NULL,
    x_type_piece_ident_bool_pp_etr_res boolean NOT NULL,
    x_type_piece_ident_bool_pp_tun boolean NOT NULL,
    sys_adr_ip character varying(255),
    sys_date timestamp(6) without time zone,
    sys_user character varying(255),
    sys_user_id bigint,
    x_type_piece_ident_taille integer NOT NULL
);


ALTER TABLE public."x_type_piece_identité" OWNER TO postgres;

--
-- TOC entry 5124 (class 0 OID 116666)
-- Dependencies: 297
-- Data for Name: x_type_piece_identité; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."x_type_piece_identité" VALUES (102, 'CIN', 'CIN', false, false, false, false, true, '127.0.0.1', '2025-03-02 01:00:00', 'admin', 1, 8);
INSERT INTO public."x_type_piece_identité" VALUES (103, 'RNE', 'RNE', true, false, false, false, false, '127.0.0.1', '2025-03-02 01:00:00', 'admin', 1, 12);
INSERT INTO public."x_type_piece_identité" VALUES (104, 'SEJOUR', 'CARTE SEJOUR', false, true, true, true, false, '127.0.0.1', '2025-03-02 01:00:00', 'admin', 1, 10);
INSERT INTO public."x_type_piece_identité" VALUES (105, 'PATENTE', 'PATENTE', false, false, false, false, true, '127.0.0.1', '2025-07-13 01:00:00', 'admin', 1, 15);


--
-- TOC entry 4978 (class 2606 OID 116672)
-- Name: x_type_piece_identité x_type_piece_identité_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."x_type_piece_identité"
    ADD CONSTRAINT "x_type_piece_identité_pkey" PRIMARY KEY (x_type_piece_ident_id);


-- Completed on 2025-07-22 18:12:57

--
-- PostgreSQL database dump complete
--

