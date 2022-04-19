-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2022 a las 16:18:04
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
-- Base de datos: `sanatorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `Código del doctor` double NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Dirección` varchar(30) NOT NULL,
  `Teléfono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`Código del doctor`, `Nombre`, `Especialidad`, `Dirección`, `Teléfono`) VALUES
(1, 'Dra.Sanz', 'Internista', 'Calle 4 # 23 - 12', 8234567),
(2, 'Dr.Perez', 'Traumatologo', 'Cra 3 # 7 - 98', 8210987),
(3, 'Dr.Fernandez', 'Internista', 'Calle 56 # 98 - 76', 8240975),
(4, 'Dr.Alonso', 'Cardiologo', 'Cra 25 # 45 - 19', 8309865),
(5, 'Dr.Garcia', 'Hepatologia', 'Cra 71 # 7 - 93', 8317543),
(6, 'Dr.Nuñez', 'Neurologia', 'Calle 32 # 90 - 21', 8205489),
(8, 'Dra. Quiroga', 'Pediatra', 'Cra 78 # 3 - 45', 8300078),
(9, 'Dr. Latorre', 'Pediatra', 'Calle 74 # 24 - 56', 8213456),
(10, 'Dr. Lopez', 'Ginicologia', 'Cra 21 # 70 - 94', 8327654),
(11, 'Dra. Campo', 'Opstetra', 'Calle 20 # 49 - 51', 8320943);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitas`
--

CREATE TABLE `visitas` (
  `Código del doctor` double NOT NULL,
  `Código del paciente` double NOT NULL,
  `Diagnostico` varchar(30) NOT NULL,
  `Fecha de Visita` date NOT NULL,
  `Tratamiento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitas`
--

INSERT INTO `visitas` (`Código del doctor`, `Código del paciente`, `Diagnostico`, `Fecha de Visita`, `Tratamiento`) VALUES
(1, 5, 'Apendicitis', '2008-12-06', 'Cirugia'),
(2, 28, 'Artritis', '2009-01-07', 'Cirugia'),
(4, 4, 'Diabetes', '2009-02-09', 'Dieta Baja en azucar'),
(5, 12, 'Gripe', '2009-02-10', 'Acetaminofen'),
(6, 62, 'Sarampion', '2009-02-11', 'Sinus'),
(7, 45, 'Sinusitis', '2009-03-12', 'Acetaminofen'),
(8, 23, 'Cirrosis', '2009-03-13', 'Clamoxil'),
(9, 19, 'Amigdalitis', '2009-03-14', 'Clamoxil'),
(10, 6, 'Anemia', '2009-04-15', 'Purgante'),
(11, 13, 'Migraña', '2009-04-16', 'Acetaminofen');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`Código del doctor`);

--
-- Indices de la tabla `visitas`
--
ALTER TABLE `visitas`
  ADD PRIMARY KEY (`Código del doctor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
