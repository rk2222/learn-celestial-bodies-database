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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_cool_shape boolean NOT NULL,
    type text NOT NULL,
    star_num integer
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
-- Name: galaxy_god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_god (
    galaxy_id integer NOT NULL,
    god_id integer NOT NULL
);


ALTER TABLE public.galaxy_god OWNER TO freecodecamp;

--
-- Name: god; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.god (
    god_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_real boolean NOT NULL
);


ALTER TABLE public.god OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.god_god_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.god_god_id_seq OWNER TO freecodecamp;

--
-- Name: god_god_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.god_god_id_seq OWNED BY public.god.god_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_cheese boolean,
    planet_id integer,
    color text
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
    name character varying(30) NOT NULL,
    population integer,
    star_id integer,
    danger_lvl integer
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
    name character varying(30) NOT NULL,
    plan_num integer NOT NULL,
    galaxy_id integer,
    brightness numeric(4,1)
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: god god_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god ALTER COLUMN god_id SET DEFAULT nextval('public.god_god_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'eura', false, 'small', 46);
INSERT INTO public.galaxy VALUES (2, 'asaia', false, 'huge', 46);
INSERT INTO public.galaxy VALUES (3, 'afra', true, 'HUGE', 54);
INSERT INTO public.galaxy VALUES (4, 'amran', true, 'normal', 23);
INSERT INTO public.galaxy VALUES (5, 'ocia', false, 'small', 14);
INSERT INTO public.galaxy VALUES (6, 'antra', true, 'small', 1);


--
-- Data for Name: galaxy_god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_god VALUES (1, 3);
INSERT INTO public.galaxy_god VALUES (2, 3);
INSERT INTO public.galaxy_god VALUES (3, 3);
INSERT INTO public.galaxy_god VALUES (4, 3);
INSERT INTO public.galaxy_god VALUES (5, 3);
INSERT INTO public.galaxy_god VALUES (6, 3);


--
-- Data for Name: god; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.god VALUES (1, 'macncheese', false);
INSERT INTO public.god VALUES (2, 'jez', false);
INSERT INTO public.god VALUES (3, 'michael jackson', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon2526773', true, 5, 'yellow');
INSERT INTO public.moon VALUES (2, 'moon3760245', false, 4, 'grey');
INSERT INTO public.moon VALUES (3, 'moon3636292', true, 2, 'yellow');
INSERT INTO public.moon VALUES (4, 'moon673995', true, 8, 'yellow');
INSERT INTO public.moon VALUES (5, 'moon36979277', true, 8, 'yellow');
INSERT INTO public.moon VALUES (6, 'moon3239727927', true, 1, 'yellow');
INSERT INTO public.moon VALUES (7, 'moon1947917', true, 5, 'yellow');
INSERT INTO public.moon VALUES (8, 'moon923692529', true, 3, 'yellow');
INSERT INTO public.moon VALUES (9, 'moon23979276972', true, 3, 'yellow');
INSERT INTO public.moon VALUES (10, 'moon14114', true, 6, 'yellow');
INSERT INTO public.moon VALUES (11, 'moon25251', true, 4, 'yellow');
INSERT INTO public.moon VALUES (12, 'moon18885', true, 11, 'yellow');
INSERT INTO public.moon VALUES (13, 'moon2599991', true, 9, 'yellow');
INSERT INTO public.moon VALUES (14, 'moon1999563', true, 6, 'yellow');
INSERT INTO public.moon VALUES (15, 'moon995663', true, 7, 'yellow');
INSERT INTO public.moon VALUES (16, 'moon6492992', true, 6, 'yellow');
INSERT INTO public.moon VALUES (17, 'moon3277577', true, 1, 'yellow');
INSERT INTO public.moon VALUES (18, 'moon66466', true, 12, 'yellow');
INSERT INTO public.moon VALUES (19, 'moon579975', true, 9, 'yellow');
INSERT INTO public.moon VALUES (20, 'moon4264295', false, 1, 'blue');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'bobr', 100, 1, 10000);
INSERT INTO public.planet VALUES (2, 'kurwa', 0, 1, 10);
INSERT INTO public.planet VALUES (3, 'borsch', 1000, 6, 1000);
INSERT INTO public.planet VALUES (4, 'yaga', 0, 6, 252);
INSERT INTO public.planet VALUES (5, 'numbavan', 9999, 5, 100);
INSERT INTO public.planet VALUES (6, 'hk534', 9999, 5, 543);
INSERT INTO public.planet VALUES (7, 'coldzda', 0, 4, 0);
INSERT INTO public.planet VALUES (8, 'fartness', 0, 4, 9999);
INSERT INTO public.planet VALUES (9, 'phara344', 554, 3, 985);
INSERT INTO public.planet VALUES (10, 'sfi', 334, 3, 765);
INSERT INTO public.planet VALUES (11, 'ostra44', 135, 2, 356);
INSERT INTO public.planet VALUES (12, 'greenstone', 15, 2, 567);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'polanda', 5, 1, 0.9);
INSERT INTO public.star VALUES (2, 'newzla', 7, 5, 1.1);
INSERT INTO public.star VALUES (3, 'egpta', 9, 3, 2.5);
INSERT INTO public.star VALUES (4, 'cnda', 6, 4, 0.6);
INSERT INTO public.star VALUES (5, 'chani', 11, 2, 1.6);
INSERT INTO public.star VALUES (6, 'rssa', 10, 1, 1.8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: god_god_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.god_god_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy_god galaxy_god_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_god
    ADD CONSTRAINT galaxy_god_pkey PRIMARY KEY (galaxy_id, god_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: god god_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_name_key UNIQUE (name);


--
-- Name: god god_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.god
    ADD CONSTRAINT god_pkey PRIMARY KEY (god_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy_god galaxy_god_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_god
    ADD CONSTRAINT galaxy_god_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy_god galaxy_god_god_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_god
    ADD CONSTRAINT galaxy_god_god_id_fkey FOREIGN KEY (god_id) REFERENCES public.god(god_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

