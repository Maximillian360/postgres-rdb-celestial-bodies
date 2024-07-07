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
-- Name: base; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.base (
    base_id integer NOT NULL,
    name character varying(20) NOT NULL,
    base_description text
);


ALTER TABLE public.base OWNER TO freecodecamp;

--
-- Name: base_base_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.base_base_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_base_id_seq OWNER TO freecodecamp;

--
-- Name: base_base_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.base_base_id_seq OWNED BY public.base.base_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    galaxy_description text,
    distance_from_earth numeric(8,3),
    is_human_controlled boolean NOT NULL
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
    name character varying(20) NOT NULL,
    moon_description text,
    orbital_period numeric(3,3),
    has_moon_base boolean NOT NULL,
    planet_id integer
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
    name character varying(20) NOT NULL,
    planet_description text,
    number_of_moons integer,
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(20) NOT NULL,
    star_description text,
    number_of_planets integer,
    has_human_outpost boolean NOT NULL,
    galaxy_id integer
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
-- Name: base base_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.base ALTER COLUMN base_id SET DEFAULT nextval('public.base_base_id_seq'::regclass);


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
-- Data for Name: base; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.base VALUES (1, 'Alpha Station', 'Planetary Outpost on Demeter Prime, abandoned');
INSERT INTO public.base VALUES (2, 'Beta Station', 'Planetary Outpost on Gorudan, deserted');
INSERT INTO public.base VALUES (3, 'Gamma  Station', 'Planetary Outpost on Gallard, lost contact');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Home galaxy', 0.001, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest neighbouring  galaxy', 2.500, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third largest neighbouring galaxy', 3.100, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Red dwarf  galaxy', 11.600, false);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', 'Another red dwarf  galaxy', 16000.340, false);
INSERT INTO public.galaxy VALUES (6, 'Euclid Galaxy', 'Procedurally-generated  galaxy from No Mans Sky', 99999.999, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Moon of our home planet', 0.322, true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Moon of Mars, filled with Corpus Pillars', 0.220, true, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Moon of Mars, infested', 0.100, true, 4);
INSERT INTO public.moon VALUES (5, 'Boreas', 'Frigid Moon', 0.994, false, 5);
INSERT INTO public.moon VALUES (6, 'Ino', 'Volcanic moon', 0.776, false, 6);
INSERT INTO public.moon VALUES (7, 'Eull', 'One of Z-77s many moons', 0.444, false, 6);
INSERT INTO public.moon VALUES (8, 'Styx', 'Dark, frigid moon with abnormal radio signals', 0.660, false, 8);
INSERT INTO public.moon VALUES (9, 'Charon', 'Cold, tiny moon', 0.655, false, 10);
INSERT INTO public.moon VALUES (10, 'Mimyr', 'Fiery and rocky moon', 0.319, false, 11);
INSERT INTO public.moon VALUES (11, 'Callisto', 'Darkest moon ever discovered', 0.999, false, 12);
INSERT INTO public.moon VALUES (12, 'Charybdis', 'Ocean moon', 0.129, false, 7);
INSERT INTO public.moon VALUES (13, 'Naidr', 'Tiny rocky moon', 0.155, false, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Hot, volcanic moon with abnormal monstrous-like lifeforms', 0.543, true, 12);
INSERT INTO public.moon VALUES (15, 'Scylla', 'Cold, aquatic moon with suspected Leviathan-class lifeforms', 0.781, true, 12);
INSERT INTO public.moon VALUES (16, 'Wraith', 'Engimatic, anomalous moon', 0.781, false, 10);
INSERT INTO public.moon VALUES (17, 'Nexus', 'Quirky moon filled with Methane', 0.452, false, 8);
INSERT INTO public.moon VALUES (18, 'Selene', 'Lush moon', 0.277, false, 8);
INSERT INTO public.moon VALUES (19, 'Whisper', 'Icy moon', 0.273, false, 7);
INSERT INTO public.moon VALUES (20, 'Gallard', 'Radioactive moon, anomalous lifeforms', 0.665, true, 12);
INSERT INTO public.moon VALUES (21, 'Chroma', 'Fiery, volcanic, radioactive, and tempestous moon', 0.998, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest Planet to Sol', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Very hot planet near Earth', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet', 2, false, 1);
INSERT INTO public.planet VALUES (5, 'X-501', 'Cold planet', 0, false, 2);
INSERT INTO public.planet VALUES (6, 'YB-923', 'Gas giant', 3, false, 2);
INSERT INTO public.planet VALUES (7, 'Z-77', 'Aquatic, deep oceans', 1, true, 2);
INSERT INTO public.planet VALUES (8, 'Demeter-Prime', 'Flourishing planet, carbon-based lifeforms found', 2, true, 2);
INSERT INTO public.planet VALUES (9, 'A-111', 'Volcanic planet', 0, false, 3);
INSERT INTO public.planet VALUES (10, 'Z-553', 'Cold exoplanet', 0, false, 4);
INSERT INTO public.planet VALUES (11, 'Y-77', 'Stormy rocky planet', 0, false, 5);
INSERT INTO public.planet VALUES (12, 'Gorudan', 'Radioactive volcanic giant', 6, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Our home star', 8, true, 1);
INSERT INTO public.star VALUES (2, 'BX-381X', 'Fictional gas giant', 2, false, 2);
INSERT INTO public.star VALUES (3, 'XYZ-123', 'Orange red dwarf', 3, false, 3);
INSERT INTO public.star VALUES (4, 'BL-TAU', 'Red dwarf', 0, false, 4);
INSERT INTO public.star VALUES (5, 'Alpha-117', 'Binary star system', 2, false, 5);
INSERT INTO public.star VALUES (6, 'Bibarid', 'Vykeen controlled with a flourishing power generation economy', 5, false, 6);


--
-- Name: base_base_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.base_base_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: base base_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.base
    ADD CONSTRAINT base_name_key UNIQUE (name);


--
-- Name: base base_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.base
    ADD CONSTRAINT base_pkey PRIMARY KEY (base_id);


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
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

