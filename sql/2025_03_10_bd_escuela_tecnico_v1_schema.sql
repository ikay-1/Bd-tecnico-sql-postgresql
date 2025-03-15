--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8
-- Dumped by pg_dump version 17.1

-- Started on 2025-03-10 20:28:12

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
-- TOC entry 5 (class 2615 OID 1622035)
-- Name: Francisco Franco; Type: SCHEMA; Schema: -; Owner: Comfe_owner
--

CREATE SCHEMA "Francisco Franco";


ALTER SCHEMA "Francisco Franco" OWNER TO "Comfe_owner";

--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA "Francisco Franco"; Type: COMMENT; Schema: -; Owner: Comfe_owner
--

COMMENT ON SCHEMA "Francisco Franco" IS '1. Escuela  técnica de programación ';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 314 (class 1259 OID 1818680)
-- Name: cursos; Type: TABLE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE TABLE "Francisco Franco".cursos (
    cursos_id integer NOT NULL,
    cursos_nombre character varying(100) NOT NULL
);


ALTER TABLE "Francisco Franco".cursos OWNER TO "Comfe_owner";

--
-- TOC entry 313 (class 1259 OID 1818679)
-- Name: cursos_cursos_id_seq; Type: SEQUENCE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE SEQUENCE "Francisco Franco".cursos_cursos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Francisco Franco".cursos_cursos_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 313
-- Name: cursos_cursos_id_seq; Type: SEQUENCE OWNED BY; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER SEQUENCE "Francisco Franco".cursos_cursos_id_seq OWNED BY "Francisco Franco".cursos.cursos_id;


--
-- TOC entry 320 (class 1259 OID 1818719)
-- Name: estudiantes; Type: TABLE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE TABLE "Francisco Franco".estudiantes (
    estudiantes_id integer NOT NULL,
    estudiantes_documento character varying(10) NOT NULL,
    estudiantes_nombre character varying(100) NOT NULL,
    estudiantes_edad smallint NOT NULL,
    estudiantes_tipo_sangre character varying(3),
    cursos_id integer NOT NULL
);


ALTER TABLE "Francisco Franco".estudiantes OWNER TO "Comfe_owner";

--
-- TOC entry 319 (class 1259 OID 1818718)
-- Name: estudiantes_estudiantes_id_seq; Type: SEQUENCE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE SEQUENCE "Francisco Franco".estudiantes_estudiantes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Francisco Franco".estudiantes_estudiantes_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 319
-- Name: estudiantes_estudiantes_id_seq; Type: SEQUENCE OWNED BY; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER SEQUENCE "Francisco Franco".estudiantes_estudiantes_id_seq OWNED BY "Francisco Franco".estudiantes.estudiantes_id;


--
-- TOC entry 318 (class 1259 OID 1818698)
-- Name: materias; Type: TABLE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE TABLE "Francisco Franco".materias (
    materias_id integer NOT NULL,
    materias_nombre character varying(50) NOT NULL,
    cursos_id integer NOT NULL,
    profesores_id integer NOT NULL
);


ALTER TABLE "Francisco Franco".materias OWNER TO "Comfe_owner";

--
-- TOC entry 317 (class 1259 OID 1818697)
-- Name: materias_materias_id_seq; Type: SEQUENCE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE SEQUENCE "Francisco Franco".materias_materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Francisco Franco".materias_materias_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 317
-- Name: materias_materias_id_seq; Type: SEQUENCE OWNED BY; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER SEQUENCE "Francisco Franco".materias_materias_id_seq OWNED BY "Francisco Franco".materias.materias_id;


--
-- TOC entry 322 (class 1259 OID 1826817)
-- Name: notas; Type: TABLE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE TABLE "Francisco Franco".notas (
    notas_id integer NOT NULL,
    estudiantes_id integer NOT NULL,
    materias_id integer NOT NULL,
    notas_puntaje integer NOT NULL
);


ALTER TABLE "Francisco Franco".notas OWNER TO "Comfe_owner";

--
-- TOC entry 321 (class 1259 OID 1826816)
-- Name: notas_notas_id_seq; Type: SEQUENCE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE SEQUENCE "Francisco Franco".notas_notas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Francisco Franco".notas_notas_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 321
-- Name: notas_notas_id_seq; Type: SEQUENCE OWNED BY; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER SEQUENCE "Francisco Franco".notas_notas_id_seq OWNED BY "Francisco Franco".notas.notas_id;


--
-- TOC entry 316 (class 1259 OID 1818689)
-- Name: profesores; Type: TABLE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE TABLE "Francisco Franco".profesores (
    profesores_id integer NOT NULL,
    profesores_documento character varying(9) NOT NULL,
    profesores_nombre character varying(100) NOT NULL
);


ALTER TABLE "Francisco Franco".profesores OWNER TO "Comfe_owner";

--
-- TOC entry 315 (class 1259 OID 1818688)
-- Name: profesores_profesores_id_seq; Type: SEQUENCE; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE SEQUENCE "Francisco Franco".profesores_profesores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "Francisco Franco".profesores_profesores_id_seq OWNER TO "Comfe_owner";

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 315
-- Name: profesores_profesores_id_seq; Type: SEQUENCE OWNED BY; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER SEQUENCE "Francisco Franco".profesores_profesores_id_seq OWNED BY "Francisco Franco".profesores.profesores_id;


--
-- TOC entry 3400 (class 2604 OID 1818683)
-- Name: cursos cursos_id; Type: DEFAULT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".cursos ALTER COLUMN cursos_id SET DEFAULT nextval('"Francisco Franco".cursos_cursos_id_seq'::regclass);


--
-- TOC entry 3403 (class 2604 OID 1818722)
-- Name: estudiantes estudiantes_id; Type: DEFAULT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".estudiantes ALTER COLUMN estudiantes_id SET DEFAULT nextval('"Francisco Franco".estudiantes_estudiantes_id_seq'::regclass);


--
-- TOC entry 3402 (class 2604 OID 1818701)
-- Name: materias materias_id; Type: DEFAULT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias ALTER COLUMN materias_id SET DEFAULT nextval('"Francisco Franco".materias_materias_id_seq'::regclass);


--
-- TOC entry 3404 (class 2604 OID 1826820)
-- Name: notas notas_id; Type: DEFAULT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".notas ALTER COLUMN notas_id SET DEFAULT nextval('"Francisco Franco".notas_notas_id_seq'::regclass);


--
-- TOC entry 3401 (class 2604 OID 1818692)
-- Name: profesores profesores_id; Type: DEFAULT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".profesores ALTER COLUMN profesores_id SET DEFAULT nextval('"Francisco Franco".profesores_profesores_id_seq'::regclass);


--
-- TOC entry 3406 (class 2606 OID 1818687)
-- Name: cursos curso_nombre_unico; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".cursos
    ADD CONSTRAINT curso_nombre_unico UNIQUE (cursos_nombre);


--
-- TOC entry 3408 (class 2606 OID 1818685)
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (cursos_id);


--
-- TOC entry 3420 (class 2606 OID 1818726)
-- Name: estudiantes estudiantes_documento_unico; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".estudiantes
    ADD CONSTRAINT estudiantes_documento_unico UNIQUE (estudiantes_documento);


--
-- TOC entry 3422 (class 2606 OID 1818724)
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (estudiantes_id);


--
-- TOC entry 3414 (class 2606 OID 1818705)
-- Name: materias materias_nombre_unico; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias
    ADD CONSTRAINT materias_nombre_unico UNIQUE (materias_nombre);


--
-- TOC entry 3416 (class 2606 OID 1818703)
-- Name: materias materias_pkey; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias
    ADD CONSTRAINT materias_pkey PRIMARY KEY (materias_id);


--
-- TOC entry 3424 (class 2606 OID 1826822)
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (notas_id);


--
-- TOC entry 3410 (class 2606 OID 1818696)
-- Name: profesores profesores_documento_unico; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".profesores
    ADD CONSTRAINT profesores_documento_unico UNIQUE (profesores_documento);


--
-- TOC entry 3418 (class 2606 OID 1818707)
-- Name: materias profesores_id_unico; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias
    ADD CONSTRAINT profesores_id_unico UNIQUE (profesores_id);


--
-- TOC entry 3412 (class 2606 OID 1818694)
-- Name: profesores profesores_pkey; Type: CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".profesores
    ADD CONSTRAINT profesores_pkey PRIMARY KEY (profesores_id);


--
-- TOC entry 3427 (class 2606 OID 1818727)
-- Name: estudiantes estudiantes_cursos; Type: FK CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".estudiantes
    ADD CONSTRAINT estudiantes_cursos FOREIGN KEY (cursos_id) REFERENCES "Francisco Franco".cursos(cursos_id);


--
-- TOC entry 3425 (class 2606 OID 1818708)
-- Name: materias materias_cursos; Type: FK CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias
    ADD CONSTRAINT materias_cursos FOREIGN KEY (cursos_id) REFERENCES "Francisco Franco".cursos(cursos_id);


--
-- TOC entry 3426 (class 2606 OID 1818713)
-- Name: materias materias_profesores; Type: FK CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".materias
    ADD CONSTRAINT materias_profesores FOREIGN KEY (profesores_id) REFERENCES "Francisco Franco".profesores(profesores_id);


--
-- TOC entry 3428 (class 2606 OID 1826823)
-- Name: notas notas_estudiantes; Type: FK CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".notas
    ADD CONSTRAINT notas_estudiantes FOREIGN KEY (estudiantes_id) REFERENCES "Francisco Franco".estudiantes(estudiantes_id);


--
-- TOC entry 3429 (class 2606 OID 1826828)
-- Name: notas notas_materias; Type: FK CONSTRAINT; Schema: Francisco Franco; Owner: Comfe_owner
--

ALTER TABLE ONLY "Francisco Franco".notas
    ADD CONSTRAINT notas_materias FOREIGN KEY (materias_id) REFERENCES "Francisco Franco".materias(materias_id);


-- Completed on 2025-03-10 20:28:30

--
-- PostgreSQL database dump complete
--

