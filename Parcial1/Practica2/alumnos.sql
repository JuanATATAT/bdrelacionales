-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:06:41
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
