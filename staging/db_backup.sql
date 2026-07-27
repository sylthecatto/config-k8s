--
-- PostgreSQL database cluster dump
--

\restrict 8ftbP05f74jSGclUvzTeZwd694lRN6K1Bt29ORfWGlpp5MiW0vd2K9EITtnmImV

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:HreIqd1oVlR9fyh+f6Eo3Q==$aKyB210fsFELrZzqEQj3tVd6MjFldgZlWtcKgTIRcLE=:3C8+JaOjJWP2jpv+ecS17k7ARr6Vq07IL50I8RfEljo=';

--
-- User Configurations
--








\unrestrict 8ftbP05f74jSGclUvzTeZwd694lRN6K1Bt29ORfWGlpp5MiW0vd2K9EITtnmImV

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict 4bgHAzC4V9Pximiwb3Wpyv6usFDgM2gsGkLdLx4mwHhYNlyhQ9rZMCrvABkYeZg

-- Dumped from database version 15.18
-- Dumped by pg_dump version 15.18

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
-- PostgreSQL database dump complete
--

\unrestrict 4bgHAzC4V9Pximiwb3Wpyv6usFDgM2gsGkLdLx4mwHhYNlyhQ9rZMCrvABkYeZg

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict cKMvCrxXKM0pendq8rWpGyDKXs1sGgfYcusTwglNyJ61Q526gdFW2LTLI2KyuUB

-- Dumped from database version 15.18
-- Dumped by pg_dump version 15.18

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
-- PostgreSQL database dump complete
--

\unrestrict cKMvCrxXKM0pendq8rWpGyDKXs1sGgfYcusTwglNyJ61Q526gdFW2LTLI2KyuUB

--
-- Database "sampleapp" dump
--

--
-- PostgreSQL database dump
--

\restrict s7NSRX0JgpDpQ8o4bQgLO11hRKqleM9666Plgx4ZHDhrtIsZsidDEa6spQmuezr

-- Dumped from database version 15.18
-- Dumped by pg_dump version 15.18

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
-- Name: sampleapp; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sampleapp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE sampleapp OWNER TO postgres;

\unrestrict s7NSRX0JgpDpQ8o4bQgLO11hRKqleM9666Plgx4ZHDhrtIsZsidDEa6spQmuezr
\connect sampleapp
\restrict s7NSRX0JgpDpQ8o4bQgLO11hRKqleM9666Plgx4ZHDhrtIsZsidDEa6spQmuezr

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
-- Name: notes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notes (
    id integer NOT NULL,
    user_id integer,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.notes OWNER TO postgres;

--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notes_id_seq OWNER TO postgres;

--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: notes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: notes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notes (id, user_id, content, created_at) FROM stdin;
1	5	CICD Pipelines	2026-07-23 06:35:10.003092
2	7	ahdsbasdasd	2026-07-23 06:52:56.598251
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password) FROM stdin;
1	admin	$2b$10$H/WaYkVD0BL9vlOdypJw1eYJgKFInHDvjuq6qYyioEcyA8JwLcIie
5	admin2	$2b$10$sF8fLlBs2ObrJrJFJRQwhO0WYBN16AMV2wHTH1MbPn2W0QCsdf6f.
7	aeron	$2b$10$VdF17zbGQ.CWUeJw3tbHneHIflDxOiU5TtEXIUP5rJTBXy7ZvQoZO
10	airnav	$2b$10$6W.Tnv3y.vPJk5Q.3G/9/Oau4gV0AQ3C2Fwe2TU51b3UugVPfdmbW
\.


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notes_id_seq', 2, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 12, true);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: notes notes_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict s7NSRX0JgpDpQ8o4bQgLO11hRKqleM9666Plgx4ZHDhrtIsZsidDEa6spQmuezr

--
-- PostgreSQL database cluster dump complete
--

