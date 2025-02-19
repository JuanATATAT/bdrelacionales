-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:18:35
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
-- Base de datos: `cetis107`
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
(0, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-04-28', 1, 'emiliano.ojeda23@cetis107.edu.mx', '6671016955'),
(1, 'Lizeth Abigail', 'Salcido Ramirez ', '23325061070721', '2008-03-13', 0, 'lizeth.salcido23@ceti107.edu.mx', '6671987119'),
(3, 'Juan Alberto ', 'Trejo Alvarado', '23325061070715', '2008-08-22', 1, 'juan.trejo23@cetis107.edu.mx', '6674911079'),
(4, 'Ever Yuriel', 'Torres Landeros ', '23325061070614', '2008-04-04', 1, 'ever.torres23cetis107.edu.mx', '6677309261'),
(5, 'Isaac', 'Salomon Rendon', '2332506170610', '2008-06-08', 1, 'isaac.salomon23@cetis107.edu.mx', '6677910586'),
(6, 'Ramon Esteban ', 'Valenzuela Zavala', '23325061070716', '2008-09-06', 1, 'ramon.valenzuela23@cetis107.edu.mx', '6672298375'),
(7, 'Victor Mamuel ', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(8, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'lopezaispurosantiago@gmail.com', '6673309322'),
(9, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '+1(909)5160134'),
(10, 'Paolo Nicholas ', 'Valdez Bernal', '233250610703260', '2008-10-30', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(11, 'Frida Sofia ', 'Sanches Valenzula', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6674087474'),
(12, 'Ryhanna Patricia ', 'Ramirez Montiel ', 'nulo', '2008-05-31', 0, 'ryhannaramirez7@gmail.com', '6672326904');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 1, 10),
(2, 2, 1, 10),
(3, 5, 1, 9),
(4, 3, 1, 10),
(5, 6, 1, 9),
(6, 4, 1, 10),
(7, 7, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro _id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro _id`, `hora`, `aula`) VALUES
(1, 8, 2, '17:00:00', 'CC1'),
(2, 7, 6, '13:20:00', 'CC2'),
(3, 5, 10, '15:20:00', '12'),
(4, 1, 9, '14:00:00', '12'),
(5, 2, 3, '18:00:00', '12'),
(6, 4, 3, '17:20:00', '12'),
(7, 6, 10, '16:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion ', 'Es el arte del proceso por el cual se limpia, codifica, traza y protege el código fuente de programas computacionales, en otras palabras, es indicarle a la computadora lo que tiene que hacer.'),
(2, 'Contabilidad', 'Proceso de registrar, clasificar, analizar, interpretar y comunicar la información financiera de una empresa.'),
(3, 'Electronica', 'Trata con circuitos eléctricos que involucran componentes eléctricos activos como tubos de vacío, transistores, diodos, circuitos integrados, optoelectrónica y sensores, asociados con componentes eléctricos pasivos y tecnologías de interconexión.'),
(4, 'Ofimatica', 'Conjunto de aplicaciones y herramientas informáticas diseñadas para facilitar y mejorar las tareas relacionadas con la creación, edición, almacenamiento y distribución de información en el entorno de una oficina o empresa.'),
(5, 'Diseño Grafico', 'Crean imágenes y diseños para algunos de los siguientes elementos: Identidad de marca de la empresa (logotipos, tipografía y paletas de colores) Interfaces de usuario en aplicaciones y sitios web. '),
(6, 'Construccion', 'Hacer obras duraderas, especialmente edificaciones, empleando para ello los saberes de la ingeniería, la arquitectura y el diseño');

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
(1, 'Maria de Jesus', 'maria.verduzco@gmail.com', 0, '1950-08-18'),
(2, 'Luis Carlos ', 'luis.santillan@gmail.com', 1, '1995-02-20'),
(3, 'Mayte', 'Teresa@gmail.com', 0, '1990-09-24'),
(4, 'Rochin', 'Rochin.Gonzalez@gmail.com', 1, '1985-05-30'),
(5, 'Lizbeth', 'lizbeth_hernandez@gmail.com', 0, '1990-03-20'),
(6, 'Jorge ', 'Jorge_ibarra@gmail.com', 1, '1959-05-09');

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
(1, 'Ingles 4', 4),
(2, 'Historia 1', 4),
(3, 'Reacciones Quimicas 4', 4),
(4, 'Ciencias Sociales 3', 4),
(5, 'Temas Selectos de Matematicas 1', 4),
(6, 'Recursos Socioemocionales 4', 4),
(7, 'Base de datos no relacionados ', 4),
(8, 'Base de datos relacionados ', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`),
  ADD KEY `calificacion` (`calificacion`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
