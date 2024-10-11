-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2024 a las 19:54:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--
DROP DATABASE IF EXISTS `chat`;
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1622688038, 340066300, 'hola man'),
(2, 340066300, 1622688038, 'bien'),
(3, 1622688038, 340066300, 'hola'),
(4, 340066300, 1622688038, 'hola'),
(5, 440971576, 1622688038, 'hola pedro, necesito tu ayuda'),
(6, 1622688038, 440971576, 'hola Mauricio, claro, dime !!'),
(7, 340066300, 1028942886, 'jfjdsf'),
(8, 340066300, 1028942886, 'jujuju'),
(9, 1028942886, 205448344, 'gfkdgkdfjgk'),
(10, 1028942886, 205448344, 'hola juan'),
(11, 1028942886, 1110558771, 'ghhgh'),
(12, 1110558771, 205448344, 'jkljdkjkd'),
(13, 1028942886, 1110558771, 'hola juan bb'),
(14, 1110558771, 244043295, 'valeria'),
(15, 244043295, 1110558771, 'que verga quire'),
(16, 1110558771, 244043295, 'CTM'),
(17, 244043295, 1110558771, 'LA TUYA+'),
(18, 244043295, 485731025, 'Hola valeria queria decirte que estoy muy enamorado de tu hermana'),
(19, 485731025, 244043295, 'Dice mi hermana que ctm'),
(20, 244043295, 100258991, 'oye w'),
(21, 244043295, 100258991, 'que tal'),
(22, 244043295, 100258991, 'como va la vida'),
(23, 100258991, 244043295, 'oye '),
(24, 100258991, 244043295, 'te gusta 25?'),
(25, 244043295, 100258991, 'JAJAJAJAJJAAJASJSJADS'),
(26, 100258991, 244043295, 'JAJJAJJAJAJAJAJAJ'),
(27, 100258991, 244043295, 'no bromeess'),
(28, 244043295, 100258991, 'amo a manuel'),
(29, 100258991, 1028942886, 'a'),
(30, 100258991, 1028942886, 'xd'),
(31, 100258991, 1028942886, 'so'),
(32, 100258991, 1533712861, 'hola como estas'),
(33, 498646774, 1533712861, 'hola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `age` varchar(50) NOT NULL,
  `interest` varchar(50) NOT NULL,
  `career` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`, `age`, `interest`, `career`) VALUES
(1, 1622688038, 'Mauricio', 'Sevilla', 'hola@configuroweb.com', '4b67deeb9aba04a5b54632ad19934f26', '1652660564avatar.png', 'Disponible', '', '', ''),
(2, 340066300, 'Juan', 'Usuario', 'jusuario@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '1652660638staff-avatar.png', 'Desconectad@', '', '', ''),
(3, 440971576, 'Pedro', 'Usuario', 'pusuario@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '1652670758chatbot.png', 'Disponible', '', '', ''),
(4, 1028942886, 'juan', 'oeoe', 'pepe@gmail.com', '6ca29d9bb530402bd09fe026ee838148', '1728598651Diseño sin título (3).png', 'Offline now', '', '', ''),
(5, 205448344, 'plkjkjdk', 'sksdlj', 'ramirezdominguezjesusmanuel0@gmail.com', '78a2387036a5ce934397b1d794bfdbfc', '1728598760Diseño sin título (2).png', 'Offline now', '', '', ''),
(6, 1110558771, 'vvhvhv', 'vcvcvcv', 'pepfe@gmail.com', '6ca29d9bb530402bd09fe026ee838148', '1728598835Diseño sin título (3).png', 'Offline now', '', '', ''),
(7, 244043295, 'valeria', 'sanches', 'gonsalesaskdk@gmail.com', 'd2a1c8caa15281416db92a8c52742f6e', '1728598993Diseño sin título.png', 'Disponible', '', '', ''),
(8, 485731025, 'Manuel', 'Ramirez', 'manuel@gmail.com', 'c8ffe9a587b126f152ed3d89a146b445', '1728599271Bad Bull volantes.png', 'Offline now', '', '', ''),
(9, 100258991, 'ratul', 'ratanza', 'browsersan@gmail.com', '9450476b384b32d8ad8b758e76c98a69', '1728600033miniGenerica.jpg', 'Disponible', '', '', ''),
(10, 498646774, 'vuelta', 'nombre', 'pepe2@gmail.com', '6ca29d9bb530402bd09fe026ee838148', '1728635280malunet (1).png', 'Disponible', '', '', ''),
(11, 1533712861, 'vuelta', 'nombre', 'pepe000002@gmail.com', '6ca29d9bb530402bd09fe026ee838148', '1728635287malunet (1).png', 'Offline now', '', '', ''),
(12, 1100905069, 'a', 'b', 'ca@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1728664028133527726309804856.jpg', 'Offline now', '', '', ''),
(13, 1245236123, 'raul', 'al', 'raul@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1728664595133527726309804856.jpg', 'Disponible', '', '', ''),
(14, 1079974474, 'fddfsfdfdsf', 'fsdffds', 'fdsdfs@gmail.com', 'a87b676d0e19da59f5a3ae7aa3f718c4', '1728665067133527726309804856.jpg', 'Offline now', '', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Base de datos: `phpmyadmin`
--
DROP DATABASE IF EXISTS `phpmyadmin`;
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sitio_web\",\"table\":\"users\"},{\"db\":\"sitio_web\",\"table\":\"tabla_alumnos\"},{\"db\":\"ramirezdominguez_pra\",\"table\":\"services\"},{\"db\":\"ramirezdominguez_pra\",\"table\":\"users\"},{\"db\":\"sitio_web\",\"table\":\"atencion\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-19 16:35:09', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `ramirezdominguez_pra`
--
DROP DATABASE IF EXISTS `ramirezdominguez_pra`;
CREATE DATABASE IF NOT EXISTS `ramirezdominguez_pra` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ramirezdominguez_pra`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `nombre`, `email`, `telefono`, `mensaje`, `fecha`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', '555-1234', 'Quisiera agendar una cita para mi perro.', '2024-06-18 03:14:16'),
(2, 'María Gómez', 'maria.gomez@example.com', '555-5678', '¿Tienen disponible el servicio de esterilización este mes?', '2024-06-18 03:14:16'),
(3, 'Carlos López', 'carlos.lopez@example.com', '555-8765', 'Mi gato está enfermo y necesita una consulta urgente.', '2024-06-18 03:14:16'),
(4, 'Laura Fernández', 'laura.fernandez@example.com', '555-4321', 'Estoy interesada en el servicio de limpieza dental.', '2024-06-18 03:14:16'),
(5, 'Ana Martínez', 'ana.martinez@example.com', '555-6789', '¿Podrían proporcionarme más información sobre las vacunas?', '2024-06-18 03:14:16'),
(6, 'ffsdf', 'ramirezdominguezjesusmanuel0@gmail.com', '', 'jewkqjljwlqkjekwqjk', '2024-06-18 03:19:09'),
(7, 'ffsdf', 'ramirezdominguezjesusmanuel0@gmail.com', '', 'dassadasd', '2024-06-18 03:19:18'),
(8, 'ffsdf', 'ramirezdominguezjesusmanuel0@gmail.com', '', 'ndwqklwdlknwqldknqwkldnlkqwndklqwndlknwqlkdnklqwndklqwndklqwndklnwqklndklwqndklqwndklqwnldnwqklnd', '2024-06-18 04:28:44'),
(9, 'h4i3udiu4d', 'alexflores0507@gmail.com', '', '3udiou3oudi43', '2024-06-20 15:55:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `services`
--

INSERT INTO `services` (`id`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'Consulta General', 50.00, 'Consulta general para evaluar la salud de la mascota.'),
(2, 'Vacunación', 30.00, 'Vacunas esenciales para la prevención de enfermedades.'),
(3, 'Desparasitación', 25.00, 'Tratamiento contra parásitos internos y externos.'),
(4, 'Limpieza Dental', 100.00, 'Limpieza profesional de los dientes de la mascota.'),
(5, 'Radiografía', 75.00, 'Imágenes radiográficas para diagnóstico.'),
(6, 'Cirugía de Esterilización', 150.00, 'Procedimiento quirúrgico para esterilizar a la mascota.'),
(7, 'Corte de Uñas', 10.00, 'Corte de uñas para mantener la salud de las patas.'),
(8, 'Baño y Peluquería', 40.00, 'Servicio completo de baño y peluquería.'),
(9, 'Análisis de Sangre', 60.00, 'Pruebas de laboratorio para evaluar la salud general.'),
(10, 'Ultrasonido', 80.00, 'Imágenes de ultrasonido para diagnóstico.'),
(11, 'Hospitalización', 200.00, 'Cuidado hospitalario para mascotas enfermas o recuperándose de cirugía.'),
(12, 'Consulta Especializada', 100.00, 'Consulta con un especialista en casos complejos.'),
(13, 'Terapia Física', 50.00, 'Rehabilitación y fisioterapia para recuperación de lesiones.'),
(14, 'Consulta de Emergencia', 120.00, 'Atención de urgencias fuera del horario normal.'),
(15, 'Microchip', 35.00, 'Implantación de microchip para identificación.'),
(16, 'Vacuna Antirrábica', 20.00, 'Vacuna específica contra la rabia.'),
(17, 'Chequeo Geriátrico', 70.00, 'Evaluación de salud para mascotas mayores.'),
(18, 'Ecocardiograma', 150.00, 'Prueba de ultrasonido para evaluar la función cardíaca.'),
(19, 'Tratamiento de Alergias', 40.00, 'Evaluación y tratamiento de alergias.'),
(20, 'Consulta Nutricional', 45.00, 'Asesoría en alimentación y dietas específicas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id_usuario` int(3) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id_usuario`, `email`, `password`) VALUES
(1, '', ''),
(2, '', ''),
(3, 'nbmnbmnbm', 'llnwnclkenw'),
(4, 'hola@gmail.com', 'poiu'),
(5, 'hola@gmail.com', 'poiu'),
(6, 'nbmnbmnbm', 'llnwnclkenw'),
(7, 'nbmnbmnbm', 'llnwnclkenw'),
(8, 'nbmnbmnbm', 'llnwnclkenw'),
(9, 'pepe@gmail.com', 'poiu'),
(10, 'pepe@gmail.com', 'poiu'),
(11, 'pepe@gmail.com', 'poiu'),
(12, 'pepe@gmail.com', 'poiu'),
(13, 'pepe2@gmail.com', 'poiu'),
(14, 'pepe@gmail.com', 'poiu'),
(0, 'pepe@gmail.com', 'poiu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Base de datos: `sitio_web`
--
DROP DATABASE IF EXISTS `sitio_web`;
CREATE DATABASE IF NOT EXISTS `sitio_web` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sitio_web`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Apellidos` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Ayuda` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `atencion`
--

INSERT INTO `atencion` (`id`, `Name`, `Apellidos`, `Email`, `Ayuda`) VALUES
(1, 'dwwd', 'wdwd', 'dwdw', 'wdwd'),
(2, 'Erick Alexis', 'Flores Reyes', 'erick@gmail.com', 'buen servicio'),
(3, 'Liz', 'Reyes', 'Liz@gmail.com', 'En nada'),
(4, 'Alexis', 'dw', 'Liz@gmail.com', 'En nada'),
(5, 'A', 'F', 'so@gmail.com', 'En nada jajaja'),
(6, 'reyes', 'Flores', 'dominio@gmail.com', 'nada'),
(7, 'Flores', 'Reyes', 'dominio@gmail.com', 'nada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_alumnos`
--

CREATE TABLE `tabla_alumnos` (
  `Id` int(3) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Donas` varchar(20) NOT NULL,
  `Tamano` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla_alumnos`
--

INSERT INTO `tabla_alumnos` (`Id`, `Nombre`, `Donas`, `Tamano`) VALUES
(9, 'Alexis', 'Chocolate', 'Mediana'),
(11, 'Alexis', 'Chocolatecolores', 'Grande'),
(12, 'Alexis', 'Chocolatecolores', 'Grande'),
(13, 'Elizabeth', 'Chocolatecolores', 'Mediana'),
(14, 'Manoo', 'Chocolate', 'Mediana'),
(15, 'paty', 'Chocolatecolores', 'Grande'),
(16, 'erick', 'Chocolatecolores', 'Grande'),
(17, 'erick', 'Chocolatecolores', 'Grande'),
(18, 'roberto', 'Chocolatecolores', 'Grande'),
(19, 'pato', 'Azucar', 'ChicaS'),
(22, 'se', 'Chocolatecolores', 'Grande'),
(23, 'Perico', 'Chocolate', 'Grande'),
(24, 'Mano', 'Chocolatecolores', 'Grande'),
(25, 'robert', 'Azucar', 'ChicaS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `Email`, `Password`) VALUES
(8, 'lizfloresjul07@gmail.com', 'solo'),
(9, 'alexis@gmail.com', 'yes'),
(10, 'sopa@gmail.com', 'de'),
(11, 'sopa@gmail.com', 'alexis'),
(12, 'alexflores05@gmial.com', 'y'),
(13, 'hola@gmail.so', 'so'),
(14, 'RO@GMAIL.COM', 'UI'),
(15, 'jesko@gmail.com', 'lola'),
(16, 'liz@gmail.com', 'liz'),
(17, 'maki@gmail.com', 'maki'),
(18, 'patito@gmail.com', 'pachicos'),
(19, 'mana@gmail.com', 'ma'),
(20, 'RATUL@gmail.com', 'ratul'),
(21, 'manuelito@gmail', 'manu'),
(22, 'Prueba@gmail.com', 'prueba'),
(23, 'Prueba@gmail.com', 'JAJA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla_alumnos`
--
ALTER TABLE `tabla_alumnos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tabla_alumnos`
--
ALTER TABLE `tabla_alumnos`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Base de datos: `test`
--
DROP DATABASE IF EXISTS `test`;
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
