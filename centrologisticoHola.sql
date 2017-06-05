-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-06-2017 a las 04:42:19
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `centrologistico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `cc` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`cc`, `usuario`, `nombre`, `apellidos`, `email`, `telefono`, `password`) VALUES
(1234, 'root', 'juan', 'alvarez', 'dol@mi.com', 3123887923, 1234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `nombre` varchar(50) NOT NULL,
  `subCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`nombre`, `subCategoria`) VALUES
('antenas', 1),
('basal', NULL),
('calle', NULL),
('carr', 1),
('carro', 0),
('carros', NULL),
('destornilladores', 1),
('Generica', NULL),
('guitarras', 1),
('jir', 1),
('llaves', 1),
('pared', NULL),
('vas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elemento`
--

CREATE TABLE IF NOT EXISTS `elemento` (
  `id` int(11) NOT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `descripcionActual` varchar(200) DEFAULT NULL,
  `placa` varchar(30) DEFAULT NULL,
  `serial` varchar(30) DEFAULT NULL,
  `fechaAdquisicion` datetime DEFAULT NULL,
  `ubicacion` varchar(30) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `nota` varchar(200) DEFAULT NULL,
  `nombreCategoria` varchar(50) NOT NULL,
  `cantidad` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `elemento`
--

INSERT INTO `elemento` (`id`, `modelo`, `descripcion`, `descripcionActual`, `placa`, `serial`, `fechaAdquisicion`, `ubicacion`, `estado`, `nota`, `nombreCategoria`, `cantidad`) VALUES
(1, 'fhhff', 'vbvc', 'bvcv', 'gfhff', 'fhf', '2017-06-22 00:00:00', 'ghghgf', 'disponible', 'gfhfsf', 'carro', 1),
(6, NULL, 'carr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'carr', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `cc` int(11) NOT NULL,
  `nombres` varchar(40) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `dependencia` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`cc`, `nombres`, `apellidos`, `email`, `telefono`, `dependencia`) VALUES
(0, '', 'apellidos', '', 0, ''),
(439057, 'dlskhfdslk', 'apellidos', 'kldsfjkl@lsdfhfdl', 34224143, 'lkdfsdfkljsdf'),
(4352334, 'dfsjkdfskj', 'apellidos', 'sdfhfds@kjdhsj.com', 43542, 'fdsdsg'),
(439054370, '070343', 'apellidos', 'lkjlkj@lcxkh', 4323487, 'ofodgdso'),
(1031161820, 'david', 'apellidos', 'david200714@gmail.com', 3143734870, 'teleinformatica'),
(1032161829, 'nor', 'apellidos', 'col@mi.co', 0, 'sdlh'),
(1234456546, 'otto', 'apellidos', 'otto@otto.com', 3464096570, 'la vagancia'),
(2147483647, 'hfkfdhkj', 'apellidos', 'kkjhdfklfddfdf@ldfhdfskjl.cj', 3244, 'dfkgfj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE IF NOT EXISTS `prestamo` (
  `ccAdmin` int(11) NOT NULL,
  `ccInstructor` int(11) NOT NULL,
  `idElemento` int(11) NOT NULL,
  `fechaPrestamo` datetime NOT NULL,
  `fechaDevolucion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`ccAdmin`, `ccInstructor`, `idElemento`, `fechaPrestamo`, `fechaDevolucion`) VALUES
(1234, 1031161820, 1, '2017-06-03 16:16:10', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`cc`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `elemento`
--
ALTER TABLE `elemento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nombreCategoria` (`nombreCategoria`),
  ADD KEY `nombreCategoria_2` (`nombreCategoria`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`cc`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`ccAdmin`,`ccInstructor`,`idElemento`,`fechaPrestamo`),
  ADD KEY `ccInstructor` (`ccInstructor`),
  ADD KEY `idElemento` (`idElemento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `elemento`
--
ALTER TABLE `elemento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `elemento`
--
ALTER TABLE `elemento`
  ADD CONSTRAINT `elemento_ibfk_1` FOREIGN KEY (`nombreCategoria`) REFERENCES `categoria` (`nombre`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`ccInstructor`) REFERENCES `instructor` (`cc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`ccAdmin`) REFERENCES `admin` (`cc`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`idElemento`) REFERENCES `elemento` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
