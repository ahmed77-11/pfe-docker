--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-16 18:25:55

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
-- TOC entry 5124 (class 1262 OID 50110)
-- Name: Med_FactorContractDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Med_FactorContractDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_Tunisia.1252';


ALTER DATABASE "Med_FactorContractDB" OWNER TO postgres;

\connect "Med_FactorContractDB"

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
-- TOC entry 279 (class 1259 OID 89058)
-- Name: x_type_doc_remise; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_type_doc_remise (
    x_type_doc_remise_id bigint NOT NULL,
    x_type_doc_remise_bool_detail boolean NOT NULL,
    x_type_doc_remise_bool_maitre boolean NOT NULL,
    x_type_doc_remise_code character varying(8) NOT NULL,
    x_type_doc_remise_dsg character varying(64) NOT NULL,
    sys_action character varying(32) NOT NULL,
    sys_adresse_ip character varying(32) NOT NULL,
    sys_date timestamp(6) without time zone NOT NULL,
    sys_user character varying(32) NOT NULL,
    sys_user_id bigint NOT NULL
);


ALTER TABLE public.x_type_doc_remise OWNER TO postgres;

--
-- TOC entry 5118 (class 0 OID 89058)
-- Dependencies: 279
-- Data for Name: x_type_doc_remise; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.x_type_doc_remise VALUES (1, false, true, 'DR001', 'facture', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.695', 'admin', 1);
INSERT INTO public.x_type_doc_remise VALUES (2, false, true, 'DR002', 'bon de commande', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.695', 'admin', 1);
INSERT INTO public.x_type_doc_remise VALUES (3, false, true, 'DR003', 'marché', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.695', 'admin', 1);


--
-- TOC entry 4970 (class 2606 OID 89108)
-- Name: x_type_doc_remise ukfocyqkoo8h6od3etpoab5e3v0; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_doc_remise
    ADD CONSTRAINT ukfocyqkoo8h6od3etpoab5e3v0 UNIQUE (x_type_doc_remise_code);


--
-- TOC entry 4972 (class 2606 OID 89062)
-- Name: x_type_doc_remise x_type_doc_remise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_doc_remise
    ADD CONSTRAINT x_type_doc_remise_pkey PRIMARY KEY (x_type_doc_remise_id);


-- Completed on 2025-07-16 18:25:55

--
-- PostgreSQL database dump complete
--

