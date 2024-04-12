--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE periodic_table;
--
-- Name: periodic_table; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE periodic_table WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE periodic_table OWNER TO postgres;

\connect periodic_table

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
-- Name: elements; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.elements (
    atomic_number integer NOT NULL,
    symbol character varying(2) NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.elements OWNER TO freecodecamp;

--
-- Name: properties; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.properties (
    atomic_number integer NOT NULL,
    atomic_mass real NOT NULL,
    melting_point_celsius numeric NOT NULL,
    boiling_point_celsius numeric NOT NULL,
    type_id integer NOT NULL
);


ALTER TABLE public.properties OWNER TO freecodecamp;

--
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    type_id integer NOT NULL,
    type character varying(255) NOT NULL
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.type_id;


--
-- Name: types type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN type_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: elements; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.elements VALUES (1, 'H', 'Hydrogen');
INSERT INTO public.elements VALUES (2, 'HE', 'Helium');
INSERT INTO public.elements VALUES (3, 'LI', 'Lithium');
INSERT INTO public.elements VALUES (4, 'BE', 'Beryllium');
INSERT INTO public.elements VALUES (5, 'B', 'Boron');
INSERT INTO public.elements VALUES (6, 'C', 'Carbon');
INSERT INTO public.elements VALUES (7, 'N', 'Nitrogen');
INSERT INTO public.elements VALUES (8, 'O', 'Oxygen');
INSERT INTO public.elements VALUES (9, 'F', 'Fluorine');
INSERT INTO public.elements VALUES (10, 'Ne', 'Neon');


--
-- Data for Name: properties; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.properties VALUES (3, 6.94, 180.54, 1342, 1);
INSERT INTO public.properties VALUES (4, 9.0122, 1287, 2470, 1);
INSERT INTO public.properties VALUES (5, 10.81, 2075, 4000, 2);
INSERT INTO public.properties VALUES (1, 1.008, -259.1, -252.9, 3);
INSERT INTO public.properties VALUES (2, 4.0026, -272.2, -269, 3);
INSERT INTO public.properties VALUES (6, 12.011, 3550, 4027, 3);
INSERT INTO public.properties VALUES (7, 14.007, -210.1, -195.8, 3);
INSERT INTO public.properties VALUES (8, 15.999, -218, -183, 3);
INSERT INTO public.properties VALUES (9, 18.998, -220, -188.1, 3);
INSERT INTO public.properties VALUES (10, 20.18, -248.6, -246.1, 3);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'metal');
INSERT INTO public.types VALUES (2, 'metalloid');
INSERT INTO public.types VALUES (3, 'nonmetal');
INSERT INTO public.types VALUES (4, 'metal');
INSERT INTO public.types VALUES (5, 'metalloid');
INSERT INTO public.types VALUES (6, 'nonmetal');
INSERT INTO public.types VALUES (7, 'nonmetal');
INSERT INTO public.types VALUES (8, 'metal');
INSERT INTO public.types VALUES (9, 'metalloid');
INSERT INTO public.types VALUES (10, 'nonmetal');
INSERT INTO public.types VALUES (11, 'metal');
INSERT INTO public.types VALUES (12, 'metalloid');
INSERT INTO public.types VALUES (13, 'nonmetal');
INSERT INTO public.types VALUES (14, 'metal');
INSERT INTO public.types VALUES (15, 'metalloid');
INSERT INTO public.types VALUES (16, 'metal');
INSERT INTO public.types VALUES (17, 'nonmetal');
INSERT INTO public.types VALUES (18, 'metalloid');
INSERT INTO public.types VALUES (19, 'nonmetal');
INSERT INTO public.types VALUES (20, 'metal');
INSERT INTO public.types VALUES (21, 'metalloid');
INSERT INTO public.types VALUES (22, 'nonmetal');
INSERT INTO public.types VALUES (23, 'metal');
INSERT INTO public.types VALUES (24, 'metalloid');
INSERT INTO public.types VALUES (25, 'nonmetal');
INSERT INTO public.types VALUES (26, 'metal');
INSERT INTO public.types VALUES (27, 'metalloid');
INSERT INTO public.types VALUES (28, 'nonmetal');
INSERT INTO public.types VALUES (29, 'metal');
INSERT INTO public.types VALUES (30, 'metalloid');
INSERT INTO public.types VALUES (31, 'nonmetal');
INSERT INTO public.types VALUES (32, 'metal');
INSERT INTO public.types VALUES (33, 'metalloid');
INSERT INTO public.types VALUES (34, 'nonmetal');
INSERT INTO public.types VALUES (35, 'metal');
INSERT INTO public.types VALUES (36, 'metalloid');
INSERT INTO public.types VALUES (37, 'nonmetal');
INSERT INTO public.types VALUES (38, 'metal');
INSERT INTO public.types VALUES (39, 'metalloid');
INSERT INTO public.types VALUES (40, 'nonmetal');
INSERT INTO public.types VALUES (41, 'metal');
INSERT INTO public.types VALUES (42, 'metalloid');
INSERT INTO public.types VALUES (43, 'nonmetal');
INSERT INTO public.types VALUES (44, 'metal');
INSERT INTO public.types VALUES (45, 'metalloid');
INSERT INTO public.types VALUES (46, 'nonmetal');
INSERT INTO public.types VALUES (47, 'metal');
INSERT INTO public.types VALUES (48, 'metalloid');
INSERT INTO public.types VALUES (49, 'nonmetal');
INSERT INTO public.types VALUES (50, 'metal');
INSERT INTO public.types VALUES (51, 'metalloid');
INSERT INTO public.types VALUES (52, 'nonmetal');
INSERT INTO public.types VALUES (53, 'metal');
INSERT INTO public.types VALUES (54, 'metalloid');
INSERT INTO public.types VALUES (55, 'nonmetal');
INSERT INTO public.types VALUES (56, 'metal');
INSERT INTO public.types VALUES (57, 'metalloid');
INSERT INTO public.types VALUES (58, 'nonmetal');
INSERT INTO public.types VALUES (59, 'metal');
INSERT INTO public.types VALUES (60, 'metalloid');
INSERT INTO public.types VALUES (61, 'nonmetal');
INSERT INTO public.types VALUES (62, 'metal');
INSERT INTO public.types VALUES (63, 'metalloid');
INSERT INTO public.types VALUES (64, 'nonmetal');
INSERT INTO public.types VALUES (65, 'metal');
INSERT INTO public.types VALUES (66, 'metalloid');
INSERT INTO public.types VALUES (67, 'nonmetal');
INSERT INTO public.types VALUES (68, 'metal');
INSERT INTO public.types VALUES (69, 'metalloid');
INSERT INTO public.types VALUES (70, 'metal');
INSERT INTO public.types VALUES (71, 'nonmetal');
INSERT INTO public.types VALUES (72, 'metalloid');
INSERT INTO public.types VALUES (73, 'nonmetal');
INSERT INTO public.types VALUES (74, 'metal');
INSERT INTO public.types VALUES (75, 'metalloid');
INSERT INTO public.types VALUES (76, 'nonmetal');
INSERT INTO public.types VALUES (77, 'metal');
INSERT INTO public.types VALUES (78, 'metalloid');
INSERT INTO public.types VALUES (79, 'nonmetal');
INSERT INTO public.types VALUES (80, 'metal');
INSERT INTO public.types VALUES (81, 'metalloid');
INSERT INTO public.types VALUES (82, 'nonmetal');
INSERT INTO public.types VALUES (83, 'metal');
INSERT INTO public.types VALUES (84, 'metalloid');
INSERT INTO public.types VALUES (85, 'nonmetal');
INSERT INTO public.types VALUES (86, 'metal');
INSERT INTO public.types VALUES (87, 'metalloid');
INSERT INTO public.types VALUES (88, 'nonmetal');
INSERT INTO public.types VALUES (89, 'metal');
INSERT INTO public.types VALUES (90, 'metalloid');
INSERT INTO public.types VALUES (91, 'nonmetal');
INSERT INTO public.types VALUES (92, 'metal');
INSERT INTO public.types VALUES (93, 'metalloid');
INSERT INTO public.types VALUES (94, 'nonmetal');
INSERT INTO public.types VALUES (95, 'metal');
INSERT INTO public.types VALUES (96, 'metalloid');
INSERT INTO public.types VALUES (97, 'nonmetal');
INSERT INTO public.types VALUES (98, 'metal');
INSERT INTO public.types VALUES (99, 'metalloid');
INSERT INTO public.types VALUES (100, 'nonmetal');
INSERT INTO public.types VALUES (101, 'metal');
INSERT INTO public.types VALUES (102, 'metalloid');
INSERT INTO public.types VALUES (103, 'metal');
INSERT INTO public.types VALUES (104, 'nonmetal');
INSERT INTO public.types VALUES (105, 'metalloid');
INSERT INTO public.types VALUES (106, 'nonmetal');
INSERT INTO public.types VALUES (107, 'metal');
INSERT INTO public.types VALUES (108, 'metalloid');
INSERT INTO public.types VALUES (109, 'nonmetal');
INSERT INTO public.types VALUES (110, 'metal');
INSERT INTO public.types VALUES (111, 'metalloid');
INSERT INTO public.types VALUES (112, 'nonmetal');
INSERT INTO public.types VALUES (113, 'metal');
INSERT INTO public.types VALUES (114, 'metalloid');
INSERT INTO public.types VALUES (115, 'nonmetal');
INSERT INTO public.types VALUES (116, 'metal');
INSERT INTO public.types VALUES (117, 'metalloid');
INSERT INTO public.types VALUES (118, 'nonmetal');
INSERT INTO public.types VALUES (119, 'metal');
INSERT INTO public.types VALUES (120, 'metalloid');
INSERT INTO public.types VALUES (121, 'nonmetal');
INSERT INTO public.types VALUES (122, 'metal');
INSERT INTO public.types VALUES (123, 'metalloid');
INSERT INTO public.types VALUES (124, 'nonmetal');
INSERT INTO public.types VALUES (125, 'metal');
INSERT INTO public.types VALUES (126, 'metalloid');
INSERT INTO public.types VALUES (127, 'nonmetal');
INSERT INTO public.types VALUES (128, 'metal');
INSERT INTO public.types VALUES (129, 'metalloid');
INSERT INTO public.types VALUES (130, 'nonmetal');
INSERT INTO public.types VALUES (131, 'metal');
INSERT INTO public.types VALUES (132, 'metalloid');
INSERT INTO public.types VALUES (133, 'nonmetal');
INSERT INTO public.types VALUES (134, 'metal');
INSERT INTO public.types VALUES (135, 'metalloid');
INSERT INTO public.types VALUES (136, 'nonmetal');
INSERT INTO public.types VALUES (137, 'metal');
INSERT INTO public.types VALUES (138, 'metalloid');
INSERT INTO public.types VALUES (139, 'nonmetal');
INSERT INTO public.types VALUES (140, 'metal');
INSERT INTO public.types VALUES (141, 'metalloid');
INSERT INTO public.types VALUES (142, 'nonmetal');
INSERT INTO public.types VALUES (143, 'metal');
INSERT INTO public.types VALUES (144, 'metalloid');
INSERT INTO public.types VALUES (145, 'nonmetal');
INSERT INTO public.types VALUES (146, 'metal');
INSERT INTO public.types VALUES (147, 'metalloid');
INSERT INTO public.types VALUES (148, 'nonmetal');
INSERT INTO public.types VALUES (149, 'metal');
INSERT INTO public.types VALUES (150, 'metalloid');


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 150, true);


--
-- Name: elements elements_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_atomic_number_key UNIQUE (atomic_number);


--
-- Name: elements elements_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT elements_pkey PRIMARY KEY (atomic_number);


--
-- Name: properties properties_atomic_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_key UNIQUE (atomic_number);


--
-- Name: properties properties_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_pkey PRIMARY KEY (atomic_number);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (type_id);


--
-- Name: elements unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: elements unique_symbol; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.elements
    ADD CONSTRAINT unique_symbol UNIQUE (symbol);


--
-- Name: properties properties_atomic_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey1 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey10; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey10 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey100; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey100 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey101; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey101 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey102; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey102 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey103; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey103 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey104; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey104 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey105; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey105 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey106; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey106 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey11; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey11 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey12; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey12 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey13; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey13 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey14; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey14 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey15; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey15 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey16; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey16 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey17; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey17 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey18; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey18 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey19; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey19 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey2 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey20; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey20 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey21; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey21 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey22; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey22 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey23; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey23 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey24; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey24 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey25; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey25 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey26; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey26 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey27; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey27 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey28; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey28 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey29; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey29 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey3 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey30; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey30 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey31; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey31 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey32; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey32 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey33; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey33 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey34; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey34 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey35; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey35 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey36; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey36 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey37; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey37 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey38; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey38 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey39; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey39 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey4 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey40; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey40 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey41; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey41 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey42; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey42 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey43; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey43 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey44; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey44 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey45; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey45 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey46; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey46 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey47; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey47 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey48; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey48 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey49; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey49 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey5; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey5 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey50; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey50 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey51; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey51 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey52; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey52 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey53; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey53 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey54; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey54 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey55; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey55 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey56; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey56 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey57; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey57 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey58; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey58 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey59; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey59 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey6; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey6 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey60; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey60 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey61; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey61 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey62; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey62 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey63; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey63 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey64; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey64 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey65; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey65 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey66; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey66 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey67; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey67 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey68; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey68 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey69; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey69 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey7; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey7 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey70; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey70 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey71; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey71 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey72; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey72 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey73; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey73 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey74; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey74 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey75; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey75 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey76; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey76 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey77; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey77 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey78; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey78 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey79; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey79 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey8; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey8 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey80; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey80 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey81; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey81 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey82; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey82 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey83; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey83 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey84; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey84 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey85; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey85 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey86; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey86 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey87; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey87 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey88; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey88 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey89; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey89 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey9; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey9 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey90; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey90 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey91; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey91 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey92; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey92 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey93; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey93 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey94; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey94 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey95; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey95 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey96; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey96 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey97; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey97 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey98; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey98 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_atomic_number_fkey99; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_atomic_number_fkey99 FOREIGN KEY (atomic_number) REFERENCES public.elements(atomic_number);


--
-- Name: properties properties_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey1 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey10; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey10 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey100; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey100 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey101; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey101 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey102; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey102 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey103; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey103 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey104; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey104 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey105; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey105 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey106; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey106 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey11; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey11 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey12; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey12 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey13; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey13 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey14; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey14 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey15; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey15 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey16; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey16 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey17; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey17 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey18; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey18 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey19; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey19 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey2; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey2 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey20; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey20 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey21; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey21 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey22; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey22 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey23; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey23 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey24; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey24 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey25; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey25 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey26; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey26 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey27; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey27 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey28; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey28 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey29; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey29 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey3; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey3 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey30; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey30 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey31; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey31 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey32; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey32 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey33; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey33 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey34; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey34 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey35; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey35 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey36; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey36 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey37; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey37 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey38; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey38 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey39; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey39 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey4; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey4 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey40; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey40 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey41; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey41 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey42; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey42 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey43; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey43 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey44; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey44 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey45; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey45 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey46; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey46 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey47; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey47 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey48; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey48 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey49; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey49 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey5; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey5 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey50; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey50 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey51; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey51 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey52; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey52 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey53; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey53 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey54; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey54 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey55; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey55 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey56; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey56 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey57; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey57 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey58; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey58 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey59; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey59 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey6; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey6 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey60; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey60 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey61; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey61 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey62; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey62 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey63; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey63 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey64; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey64 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey65; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey65 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey66; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey66 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey67; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey67 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey68; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey68 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey69; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey69 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey7; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey7 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey70; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey70 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey71; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey71 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey72; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey72 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey73; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey73 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey74; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey74 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey75; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey75 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey76; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey76 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey77; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey77 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey78; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey78 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey79; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey79 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey8; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey8 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey80; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey80 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey81; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey81 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey82; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey82 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey83; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey83 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey84; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey84 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey85; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey85 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey86; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey86 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey87; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey87 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey88; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey88 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey89; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey89 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey9; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey9 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey90; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey90 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey91; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey91 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey92; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey92 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey93; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey93 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey94; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey94 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey95; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey95 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey96; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey96 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey97; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey97 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey98; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey98 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- Name: properties properties_type_id_fkey99; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.properties
    ADD CONSTRAINT properties_type_id_fkey99 FOREIGN KEY (type_id) REFERENCES public.types(type_id);


--
-- PostgreSQL database dump complete
--

