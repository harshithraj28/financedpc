--
-- neondb_ownerQL database dump
--


-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-03-05 12:45:22

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
-- TOC entry 220 (class 1259 OID 16500)
-- Name: accounts; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.accounts (
    id integer NOT NULL,
    name text NOT NULL,
    code text NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.accounts OWNER TO neondb_owner;

--
-- TOC entry 219 (class 1259 OID 16499)
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.accounts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_id_seq OWNER TO neondb_owner;

--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 219
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- TOC entry 222 (class 1259 OID 16515)
-- Name: transactions; Type: TABLE; Schema: public; Owner: neondb_owner
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    serial integer NOT NULL,
    account_id integer NOT NULL,
    amount numeric(12,2) NOT NULL,
    type text NOT NULL,
    detail text,
    date date NOT NULL,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.transactions OWNER TO neondb_owner;

--
-- TOC entry 221 (class 1259 OID 16514)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: neondb_owner
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO neondb_owner;

--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 221
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: neondb_owner
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 4861 (class 2604 OID 16503)
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- TOC entry 4863 (class 2604 OID 16518)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 5020 (class 0 OID 16500)
-- Dependencies: 220
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

INSERT INTO public.accounts VALUES (1, 'rahul', 'R001', '2026-02-25 22:50:45.521777');
INSERT INTO public.accounts VALUES (2, 'suman', 'S001', '2026-02-25 22:52:03.75576');
INSERT INTO public.accounts VALUES (3, 'abhi', 'A001', '2026-02-27 12:54:27.177019');
INSERT INTO public.accounts VALUES (4, 'bunny', 'B001', '2026-02-27 13:22:53.53862');
INSERT INTO public.accounts VALUES (5, 'chintu', 'C001', '2026-02-27 18:47:58.997046');
INSERT INTO public.accounts VALUES (6, 'minny', 'M001', '2026-02-27 22:38:15.242036');
INSERT INTO public.accounts VALUES (7, 'Srujan', 'S002', '2026-02-27 22:38:43.122564');
INSERT INTO public.accounts VALUES (8, 'jaya', 'J001', '2026-02-28 18:59:45.782042');
INSERT INTO public.accounts VALUES (9, 'sudhakar', 'S003', '2026-02-28 20:39:45.618087');
INSERT INTO public.accounts VALUES (10, 'vijay', 'V001', '2026-03-02 11:32:27.614737');


--
-- TOC entry 5022 (class 0 OID 16515)
-- Dependencies: 222
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: neondb_owner
--

INSERT INTO public.transactions VALUES (1, 1, 1, 1000.00, 'credit', 'gnrl', '2026-02-25', '2026-02-25 22:51:02.630426');
INSERT INTO public.transactions VALUES (2, 2, 1, 2000.00, 'debit', 'gnrl', '2026-02-25', '2026-02-25 22:51:39.360344');
INSERT INTO public.transactions VALUES (3, 3, 2, 1000.00, 'debit', 'gnrl', '2026-02-25', '2026-02-25 22:52:13.25862');
INSERT INTO public.transactions VALUES (4, 4, 1, 1000.00, 'debit', '', '2026-02-25', '2026-02-25 23:07:57.916348');
INSERT INTO public.transactions VALUES (5, 1, 1, 2000.00, 'debit', '', '2026-02-26', '2026-02-26 11:05:42.951915');
INSERT INTO public.transactions VALUES (6, 2, 2, 500.00, 'debit', '', '2026-02-26', '2026-02-26 11:05:57.59955');
INSERT INTO public.transactions VALUES (7, 3, 1, 500.00, 'credit', '', '2026-02-26', '2026-02-26 11:06:10.990684');
INSERT INTO public.transactions VALUES (8, 4, 1, 1000.00, 'debit', '', '2026-02-26', '2026-02-26 11:13:51.428987');
INSERT INTO public.transactions VALUES (9, 5, 1, 100.00, 'debit', '', '2026-02-26', '2026-02-26 11:31:27.260412');
INSERT INTO public.transactions VALUES (10, 6, 1, 1000.00, 'debit', '', '2026-02-26', '2026-02-26 11:31:39.166139');
INSERT INTO public.transactions VALUES (11, 7, 1, 2000.00, 'debit', '', '2026-02-26', '2026-02-26 11:31:45.920414');
INSERT INTO public.transactions VALUES (17, 1, 1, 2000.00, 'debit', '', '2026-02-27', '2026-02-27 12:38:40.806248');
INSERT INTO public.transactions VALUES (19, 2, 1, 100.00, 'credit', '', '2026-02-27', '2026-02-27 12:38:58.461798');
INSERT INTO public.transactions VALUES (21, 3, 3, 1000.00, 'debit', '', '2026-02-27', '2026-02-27 12:54:35.60379');
INSERT INTO public.transactions VALUES (22, 4, 3, 700.00, 'credit', '', '2026-02-27', '2026-02-27 12:54:59.887373');
INSERT INTO public.transactions VALUES (23, 5, 3, 4700.00, 'debit', '', '2026-02-27', '2026-02-27 13:02:54.450722');
INSERT INTO public.transactions VALUES (24, 6, 2, 500.00, 'credit', '', '2026-02-27', '2026-02-27 13:13:10.121693');
INSERT INTO public.transactions VALUES (25, 7, 2, 500.00, 'credit', '', '2026-02-27', '2026-02-27 13:13:27.040588');
INSERT INTO public.transactions VALUES (27, 8, 1, 4500.00, 'credit', '', '2026-02-27', '2026-02-27 13:21:32.530416');
INSERT INTO public.transactions VALUES (29, 9, 4, 500.00, 'debit', '', '2026-02-27', '2026-02-27 13:23:02.549591');
INSERT INTO public.transactions VALUES (32, 10, 3, 1000.00, 'credit', '', '2026-02-27', '2026-02-27 17:50:43.626602');
INSERT INTO public.transactions VALUES (34, 11, 4, 500.00, 'credit', '', '2026-02-27', '2026-02-27 17:56:02.365721');
INSERT INTO public.transactions VALUES (36, 12, 3, 1000.00, 'credit', '', '2026-02-27', '2026-02-27 18:43:43.962719');
INSERT INTO public.transactions VALUES (37, 13, 5, 1000.00, 'debit', '', '2026-02-27', '2026-02-27 18:48:08.945081');
INSERT INTO public.transactions VALUES (38, 14, 6, 500.00, 'debit', '', '2026-02-27', '2026-02-27 22:38:21.134316');
INSERT INTO public.transactions VALUES (39, 15, 7, 1000.00, 'debit', '', '2026-02-27', '2026-02-27 22:38:50.37931');
INSERT INTO public.transactions VALUES (41, 1, 8, 500.00, 'credit', '', '2026-02-28', '2026-02-28 19:00:22.912488');
INSERT INTO public.transactions VALUES (42, 1, 9, 1000.00, 'credit', '', '2026-01-01', '2026-03-02 00:14:42.4175');
INSERT INTO public.transactions VALUES (43, 1, 9, 2000.00, 'debit', '', '2026-03-02', '2026-03-02 10:56:29.600688');
INSERT INTO public.transactions VALUES (44, 2, 3, 1000.00, 'credit', '', '2026-03-02', '2026-03-02 11:05:59.273607');
INSERT INTO public.transactions VALUES (45, 3, 10, 900.00, 'debit', '', '2026-03-02', '2026-03-02 11:32:34.479014');


--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 219
-- Name: accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.accounts_id_seq', 10, true);


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 221
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: neondb_owner
--

SELECT pg_catalog.setval('public.transactions_id_seq', 45, true);


--
-- TOC entry 4866 (class 2606 OID 16513)
-- Name: accounts accounts_code_unique; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_code_unique UNIQUE (code);


--
-- TOC entry 4868 (class 2606 OID 16511)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- TOC entry 4870 (class 2606 OID 16529)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 4871 (class 2606 OID 16530)
-- Name: transactions transactions_account_id_accounts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: neondb_owner
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_account_id_accounts_id_fk FOREIGN KEY (account_id) REFERENCES public.accounts(id);


-- Completed on 2026-03-05 12:45:23

--
-- neondb_ownerQL database dump complete
--

