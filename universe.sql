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
-- Name: explore; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.explore (
    explore_id integer NOT NULL,
    explored boolean,
    planet_id integer,
    name character varying(50) NOT NULL
);


ALTER TABLE public.explore OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_type character varying(50),
    description text,
    galaxy_age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    moon_diameter integer,
    number_of_crater integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    has_life boolean,
    distance_from_earth numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_age_in_millions integer NOT NULL,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: explore; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.explore VALUES (1, true, 1, 'Curiosity');
INSERT INTO public.explore VALUES (2, true, 1, 'Opportunity');
INSERT INTO public.explore VALUES (3, false, 2, 'Spirit');
INSERT INTO public.explore VALUES (4, true, 3, 'Perseverance');
INSERT INTO public.explore VALUES (5, true, 4, 'Voyager 1');
INSERT INTO public.explore VALUES (6, true, 5, 'Voyager 2');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'The galaxy where the Solar System resides.', 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'The nearest spiral galaxy to the Milky Way.', 10000);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical', 'A supergiant elliptical galaxy in the constellation Virgo.', 13000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral', 'A small spiral galaxy in the constellation Triangulum.', 5000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Spiral', 'A classic spiral galaxy located in the constellation Canes Venatici.', 8000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Spiral', 'A spiral galaxy in the constellation Virgo characterized by its prominent dust lane.', 28000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3474, 500000);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 22, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 12, 0);
INSERT INTO public.moon VALUES (4, 'Io', 1, 3643, 400);
INSERT INTO public.moon VALUES (5, 'Europa', 1, 3122, 200);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1, 5268, 1000);
INSERT INTO public.moon VALUES (7, 'Callisto', 1, 4821, 200);
INSERT INTO public.moon VALUES (8, 'HD 189733b-b', 6, 6000, 0);
INSERT INTO public.moon VALUES (9, 'Tatoo II', 10, 3200, 0);
INSERT INTO public.moon VALUES (10, 'Alderaan I', 11, 4000, 0);
INSERT INTO public.moon VALUES (11, 'Hoth I', 12, 2800, 0);
INSERT INTO public.moon VALUES (12, 'Endor I', 13, 3700, 0);
INSERT INTO public.moon VALUES (13, 'Jakku I', 14, 2600, 0);
INSERT INTO public.moon VALUES (14, 'Naboo I', 17, 3300, 0);
INSERT INTO public.moon VALUES (15, 'Cybertron I', 18, 4500, 0);
INSERT INTO public.moon VALUES (16, 'Asgard I', 19, 5000, 0);
INSERT INTO public.moon VALUES (17, 'Gotham I', 20, 2800, 0);
INSERT INTO public.moon VALUES (18, 'Gallifrey I', 16, 6200, 0);
INSERT INTO public.moon VALUES (19, 'Whirlpool-A-I', 16, 2000, 0);
INSERT INTO public.moon VALUES (20, 'Whirlpool-B-I', 16, 1800, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 0);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 1.5);
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 0.7);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, false, 0.4);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 4, true, 490);
INSERT INTO public.planet VALUES (6, 'HD 189733b', 4, false, 63);
INSERT INTO public.planet VALUES (7, 'PSR B1257+12 A', 10, false, 9800);
INSERT INTO public.planet VALUES (8, 'PSR B1257+12 B', 10, false, 9800);
INSERT INTO public.planet VALUES (9, 'PSR B1257+12 C', 10, false, 9800);
INSERT INTO public.planet VALUES (10, 'Tatooine', 2, false, 8.6);
INSERT INTO public.planet VALUES (11, 'Alderaan', 2, false, 3.5);
INSERT INTO public.planet VALUES (12, 'Hoth', 2, false, 2.2);
INSERT INTO public.planet VALUES (13, 'Endor', 2, true, 4.3);
INSERT INTO public.planet VALUES (14, 'Jakku', 2, false, 12);
INSERT INTO public.planet VALUES (15, 'Krypton', 4, false, 27);
INSERT INTO public.planet VALUES (16, 'Gallifrey', 4, false, 2100);
INSERT INTO public.planet VALUES (17, 'Naboo', 2, true, 7.5);
INSERT INTO public.planet VALUES (18, 'Cybertron', 4, false, 680);
INSERT INTO public.planet VALUES (19, 'Asgard', 5, false, 1400);
INSERT INTO public.planet VALUES (20, 'Gotham', 5, false, 2.5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 6000, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 100000, false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 25000, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 6000, false, 1);
INSERT INTO public.star VALUES (6, 'Andromeda A', 10000, true, 2);
INSERT INTO public.star VALUES (7, 'Andromeda B', 10000, true, 2);
INSERT INTO public.star VALUES (8, 'Andromeda C', 10000, true, 2);
INSERT INTO public.star VALUES (9, 'M87-A', 13000, true, 3);
INSERT INTO public.star VALUES (10, 'M87-B', 13000, true, 3);
INSERT INTO public.star VALUES (11, 'M87-C', 13000, true, 3);
INSERT INTO public.star VALUES (12, 'M87-D', 13000, true, 3);
INSERT INTO public.star VALUES (13, 'Triangulum-A', 5000, true, 4);
INSERT INTO public.star VALUES (14, 'Triangulum-B', 5000, true, 4);
INSERT INTO public.star VALUES (15, 'Triangulum-C', 5000, true, 4);
INSERT INTO public.star VALUES (16, 'Whirlpool-A', 8000, true, 5);
INSERT INTO public.star VALUES (17, 'Whirlpool-B', 8000, true, 5);
INSERT INTO public.star VALUES (18, 'Whirlpool-C', 8000, true, 5);
INSERT INTO public.star VALUES (19, 'Whirlpool-D', 8000, true, 5);
INSERT INTO public.star VALUES (20, 'Whirlpool-E', 8000, true, 5);


--
-- Name: explore explore_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore
    ADD CONSTRAINT explore_name_unique UNIQUE (name);


--
-- Name: explore explore_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore
    ADD CONSTRAINT explore_pkey PRIMARY KEY (explore_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: explore explore_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.explore
    ADD CONSTRAINT explore_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_moon_planet_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_planet_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_brightest_star_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_brightest_star_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

