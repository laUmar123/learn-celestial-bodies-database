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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    type_of_galaxy_id smallint NOT NULL
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    planet_id integer,
    orbit_time_in_days integer
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    distance_from_earth_in_light_years numeric(10,6) NOT NULL,
    star_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth_in_light_years numeric(10,1) NOT NULL,
    age_in_millions_of_years integer,
    will_become_black_hole boolean NOT NULL,
    galaxy_id smallint NOT NULL
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
-- Name: type_of_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type_of_galaxy (
    type_of_galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.type_of_galaxy OWNER TO freecodecamp;

--
-- Name: type_of_galaxy_type_of_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_of_galaxy_type_of_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_of_galaxy_type_of_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: type_of_galaxy_type_of_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_of_galaxy_type_of_galaxy_id_seq OWNED BY public.type_of_galaxy.type_of_galaxy_id;


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
-- Name: type_of_galaxy type_of_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy ALTER COLUMN type_of_galaxy_id SET DEFAULT nextval('public.type_of_galaxy_type_of_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the nightsky formed from stars that cannot be individually distinguished by the naked eye.The Milky Way is a barred spiral galaxy with a D25 isophotal diameter estimated at 26.8 ± 1.1 kiloparsecs (87,400 ± 3,600 light-years), but only about 1,000 light-years thick at the spiral arms (more at the bulge). Recent simulations suggest that a dark matter area, also containing some visible stars, may extend up to a diameter of almost 2 million light-years (613 kpc). The Milky Way has several satellite galaxies and is part of the Local Group of galaxies, which form part of the Virgo Supercluster, which is itself a component of the Laniakea Supercluster. It is estimated to contain 100–400 billion stars and at least that number of planets. The Solar System is located at a radius of about 27,000 light-years (8.3 kpc) from the Galactic Center, on the inner edge of the Orion Arm, one of the spiral-shaped concentrations of gas and dust. The stars in the innermost 10,000 light-years form a bulge andone or more bars that radiate from the bulge. The Galactic Center is an intense radio source known as Sagittarius A*, a supermassive black hole of 4.100 (± 0.034) million solar masses. The oldest stars in the Milky Way are nearly as old as the Universe itself and thus probably formed shortly after the Dark Ages of the Big Bang.', 13600, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy, also known as M31, is the nearest spiral galaxy to the Milky Way and is on a collision course with it, expected to merge in about 4.5 billion years. It is visible to the naked eye from Earth in the constellation Andromeda and is the largest galaxy in the Local Group, which also includes the Milky Way, the Triangulum Galaxy, and about 54 other smaller galaxies.', 10000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'The Triangulum Galaxy, also known as M33, is the third-largest galaxy in the Local Group. It is a face-on spiral galaxy located in the constellation Triangulum and is about 3 million light-years from Earth. M33 has well-defined spiral arms and is known for its high rate of star formation.', 12000, 1);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Messier 87, also known as M87, is a giant elliptical galaxy located in the constellation Virgo. It is one of the most massive galaxies in the local universe and is known for its large population of globular clusters and a supermassive black hole at its center, which is the source of a jet of relativistic plasma.', 13000, 2);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'The Large Magellanic Cloud (LMC) is a satellite galaxy of the Milky Way, located about 163,000 light-years away. It is visible from the Southern Hemisphere and is known for its irregular shape and active star-forming regions, such as the Tarantula Nebula.', 13200, 4);
INSERT INTO public.galaxy VALUES (6, 'NGC 1275', 'NGC 1275, also known as Perseus A, is a galaxy cluster central galaxy located in the Perseus Cluster. It is an active galaxy with a supermassive black hole at its center, surrounded by a complex structure of filaments and cavities created by the black hole''s energetic output.', 12000, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Io', 'Io is the most volcanically active body in the solar system, with hundreds of active volcanoes and a surface covered with sulfur.', 5, 2);
INSERT INTO public.moon VALUES (2, 'Europa', 'Europa has a smooth, icy surface with potential subsurface ocean, making it a prime candidate for the search for extraterrestrial life.', 5, 4);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'Ganymede is the largest moon in the solar system and has its own magnetic field. It may also have a subsurface ocean.', 5, 7);
INSERT INTO public.moon VALUES (4, 'Callisto', 'Callisto is heavily cratered and is one of the oldest landscapes in the solar system. It might also have a subsurface ocean.', 5, 17);
INSERT INTO public.moon VALUES (5, 'Titan', 'Titan is the second-largest moon in the solar system and has a thick atmosphere. It features lakes and rivers of liquid methane and ethane.', 6, 16);
INSERT INTO public.moon VALUES (6, 'Enceladus', 'Enceladus has geysers that shoot water ice and organic compounds into space, suggesting a subsurface ocean beneath its icy crust.', 6, 1);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Mimas is known for its large crater, Herschel, which makes it resemble the Death Star from Star Wars.', 6, 1);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Rhea is the second-largest moon of Saturn and has a heavily cratered surface with wispy streaks, possibly indicating subsurface fractures.', 6, 5);
INSERT INTO public.moon VALUES (9, 'Iapetus', 'Iapetus has a distinctive two-tone coloration, with one hemisphere significantly darker than the other.', 6, 79);
INSERT INTO public.moon VALUES (10, 'Dione', 'Dione has an icy surface with bright, wispy streaks that are thought to be icy cliffs and cracks in the moon''s crust.', 6, 3);
INSERT INTO public.moon VALUES (11, 'Miranda', 'Miranda has an extremely varied and bizarre surface, with giant canyons, terraces, and cliffs, suggesting a complex geological history.', 7, 1);
INSERT INTO public.moon VALUES (12, 'Ariel', 'Ariel has a relatively young surface with many fault valleys and smooth plains, indicating past geological activity.', 7, 3);
INSERT INTO public.moon VALUES (13, 'Umbriel', 'Umbriel is the darkest of Uranus''s major moons and has a heavily cratered surface with little evidence of geological activity.', 7, 4);
INSERT INTO public.moon VALUES (14, 'Titania', 'Titania is the largest moon of Uranus and has a surface marked by large canyons and fault valleys, indicating tectonic activity.', 7, 9);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Oberon is the second-largest moon of Uranus and has a heavily cratered surface with large, dark patches.', 7, 13);
INSERT INTO public.moon VALUES (16, 'Triton', 'Triton is Neptune''s largest moon and has geysers that eject nitrogen gas. It has a retrograde orbit, suggesting it was captured by Neptune''s gravity.', 8, 6);
INSERT INTO public.moon VALUES (17, 'Proteus', 'Proteus is one of the largest of Neptune''s irregular moons and has a heavily cratered, irregular surface.', 8, 1);
INSERT INTO public.moon VALUES (18, 'Phobos', 'Phobos is the larger of Mars''s two moons and has a surface covered with impact craters and grooves. It is slowly spiraling inward towards Mars.', 4, 1);
INSERT INTO public.moon VALUES (19, 'Deimos', 'Deimos is the smaller of Mars''s two moons and has a smoother, less cratered surface compared to Phobos. It is slowly moving away from Mars.', 4, 1);
INSERT INTO public.moon VALUES (20, 'Moon (Luna)', 'The Moon is Earth''s only natural satellite and has a surface marked by craters, maria (large, dark plains), and highlands. It has a significant impact on Earth''s tides.', 3, 27);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest planet in our solar system and the closest to the Sun. It has a rocky surface covered with craters.', false, 0.000006, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun and is similar in size and structure to Earth, but with a thick, toxic atmosphere that traps heat.', false, 0.000015, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only known planet to support life, with diverse ecosystems and abundant water.', true, 0.000000, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars, the fourth planet from the Sun, is known as the Red Planet due to its iron oxide-rich surface. It has the largest volcano and canyon in the solar system.', false, 0.000024, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in our solar system. It is a gas giant with a Great Red Spot, a massive storm system.', false, 0.000082, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn, the sixth planet from the Sun, is known for its extensive ring system made of ice and rock. It is the second-largest planet in the solar system.', false, 0.000150, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun and is unique for its tilted rotation, spinning on its side. It is an ice giant with a blue-green hue.', false, 0.000300, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth planet from the Sun and is known for its deep blue color and strong winds. It is an ice giant like Uranus.', false, 0.000470, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri d', 'Proxima Centauri d is a candidate exoplanet that is much smaller, with about a quarter of Earth''s mass. It orbits very close to Proxima Centauri, completing an orbit in just 5 days. The planet''s surface would likely be too hot for liquid water.', false, 4.240000, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Proxima Centauri b is a rocky exoplanet orbiting within the habitable zone of Proxima Centauri. It has a minimum mass of about 1.17 times that of Earth and may have conditions suitable for liquid water on its surface.', NULL, 4.240000, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1b', 'The innermost planet, TRAPPIST-1b, is likely rocky with a very short orbital period of just 1.5 days. It is too close to the star to be in the habitable zone.', false, 39.600000, 7);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1c', 'TRAPPIST-1c is another rocky planet with an orbital period of about 2.4 days. It receives more radiation than Venus in our solar system.', false, 39.600000, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'The Sun is the star at the center of the Solar System. It is a massive, nearly perfect sphere of hot plasma, heated to incandescence by nuclear fusion reactions in its core, radiating the energy from its surface mainly as visible light and infrared radiation with 10% at ultraviolet energies. It is by far the most important source of energy for life on Earth. The Sun has been an object of veneration in many cultures. It has been a central subject for astronomical research since antiquity. The Sun orbits the Galactic Center at a distance of 24,000 to 28,000 light-years. From Earth, it is 1 AU (1.496×108 km) or about 8 light-minutes away. Its diameter is about 1,391,400 km (864,600 mi), 109 times that of Earth. Its mass is about 330,000 times that of Earth, making up about 99.86% of the total mass of the Solar System. Roughly three-quarters of the Sun''s mass consists of hydrogen (~73%); the rest is mostly helium (~25%), with much smaller quantities of heavier elements, including oxygen, carbon, neon, and iron.', 1.6, 4603, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'At 4.2 light-years from Earth, Proxima Centauri is the closest star to our planet other than the sun. Its name means "nearest to Centaurus" in Latin. Proxima Centauri is a red dwarf star with a mass of around 12.5% of the sun and a diameter of about 14% of our star''s. However, Proxima Centauri is around 33 times denser than the sun, according to Star facts. This red dwarf is a main sequence star, which means that, like the sun, it is still turning hydrogen to helium at its core via nuclear fusion, with this acting as Proxima Centauri''s main source of energy. With a luminosity of 0.17% that of the sun, Proxima Centauri is producing energy at a lower rate than the sun. That means that, while our star is predicted to have a main sequence lifetime of around 10 billion years, of which around 5 billion years remain, Proxima Centauri will stay on this branch of stellar evolution for another 4 trillion years  —  around 300 times the current 13.8 billion-year age of the universe.Although Proxima Centauri will outlive the sun, it will eventually experience a similar fate: When its supply of hydrogen is exhausted, Proxima Centauri will end its life as a smoldering white dwarf star, lacking the mass sufficient to become a neutron star or a black hole.', 4.2, 4853, false, 1);
INSERT INTO public.star VALUES (3, 'SAO 206462', 'SAO 206462 is a young star, surrounded by a circumstellar disc of gas and clearly defined spiral arms. It is situated about 440 light-years away from Earth in the constellation Lupus. The presence of these spiral arms seems to be related to the existence of planets inside the disk of gas surrounding the star. The disk''s diameter is about twice the size of the orbit of Pluto.', 440.0, 10, false, 1);
INSERT INTO public.star VALUES (4, 'BPM 37093', 'BPM 37093 (V886 Centauri) is a variable white dwarf star of the DAV, or ZZ Ceti, type, with a hydrogen atmosphere and an unusually high mass of approximately 1.1 times the Sun''s. It is 48 light-years (15 parsecs) from Earth in the constellation Centaurus and vibrates; these pulsations cause its luminosity to vary. Like other white dwarfs, BPM 37093 is thought to be composed primarily of carbon and oxygen, which are created by thermonuclear fusion of helium nuclei in the triple-alpha process.', 48.3, 1100, false, 1);
INSERT INTO public.star VALUES (5, 'HD 140283', 'HD 140283 (also known as the Methuselah star) is a metal-poor subgiant star about 200 light years away from the Earth in the constellation Libra, near the boundary with Ophiuchus in the Milky Way Galaxy. Its apparent magnitude is 7.205, so it can be seen with binoculars. It is one of the oldest stars known.', 190.0, 13700, false, 1);
INSERT INTO public.star VALUES (6, 'XMMU J004243.6+412519', 'XMMU J004243.6+412519, also known as Andromeda X-1, is an X-ray binary system located in the Andromeda Galaxy. It consists of a massive star and a compact object, likely a black hole or a neutron star. The massive star in this system is nearing the end of its life.', 2500000.0, NULL, true, 2);
INSERT INTO public.star VALUES (7, 'TRAPPIST-1', 'TRAPPIST-1 is an ultracool dwarf star with a surface temperature much cooler than our Sun. It is smaller and less massive than the Sun, which results in a lower luminosity. Despite this, its proximity allows detailed study of its planetary system.', 39.6, 7600, false, 1);


--
-- Data for Name: type_of_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type_of_galaxy VALUES (1, 'Spiral', 'These galaxies resemble giant rotating pinwheels with a pancake-like disk of stars and a central bulge or tight concentration of stars.');
INSERT INTO public.type_of_galaxy VALUES (2, 'Elliptical', 'Elliptical galaxies usually contain little gas and dust and show very little organization or structure. The stars orbit around the core in random directions and are generally older than those in spiral galaxies since little of the gas needed to form new stars remains. Scientists think elliptical galaxies originate from collisions and mergers with spirals.');
INSERT INTO public.type_of_galaxy VALUES (3, 'Lenticular', 'Lenticular galaxies are a kind of cross between spirals and ellipticals. They have the central bulge and disk common to spiral galaxies but no arms. But like ellipticals, lenticular galaxies have older stellar populations and little ongoing star formation.');
INSERT INTO public.type_of_galaxy VALUES (4, 'Irregular', 'Irregular galaxies have unusual shapes, like toothpicks, rings, or even little groupings of stars. They range from dwarf irregular galaxies with 100 million times the Sun’s mass to large ones weighing 10 billion solar masses.');
INSERT INTO public.type_of_galaxy VALUES (5, 'Seyfert', 'All Seyferts look like normal galaxies in visible light, but they emit considerable infrared radiation. When observed in the infrared, some reveal bright emission from the donut-shaped torus. Some also emit X-rays. Seyfert galaxies tend to have lower radio luminosities, although some produce radio jets.');
INSERT INTO public.type_of_galaxy VALUES (6, 'Quasars', 'Quasars are the most luminous type of active galaxy. They emit light across the electromagnetic spectrum, produce powerful particle jets, and can radiate thousands of times the energy emitted by a galaxy like the Milky Way.');
INSERT INTO public.type_of_galaxy VALUES (7, 'Blazars', 'Blazars produce light across the electromagnetic spectrum. Their powerful jets point almost directly at Earth, so they appear brighter than other active galaxies. Observatories on Earth can sometimes detect high-energy particles – like neutrinos – produced within the jets and trace them back to their home galaxy. This information gives scientists a glimpse into the environment around the blazar’s supermassive black hole.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: type_of_galaxy_type_of_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_of_galaxy_type_of_galaxy_id_seq', 7, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


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
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


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
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: type_of_galaxy type_of_galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy
    ADD CONSTRAINT type_of_galaxy_description_key UNIQUE (description);


--
-- Name: type_of_galaxy type_of_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy
    ADD CONSTRAINT type_of_galaxy_pkey PRIMARY KEY (type_of_galaxy_id);


--
-- Name: type_of_galaxy type_of_galaxy_type_of_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_galaxy
    ADD CONSTRAINT type_of_galaxy_type_of_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_type_of_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_of_galaxy_id_fkey FOREIGN KEY (type_of_galaxy_id) REFERENCES public.type_of_galaxy(type_of_galaxy_id);


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

