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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    length integer NOT NULL,
    size integer NOT NULL,
    color character varying(30),
    name character varying(30),
    earth_id integer NOT NULL,
    sun_id integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    atmosphere character varying(30) NOT NULL,
    name character varying(30),
    size integer,
    altname text,
    life boolean,
    animals boolean,
    water boolean,
    fun boolean,
    galaxy_id integer NOT NULL
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
    size integer NOT NULL,
    name character varying(30),
    cold boolean,
    weight integer,
    height numeric(4,1),
    maxwidth integer DEFAULT 0 NOT NULL,
    moon_id integer NOT NULL,
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
    name character varying(30),
    color character varying(30) NOT NULL,
    weight integer,
    length numeric(4,1),
    exist boolean,
    size integer,
    cars boolean,
    life boolean,
    popl integer,
    school boolean,
    mercury character varying(30),
    clouds boolean,
    maxwidth integer DEFAULT 0 NOT NULL,
    planet_id integer NOT NULL,
    earth_id integer,
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
    name character varying(30),
    size integer NOT NULL,
    length integer NOT NULL,
    life boolean,
    glow boolean,
    width integer,
    fun boolean,
    galaxy_id integer,
    star_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    START WITH 6
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

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
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    size integer NOT NULL,
    length integer NOT NULL,
    color character varying(30),
    name character varying(30),
    sun_id integer NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_sun_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 12742, NULL, 'Earth', 1, 1);
INSERT INTO public.earth VALUES (2, 6779, NULL, 'Mars', 2, 2);
INSERT INTO public.earth VALUES (3, 12104, NULL, 'Venus', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Hydrogen', 'uor', NULL, NULL, false, true, false, true, 1);
INSERT INTO public.galaxy VALUES ('Helium', 'ior', NULL, NULL, false, true, false, true, 2);
INSERT INTO public.galaxy VALUES ('Oxygen', 'yor', NULL, NULL, false, true, false, true, 3);
INSERT INTO public.galaxy VALUES ('Nitrogen', 'tor', NULL, NULL, false, true, false, true, 4);
INSERT INTO public.galaxy VALUES ('Carbon Dioxide', 'ror', NULL, NULL, false, true, false, true, 5);
INSERT INTO public.galaxy VALUES ('Methane', 'dor', NULL, NULL, false, true, false, true, 6);
INSERT INTO public.galaxy VALUES ('Ammonia', 'for', NULL, NULL, false, true, false, true, 7);
INSERT INTO public.galaxy VALUES ('Argon', 'or', NULL, NULL, false, true, false, true, 8);
INSERT INTO public.galaxy VALUES ('hydrogen', 'Galaxy 9', 100000, NULL, false, true, false, true, 9);
INSERT INTO public.galaxy VALUES ('helium', 'Galaxy 10', 200000, NULL, false, true, false, true, 10);
INSERT INTO public.galaxy VALUES ('oxygen', 'Galaxy 11', 150000, NULL, false, true, false, true, 11);
INSERT INTO public.galaxy VALUES ('nitrogen', 'Galaxy 12', 180000, NULL, false, true, false, true, 12);
INSERT INTO public.galaxy VALUES ('carbon dioxide', 'Galaxy 13', 120000, NULL, false, true, false, true, 13);
INSERT INTO public.galaxy VALUES ('methane', 'Galaxy 14', 90000, NULL, false, true, false, true, 14);
INSERT INTO public.galaxy VALUES ('ammonia', 'Galaxy 15', 140000, NULL, false, true, false, true, 15);
INSERT INTO public.galaxy VALUES ('argon', 'Galaxy 16', 110000, NULL, false, true, false, true, 16);
INSERT INTO public.galaxy VALUES ('hydrogen', 'Galaxy 17', 180368, NULL, false, true, false, true, 17);
INSERT INTO public.galaxy VALUES ('helium', 'Galaxy 18', 120964, NULL, false, true, false, true, 18);
INSERT INTO public.galaxy VALUES ('oxygen', 'Galaxy 19', 161669, NULL, false, true, false, true, 19);
INSERT INTO public.galaxy VALUES ('nitrogen', 'Galaxy 20', 229241, NULL, false, true, false, true, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, 'dwf', NULL, NULL, NULL, 0, 1, 1);
INSERT INTO public.moon VALUES (23, 'dwd', NULL, NULL, NULL, 0, 2, 2);
INSERT INTO public.moon VALUES (12, 'ye', NULL, NULL, NULL, 0, 3, 3);
INSERT INTO public.moon VALUES (32, 'owe', NULL, NULL, NULL, 0, 4, 4);
INSERT INTO public.moon VALUES (392, 'wem', NULL, NULL, NULL, 0, 5, 5);
INSERT INTO public.moon VALUES (49, 'oew', NULL, NULL, NULL, 0, 6, 6);
INSERT INTO public.moon VALUES (83, 'pqow', NULL, NULL, NULL, 0, 7, 7);
INSERT INTO public.moon VALUES (93, 'wowo', NULL, NULL, NULL, 0, 8, 8);
INSERT INTO public.moon VALUES (393, 'widd', NULL, NULL, NULL, 0, 9, 9);
INSERT INTO public.moon VALUES (293, 'dwd', NULL, NULL, NULL, 0, 10, 10);
INSERT INTO public.moon VALUES (39333, 'dw', NULL, NULL, NULL, 0, 11, 11);
INSERT INTO public.moon VALUES (28383, 'wdwdfef', NULL, NULL, NULL, 0, 12, 12);
INSERT INTO public.moon VALUES (1, 'odin', NULL, NULL, NULL, 0, 13, 13);
INSERT INTO public.moon VALUES (201, 'chris', NULL, NULL, NULL, 0, 14, 14);
INSERT INTO public.moon VALUES (2, 'ken', NULL, NULL, NULL, 0, 15, 15);
INSERT INTO public.moon VALUES (123, 'sebeer', NULL, NULL, NULL, 0, 16, 16);
INSERT INTO public.moon VALUES (44, 'mik', NULL, NULL, NULL, 0, 18, 18);
INSERT INTO public.moon VALUES (4424, 'leei', NULL, NULL, NULL, 0, 19, 19);
INSERT INTO public.moon VALUES (283747, 'dwidjiwdj', NULL, NULL, NULL, 0, 20, 20);
INSERT INTO public.moon VALUES (4, 'fie', NULL, NULL, NULL, 0, 17, 17);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('pluto', 'grey', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 1);
INSERT INTO public.planet VALUES ('earth', 'blue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, NULL, 2);
INSERT INTO public.planet VALUES ('venus', 'red', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3, NULL, 3);
INSERT INTO public.planet VALUES ('Mars', 'orange', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4, NULL, 4);
INSERT INTO public.planet VALUES ('neptune', 'blueack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 5, NULL, 5);
INSERT INTO public.planet VALUES ('nexus', 'yellow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, NULL, 6);
INSERT INTO public.planet VALUES ('albert', 'blurple', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 7, NULL, 7);
INSERT INTO public.planet VALUES ('starry', 'clear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 8, NULL, 8);
INSERT INTO public.planet VALUES ('lemon', 'sunny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 9, NULL, 9);
INSERT INTO public.planet VALUES ('harp', 'black', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 10, NULL, 10);
INSERT INTO public.planet VALUES ('morg', 'pink', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 11, NULL, 11);
INSERT INTO public.planet VALUES ('dur', 'ranid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 12, NULL, 12);
INSERT INTO public.planet VALUES ('New Planet 1', 'xen', 100, 10.0, true, 5000, true, true, 1000000, true, 'Mercury', true, 0, 13, NULL, 13);
INSERT INTO public.planet VALUES ('New Planet 2', 'fen', 200, 20.0, true, 6000, true, true, 2000000, true, 'Mercury', true, 0, 14, NULL, 14);
INSERT INTO public.planet VALUES ('New Planet 3', 'lon', 150, 15.0, true, 4500, true, true, 1500000, true, 'Mercury', true, 0, 15, NULL, 15);
INSERT INTO public.planet VALUES ('New Planet 4', 'ox', 180, 18.0, true, 5500, true, true, 1800000, true, 'Mercury', true, 0, 16, NULL, 16);
INSERT INTO public.planet VALUES ('Kepler-452b', 'gray', 150, 12.0, true, 6000, false, false, NULL, false, 'Mercury', false, 0, 17, NULL, 17);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 'brown', 120, 10.0, true, 4000, false, false, NULL, false, 'Mercury', false, 0, 18, NULL, 18);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 'red', 80, 8.0, true, 3000, false, false, NULL, false, 'Mercury', false, 0, 19, NULL, 19);
INSERT INTO public.planet VALUES ('Ross 128 b', 'blue', 180, 16.0, true, 5000, false, false, NULL, false, 'Mercury', false, 0, 20, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('ad', 10, 1000, NULL, NULL, NULL, true, 1, 1, NULL);
INSERT INTO public.star VALUES ('phx', 20, 2500, NULL, NULL, NULL, true, 2, 2, NULL);
INSERT INTO public.star VALUES ('gero', 5, 500, NULL, NULL, NULL, false, 3, 3, NULL);
INSERT INTO public.star VALUES ('go', 15, 1800, NULL, NULL, NULL, false, 4, 4, NULL);
INSERT INTO public.star VALUES ('dwwd', 0, 0, NULL, NULL, NULL, NULL, 5, 5, NULL);
INSERT INTO public.star VALUES ('dwwd', 0, 0, NULL, NULL, NULL, NULL, 6, 6, NULL);
INSERT INTO public.star VALUES ('dwwd', 0, 0, NULL, NULL, NULL, NULL, 7, 7, NULL);
INSERT INTO public.star VALUES ('dwwd', 0, 0, NULL, NULL, NULL, NULL, 8, 8, NULL);
INSERT INTO public.star VALUES ('dwwd', 0, 0, NULL, NULL, NULL, NULL, 9, 9, NULL);
INSERT INTO public.star VALUES ('Nova', 0, 0, NULL, NULL, NULL, NULL, 10, 10, NULL);
INSERT INTO public.star VALUES ('Neutron Star', 0, 0, NULL, NULL, NULL, NULL, 11, 11, NULL);
INSERT INTO public.star VALUES ('White Dwarf', 0, 0, NULL, NULL, NULL, NULL, 12, 12, NULL);
INSERT INTO public.star VALUES ('Black Hole', 0, 0, NULL, NULL, NULL, NULL, 13, 13, NULL);
INSERT INTO public.star VALUES ('Lod', 12, 1400, NULL, NULL, NULL, true, 14, 14, NULL);
INSERT INTO public.star VALUES ('midew', 7, 800, NULL, NULL, NULL, false, 15, 15, NULL);
INSERT INTO public.star VALUES ('keod', 8, 900, NULL, NULL, NULL, false, 16, 16, NULL);
INSERT INTO public.star VALUES ('Star 17', 10, 1000, NULL, NULL, NULL, true, 17, 17, NULL);
INSERT INTO public.star VALUES ('Star 18', 20, 2500, NULL, NULL, NULL, true, 18, 18, NULL);
INSERT INTO public.star VALUES ('Star 19', 5, 500, NULL, NULL, NULL, false, 19, 19, NULL);
INSERT INTO public.star VALUES ('Star 20', 15, 1800, NULL, NULL, NULL, false, 20, 20, NULL);


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1400000, 1, NULL, 'Sun', 1);
INSERT INTO public.sun VALUES (1700000, 2, NULL, 'Sirius', 2);
INSERT INTO public.sun VALUES (1400000000, 3, NULL, 'Betelgeuse', 3);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: sun_sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_sun_id_seq', 1, false);


--
-- Name: moon cool; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT cool UNIQUE (cold);


--
-- Name: earth ear; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT ear UNIQUE (size);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: sun len; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT len UNIQUE (length);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy oek; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT oek UNIQUE (size);


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
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


--
-- Name: star wid; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT wid UNIQUE (width);


--
-- Name: planet zen; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT zen UNIQUE (popl);


--
-- Name: earth fk_earth_sun; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT fk_earth_sun FOREIGN KEY (sun_id) REFERENCES public.sun(sun_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_earth; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_earth FOREIGN KEY (earth_id) REFERENCES public.earth(earth_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

