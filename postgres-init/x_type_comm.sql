\connect "Med_FactorContractDB"
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-22 18:30:36

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
-- TOC entry 277 (class 1259 OID 89048)
-- Name: x_type_comm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_type_comm (
    x_type_comm_id bigint NOT NULL,
    x_type_comm_code character varying(8),
    x_type_comm_dsg character varying(255) NOT NULL,
    sys_action character varying(32) NOT NULL,
    sys_adresse_ip character varying(32) NOT NULL,
    sys_date timestamp(6) without time zone NOT NULL,
    sys_user character varying(32) NOT NULL,
    sys_user_id bigint NOT NULL
);


ALTER TABLE public.x_type_comm OWNER TO postgres;

--
-- TOC entry 5118 (class 0 OID 89048)
-- Dependencies: 277
-- Data for Name: x_type_comm; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.x_type_comm VALUES (1, 'commEDFC', 'Commission étude de dossier de factoring et établissement de contrat', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (2, 'commFact', 'Commission de Factoring', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (3, 'commMoyp', 'Commission sur moyen de paiement impayé', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (4, 'commPmoy', 'Commission de prorogation de moyen de paiement', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (5, 'CommLitg', 'Commission sur litige', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (6, 'commPrlg', 'Commission de prorogation de litige', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (7, 'CommEDLF', 'Commission étude une nouvelle demande de limite de financement', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (8, 'commRvLF', 'Commission de renouvellement de limite de financement', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (9, 'commRvgr', 'Commission de renouvellement de garantie', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (10, 'commSgBO', 'Commission de signature du billet à ordre', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);
INSERT INTO public.x_type_comm VALUES (11, 'commLtrg', 'Commission de lettrage', 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.7', 'admin', 1);


--
-- TOC entry 4970 (class 2606 OID 89104)
-- Name: x_type_comm ukjoqi9q3rrejaluq1vy0ush3el; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_comm
    ADD CONSTRAINT ukjoqi9q3rrejaluq1vy0ush3el UNIQUE (x_type_comm_code);


--
-- TOC entry 4972 (class 2606 OID 89052)
-- Name: x_type_comm x_type_comm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_comm
    ADD CONSTRAINT x_type_comm_pkey PRIMARY KEY (x_type_comm_id);


-- Completed on 2025-07-22 18:30:36

--
-- PostgreSQL database dump complete
--

