-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 01:54:40
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
-- Base de datos: `segundabase`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 4, 19),
(20, 4, 20),
(21, 4, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 5, 25),
(26, 5, 26),
(28, 5, 28),
(29, 5, 29),
(30, 5, 30),
(31, 5, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 34),
(35, 6, 35),
(36, 6, 36),
(37, 6, 37),
(38, 7, 38),
(39, 7, 39),
(40, 7, 40),
(41, 7, 41),
(42, 7, 42),
(43, 7, 43);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Donna Summer', 'Cinco veces ganadora del Grammy, Donna Summer fue la primera artista en ganar el Grammy a la Mejor Interpretación Vocal de Rock, Femenina (1979, \"Hot Stuff\") así como la primera en recibir el Grammy a la Mejor Grabación de Baile (1997, \"Carry On\").'),
(2, 'Robert Plant', 'Robert Plant aportaba letras a las canciones con un ligero toque esotérico y místico, hacia alusiones a la mitología y a la literatura, además de ocasionalmente tocar la pandereta, la armónica y la guitarra. El debut de Led Zeppelin se dio un 12 de enero de 1969 con su álbum homónimo.'),
(3, 'Chuck Berry', 'Charles Edward Anderson Berry, el legendario Chuck Berry, falleció con 90 años después de siete décadas de carrera. Es considerado de manera indiscutible como uno de los pioneros y forjadores de la música rock and roll. Llamado el \"padre fundador\" del género.'),
(4, 'Aretha Franklin', 'Aretha Louise Franklin nació en Memphis, Tennessee, un 25 de marzo de 1942, siendo hija de Barba Siggers y Clarence LeVaughn Franklin. Su padre, con solo 16 años, se convirtió en un reconocido predicador de la iglesia bautista, y su madre destacó por su registro vocal como cantante de gospel.'),
(5, 'Ella Fitzgerald', 'Una de las voces más influyentes del género fue Ella Fitzgerald. Nació un 25 de abril de 1917 en Newport News, Virginia, Estados Unidos, y se crió en Yonkers, Nueva York. Enfrentó los prejuicios de ser \"pobre, mujer y negra\" y llegó a ser reconocida mundialmente como la Reina del jazz.'),
(6, 'Robert Johnson', 'Robert Leroy Johnson (Hazlehurst, 8 de mayo de 1911-Greenwood, 16 de agosto de 1938) fue un cantante, compositor y guitarrista estadounidense de blues, conocido como el Rey del Delta Blues.'),
(7, 'Mozart', 'Algunos consideran a Mozart el mejor compositor de la historia. Mientras que la mayoría de los compositores se especializan en ciertos tipos de piezas, Mozart creó obras magistrales para casi todas las categorías de música: música vocal, conciertos, música de cámara, sinfonías, sonatas y ópera.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Hot Stuff', 7, '00:05:15', '1979-04-08', 1, 'Hot Stuff.jpg'),
(2, 'last dance', 7, '00:06:20', '1978-02-05', 1, 'last dance.jpg'),
(3, 'i love you', 7, '00:04:43', '1977-00-00', 1, 'i love you.jpg'),
(4, 'i feel love', 7, '00:03:53', '1977-00-00', 1, 'i feel love.jpg'),
(5, 'macarthur park', 7, '00:06:12', '1978-00-00', 1, 'macarthur park.jpg'),
(6, 'this time i know it’s for real', 7, '00:03:00', '1989-00-00', 1, 'this time i know it’s for real.jpg'),
(7, 'stairway to heaven', 2, '00:08:03', '1971-00-00', 1, 'stairway to heaven.jpg'),
(8, 'immigrant song', 2, '00:04:08', '1970-00-00', 1, 'immigrant song.jpg'),
(9, 'black dog', 2, '00:05:30', '1971-00-00', 1, 'black dog.jpg'),
(10, 'whole lotta love', 2, '00:04:49', '1969-00-00', 1, 'whole lotta love.jpg'),
(11, 'kashmir', 2, '00:08:38', '1975-00-00', 1, 'kashmir.jpg'),
(12, 'the rain song', 2, '00:07:40', '1973-00-00', 1, 'the rain song.jpg'),
(13, 'you never can tell', 5, '00:02:42', '1964-00-00', 1, 'you never can tell.jpg'),
(14, 'johnny b. goode', 5, '00:03:05', '1958-00-00', 1, 'johnny b. goode.jpg'),
(15, 'run rudolph run', 5, '00:02:58', '1958-00-00', 1, 'run rudolph run.jpg'),
(16, 'sweet little sixteen', 5, '00:03:11', '1958-00-00', 1, 'sweet little sixteen.jpg'),
(17, 'queenie', 5, '00:03:36', '1959-00-00', 1, 'queenie.jpg'),
(18, 'go johnny go.jpg', 5, '00:02:41', '1958-00-00', 1, 'go johnny go.jpg'),
(19, 'a natural woman', 4, '00:02:46', '1968-00-00', 1, 'a natural woman.jpg'),
(20, 'respect', 4, '00:02:30', '1967-00-00', 1, 'respect.jpg'),
(21, 'ever changing times', 4, '00:04:32', '1991-00-00', 1, 'ever changing times.jpg'),
(22, 'chain of fools', 4, '00:02:49', '1968-00-00', 1, 'chain of fools.jpg'),
(23, 'ain t no way', 4, '00:04:13', '1968-00-00', 1, 'ain t no way.jpg'),
(24, 'think', 4, '00:02:20', '1968-00-00', 1, 'think.jpg'),
(25, 'it’s a lovely day today', 3, '00:02:27', '1950-00-00', 1, 'it’s a lovely day today.jpg'),
(26, 'into each life some rain must fall', 3, '00:03:11', '1960-00-00', 1, 'into each life some rain must fall.jpg'),
(28, 'cheek to cheek', 3, '00:05:43', '1935-00-00', 1, 'cheek to cheek.jpg'),
(29, 'sleigh ride', 3, '00:02:56', '1950-00-00', 1, 'sleigh ride.jpg'),
(30, 'dream a little dream of me', 3, '00:03:08', '2000-03-08', 1, 'dream a little dream of me.jpg'),
(31, 'let’s call the whole thing off', 3, '00:04:11', '1937-00-00', 1, 'let’s call the whole thing off.jpg'),
(32, 'crossroad', 6, '00:02:49', '1929-00-00', 1, 'crossroad.jpg'),
(33, 'walking blues', 6, '00:03:57', '1930-00-00', 1, 'walking blues.jpg'),
(34, 'hellhound on my trail', 6, '00:02:43', '1937-00-00', 1, 'hellhound on my trail.jpg'),
(35, 'sweet home chicago', 6, '00:03:06', '1972-00-00', 1, 'sweet home chicago.jpg'),
(36, 'come on in my kitchen', 6, '00:02:52', '1973-00-00', 1, 'come on in my kitchen.jpg'),
(37, 'traveling riverside blues', 6, '00:02:47', '1982-00-00', 1, 'traveling riverside blues.jpg'),
(38, 'Requiem', 1, '00:04:44', '1791-00-00', 1, 'Requiem.jpg'),
(39, 'La flauta mágica', 1, '00:03:51', '1791-00-00', 1, 'La flauta mágica.jpg'),
(40, 'Concierto para piano', 1, '00:29:11', '1767-00-00', 0, 'Concierto para piano.jpg'),
(41, 'Sinfonía No', 1, '00:27:58', '1788-00-00', 0, 'Sinfonía No.jpg'),
(42, 'Cuartetos Haydn', 1, '00:30:10', '1785-00-00', 0, 'Cuartetos Haydn.jpg'),
(43, 'Eine kleine Nachtmusik', 1, '00:05:48', '1787-00-00', 1, 'Eine kleine Nachtmusik.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 1, 32),
(2, 2, 19),
(3, 3, 26),
(4, 4, 39),
(5, 5, 28),
(6, 6, 11),
(7, 7, 15),
(8, 2, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Música clásica'),
(2, 'Música Blues'),
(3, 'Música Jazz'),
(4, 'Música Soul'),
(5, 'Rock and Roll'),
(6, 'Metal'),
(7, 'Música Disco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, '1 cuenta Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 129),
(2, 'Descuento para estudiantes que cumplen con los requisitos.\r\nPago por suscripción o pago único.', 69),
(3, '2 cuentas Premium\r\nCancela en cualquier momento\r\nPago por suscripción o pago único', 169),
(4, 'Hasta 6 cuentas Kids o Premium\r\nControla el contenido marcado como explícito.\r\nAcceso a Spotify Kids', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcaciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcaciones`, `descripcion`, `publico`) VALUES
(1, 'Canciones para dormir', 6, '01:04:56', 9, 'musica para dormir', 1),
(2, 'Rock and rock', 4, '00:58:32', 26, 'Playlist de rock', 1),
(3, 'HIMNOS LGBTQ+ // LGBTQ + PRIDE SONGS', 1, '02:23:48', 108, 'Canciones para el Luis que es gay', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 3, 19, 1),
(2, 1, 13, 6),
(3, 2, 31, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Luis Mario', 'lusi.carrillo23@cetis107.edu.mx', 1),
(2, 'ever yurriel', 'ever.torres23@cetis107.edu.mx', 2),
(3, 'esteban zabala', 'esteban.zabala23@cetis1067.edu.mx', 1),
(4, 'emiliano ojeda', 'emiliano.ojeda23@cetis107.edu.mx', 3),
(5, 'santiago verduzco', 'santiago.verduzco23@cetis107.edu.mx', 3),
(6, 'juan trejo', 'juan.trejo23@cetis107.edu.mx', 1),
(7, 'luis nuñez', 'luis.nuñes23@cetis107.edu.mx', 4),
(8, 'lizeth abigail', 'lizeth.abigail23@cetsi107.edu.mx', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
