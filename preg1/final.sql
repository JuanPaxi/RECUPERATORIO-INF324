-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-12-2023 a las 02:02:06
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `id` int NOT NULL,
  `fecha` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`id`, `fecha`) VALUES
(1, '1-05-2020');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `id_flujo` int NOT NULL,
  `codFlujo` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codProceso` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `codProcesoSiguiente` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` varchar(3) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pantalla` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `flujo`
--

INSERT INTO `flujo` (`id_flujo`, `codFlujo`, `codProceso`, `codProcesoSiguiente`, `tipo`, `rol`, `pantalla`) VALUES
(1, 'F1', 'P1', 'P2', 'P', 'profesional', 'datos.php'),
(2, 'F1', 'P2', 'null', 'C', 'tramites', 'verificarFecha.php'),
(3, 'F1', 'P3', 'null', 'P', 'profesional', 'noDisponible.php'),
(6, 'F1', 'P4', 'null', 'P', 'profesional', 'llenarFormulario.php'),
(7, 'F1', 'P5', 'null', 'C', 'tramites', 'validarFormulario.php'),
(8, 'F1', 'P6', 'P7', 'P', 'profesional', 'pagoImpuesto.php'),
(9, 'F1', 'P7', 'null', 'P', 'profesional', 'detalleIpuesto.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujopregunta`
--

CREATE TABLE `flujopregunta` (
  `id_flu_pre` int NOT NULL,
  `Flujo` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Proceso` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `si` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `no` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `flujopregunta`
--

INSERT INTO `flujopregunta` (`id_flu_pre`, `Flujo`, `Proceso`, `si`, `no`) VALUES
(1, 'F1', 'P2', 'P4', 'P3'),
(2, 'F1', 'P4', 'P6', 'P4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `id` int NOT NULL,
  `ci` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `formulario` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `pago` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nit` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `verFormulario` varchar(5) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`id`, `ci`, `nombre`, `apellido`, `formulario`, `pago`, `nit`, `verFormulario`) VALUES
(1, '10', 'juan', 'paxi', 'si', 'no', '1758431', 'si'),
(2, '11', 'ricardo', 'miotto', 'no', 'no', '7876134', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE `tramite` (
  `id` int NOT NULL,
  `ci` int NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cargo` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tramite`
--

INSERT INTO `tramite` (`id`, `ci`, `nombre`, `apellido`, `cargo`) VALUES
(1, 20, 'Maria', 'Ramos', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramites`
--

CREATE TABLE `tramites` (
  `id` int NOT NULL,
  `ci` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `operacion` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `monto` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `tramites`
--

INSERT INTO `tramites` (`id`, `ci`, `operacion`, `monto`) VALUES
(1, '10', 'op1', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `ci` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `ci`, `clave`, `rol`) VALUES
(1, '10', '12345', 'profesional'),
(2, '11', '12345', 'profesional'),
(3, '20', '67890', 'tramite');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flujo`
--
ALTER TABLE `flujo`
  ADD PRIMARY KEY (`id_flujo`);

--
-- Indices de la tabla `flujopregunta`
--
ALTER TABLE `flujopregunta`
  ADD PRIMARY KEY (`id_flu_pre`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fecha`
--
ALTER TABLE `fecha`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `flujo`
--
ALTER TABLE `flujo`
  MODIFY `id_flujo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `flujopregunta`
--
ALTER TABLE `flujopregunta`
  MODIFY `id_flu_pre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `profesional`
--
ALTER TABLE `profesional`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tramites`
--
ALTER TABLE `tramites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
