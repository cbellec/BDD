--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

-- Started on 2021-09-17 14:27:45 CEST

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 645 (class 1247 OID 16436)
-- Name: sel; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.sel AS (
);


ALTER TYPE public.sel OWNER TO postgres;

--
-- TOC entry 649 (class 1247 OID 16453)
-- Name: type_sel; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.type_sel AS ENUM (
    'fleur',
    'gros'
);


ALTER TYPE public.type_sel OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 206 (class 1259 OID 16417)
-- Name: carreau; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.carreau (
    idcar integer NOT NULL,
    idmar integer NOT NULL,
    numemp integer NOT NULL
);


ALTER TABLE public.carreau OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16390)
-- Name: marais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marais (
    idmar integer NOT NULL,
    adrmar character varying(255),
    nommar character varying(50) NOT NULL
);


ALTER TABLE public.marais OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: proprietaire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proprietaire (
    idpro integer NOT NULL,
    nompro character varying(50) NOT NULL,
    prenompro character varying(50) NOT NULL
);


ALTER TABLE public.proprietaire OWNER TO postgres;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE proprietaire; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.proprietaire IS 'Personne possédant un marais salant.';


--
-- TOC entry 204 (class 1259 OID 16397)
-- Name: propriete; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.propriete (
    idpro integer NOT NULL,
    idmar integer NOT NULL
);


ALTER TABLE public.propriete OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16429)
-- Name: recolte; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recolte (
    idrec integer NOT NULL,
    idcar integer NOT NULL,
    idsau integer NOT NULL,
    daterec date NOT NULL,
    qtesel numeric(5,3) NOT NULL,
    typesel public.type_sel
);


ALTER TABLE public.recolte OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 207
-- Name: TABLE recolte; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.recolte IS 'Une fois jour ou tous les 2 jours selon la météo, unsaunier récolte une quantité de gros sel et de fleur de sel.';


--
-- TOC entry 205 (class 1259 OID 16412)
-- Name: saunier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.saunier (
    idsau integer NOT NULL,
    nomsau character varying(50) NOT NULL,
    prenomsau character varying(50) NOT NULL
);


ALTER TABLE public.saunier OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE saunier; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.saunier IS 'Personne récoltant le sel.';


--
-- TOC entry 3015 (class 0 OID 16417)
-- Dependencies: 206
-- Data for Name: carreau; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.carreau (idcar, idmar, numemp) FROM stdin;
\.


--
-- TOC entry 3012 (class 0 OID 16390)
-- Dependencies: 203
-- Data for Name: marais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marais (idmar, adrmar, nommar) FROM stdin;
\.


--
-- TOC entry 3011 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: proprietaire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proprietaire (idpro, nompro, prenompro) FROM stdin;
\.


--
-- TOC entry 3013 (class 0 OID 16397)
-- Dependencies: 204
-- Data for Name: propriete; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.propriete (idpro, idmar) FROM stdin;
\.


--
-- TOC entry 3016 (class 0 OID 16429)
-- Dependencies: 207
-- Data for Name: recolte; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recolte (idrec, idcar, idsau, daterec, qtesel, typesel) FROM stdin;
\.


--
-- TOC entry 3014 (class 0 OID 16412)
-- Dependencies: 205
-- Data for Name: saunier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.saunier (idsau, nomsau, prenomsau) FROM stdin;
\.


--
-- TOC entry 2875 (class 2606 OID 16421)
-- Name: carreau carreau_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreau
    ADD CONSTRAINT carreau_pkey PRIMARY KEY (idcar);


--
-- TOC entry 2869 (class 2606 OID 16394)
-- Name: marais marais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marais
    ADD CONSTRAINT marais_pkey PRIMARY KEY (idmar);


--
-- TOC entry 2867 (class 2606 OID 16389)
-- Name: proprietaire proprietaire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proprietaire
    ADD CONSTRAINT proprietaire_pkey PRIMARY KEY (idpro);


--
-- TOC entry 2871 (class 2606 OID 16401)
-- Name: propriete propriete_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propriete
    ADD CONSTRAINT propriete_pkey PRIMARY KEY (idpro, idmar);


--
-- TOC entry 2879 (class 2606 OID 16433)
-- Name: recolte recolte_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recolte
    ADD CONSTRAINT recolte_pkey PRIMARY KEY (idrec);


--
-- TOC entry 2873 (class 2606 OID 16416)
-- Name: saunier saunier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.saunier
    ADD CONSTRAINT saunier_pkey PRIMARY KEY (idsau);


--
-- TOC entry 2877 (class 2606 OID 16423)
-- Name: carreau unique_check; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreau
    ADD CONSTRAINT unique_check UNIQUE (idmar, numemp);


--
-- TOC entry 2883 (class 2606 OID 16442)
-- Name: recolte FK_idcar_recolte_marais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recolte
    ADD CONSTRAINT "FK_idcar_recolte_marais" FOREIGN KEY (idcar) REFERENCES public.carreau(idcar) NOT VALID;


--
-- TOC entry 2884 (class 2606 OID 16447)
-- Name: recolte FK_idsau_recolte_saunier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recolte
    ADD CONSTRAINT "FK_idsau_recolte_saunier" FOREIGN KEY (idsau) REFERENCES public.saunier(idsau) NOT VALID;


--
-- TOC entry 2882 (class 2606 OID 16424)
-- Name: carreau fk_idmar_carreau_marais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.carreau
    ADD CONSTRAINT fk_idmar_carreau_marais FOREIGN KEY (idmar) REFERENCES public.marais(idmar);


--
-- TOC entry 2880 (class 2606 OID 16402)
-- Name: propriete ref1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propriete
    ADD CONSTRAINT ref1 FOREIGN KEY (idpro) REFERENCES public.proprietaire(idpro);


--
-- TOC entry 2881 (class 2606 OID 16407)
-- Name: propriete ref2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.propriete
    ADD CONSTRAINT ref2 FOREIGN KEY (idmar) REFERENCES public.marais(idmar) NOT VALID;


-- Completed on 2021-09-17 14:27:45 CEST

--
-- PostgreSQL database dump complete
--

