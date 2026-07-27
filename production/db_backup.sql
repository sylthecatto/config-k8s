--
-- PostgreSQL database cluster dump
--

\restrict wLXD0fUCs3cEDYwjS5M8mot5rFSdLtkAmyGrowR8QXg5dTpxdUgI11zfTvMXciS

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:4AYuZFgKtR5UcGNFNs+9Tw==$54ZuuzL0Ex2/1RayDDwwr0x7Gqax0tYgShX76MzmyEc=:BM5HyKIaEjCNUCmLRBvvGW2/vKJdY/wU0yZfJxty69Q=';

--
-- User Configurations
--








\unrestrict wLXD0fUCs3cEDYwjS5M8mot5rFSdLtkAmyGrowR8QXg5dTpxdUgI11zfTvMXciS

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

\restrict bD0RyxjCaZLH4hogWUKbknmXg54JGzaHXZswiJSd9yPmIBn4wDXxCiFWlvcFKEG

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

\unrestrict bD0RyxjCaZLH4hogWUKbknmXg54JGzaHXZswiJSd9yPmIBn4wDXxCiFWlvcFKEG

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict MA2f7v4knIOANvEertsguE8bGKyC0Kz1Iyd9Xfpyu41fV6mAiMVVzpZ6fkKd2VC

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

\unrestrict MA2f7v4knIOANvEertsguE8bGKyC0Kz1Iyd9Xfpyu41fV6mAiMVVzpZ6fkKd2VC

--
-- Database "sampleapp" dump
--

--
-- PostgreSQL database dump
--

\restrict 8wKZ9Ybi6oxg2cWIXwnWp63BM3tzSnI1EXRHgFK5PPaHu8pU9jLArW9sUItjPT2

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

\unrestrict 8wKZ9Ybi6oxg2cWIXwnWp63BM3tzSnI1EXRHgFK5PPaHu8pU9jLArW9sUItjPT2
\connect sampleapp
\restrict 8wKZ9Ybi6oxg2cWIXwnWp63BM3tzSnI1EXRHgFK5PPaHu8pU9jLArW9sUItjPT2

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
1	17	nig	2026-07-24 01:24:19.442807
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password) FROM stdin;
1	admin	$2b$10$6/634UZLIahU3lRToJz1QeW3oXI4YoB4Nu4iuytm2..fpw9zgPsDu
3	aeron	$2b$10$1sHMDbSzQaEjd9mllMbkMOR85BkxIuksiDY/Sl02/qI1mkHctLvBu
4	airnav	$2b$10$GF.IXa6eMdq8U1dlUz4ZvOz9sMppeIIRvQqY1jUIAy5FPQ/YGrEle
10	airnav1	$2b$10$c5wuN3nkbmjzDSBOYqgzq.LgTmVIrYjmmu//wOqqryKYL2GmXB.Hm
13	airnav2	$2b$10$e6.WHotcJ9QLJbLwO4FltOtxy5CjW1SaWGDrHB5epoHO/mJrv38ey
15	airnav3	$2b$10$A73fIIgBLmaY8Nk7Qd17qORR0DOXqZ0zUNSPtJupxHE6oMmoAdI1m
17	nig	$2b$10$fpyiZ4ER4Yiph6EGFU9Qi.8/XGvW5og196JLlKsaAtOb5aa/0.oAW
21	airnav23	$2b$10$kwpt6BWhBsf99sE5.AE.0OAzRuRy0ILMlSuSVc2iyGnlOv94nGoGC
22	admin23	$2b$10$.rt7gLduS88.TA/qTopjQOOvrN4adOXHF1wbbfAbO5MA9YywPCh3S
\.


--
-- Name: notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notes_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 24, true);


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

\unrestrict 8wKZ9Ybi6oxg2cWIXwnWp63BM3tzSnI1EXRHgFK5PPaHu8pU9jLArW9sUItjPT2

--
-- PostgreSQL database cluster dump complete
--

