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
    diameter_ly integer,
    distance_ly numeric,
    galaxy_info text
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
    name character varying(30) NOT NULL,
    discovered integer,
    moon_info text,
    planet_id integer NOT NULL
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
    planet_info text,
    has_life boolean NOT NULL,
    has_water boolean NOT NULL,
    star_id integer NOT NULL,
    diameter_km integer NOT NULL
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
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rockets_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rockets_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_ly numeric NOT NULL,
    galaxy_id integer NOT NULL,
    star_info text
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rockets_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'LMC', 14000, 158000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 220000, 2500000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 37000, 11500000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 170000, 20870000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 50000, 29350000, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 60000, 30000000, NULL);
INSERT INTO public.galaxy VALUES (8, 'NGC 1300', 110000, 61000000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, 'The Moon is Earths sole natural satellite and nearest large celestial body', 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 1877, 'the outer and smaller of Mars two moons', 4);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 'the inner and larger of Mars two moons', 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', 1892, 'small, potato-shaped moon', 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 1610, 'outermost of the four large moons', 5);
INSERT INTO public.moon VALUES (6, 'Europa', 1610, 'the smallest and second nearest of the four large moons', 5);
INSERT INTO public.moon VALUES (7, 'Ganymede', 1610, 'largest of Jupiters satellites and of all the satellites in the solar system', 5);
INSERT INTO public.moon VALUES (8, 'Io', 1610, 'innermost of the four large moons', 5);
INSERT INTO public.moon VALUES (9, 'Dione', 1684, 'fourth nearest of the major regular moons of Saturn', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1789, 'second nearest of the major regular moons of Saturn and the brightest of all its moons', 6);
INSERT INTO public.moon VALUES (11, 'Hyperion', 1848, 'major moon of Saturn', 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 1671, 'outermost of Saturns major regular moons', 6);
INSERT INTO public.moon VALUES (13, 'Mimas', 1789, 'smallest and innermost of the major regular moons of Saturn', 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', 1899, 'midsize irregular moon of Saturn', 6);
INSERT INTO public.moon VALUES (15, 'Rhea', 1672, 'major regular moon of Saturn and the planets second largest', 6);
INSERT INTO public.moon VALUES (16, 'Tethys', 1684, 'major regular moon of Saturn', 6);
INSERT INTO public.moon VALUES (17, 'Titan', 1655, 'the largest moon of Saturn and the only moon in the solar system known to have clouds', 6);
INSERT INTO public.moon VALUES (18, 'Ariel', 1851, 'second nearest of the five major moons of Uranus', 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 1948, 'innermost and smallest of the five major moons of Uranus', 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 1787, 'outermost of the five major moons of Uranus and the second largest of the group', 7);
INSERT INTO public.moon VALUES (21, 'Titania', 1787, 'largest of the moons of Uranus', 7);
INSERT INTO public.moon VALUES (22, 'Umbriel', 1851, 'third nearest of the five major moons of Uranus and the one having the darkest and oldest surface of the group', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to the sun', false, false, 1, 4880);
INSERT INTO public.planet VALUES (2, 'Venus', 'Earths solar system twin', false, false, 1, 12104);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet, filled with life', true, true, 1, 12760);
INSERT INTO public.planet VALUES (4, 'Mars', 'The solar systems Red Planet', false, false, 1, 6787);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in our solar system', false, false, 1, 139822);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The ringed jewel of the solar system', false, false, 1, 120500);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The tilted, sideways planet in our solar system', false, false, 1, 51120);
INSERT INTO public.planet VALUES (8, 'Neptune', 'A giant, stormy blue planet', false, false, 1, 49530);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Once a planet, now a dwarf planet', false, false, 1, 2301);
INSERT INTO public.planet VALUES (11, 'Planet C', 'Is potentially habitable', false, false, 2, 123000);
INSERT INTO public.planet VALUES (12, 'Planet B', 'Is potentially habitable', false, false, 10, 123000);
INSERT INTO public.planet VALUES (10, 'Planet A', 'Is potentially habitable', false, false, 2, 123000);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'Voyager 1', 1977);
INSERT INTO public.rockets VALUES (2, 'Voyager 2', 1977);
INSERT INTO public.rockets VALUES (3, 'Pioneer 10', 1972);
INSERT INTO public.rockets VALUES (4, 'Pioneer 11', 1973);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.000016, 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.37, 1, NULL);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 4.37, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 4.37, 1, NULL);
INSERT INTO public.star VALUES (5, 'Bernards Star', 5.96, 1, NULL);
INSERT INTO public.star VALUES (6, 'Wolf 359', 7.86, 1, NULL);
INSERT INTO public.star VALUES (7, 'Lalande 21185', 8.31, 1, NULL);
INSERT INTO public.star VALUES (8, 'Sirius A', 8.66, 1, NULL);
INSERT INTO public.star VALUES (9, 'Sirius B', 8.66, 1, NULL);
INSERT INTO public.star VALUES (10, 'Luyten 726-8 A', 8.79, 1, NULL);
INSERT INTO public.star VALUES (11, 'Luyten 726-8 B', 8.79, 1, NULL);
INSERT INTO public.star VALUES (12, 'Ross 154', 9.70, 1, NULL);
INSERT INTO public.star VALUES (13, 'Ross 248', 10.29, 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rockets_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


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
-- Name: moon moon_moon_info_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_info_key UNIQUE (moon_info);


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
-- Name: rockets rockets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_name_key UNIQUE (name);


--
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


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

