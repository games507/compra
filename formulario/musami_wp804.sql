-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2024 a las 20:39:11
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `musami_wp804`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasena`) VALUES
(1, 'asantana@sanmiguelito.gob.pa', '$P$BUPNiFvgLfUx2pcU4AbCPaJcnBLmHi0'),
(2, 'lrobles', '911Panama'),
(3, 'lrobles', '911Panama');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_docompra`
--

CREATE TABLE `wp_docompra` (
  `id` int(11) NOT NULL,
  `id_pcompra` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `wp_docompra`
--

INSERT INTO `wp_docompra` (`id`, `id_pcompra`, `nombre`, `date`, `pdf`) VALUES
(1, 43, 'prueba', '2024-11-20 00:00:00', '0'),
(2, 43, 'prueba 2', '2024-11-21 00:00:00', '0'),
(3, 44, 'yeyo1', '2024-11-20 00:00:00', '0'),
(4, 44, 'yeyo2', '2024-11-20 00:00:00', '0'),
(5, 44, 'yeyo3', '2024-11-20 00:00:00', '0'),
(6, 46, 'Aviso de co', '2024-11-22 00:00:00', '0'),
(7, 47, 'Aviso de convocatoria', '2024-11-21 00:00:00', '0'),
(8, 48, 'Aviso de convocatoria 2', '2024-11-22 00:00:00', '0'),
(9, 49, 'Aviso de convocatoria 3', '2024-11-22 00:00:00', '0'),
(10, 50, 'Aviso de convocatoria', '2024-11-21 00:00:00', '0'),
(11, 50, 'Aviso de convocatoria 2', '2024-11-21 00:00:00', '0'),
(12, 51, 'Aviso de co', '2024-11-22 00:00:00', '0'),
(13, 52, 'Aviso de convocatoria', '2024-11-22 00:00:00', '0'),
(14, 53, 'Aviso de convocatoria 2', '2024-11-22 00:00:00', 'Configuración Servidores-sanmiguelito.pdf'),
(15, 54, 'prueba 123', '2024-11-21 00:00:00', 'Manual-llave SSH-nube2.pdf'),
(16, 55, 'Aviso de convocatoria 2', '2024-11-21 00:00:00', '1.pdf'),
(17, 56, 'Aviso de convocatoria 2', '2024-11-21 00:00:00', '123.pdf'),
(18, 59, 'Prueba 11k', '2024-11-21 00:00:00', '11k.pdf'),
(19, 60, 'PLIEGO DE CARGO', '2024-11-22 00:00:00', 'Desarrollo-del-Sistema-de-Gestion-de-Compras.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_portalcompra`
--

CREATE TABLE `wp_portalcompra` (
  `id` int(250) NOT NULL,
  `no_compra` varchar(250) NOT NULL,
  `tipo_procedimiento` varchar(250) NOT NULL,
  `objeto_contractual` varchar(250) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_presentacion` datetime NOT NULL,
  `fecha_apertura` datetime NOT NULL,
  `lugar_presentacion` varchar(250) NOT NULL,
  `termino_subsanacion` varchar(250) NOT NULL,
  `precio_referencia` varchar(250) NOT NULL,
  `estado` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `wp_portalcompra`
--

INSERT INTO `wp_portalcompra` (`id`, `no_compra`, `tipo_procedimiento`, `objeto_contractual`, `descripcion`, `fecha_publicacion`, `fecha_presentacion`, `fecha_apertura`, `lugar_presentacion`, `termino_subsanacion`, `precio_referencia`, `estado`) VALUES
(28, '88888', 'compra', 'parque', 'vereda', '2024-10-27', '2024-10-28 16:53:00', '2024-11-01 16:53:00', 'comprassss', 'todoss', '25,000.00', 'nueva'),
(29, '77777', 'compra', 'parque', 'vereda', '2024-10-27', '2024-10-28 16:55:00', '2024-11-03 16:55:00', 'compra', 'todos', '15,000.00', 'nueva'),
(30, '66666', 'compra', 'parque', 'vereda', '2024-10-27', '2024-10-28 17:07:00', '2024-11-01 17:07:00', 'compra', 'todos', '15,000.00', 'nueva'),
(32, '202021', 'Prueba', 'Prueba', 'Prueba', '2024-10-27', '2024-10-28 14:39:00', '2024-11-01 14:39:00', 'Prueba', 'Prueba', 'Prueba', 'Prueba'),
(33, '911', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripción', '2024-10-28', '2024-10-30 14:20:00', '2024-11-01 14:20:00', 'Lugar de Presentación:', 'Término de Subsanación:', 'Precio de Referencia:', 'Estado:'),
(34, '9112', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripción', '2024-10-28', '2024-10-30 14:20:00', '2024-11-01 14:20:00', 'Lugar de Presentación:', 'Término de Subsanación:', 'Precio de Referencia:', 'Estado:'),
(35, '911911', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripción', '2024-10-28', '2024-10-30 14:20:00', '2024-11-01 14:20:00', 'Lugar de Presentación:', 'Término de Subsanación:', 'Precio de Referencia:', 'Estado:'),
(36, '911912', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripción', '2024-10-28', '2024-10-30 14:20:00', '2024-11-01 14:20:00', 'Lugar de Presentación:', 'Término de Subsanación:', 'Precio de Referencia:', 'Estado:'),
(37, '12345', 'Directa', 'Compra Equipos', '1', '2024-11-20', '2024-11-21 10:00:00', '0000-00-00 00:00:00', '', '', '', 'Activo'),
(38, '33333', 'tipo', 'objeto', '1', '2024-11-13', '2024-11-21 11:54:00', '0000-00-00 00:00:00', '', '', '', 'Activo'),
(39, '22222', 'Tipo de Procedimiento:', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-21 13:02:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(40, '313131', 'affasdfas', 'fafasgaggdaag', 'agasdgasdga', '2024-11-28', '2024-11-28 20:08:00', '0000-00-00 00:00:00', '', '', '', 'Activo'),
(41, '31321', 'compra', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-20', '2024-12-12 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(42, '313212', 'compra', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-20', '2024-12-12 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(43, '154545', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-21 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(44, '1919002', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-22 00:00:00', '0000-00-00 00:00:00', 'Municipio', 'No Aplica', '25,000.00', 'abierto'),
(45, '55555', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-20', '2024-12-12 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(46, '000008', 'compra', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-21 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(47, '232323', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-23', '2024-12-12 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(48, '454545', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(49, '787878', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-21', '2024-11-21 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(50, '282828', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(51, '191919333', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(52, '1919192', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(53, '1919190', 'Tipo de Procedimiento:', 'Objeto Contractual:', 'Descripción', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(54, '4444', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(55, '484848', 'compra', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-21 00:00:00', '0000-00-00 00:00:00', '', '', '', 'Estado:'),
(56, '494949', 'tipo de procedimiento', 'Objeto Contractual:', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It h', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(58, '1235678', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripción', '2024-11-22', '2024-11-22 00:00:00', '0000-00-00 00:00:00', '', '', '', 'abierto'),
(59, '4040', 'tipo de procedimiento', 'Objeto Contractual:', 'Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcion Descripcio', '2024-11-22', '2024-11-22 00:00:00', '2024-11-22 00:00:00', 'Lugar de Presentación:', 'Término de Subsanación:', '15000.00', 'Activo'),
(60, 'CM0056-MUSAMI-2024', 'YJ9IKLÑPÑP', 'BIEN', '40 PARES DE CUTARRAS', '2024-11-22', '2024-11-29 00:00:00', '2024-11-29 00:00:00', 'MUNICIPIO DE SAN MIGUELITO', 'NO APLICA', '20000.00', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_proponentes`
--

CREATE TABLE `wp_proponentes` (
  `id` int(11) NOT NULL,
  `id_pcompra` int(11) NOT NULL,
  `proponente` varchar(250) NOT NULL,
  `oferta` decimal(10,0) NOT NULL,
  `hora` time NOT NULL,
  `aprobado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'asantana@sanmiguelito.gob.pa', '$P$BUPNiFvgLfUx2pcU4AbCPaJcnBLmHi0', 'asantanasanmiguelito-gob-pa', 'asantana@sanmiguelito.gob.pa', 'https://alcaldiasanmiguelito.gob.pa', '2024-10-17 16:04:06', '', 0, 'asantana@sanmiguelito.gob.pa'),
(2, 'Joseph', '$P$BSpwQoWFkeZ1Q6oOi7KomXOx0QVmrm.', 'joseph', 'jarosemena@sanmiguelito.gob.pa', '', '2024-10-17 16:19:16', '1729181956:$P$BCa4c0UlVKIPE9vX2ZxXrH/KGlLy4w.', 0, 'Joseph Arosemena'),
(4, 'usuario_prueba', '$2y$10$3bTHa0paFmlb8SPJOuiirueYhhYtk/1EJM02Wbt4GZ/dh4bt1JMUC', '', '', '', '0000-00-00 00:00:00', '', 0, ''),
(5, 'lrobles', '$2y$10$debJbqtP/2Hw4EKXPWfAwetb0.hCV8HdSTHy494r497.3bmpBBtoS', '', '', '', '0000-00-00 00:00:00', '', 0, ''),
(6, 'asantana', '$2y$10$OCFOnwMuYqSpElZwJ6RuQOavN17VYdFOmTKtp1.QYPRUthEOBSxHi', '', '', '', '0000-00-00 00:00:00', '', 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_docompra`
--
ALTER TABLE `wp_docompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_docompra_ibfk_1` (`id_pcompra`);

--
-- Indices de la tabla `wp_portalcompra`
--
ALTER TABLE `wp_portalcompra`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_compra` (`no_compra`);

--
-- Indices de la tabla `wp_proponentes`
--
ALTER TABLE `wp_proponentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pcompra` (`id_pcompra`);

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_docompra`
--
ALTER TABLE `wp_docompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `wp_portalcompra`
--
ALTER TABLE `wp_portalcompra`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `wp_proponentes`
--
ALTER TABLE `wp_proponentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `wp_docompra`
--
ALTER TABLE `wp_docompra`
  ADD CONSTRAINT `wp_docompra_ibfk_1` FOREIGN KEY (`id_pcompra`) REFERENCES `wp_portalcompra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `wp_proponentes`
--
ALTER TABLE `wp_proponentes`
  ADD CONSTRAINT `wp_proponentes_ibfk_1` FOREIGN KEY (`id_pcompra`) REFERENCES `wp_portalcompra` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
