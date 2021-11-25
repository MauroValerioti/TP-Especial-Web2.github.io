-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2021 a las 21:47:13
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
-- Base de datos: `db_electrizante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(0, 'parlantes'),
(1, 'relojes'),
(2, 'auriculares'),
(3, 'cargadores'),
(4, 'estereos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `comentario`, `id_usuario`, `id_producto`, `calificacion`) VALUES
(6, 'esto es espartaaaa', 4, 42, 1),
(7, 'a mi perro le gusto', 4, 42, 4),
(11, 'por fin anduvo esta cosa', 2, 39, 1),
(12, 'a ver si esto anda aca', 2, 42, 1),
(13, 'a ver si esto anda aca', 2, 42, 1),
(15, 'puedo comentar?', 3, 39, 1),
(29, 'asdasd', 3, 40, 3),
(30, 'ahora si anda esto', 3, 40, 4),
(31, 'ahora si anda esto', 3, 40, 4),
(34, 'otro comentarito', 3, 40, 4),
(35, 'AAAAAAAAAAAAAAAAAAAAAAAAA', 3, 40, 3),
(36, 'aaaacacacaaca', 3, 40, 3),
(37, 'aaaacacacaaca', 3, 40, 3),
(38, 'queee leeeendo', 3, 76, 2),
(41, 'haaahaaaaa', 3, 40, 5),
(42, 'asdads', 3, 40, 5),
(44, 'que lindo que esta', 4, 40, 2),
(45, 'sive para ver la hora?', 2, 76, 5),
(51, 'que relojasooo', 2, 40, 4),
(53, 'asdadasdad', 2, 39, 5),
(54, 'asddadadasd', 2, 39, 5),
(58, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 2, 40, 5),
(59, 'asdasssssssssssssss', 2, 40, 5),
(60, 'wwwwwwwwwwwwwwww', 2, 40, 5),
(68, 'yo soy groot', 3, 81, 4),
(71, 'agrego esto', 2, 81, 5),
(80, 'asdas', 2, 81, 5),
(83, 'asdad', 2, 81, 5),
(85, 'ASD', 3, 81, 5),
(86, 'asddaasda', 3, 81, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` tinytext NOT NULL,
  `descripcion` text NOT NULL,
  `precio` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `precio`, `id_categoria`, `imagen`) VALUES
(39, 'reloj dorado casio', 'un reloj dorado muy lindo que vale una fortuna', 10000, 1, 'https://static.dafiti.com.ar/p/casio-7452-044895-1-product.jpg'),
(40, 'smart band', 'esto es un reloj inteligente', 3800, 1, 'https://i.blogs.es/a287c8/xiaomi-mi-smart-band-6-11-/450_1000.jpg'),
(42, 'auriculares samsung', 'estos son auriculares', 600, 2, 'https://http2.mlstatic.com/D_NQ_NP_616380-MLA43236680489_082020-O.jpg'),
(76, 'reloj de pared', 'esto es un reloj de pared', 10000, 1, 'https://us.123rf.com/450wm/monticello/monticello1911/monticello191100379/135078958-reloj-de-pared-aislado-sobre-fondo-blanco-nueve-.jpg?ver=6'),
(81, 'parlantote', 'esto es un parlantote', 12345, 0, 'data:image/jpeg;base64,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'),
(82, 'cargador', 'esto es un cargador rapido', 555, 3, 'data:image/jpeg;base64,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'),
(83, 'estereo bluethoot', 'esto es un estereo ', 50000, 4, 'data:image/jpeg;base64,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'),
(85, 'esto es una cosa', 'cosa sin imagen', 555555, 2, 'imagen de cosa'),
(87, 'esto es una cosa muy muy piola', 'muy muy muy piola', 0, 2, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `admin`) VALUES
(2, 'mauro', '$2y$10$yI5MyNTCEH/9OzeMusEi5eTMKWQIBmlY806uk9m3Xaji39wf6vcXy', 1),
(3, 'cacho', '$2y$10$9DXgoCIr8dnJ4Wwm0GEPW.Ms0aEnlI8caVNn8nVi6YX4.9UK0gfqm', 0),
(4, 'cacha', '$2y$10$sqbzX2h3.43T5e8MyLwTzenPxQT5Gcfi.tC9gl57NKRRwQnoKFZTe', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `FK_id_producto` (`id_producto`),
  ADD KEY `FK_id_usuario` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FK_id_categoria` (`id_categoria`) USING BTREE;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;