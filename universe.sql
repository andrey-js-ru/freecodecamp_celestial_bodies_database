--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter_in_light_years numeric(5,2),
    description text,
    is_spiraling boolean,
    is_accelerating boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    distance_from_earth integer,
    diameter_in_thousands_of_km integer,
    mass_in_billions_of_tons numeric(5,2),
    description text,
    has_water boolean,
    has_life boolean,
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebulae; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebulae (
    nebulae_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter_in_light_years numeric(5,2),
    description text,
    is_spiraling boolean,
    is_accelerating boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.nebulae OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    distance_from_earth integer,
    diameter_in_thousands_of_km integer,
    mass_in_billions_of_tons numeric(5,2),
    description text,
    has_water boolean,
    has_life boolean,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    mass_in_billions_of_tons numeric(5,2),
    description text,
    has_water boolean,
    has_life boolean,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, 35, 2.44, 'a very old beautyful galaxy', true, false, 'galaxy_1');
INSERT INTO public.galaxy VALUES (2, 84, 12, 5.40, 'a newly discovered galaxy', true, true, 'galaxy_2');
INSERT INTO public.galaxy VALUES (3, 43, 2, 6.20, 'a barely visible galaxy', false, false, 'galaxy_3');
INSERT INTO public.galaxy VALUES (4, 11, 65, 6.70, 'a sprawling galaxly', true, true, 'galaxy_4');
INSERT INTO public.galaxy VALUES (5, 220, 44, 2.90, 'a spiraling galaxy', true, true, 'galaxy_5');
INSERT INTO public.galaxy VALUES (6, 996, 534, 660.80, 'a spiraling galaxy', true, true, 'galaxy_6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (33, 42, 454.00, 'an ice covered moon', true, false, 'moon_1', 1);
INSERT INTO public.moon VALUES (99, 341, 333.00, 'a fireball giant moon', true, true, 'moon_2', 2);
INSERT INTO public.moon VALUES (8, 1, 22.00, 'a tornado moon', false, false, 'moon_3', 3);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-x', 4);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-y', 5);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-z', 6);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-123', 7);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-234', 8);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-345', 9);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-456', 10);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-567', 11);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-678', 12);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-789', 13);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-382', 14);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-09', 15);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-55', 16);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-774', 17);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-a21', 18);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-m776', 19);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'moon-k664', 20);


--
-- Data for Name: nebulae; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebulae VALUES (1, 22, 37, 2.00, 'a new nebula', true, true, 'nebula_1');
INSERT INTO public.nebulae VALUES (2, 88, 24, 3.00, 'an old nebula', true, false, 'nebula_2');
INSERT INTO public.nebulae VALUES (3, 9, 11, 1.00, 'a dwarf nebula', false, false, 'nebula_3');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (500, 412, 20.00, 'a red planet', false, false, 'planet_1', 1);
INSERT INTO public.planet VALUES (200, 33, 12.00, 'a blue planet', false, true, 'planet_2', 2);
INSERT INTO public.planet VALUES (55, 1, 3.00, 'a yellow planet', true, false, 'planet_3', 3);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-x', 4);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-y', 5);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-z', 6);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-123', 7);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-234', 8);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-345', 9);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-456', 10);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-567', 11);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, NULL, NULL, 'planet-678', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 201, 22, 55.00, 'a huge sun-like star', false, false, 'star_1', 1);
INSERT INTO public.star VALUES (2, 88, 1, 12.00, 'a little new star', false, false, 'star_2', 2);
INSERT INTO public.star VALUES (3, 90, 3, 11.00, 'a medium-size young star', false, false, 'star_3', 3);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, 'dwarf
404', 4);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, 'dwarf55', 5);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, NULL, NULL, 'dwarf19', 6);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebulae nebulae_nebula_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_nebula_id_key UNIQUE (nebulae_id);


--
-- Name: nebulae nebulae_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebulae
    ADD CONSTRAINT nebulae_pkey PRIMARY KEY (nebulae_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

