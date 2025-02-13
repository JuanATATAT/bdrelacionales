-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 01:19:31
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Juan Alberto', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juanalberto.ta.2008@gmail.com', '6674911079'),
(3, 'Emiliano', 'Ojeda Quientero', '23325061070702', '2008-04-28', 1, 'emiojequi@gmail.com', '6671016955'),
(4, 'Ramon Esteban', 'Valenzuela Zavala', '23325061070716', '2008-06-18', 1, 'ramon.valenzuela@cetis107.edu.mx', '664875336584'),
(5, 'Luis Mario', 'Carrillo Vega', '23325061070678', '2008-10-13', 0, 'Luis.Carrillo@cetis107.edu.mx', '6971130887'),
(6, 'Luis Carlos', 'Santillan Hernandez', '0123456789', '2025-02-11', 1, 'santillan.itc@gmail.com', '6677352489'),
(7, 'Lizeth Abigail', 'Salcido Ramirez', '23325061070721', '2008-03-10', 0, 'abigaillesbiana@gmail.com', '1245789865'),
(8, 'Ever Yuriel', 'Torres Landero', '23325061070614', '2008-07-11', 1, 'Ever.Torres23@cetis107.edu.mx', '6677309261'),
(9, 'Issac', 'Moreno', '23325061070798', '2008-09-16', 1, 'issac.moreno23@cetis107.edu.mx', '6671016978'),
(10, 'Algel Guillermo', 'Wong Valenzuela', '23325061070565', '2008-07-16', 1, 'angel.wong23@cetis107.edu.mx', '6971130155'),
(11, 'Ibarra ', 'Gastélum', '23325061070484', '2008-06-23', 1, 'mateo.ibar09@gmail.com', '6678619006'),
(12, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-07-22', 1, 'ivan.torres23@cetis107.edu.mx', '6679913009'),
(13, 'Hector Aaron', 'Ortiz Serrano', '23325061070750', '2008-01-09', 1, 'hector.ortiz23@cetis107.edu.mx', ''),
(14, 'Osman Eden', 'Quiñonez Saenz', '23325061070604', '2008-06-11', 1, 'osman.quiñonez23@cetis107.edu.mx', '6675784067'),
(15, 'Isaac ', 'Salomon Rendon', '23325061070014', '2008-06-08', 1, 'isaac.solomon23@cetis107.edu.mx', '6677910586');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `hora`, `aula`) VALUES
(1, 7, 4, '05:20:00', 'cc2'),
(2, 8, 1, '04:40:00', 'cc1'),
(3, 2, 5, '03:20:00', '12'),
(4, 1, 7, '04:00:00', '12'),
(5, 6, 6, '06:00:00', '12'),
(6, 9, 2, '01:20:00', '12'),
(7, 4, 3, '02:00:00', '12'),
(8, 5, 7, '04:00:00', '12'),
(9, 7, 1, '06:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripción`) VALUES
(1, 'Programación', 'Programación es relevante porque: contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de los sectores productivos en el país'),
(2, 'Ofimática', 'Ofimática es relevante porque ofrece las competencias profesionales que permiten\r\nal estudiante realizar actividades dirigidas a obtener y gestionar información de manera digital, mediante el uso eficaz y eficiente, de los recursos\r\ninformáticos disponibles, con la finalidad de satisfacer las necesi'),
(3, 'Electrónica', 'Electrónica es relevante porque contribuye en la capacitación y superación\r\nprofesional de los estudiantes y les permite tener mejores expectativas de vida al poder insertarse en un sector laboral que hoy en día necesita de\r\npersonal con competencias profesionales y actitudinales en el área de elect'),
(4, 'contabilidad', 'es relevante porque: en la actualidad todo ente económico\r\nrequiere los servicios de un especialista, que lleve a cabo el registro sistemático de las operaciones económicas de entidades comerciales,\r\nindustriales y de servicios, en un sistema manual y electrónico a través de software especializado p'),
(5, 'Construcción', 'Construcción es relevante porque las inversiones del sector público en vivienda e\r\ninfraestructura son cada vez mayores, además, en el sector privado existe una fuerte dinámica por apostar al desarrollo económico de todas las\r\nzonas del país');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Luis Carlos', 'lus_carlos23@cetis107.edu.mx', 1, '1987-01-05'),
(2, 'Maru Aguilar', 'maru.aguilar23@cetis107.edu.mx', 0, '1852-07-14'),
(3, 'Lizbeth Hernández', 'lizbeth_hernandez23@cetis107.edu.mz', 0, '1978-10-18'),
(4, 'Gael Ibarra', 'gael.ibarra23@cetis107.edu.mx', 1, '1972-06-06'),
(5, 'Ivan Torres', 'ivan.torres23@cetis107.edu.mx', 1, '1990-04-17'),
(6, 'Pedro Gonzales', 'pedro.gonzales23@cetis107.edu.mx', 1, '1978-08-14'),
(7, 'Liliana Rosalia', 'liliana.rosalia23@cetis107.edu.mx', 0, '1972-09-19'),
(8, 'Yuriel Torres', 'yuriel.torres23@cetis107.edu.mx', 1, '1990-09-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Matematicas', 4),
(2, 'Ingles', 4),
(3, 'Historia', 4),
(4, 'Ciencias Sociales', 4),
(5, 'Recursos Socioemocionales', 4),
(6, 'Química', 4),
(7, 'Base de datos no relacionales', 4),
(8, 'Base de datos relacionales', 4),
(9, 'Tutorias', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
