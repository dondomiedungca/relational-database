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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying NOT NULL,
    extra_id1 integer NOT NULL,
    extra_id2 integer NOT NULL,
    extra_id3 numeric NOT NULL,
    extra_code text NOT NULL,
    extra_is_cute boolean NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id1 integer NOT NULL,
    galaxy_id2 integer NOT NULL,
    galaxy_id3 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moon_id1 integer NOT NULL,
    moon_id2 integer NOT NULL,
    moon_id3 numeric NOT NULL,
    moon_code text NOT NULL,
    moon_is_cute boolean NOT NULL,
    planet_id1 integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    planet_id1 integer NOT NULL,
    planet_id2 integer NOT NULL,
    planet_id3 numeric NOT NULL,
    planet_code text NOT NULL,
    planet_is_cute boolean NOT NULL,
    star_id1 integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_id1 integer NOT NULL,
    star_id2 integer NOT NULL,
    star_id3 numeric NOT NULL,
    star_code text NOT NULL,
    star_is_cute boolean NOT NULL,
    galaxy_id1 integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'name', 1, 1, 1, 'hello', true);
INSERT INTO public.extra VALUES (2, 'name', 2, 2, 2, 'hello', true);
INSERT INTO public.extra VALUES (3, 'name', 3, 3, 3, 'hello', true);
INSERT INTO public.extra VALUES (4, 'name', 4, 4, 4, 'hello', true);
INSERT INTO public.extra VALUES (5, 'name', 5, 5, 5, 'hello', true);
INSERT INTO public.extra VALUES (6, 'name', 6, 6, 6, 'hello', true);
INSERT INTO public.extra VALUES (7, 'name', 7, 7, 7, 'hello', true);
INSERT INTO public.extra VALUES (8, 'name', 8, 8, 8, 'hello', true);
INSERT INTO public.extra VALUES (9, 'name', 9, 9, 9, 'hello', true);
INSERT INTO public.extra VALUES (10, 'name', 10, 10, 10, 'hello', true);
INSERT INTO public.extra VALUES (11, 'name', 11, 11, 11, 'hello', true);
INSERT INTO public.extra VALUES (12, 'name', 12, 12, 12, 'hello', true);
INSERT INTO public.extra VALUES (13, 'name', 13, 13, 13, 'hello', true);
INSERT INTO public.extra VALUES (14, 'name', 14, 14, 14, 'hello', true);
INSERT INTO public.extra VALUES (15, 'name', 15, 15, 15, 'hello', true);
INSERT INTO public.extra VALUES (16, 'name', 16, 16, 16, 'hello', true);
INSERT INTO public.extra VALUES (17, 'name', 17, 17, 17, 'hello', true);
INSERT INTO public.extra VALUES (18, 'name', 18, 18, 18, 'hello', true);
INSERT INTO public.extra VALUES (19, 'name', 19, 19, 19, 'hello', true);
INSERT INTO public.extra VALUES (20, 'name', 20, 20, 20, 'hello', true);
INSERT INTO public.extra VALUES (21, 'name', 21, 21, 21, 'hello', true);
INSERT INTO public.extra VALUES (22, 'name', 22, 22, 22, 'hello', true);
INSERT INTO public.extra VALUES (23, 'name', 23, 23, 23, 'hello', true);
INSERT INTO public.extra VALUES (24, 'name', 24, 24, 24, 'hello', true);
INSERT INTO public.extra VALUES (25, 'name', 25, 25, 25, 'hello', true);
INSERT INTO public.extra VALUES (26, 'name', 26, 26, 26, 'hello', true);
INSERT INTO public.extra VALUES (27, 'name', 27, 27, 27, 'hello', true);
INSERT INTO public.extra VALUES (28, 'name', 28, 28, 28, 'hello', true);
INSERT INTO public.extra VALUES (29, 'name', 29, 29, 29, 'hello', true);
INSERT INTO public.extra VALUES (30, 'name', 30, 30, 30, 'hello', true);
INSERT INTO public.extra VALUES (31, 'name', 31, 31, 31, 'hello', true);
INSERT INTO public.extra VALUES (32, 'name', 32, 32, 32, 'hello', true);
INSERT INTO public.extra VALUES (33, 'name', 33, 33, 33, 'hello', true);
INSERT INTO public.extra VALUES (34, 'name', 34, 34, 34, 'hello', true);
INSERT INTO public.extra VALUES (35, 'name', 35, 35, 35, 'hello', true);
INSERT INTO public.extra VALUES (36, 'name', 36, 36, 36, 'hello', true);
INSERT INTO public.extra VALUES (37, 'name', 37, 37, 37, 'hello', true);
INSERT INTO public.extra VALUES (38, 'name', 38, 38, 38, 'hello', true);
INSERT INTO public.extra VALUES (39, 'name', 39, 39, 39, 'hello', true);
INSERT INTO public.extra VALUES (40, 'name', 40, 40, 40, 'hello', true);
INSERT INTO public.extra VALUES (41, 'name', 41, 41, 41, 'hello', true);
INSERT INTO public.extra VALUES (42, 'name', 42, 42, 42, 'hello', true);
INSERT INTO public.extra VALUES (43, 'name', 43, 43, 43, 'hello', true);
INSERT INTO public.extra VALUES (44, 'name', 44, 44, 44, 'hello', true);
INSERT INTO public.extra VALUES (45, 'name', 45, 45, 45, 'hello', true);
INSERT INTO public.extra VALUES (46, 'name', 46, 46, 46, 'hello', true);
INSERT INTO public.extra VALUES (47, 'name', 47, 47, 47, 'hello', true);
INSERT INTO public.extra VALUES (48, 'name', 48, 48, 48, 'hello', true);
INSERT INTO public.extra VALUES (49, 'name', 49, 49, 49, 'hello', true);
INSERT INTO public.extra VALUES (50, 'name', 50, 50, 50, 'hello', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'name', 1, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'name', 2, 2, 2);
INSERT INTO public.galaxy VALUES (3, 'name', 3, 3, 3);
INSERT INTO public.galaxy VALUES (4, 'name', 4, 4, 4);
INSERT INTO public.galaxy VALUES (5, 'name', 5, 5, 5);
INSERT INTO public.galaxy VALUES (6, 'name', 6, 6, 6);
INSERT INTO public.galaxy VALUES (7, 'name', 7, 7, 7);
INSERT INTO public.galaxy VALUES (8, 'name', 8, 8, 8);
INSERT INTO public.galaxy VALUES (9, 'name', 9, 9, 9);
INSERT INTO public.galaxy VALUES (10, 'name', 10, 10, 10);
INSERT INTO public.galaxy VALUES (11, 'name', 11, 11, 11);
INSERT INTO public.galaxy VALUES (12, 'name', 12, 12, 12);
INSERT INTO public.galaxy VALUES (13, 'name', 13, 13, 13);
INSERT INTO public.galaxy VALUES (14, 'name', 14, 14, 14);
INSERT INTO public.galaxy VALUES (15, 'name', 15, 15, 15);
INSERT INTO public.galaxy VALUES (16, 'name', 16, 16, 16);
INSERT INTO public.galaxy VALUES (17, 'name', 17, 17, 17);
INSERT INTO public.galaxy VALUES (18, 'name', 18, 18, 18);
INSERT INTO public.galaxy VALUES (19, 'name', 19, 19, 19);
INSERT INTO public.galaxy VALUES (20, 'name', 20, 20, 20);
INSERT INTO public.galaxy VALUES (21, 'name', 21, 21, 21);
INSERT INTO public.galaxy VALUES (22, 'name', 22, 22, 22);
INSERT INTO public.galaxy VALUES (23, 'name', 23, 23, 23);
INSERT INTO public.galaxy VALUES (24, 'name', 24, 24, 24);
INSERT INTO public.galaxy VALUES (25, 'name', 25, 25, 25);
INSERT INTO public.galaxy VALUES (26, 'name', 26, 26, 26);
INSERT INTO public.galaxy VALUES (27, 'name', 27, 27, 27);
INSERT INTO public.galaxy VALUES (28, 'name', 28, 28, 28);
INSERT INTO public.galaxy VALUES (29, 'name', 29, 29, 29);
INSERT INTO public.galaxy VALUES (30, 'name', 30, 30, 30);
INSERT INTO public.galaxy VALUES (31, 'name', 31, 31, 31);
INSERT INTO public.galaxy VALUES (32, 'name', 32, 32, 32);
INSERT INTO public.galaxy VALUES (33, 'name', 33, 33, 33);
INSERT INTO public.galaxy VALUES (34, 'name', 34, 34, 34);
INSERT INTO public.galaxy VALUES (35, 'name', 35, 35, 35);
INSERT INTO public.galaxy VALUES (36, 'name', 36, 36, 36);
INSERT INTO public.galaxy VALUES (37, 'name', 37, 37, 37);
INSERT INTO public.galaxy VALUES (38, 'name', 38, 38, 38);
INSERT INTO public.galaxy VALUES (39, 'name', 39, 39, 39);
INSERT INTO public.galaxy VALUES (40, 'name', 40, 40, 40);
INSERT INTO public.galaxy VALUES (41, 'name', 41, 41, 41);
INSERT INTO public.galaxy VALUES (42, 'name', 42, 42, 42);
INSERT INTO public.galaxy VALUES (43, 'name', 43, 43, 43);
INSERT INTO public.galaxy VALUES (44, 'name', 44, 44, 44);
INSERT INTO public.galaxy VALUES (45, 'name', 45, 45, 45);
INSERT INTO public.galaxy VALUES (46, 'name', 46, 46, 46);
INSERT INTO public.galaxy VALUES (47, 'name', 47, 47, 47);
INSERT INTO public.galaxy VALUES (48, 'name', 48, 48, 48);
INSERT INTO public.galaxy VALUES (49, 'name', 49, 49, 49);
INSERT INTO public.galaxy VALUES (50, 'name', 50, 50, 50);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name', 1, 1, 1, 'hello', true, 1);
INSERT INTO public.moon VALUES (2, 'name', 2, 2, 2, 'hello', true, 2);
INSERT INTO public.moon VALUES (3, 'name', 3, 3, 3, 'hello', true, 3);
INSERT INTO public.moon VALUES (4, 'name', 4, 4, 4, 'hello', true, 4);
INSERT INTO public.moon VALUES (5, 'name', 5, 5, 5, 'hello', true, 5);
INSERT INTO public.moon VALUES (6, 'name', 6, 6, 6, 'hello', true, 6);
INSERT INTO public.moon VALUES (7, 'name', 7, 7, 7, 'hello', true, 7);
INSERT INTO public.moon VALUES (8, 'name', 8, 8, 8, 'hello', true, 8);
INSERT INTO public.moon VALUES (9, 'name', 9, 9, 9, 'hello', true, 9);
INSERT INTO public.moon VALUES (10, 'name', 10, 10, 10, 'hello', true, 10);
INSERT INTO public.moon VALUES (11, 'name', 11, 11, 11, 'hello', true, 11);
INSERT INTO public.moon VALUES (12, 'name', 12, 12, 12, 'hello', true, 12);
INSERT INTO public.moon VALUES (13, 'name', 13, 13, 13, 'hello', true, 13);
INSERT INTO public.moon VALUES (14, 'name', 14, 14, 14, 'hello', true, 14);
INSERT INTO public.moon VALUES (15, 'name', 15, 15, 15, 'hello', true, 15);
INSERT INTO public.moon VALUES (16, 'name', 16, 16, 16, 'hello', true, 16);
INSERT INTO public.moon VALUES (17, 'name', 17, 17, 17, 'hello', true, 17);
INSERT INTO public.moon VALUES (18, 'name', 18, 18, 18, 'hello', true, 18);
INSERT INTO public.moon VALUES (19, 'name', 19, 19, 19, 'hello', true, 19);
INSERT INTO public.moon VALUES (20, 'name', 20, 20, 20, 'hello', true, 20);
INSERT INTO public.moon VALUES (21, 'name', 21, 21, 21, 'hello', true, 21);
INSERT INTO public.moon VALUES (22, 'name', 22, 22, 22, 'hello', true, 22);
INSERT INTO public.moon VALUES (23, 'name', 23, 23, 23, 'hello', true, 23);
INSERT INTO public.moon VALUES (24, 'name', 24, 24, 24, 'hello', true, 24);
INSERT INTO public.moon VALUES (25, 'name', 25, 25, 25, 'hello', true, 25);
INSERT INTO public.moon VALUES (26, 'name', 26, 26, 26, 'hello', true, 26);
INSERT INTO public.moon VALUES (27, 'name', 27, 27, 27, 'hello', true, 27);
INSERT INTO public.moon VALUES (28, 'name', 28, 28, 28, 'hello', true, 28);
INSERT INTO public.moon VALUES (29, 'name', 29, 29, 29, 'hello', true, 29);
INSERT INTO public.moon VALUES (30, 'name', 30, 30, 30, 'hello', true, 30);
INSERT INTO public.moon VALUES (31, 'name', 31, 31, 31, 'hello', true, 31);
INSERT INTO public.moon VALUES (32, 'name', 32, 32, 32, 'hello', true, 32);
INSERT INTO public.moon VALUES (33, 'name', 33, 33, 33, 'hello', true, 33);
INSERT INTO public.moon VALUES (34, 'name', 34, 34, 34, 'hello', true, 34);
INSERT INTO public.moon VALUES (35, 'name', 35, 35, 35, 'hello', true, 35);
INSERT INTO public.moon VALUES (36, 'name', 36, 36, 36, 'hello', true, 36);
INSERT INTO public.moon VALUES (37, 'name', 37, 37, 37, 'hello', true, 37);
INSERT INTO public.moon VALUES (38, 'name', 38, 38, 38, 'hello', true, 38);
INSERT INTO public.moon VALUES (39, 'name', 39, 39, 39, 'hello', true, 39);
INSERT INTO public.moon VALUES (40, 'name', 40, 40, 40, 'hello', true, 40);
INSERT INTO public.moon VALUES (41, 'name', 41, 41, 41, 'hello', true, 41);
INSERT INTO public.moon VALUES (42, 'name', 42, 42, 42, 'hello', true, 42);
INSERT INTO public.moon VALUES (43, 'name', 43, 43, 43, 'hello', true, 43);
INSERT INTO public.moon VALUES (44, 'name', 44, 44, 44, 'hello', true, 44);
INSERT INTO public.moon VALUES (45, 'name', 45, 45, 45, 'hello', true, 45);
INSERT INTO public.moon VALUES (46, 'name', 46, 46, 46, 'hello', true, 46);
INSERT INTO public.moon VALUES (47, 'name', 47, 47, 47, 'hello', true, 47);
INSERT INTO public.moon VALUES (48, 'name', 48, 48, 48, 'hello', true, 48);
INSERT INTO public.moon VALUES (49, 'name', 49, 49, 49, 'hello', true, 49);
INSERT INTO public.moon VALUES (50, 'name', 50, 50, 50, 'hello', true, 50);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'name', 1, 1, 1, 'hello', true, 1);
INSERT INTO public.planet VALUES (2, 'name', 2, 2, 2, 'hello', true, 2);
INSERT INTO public.planet VALUES (3, 'name', 3, 3, 3, 'hello', true, 3);
INSERT INTO public.planet VALUES (4, 'name', 4, 4, 4, 'hello', true, 4);
INSERT INTO public.planet VALUES (5, 'name', 5, 5, 5, 'hello', true, 5);
INSERT INTO public.planet VALUES (6, 'name', 6, 6, 6, 'hello', true, 6);
INSERT INTO public.planet VALUES (7, 'name', 7, 7, 7, 'hello', true, 7);
INSERT INTO public.planet VALUES (8, 'name', 8, 8, 8, 'hello', true, 8);
INSERT INTO public.planet VALUES (9, 'name', 9, 9, 9, 'hello', true, 9);
INSERT INTO public.planet VALUES (10, 'name', 10, 10, 10, 'hello', true, 10);
INSERT INTO public.planet VALUES (11, 'name', 11, 11, 11, 'hello', true, 11);
INSERT INTO public.planet VALUES (12, 'name', 12, 12, 12, 'hello', true, 12);
INSERT INTO public.planet VALUES (13, 'name', 13, 13, 13, 'hello', true, 13);
INSERT INTO public.planet VALUES (14, 'name', 14, 14, 14, 'hello', true, 14);
INSERT INTO public.planet VALUES (15, 'name', 15, 15, 15, 'hello', true, 15);
INSERT INTO public.planet VALUES (16, 'name', 16, 16, 16, 'hello', true, 16);
INSERT INTO public.planet VALUES (17, 'name', 17, 17, 17, 'hello', true, 17);
INSERT INTO public.planet VALUES (18, 'name', 18, 18, 18, 'hello', true, 18);
INSERT INTO public.planet VALUES (19, 'name', 19, 19, 19, 'hello', true, 19);
INSERT INTO public.planet VALUES (20, 'name', 20, 20, 20, 'hello', true, 20);
INSERT INTO public.planet VALUES (21, 'name', 21, 21, 21, 'hello', true, 21);
INSERT INTO public.planet VALUES (22, 'name', 22, 22, 22, 'hello', true, 22);
INSERT INTO public.planet VALUES (23, 'name', 23, 23, 23, 'hello', true, 23);
INSERT INTO public.planet VALUES (24, 'name', 24, 24, 24, 'hello', true, 24);
INSERT INTO public.planet VALUES (25, 'name', 25, 25, 25, 'hello', true, 25);
INSERT INTO public.planet VALUES (26, 'name', 26, 26, 26, 'hello', true, 26);
INSERT INTO public.planet VALUES (27, 'name', 27, 27, 27, 'hello', true, 27);
INSERT INTO public.planet VALUES (28, 'name', 28, 28, 28, 'hello', true, 28);
INSERT INTO public.planet VALUES (29, 'name', 29, 29, 29, 'hello', true, 29);
INSERT INTO public.planet VALUES (30, 'name', 30, 30, 30, 'hello', true, 30);
INSERT INTO public.planet VALUES (31, 'name', 31, 31, 31, 'hello', true, 31);
INSERT INTO public.planet VALUES (32, 'name', 32, 32, 32, 'hello', true, 32);
INSERT INTO public.planet VALUES (33, 'name', 33, 33, 33, 'hello', true, 33);
INSERT INTO public.planet VALUES (34, 'name', 34, 34, 34, 'hello', true, 34);
INSERT INTO public.planet VALUES (35, 'name', 35, 35, 35, 'hello', true, 35);
INSERT INTO public.planet VALUES (36, 'name', 36, 36, 36, 'hello', true, 36);
INSERT INTO public.planet VALUES (37, 'name', 37, 37, 37, 'hello', true, 37);
INSERT INTO public.planet VALUES (38, 'name', 38, 38, 38, 'hello', true, 38);
INSERT INTO public.planet VALUES (39, 'name', 39, 39, 39, 'hello', true, 39);
INSERT INTO public.planet VALUES (40, 'name', 40, 40, 40, 'hello', true, 40);
INSERT INTO public.planet VALUES (41, 'name', 41, 41, 41, 'hello', true, 41);
INSERT INTO public.planet VALUES (42, 'name', 42, 42, 42, 'hello', true, 42);
INSERT INTO public.planet VALUES (43, 'name', 43, 43, 43, 'hello', true, 43);
INSERT INTO public.planet VALUES (44, 'name', 44, 44, 44, 'hello', true, 44);
INSERT INTO public.planet VALUES (45, 'name', 45, 45, 45, 'hello', true, 45);
INSERT INTO public.planet VALUES (46, 'name', 46, 46, 46, 'hello', true, 46);
INSERT INTO public.planet VALUES (47, 'name', 47, 47, 47, 'hello', true, 47);
INSERT INTO public.planet VALUES (48, 'name', 48, 48, 48, 'hello', true, 48);
INSERT INTO public.planet VALUES (49, 'name', 49, 49, 49, 'hello', true, 49);
INSERT INTO public.planet VALUES (50, 'name', 50, 50, 50, 'hello', true, 50);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'name', 1, 1, 1, 'hello', true, 1);
INSERT INTO public.star VALUES (2, 'name', 2, 2, 2, 'hello', true, 2);
INSERT INTO public.star VALUES (3, 'name', 3, 3, 3, 'hello', true, 3);
INSERT INTO public.star VALUES (4, 'name', 4, 4, 4, 'hello', true, 4);
INSERT INTO public.star VALUES (5, 'name', 5, 5, 5, 'hello', true, 5);
INSERT INTO public.star VALUES (6, 'name', 6, 6, 6, 'hello', true, 6);
INSERT INTO public.star VALUES (7, 'name', 7, 7, 7, 'hello', true, 7);
INSERT INTO public.star VALUES (8, 'name', 8, 8, 8, 'hello', true, 8);
INSERT INTO public.star VALUES (9, 'name', 9, 9, 9, 'hello', true, 9);
INSERT INTO public.star VALUES (10, 'name', 10, 10, 10, 'hello', true, 10);
INSERT INTO public.star VALUES (11, 'name', 11, 11, 11, 'hello', true, 11);
INSERT INTO public.star VALUES (12, 'name', 12, 12, 12, 'hello', true, 12);
INSERT INTO public.star VALUES (13, 'name', 13, 13, 13, 'hello', true, 13);
INSERT INTO public.star VALUES (14, 'name', 14, 14, 14, 'hello', true, 14);
INSERT INTO public.star VALUES (15, 'name', 15, 15, 15, 'hello', true, 15);
INSERT INTO public.star VALUES (16, 'name', 16, 16, 16, 'hello', true, 16);
INSERT INTO public.star VALUES (17, 'name', 17, 17, 17, 'hello', true, 17);
INSERT INTO public.star VALUES (18, 'name', 18, 18, 18, 'hello', true, 18);
INSERT INTO public.star VALUES (19, 'name', 19, 19, 19, 'hello', true, 19);
INSERT INTO public.star VALUES (20, 'name', 20, 20, 20, 'hello', true, 20);
INSERT INTO public.star VALUES (21, 'name', 21, 21, 21, 'hello', true, 21);
INSERT INTO public.star VALUES (22, 'name', 22, 22, 22, 'hello', true, 22);
INSERT INTO public.star VALUES (23, 'name', 23, 23, 23, 'hello', true, 23);
INSERT INTO public.star VALUES (24, 'name', 24, 24, 24, 'hello', true, 24);
INSERT INTO public.star VALUES (25, 'name', 25, 25, 25, 'hello', true, 25);
INSERT INTO public.star VALUES (26, 'name', 26, 26, 26, 'hello', true, 26);
INSERT INTO public.star VALUES (27, 'name', 27, 27, 27, 'hello', true, 27);
INSERT INTO public.star VALUES (28, 'name', 28, 28, 28, 'hello', true, 28);
INSERT INTO public.star VALUES (29, 'name', 29, 29, 29, 'hello', true, 29);
INSERT INTO public.star VALUES (30, 'name', 30, 30, 30, 'hello', true, 30);
INSERT INTO public.star VALUES (31, 'name', 31, 31, 31, 'hello', true, 31);
INSERT INTO public.star VALUES (32, 'name', 32, 32, 32, 'hello', true, 32);
INSERT INTO public.star VALUES (33, 'name', 33, 33, 33, 'hello', true, 33);
INSERT INTO public.star VALUES (34, 'name', 34, 34, 34, 'hello', true, 34);
INSERT INTO public.star VALUES (35, 'name', 35, 35, 35, 'hello', true, 35);
INSERT INTO public.star VALUES (36, 'name', 36, 36, 36, 'hello', true, 36);
INSERT INTO public.star VALUES (37, 'name', 37, 37, 37, 'hello', true, 37);
INSERT INTO public.star VALUES (38, 'name', 38, 38, 38, 'hello', true, 38);
INSERT INTO public.star VALUES (39, 'name', 39, 39, 39, 'hello', true, 39);
INSERT INTO public.star VALUES (40, 'name', 40, 40, 40, 'hello', true, 40);
INSERT INTO public.star VALUES (41, 'name', 41, 41, 41, 'hello', true, 41);
INSERT INTO public.star VALUES (42, 'name', 42, 42, 42, 'hello', true, 42);
INSERT INTO public.star VALUES (43, 'name', 43, 43, 43, 'hello', true, 43);
INSERT INTO public.star VALUES (44, 'name', 44, 44, 44, 'hello', true, 44);
INSERT INTO public.star VALUES (45, 'name', 45, 45, 45, 'hello', true, 45);
INSERT INTO public.star VALUES (46, 'name', 46, 46, 46, 'hello', true, 46);
INSERT INTO public.star VALUES (47, 'name', 47, 47, 47, 'hello', true, 47);
INSERT INTO public.star VALUES (48, 'name', 48, 48, 48, 'hello', true, 48);
INSERT INTO public.star VALUES (49, 'name', 49, 49, 49, 'hello', true, 49);
INSERT INTO public.star VALUES (50, 'name', 50, 50, 50, 'hello', true, 50);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 50, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 50, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 50, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 50, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 50, true);


--
-- Name: extra extra_extra_id1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_extra_id1_key UNIQUE (extra_id1);


--
-- Name: extra extra_extra_id2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_extra_id2_key UNIQUE (extra_id2);


--
-- Name: extra extra_extra_id3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_extra_id3_key UNIQUE (extra_id3);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_galaxy_id1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id1_key UNIQUE (galaxy_id1);


--
-- Name: galaxy galaxy_galaxy_id2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id2_key UNIQUE (galaxy_id2);


--
-- Name: galaxy galaxy_galaxy_id3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id3_key UNIQUE (galaxy_id3);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id1_key UNIQUE (moon_id1);


--
-- Name: moon moon_moon_id2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id2_key UNIQUE (moon_id2);


--
-- Name: moon moon_moon_id3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id3_key UNIQUE (moon_id3);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id1_key UNIQUE (planet_id1);


--
-- Name: planet planet_planet_id2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id2_key UNIQUE (planet_id2);


--
-- Name: planet planet_planet_id3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id3_key UNIQUE (planet_id3);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id1_key UNIQUE (star_id1);


--
-- Name: star star_star_id2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id2_key UNIQUE (star_id2);


--
-- Name: star star_star_id3_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id3_key UNIQUE (star_id3);


--
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id1) REFERENCES public.galaxy(galaxy_id1);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id1) REFERENCES public.planet(planet_id1);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id1) REFERENCES public.star(star_id1);


--
-- PostgreSQL database dump complete
--

