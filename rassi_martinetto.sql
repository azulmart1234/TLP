-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2022 a las 17:02:45
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rass_martinetto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_legajo` int(11) NOT NUL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `teléfono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_legajo`, `nombre`, `apellido`, `domicilio`, `teléfono`) VALUES
(1, 'Pedro', 'Sanchez', 'Nuevacordoba3634', 1523064785),
(2, 'Bruno', 'Salas', 'Chacabuco305', 152214702),
(3, 'Camila', 'Linaza', 'Bulevarilias43', 152305469),
(4, 'Lara', 'Muzzio', 'Obispotrejo382', 1529118784),
(5, 'Gilda', 'Trento', 'Independencia451', 1524036699),
(6, 'Felipe', 'Misakian', 'Belgrano 232', 1523006781),
(7, 'Luisa', 'Sánchez', 'Av. Chaneton 800', 1521314388),
(8, 'Luna', 'Blanco', 'San Martin 529', 1527009885),
(9, 'Facu', 'Barrera', 'Republica 700', 1523990675),
(10, 'Agustina', 'Fratini', 'Av. osbispo trejo', 152876439);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `DNI` int(11) NOT NULL,
  `telefono` int(11) DEFAULT NULL,
  `domicilio` varchar(50) NOT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha de nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id_cliente`, `nombre`, `apellido`, `DNI`, `telefono`, `domicilio`, `edad`, `fecha de nacimiento`) VALUES
(1, 'Mariana', 'Lopez', 29347122, 4850078, 'StaRosa560', 28, '1997-04-14'),
(2, 'Azul', 'Martinetto', 46450429, 1522303238, 'Suecia2918', 16, '2005-06-01'),
(3, 'Julieta', 'Rassi', 45629627, 1526504868, 'Ituzaingo115', 17, '2004-08-23'),
(4, 'Ana', 'Torres', 54874592, 351024871, 'AvBuenosAires123', 30, '1992-02-15'),
(5, 'Camilo', 'Romero', 41720392, 15247483, 'Altacordoba481', 20, '2002-11-25'),
(6, 'Daniel ', 'Barrios', 43450802, 152987876, 'Chacabuco,1209', 55, '1940-07-06'),
(7, 'Rosario', 'Burgos', 42800906, 1523456789, 'Independencia 109', 80, '1922-06-11'),
(8, 'Gerardo', 'Perez', 47809234, 1523557171, 'Rondou 4523', 20, '2002-11-09'),
(9, 'Mariano', 'Castillo', 41765456, 152345047, 'Naciones Unidas 3002', 19, '2003-05-01'),
(10, 'Laura', 'García', 49090654, 152439563, 'San Lorenzo 410', 27, '1995-09-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_legajo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_legajo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
