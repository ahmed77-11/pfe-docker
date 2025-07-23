--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-07-18 10:47:56

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
-- TOC entry 280 (class 1259 OID 89063)
-- Name: x_type_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_type_event (
    x_type_event_id bigint NOT NULL,
    x_type_event_code character varying(8),
    x_type_event_dsg character varying(255) NOT NULL,
    x_type_event_nbr_jour_ouv_valeur integer NOT NULL,
    sys_action character varying(32) NOT NULL,
    sys_adresse_ip character varying(32) NOT NULL,
    sys_date timestamp(6) without time zone NOT NULL,
    sys_user character varying(32) NOT NULL,
    sys_user_id bigint NOT NULL,
    x_type_event_bool_contrat boolean
);


ALTER TABLE public.x_type_event OWNER TO postgres;

--
-- TOC entry 5118 (class 0 OID 89063)
-- Dependencies: 280
-- Data for Name: x_type_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (1, 'eveCNCAD', 'Création un nouveau contrat pour Adhérent', 54, 'CREATE', '127.0.0.1', '2025-03-21 17:44:58.691', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (2, 'eveMLAAd', 'Modification Limite Autorisation Adhérent', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (3, 'eveCNvAc', 'Création un nouveau Acheteur', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (4, 'eveMLAAc', 'Modification Limite Autorisation Acheteur', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (5, 'eveCrNvF', 'Création un nouveau Fournisseur', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (6, 'eveMoLAF', 'Modification Limite Autorisation Fournisseur', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, true);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (7, 'eveADocR', 'Achat de Document de remise', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, false);
INSERT INTO public.x_type_event (x_type_event_id, x_type_event_code, x_type_event_dsg, x_type_event_nbr_jour_ouv_valeur, sys_action, sys_adresse_ip, sys_date, sys_user, sys_user_id, x_type_event_bool_contrat) VALUES (8, 'eveLtrg', 'Lettrage', 44, 'CREATE', '127.0.0.1', '2025-03-28 00:44:16.725', 'admin', 1, false);


--
-- TOC entry 4970 (class 2606 OID 89110)
-- Name: x_type_event ukilg41k89e0380fd82r33fa53e; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_event
    ADD CONSTRAINT ukilg41k89e0380fd82r33fa53e UNIQUE (x_type_event_code);


--
-- TOC entry 4972 (class 2606 OID 89067)
-- Name: x_type_event x_type_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_type_event
    ADD CONSTRAINT x_type_event_pkey PRIMARY KEY (x_type_event_id);


-- Completed on 2025-07-18 10:47:56

--
-- PostgreSQL database dump complete
--

