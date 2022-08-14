-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2022 a las 01:38:45
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eva1`
--
CREATE DATABASE IF NOT EXISTS `eva1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eva1`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--
-- Creación: 14-08-2022 a las 23:33:23
--

CREATE TABLE `dueno` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `telefono` int(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(23456789, 'Juan', 'Perez', 2147483647, 'Libertad 123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--
-- Creación: 14-08-2022 a las 23:33:23
--

CREATE TABLE `historial` (
  `id_historial` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `perro` int(11) DEFAULT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `monto` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `fecha`, `perro`, `descripcion`, `monto`) VALUES
(1, '2022-04-09', 1, 'vacuna rabia', 1500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--
-- Creación: 14-08-2022 a las 23:33:23
--

CREATE TABLE `perro` (
  `id_perro` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `dni_dueno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`id_perro`, `nombre`, `fecha_nac`, `sexo`, `dni_dueno`) VALUES
(1, 'Roco', '2021-02-01', 'macho', 23456789);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD KEY `perro` (`perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`id_perro`),
  ADD KEY `dni_dueno` (`dni_dueno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perro`
--
ALTER TABLE `perro`
  MODIFY `id_perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`perro`) REFERENCES `perro` (`id_perro`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`dni_dueno`) REFERENCES `dueno` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
