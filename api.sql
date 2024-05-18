-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2024 a las 00:53:48
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
-- Base de datos: `api`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cars`
--

CREATE TABLE `cars` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `price` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cars`
--

INSERT INTO `cars` (`id`, `user_id`, `title`, `description`, `price`, `status`, `created_at`, `updated_at`) VALUES
(3, 11, 'HONDA CIVIC', '2000', '155500', 'true', '2021-02-18 13:16:57', '2021-02-18 13:16:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `id` int(11) NOT NULL,
  `nombre1` varchar(255) NOT NULL,
  `nombre2` varchar(255) NOT NULL,
  `apellido1` varchar(255) NOT NULL,
  `apellido2` varchar(255) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `documento` varchar(50) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`id`, `nombre1`, `nombre2`, `apellido1`, `apellido2`, `tipo`, `documento`, `pais`, `area`, `email`, `estado`, `created_at`, `updated_at`) VALUES
(8, 'edison', 'alejandro', 'garcia ', 'TOVAR', 'Cédula de Ciudadania', '19852944', 'Colombia', 'Administración', 'jose.ydrogo@fruca.com.co', 'activo', '2024-05-17 19:57:02', '2024-05-17 19:57:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `user_id`, `title`, `route`, `imagen`, `status`, `created_at`, `updated_at`) VALUES
(1, 11, 'Registrar Usuario', 'registro', '../../assets/img/gif/cia.gif', 'true', '2021-03-02 16:47:44', '2021-03-02 16:47:44'),
(2, 11, 'Usuarios', 'detalle-usuario', '../../assets/img/gif/user2.gif', 'true', '2021-03-08 01:32:45', '2021-03-08 01:32:45'),
(11, 11, 'Ingreso', 'ingreso', '../../assets/img/gif/existencia.gif', 'true', '2021-07-01 15:04:42', '2021-07-01 15:04:42'),
(12, 11, 'Detalle Ingreso', 'detalle-ingreso', '../../assets/img/gif/cia.gif', 'true', NULL, NULL),
(13, 11, 'Detalle Ingreso', 'detalle-ingreso', '../../assets/img/gif/user2.gif', 'true', '2024-05-17 00:00:00', '2024-05-17 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_role`
--

CREATE TABLE `menu_role` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu_role`
--

INSERT INTO `menu_role` (`id`, `created_at`, `updated_at`, `menu_id`, `role_id`) VALUES
(32, '2021-07-01 14:44:20', '2021-07-01 14:44:30', 1, 1),
(33, '2021-07-01 14:44:32', '2021-07-01 14:44:37', 2, 1),
(34, '2021-07-01 15:11:31', '2021-07-01 15:11:31', 12, 1),
(35, '2021-07-01 19:14:19', '2021-07-01 19:14:19', 6, 1),
(36, '2021-07-01 19:14:20', '2021-07-01 19:14:20', 9, 1),
(37, '2021-07-01 19:14:21', '2021-07-01 19:14:21', 11, 1),
(38, '2021-07-02 13:19:55', '2021-07-02 13:19:55', 3, 1),
(39, '2021-07-02 13:19:56', '2021-07-02 13:19:56', 4, 1),
(40, '2021-07-02 13:19:57', '2021-07-02 13:19:57', 5, 1),
(41, '2021-07-02 13:19:58', '2021-07-02 13:19:58', 7, 1),
(42, '2021-07-02 13:19:59', '2021-07-02 13:19:59', 8, 1),
(43, '2021-07-02 13:20:00', '2021-07-02 13:20:00', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `nombre`, `updated_at`, `created_at`) VALUES
(1, 'administrador', '2021-06-28 11:25:18', '2021-06-28 11:25:18'),
(5, 'gfgf', '2021-06-28 18:00:57', '2021-06-28 18:00:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(3) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remeber_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `email`, `login`, `password`, `created_at`, `updated_at`, `remeber_token`) VALUES
(14, '1', 'GLOBAL', 'ACADEMY', 'global@global.com', 'glo', '8001c27439650c5c5a6b4ed94163b5ddeb4476362c71380e613fa20dfffcef50', '2024-05-15 19:02:41', '2024-05-15 19:02:41', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cars_users` (`user_id`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menus_users` (`user_id`);

--
-- Indices de la tabla `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
