--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

-- Started on 2021-02-07 04:16:41 WIB

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
-- TOC entry 203 (class 1259 OID 16392)
-- Name: images; Type: TABLE; Schema: public; Owner: serv-test
--

CREATE TABLE public.images (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    cloudinary_id character varying(128) NOT NULL,
    image_url character varying(128) NOT NULL
);


ALTER TABLE public.images OWNER TO "serv-test";

--
-- TOC entry 202 (class 1259 OID 16390)
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: serv-test
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO "serv-test";

--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 202
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: serv-test
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- TOC entry 2832 (class 2604 OID 16395)
-- Name: images id; Type: DEFAULT; Schema: public; Owner: serv-test
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- TOC entry 2962 (class 0 OID 16392)
-- Dependencies: 203
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: serv-test
--

COPY public.images (id, title, cloudinary_id, image_url) FROM stdin;
5	walaah	fusjnuyqiuew1lnzdwix	https://res.cloudinary.com/df0idyfu5/image/upload/v1612640874/fusjnuyqiuew1lnzdwix.jpg
6	walaah	zsk5wuqmvjbmnkuene3v	https://res.cloudinary.com/df0idyfu5/image/upload/v1612644797/zsk5wuqmvjbmnkuene3v.jpg
7	walaah	odxqs5ii4rluvnytdfot	https://res.cloudinary.com/df0idyfu5/image/upload/v1612645942/odxqs5ii4rluvnytdfot.jpg
\.


--
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 202
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: serv-test
--

SELECT pg_catalog.setval('public.images_id_seq', 7, true);


--
-- TOC entry 2834 (class 2606 OID 16397)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: serv-test
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


-- Completed on 2021-02-07 04:16:41 WIB

--
-- PostgreSQL database dump complete
--

