--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8
-- Dumped by pg_dump version 17.1

-- Started on 2025-03-15 15:57:20

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
-- TOC entry 329 (class 1259 OID 1875968)
-- Name: lista_estudiantes_cursos; Type: VIEW; Schema: Francisco Franco; Owner: Comfe_owner
--

CREATE VIEW "Francisco Franco".lista_estudiantes_cursos AS
 SELECT c.cursos_nombre AS curso,
    e.estudiantes_documento AS documento,
    upper((e.estudiantes_nombre)::text) AS estudiante,
    e.estudiantes_edad,
        CASE
            WHEN (e.estudiantes_edad < 19) THEN 'TEMPRANO'::text
            WHEN (e.estudiantes_edad < 21) THEN 'NORMAL'::text
            ELSE upper('DEMORADO'::text)
        END AS clasificacion
   FROM ("Francisco Franco".estudiantes e
     LEFT JOIN "Francisco Franco".cursos c ON ((e.cursos_id = c.cursos_id)))
  ORDER BY c.cursos_nombre, e.estudiantes_nombre;


ALTER VIEW "Francisco Franco".lista_estudiantes_cursos OWNER TO "Comfe_owner";

-- Completed on 2025-03-15 15:57:27

--
-- PostgreSQL database dump complete
--

