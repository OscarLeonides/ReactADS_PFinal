-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-12-2022 a las 00:55:44
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reactor8_paginaads`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_02_24_230122_tb_tablas', 1),
(6, '2022_03_13_204259_tb_ventas', 2),
(8, '2022_02_24_031849_tb_productos', 3),
(9, '2022_02_24_040711_usuarios', 4),
(10, '2022_03_29_055110_codigo', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_codigo`
--

CREATE TABLE `tb_codigo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_codigo`
--

INSERT INTO `tb_codigo` (`id`, `cod`, `created_at`, `updated_at`) VALUES
(1, '378435', '2022-03-29 12:11:12', '2022-03-29 12:11:12'),
(2, '138007', '2022-03-29 12:11:41', '2022-03-29 12:11:41'),
(3, '896015', '2022-03-29 12:13:51', '2022-03-29 12:13:51'),
(4, '542987', '2022-03-30 01:57:35', '2022-03-30 01:57:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `foto2` text COLLATE utf8mb4_unicode_ci,
  `foto3` text COLLATE utf8mb4_unicode_ci,
  `foto4` text COLLATE utf8mb4_unicode_ci,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tabla` int(11) DEFAULT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id`, `foto`, `foto2`, `foto3`, `foto4`, `nombre`, `descripcion`, `id_tabla`, `precio`, `created_at`, `updated_at`) VALUES
(5, '20220616_010626_61Y5+AI624L._AC_SL1500_.jpg', '20220616_010626_61yQA8bo6SL._AC_SL1216_.jpg', '20220616_010626_71MLWHS0HBL._AC_SL1500_.jpg', '20220616_010626_61Y5+AI624L._AC_SL1500_.jpg', 'Dell Optiplex', 'HDD 500 GB\r\nMEMORIA RAM 4 GB\r\nWINDOWS 10 Profesional', 1, '8500', '2022-06-09 21:12:26', '2022-06-16 06:06:26'),
(6, '20220616_010709_CP-HP-W1A80A-1.jpg', '20220616_010709_CP-HP-W1A80A-2.jpg', '20220616_010709_CP-HP-W1A80A-4.jpg', '20220616_010709_CP-HP-W1A80A-5.jpg', 'Impresora Hp Color LaserJet Pro MFP M479fdw', 'Impresión a Color.\r\nImprima, copie, escanee, y use fax y correo electrónico\r\n1 USB 2.0 de alta velocidad; 1 USB integrado en el lado trasero; Red Gigabit Ethernet 10/100/1000BASE-T; 802.3az(EEE); Radio Wi-Fi 802.11b/g/n/2,4/5 GHz\r\nLaser.', 1, '14300', '2022-06-09 21:16:43', '2022-06-16 06:07:09'),
(8, '20220616_010852_19984208_1589242367760745_3023207290748302600_o.jpg', '20220616_010852_19984208_1589242367760745_3023207290748302600_o.jpg', '20220616_010852_19984208_1589242367760745_3023207290748302600_o.jpg', '20220616_010852_19984208_1589242367760745_3023207290748302600_o.jpg', 'Tóner Samsung MLT-D203U', 'MARCA SAMSUNG \r\nMODELO D203U', 1, '1100', '2022-06-09 21:50:28', '2022-06-16 06:08:52'),
(12, '20220616_011554_20232153_1596925603659088_4123604229308326540_o.png', '20220616_011554_20232153_1596925603659088_4123604229308326540_o.png', '20220616_011554_20232153_1596925603659088_4123604229308326540_o.png', '20220616_011554_20232153_1596925603659088_4123604229308326540_o.png', 'TP-LINK T2600G', 'SWITCH TP LINK, 24 PUERTOS, 28TS', 1, '5800', '2022-06-10 00:01:15', '2022-06-16 06:15:54'),
(13, '20220616_011625_19702971_1579479975403651_6507598302058449757_o.png', '20220616_011625_19702971_1579479975403651_6507598302058449757_o.png', '20220616_011625_19702971_1579479975403651_6507598302058449757_o.png', '20220616_011625_19702971_1579479975403651_6507598302058449757_o.png', 'Dell Barra de Sonido', 'Barra de sonido Altavoces, Modelo AC511, ofrece un audio estéreo claro, lo que le permite disfrutar del sonido en sus juegos favoritos, música y películas, sin sacrificar el espacio de escritorio.', 1, '900', '2022-06-10 00:05:20', '2022-06-16 06:16:25'),
(14, '20220616_011710_20369823_1602982703053378_4279987005933004249_o.jpg', '20220616_011710_20369823_1602982703053378_4279987005933004249_o.jpg', '20220616_011710_20369823_1602982703053378_4279987005933004249_o.jpg', '20220616_011710_20369823_1602982703053378_4279987005933004249_o.jpg', 'Hp Proliant Servidor', 'Servidor, Intel Xeon E-2224 3.40GHz, 16GB DDR4, 1TB, 3.5\", SATA, Torre 4U', 1, '8400', '2022-06-10 00:07:16', '2022-06-16 06:17:10'),
(15, '20220616_011752_21688040_1657685234249791_1553603629587295960_o.jpg', '20220616_011752_21688040_1657685234249791_1553603629587295960_o.jpg', '20220616_011752_21688040_1657685234249791_1553603629587295960_o.jpg', '20220616_011752_21688040_1657685234249791_1553603629587295960_o.jpg', 'Monitor Samsung LED UHD 28\'\'', '28\'\' Pulgadas, UHD, HDMI 1, VGA 1.', 1, '4900', '2022-06-10 00:08:58', '2022-06-16 06:17:52'),
(17, '20220616_012529_64492556_2484409961577310_6669033434054131712_n.png', '20220616_012529_64492556_2484409961577310_6669033434054131712_n.png', '20220616_012529_64492556_2484409961577310_6669033434054131712_n.png', '20220616_012529_64492556_2484409961577310_6669033434054131712_n.png', 'Monitor Acer K272HL', '27\'\' FULL HD, 1920x1080 px, Color negro, LED, Pantalla Plana', 1, '2865', '2022-06-10 00:14:38', '2022-06-16 06:25:29'),
(18, '20220616_012611_62552046_2473523085999331_1689982984305770496_n.png', '20220616_012611_62552046_2473523085999331_1689982984305770496_n.png', '20220616_012611_62552046_2473523085999331_1689982984305770496_n.png', '20220616_012611_62552046_2473523085999331_1689982984305770496_n.png', 'Monitor BENQ NL302', '1920x1080, LED 28\'\' FULL HD, 2 HDMI', 1, '3505', '2022-06-10 00:17:20', '2022-06-16 06:26:11'),
(19, '20220616_012657_T206.png', '20220616_012657_T206.png', '20220616_012657_T206.png', '20220616_012657_T206.png', 'Epson Tintas Pack 4 Colores', 'Modelo Compatible 206, Colores incluidos Negro, Magenta, Cian y Yellow', 1, '600', '2022-06-10 00:28:15', '2022-06-16 06:26:57'),
(20, '20220616_012849_61QSrrlsp1L._AC_SX425_.jpg', '20220616_012849_106R02739_1640x842.jpg', '20220616_012849_106R03585_1495x822.jpg', '20220616_012849_61QSrrlsp1L._AC_SX425_.jpg', 'Toners Xerox', 'Modelos Compatibles C8045, C8030, C8035, C8070, \r\nColor CIAN,  Magenta y Amarillo', 1, '960', '2022-06-10 00:30:25', '2022-06-16 06:28:49'),
(21, '20220616_012916_3_toners brother originales.jpg', '20220616_012916_3_toners brother originales.jpg', '20220616_012916_3_toners brother originales.jpg', '20220616_012916_3_toners brother originales.jpg', 'Tóner Brother TN 660', 'Color Negro, Modelo compatible TN 660', 1, '550', '2022-06-10 00:31:47', '2022-06-16 06:29:16'),
(22, '20220616_012144_20232288_1593545343997114_6682986825438986747_o.jpg', '20220616_012144_20232288_1593545343997114_6682986825438986747_o.jpg', '20220616_012144_20232288_1593545343997114_6682986825438986747_o.jpg', '20220616_012144_20232288_1593545343997114_6682986825438986747_o.jpg', 'Inyector PoE TP-LINK', 'Marca TL-POE150S', 1, '100', '2022-06-10 00:33:18', '2022-06-22 10:45:33'),
(23, '20220616_012100_21167521_1634749513210030_3005324547919153203_o.png', '20220616_012100_21167521_1634749513210030_3005324547919153203_o.png', '20220616_012100_21167521_1634749513210030_3005324547919153203_o.png', '20220616_012100_21167521_1634749513210030_3005324547919153203_o.png', 'Impresora Hp Multifuncional', 'Hp DeskJet Ink Advantage 2135, Inyección de tinta, 1000 páginas por mes, 4800 x 1200 DP', 1, '1600', '2022-06-10 00:35:28', '2022-06-16 06:21:00'),
(24, '20220616_022052_Captura-de-Pantalla-2021-10-29-a-las-17.16.35.png', '20220616_022052_computacion-cunlimon.jpg', '20220616_022052_pexels-it-services-eu-7639370-1024x683.jpg', '20220616_022052_reparacion-de-pc-y-laptops_oeqja7s_3.jpg', 'Mantenimiento de laptops', 'Ofrecemos mantenimiento preventivo y correctivo a todo tipo de laptops', 2, '2000', '2022-06-10 01:04:38', '2022-06-16 07:20:52'),
(25, '20220616_022201_tomas-malik-MJ9px5L-opg-unsplash.jpg', '20220616_022201_mantenimiento-de-computadoras-1.jpg', '20220616_022201_Mantenimiento-PC.webp', '20220616_022201_soporte-tecnico-empresas.jpg', 'Mantenimiento de Pc\'s de escritorio', 'Realizamos mantenimiento correctivo y preventivo a PC\'s de escritorio de todo tipo', 2, '3000', '2022-06-10 01:05:43', '2022-06-16 07:22:01'),
(26, '20220616_022239_Cómo-abrir-un-negocio-de-venta-e-instalación-de-cámaras-de-seguridad.jpg', '20220616_022239_Diplomado-en-Tecnologias-de-Seguridad-Electronica.jpg', '20220616_022239_instalacion-camaras-videovigilancia.jpg', '20220616_022239_tecnico-espiaba-a-sus-clientes-teniendo-sexo.jpg', 'Instalacion de camaras de seguridad', 'Realizamos instalacion de camaras de seguridad en cualquier parte que se solicite', 2, '5000', '2022-06-10 01:10:30', '2022-06-16 07:22:39'),
(27, '20220616_022325_photo_2022-06-09_15-13-12.jpg', '20220616_022325_photo_2022-06-09_15-13-07.jpg', '20220616_022325_photo_2022-06-09_15-13-21.jpg', '20220616_022325_photo_2022-06-09_15-13-25.jpg', 'Instalación de red', 'Ofrecemos de redes para compartición de datos en empresas o servicios en la nube', 2, '1000', '2022-06-10 01:15:03', '2022-07-08 04:01:46'),
(28, '20220616_022401_3927823.jpg', '20220616_022401_174770-como-crear-usb-instalar-windows-linux-otros.webp', '20220616_022401_instalar-sistema-operativo.jpeg', '20220616_022401_photo_2022-06-09_15-15-25.jpg', 'Formateo e instalación de sistemas operativos', 'Ofrecemos formateo a computadoras y reinstalación de sistemas operativos o simplemente instalación de sistema operativo en una pc nueva.', 2, '1000', '2022-06-10 01:19:09', '2022-06-16 07:24:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tablas`
--

CREATE TABLE `tb_tablas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_tablas`
--

INSERT INTO `tb_tablas` (`id`, `nombre`, `clave`, `created_at`, `updated_at`) VALUES
(1, 'Productos', '1', NULL, NULL),
(2, 'Servicios', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fn` date DEFAULT NULL,
  `gen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `aviso_privacidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encrypted` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nombre`, `app`, `email`, `fn`, `gen`, `tel`, `direccion`, `password`, `tipo`, `aviso_privacidad`, `created_at`, `updated_at`, `encrypted`) VALUES
(21, 'Axel', 'Palacios', 'axl_117@gmail.com', '2000-02-02', 'Masculino', '7228521039', 'Felipe Carillo Puerto', 'VxTEjcOz+Xyyaib12xr4HQ==', 1, 'Aceptado', '2022-05-24 02:28:55', '2022-05-24 02:28:55', 0),
(24, 'admin', 'xd', 'admin@gmail.com', '2022-05-29', 'Masculino', '123344', 'xd', 'I23KZAhM61kzKcB3uQOB4Q==', 1, 'Aceptado', '2022-05-30 09:49:23', '2022-05-30 09:49:23', 0),
(30, 'Cesar', 'Tovar', 'al221910520@gmail.com', '2001-09-03', 'Masculino', '7221276924', 'Sergio Sanchez', 'VxTEjcOz+Xyyaib12xr4HQ==', 2, 'Aceptado', '2022-06-07 03:15:27', '2022-06-07 03:15:27', 0),
(35, 'Adair', 'Corona', 'adaircrown9@gmail.com', '2001-03-10', 'Masculino', '7223115750', 'Emiliano Zapata No. 2', 'I23KZAhM61kzKcB3uQOB4Q==', 2, 'Aceptado', '2022-06-16 05:17:55', '2022-06-16 05:17:55', 0),
(37, 'Brandon', 'Flores', 'al221710972@gmail.com', NULL, 'Masculino', '7228365028', 'santa maria atarasquillo', 'VCPerK3Oyo4A6uSQqSYvfw==', 2, 'Aceptado', '2022-07-09 23:27:53', '2022-07-09 23:27:53', 0),
(38, 'Richard', 'Parker', 'al221910536@gmail.com', '2022-08-17', 'Masculino', '5532826964', 'Calle Puebla, 46 Col, Roma Norte cp 06700', 'I23KZAhM61kzKcB3uQOB4Q==', 2, 'Aceptado', '2022-08-02 04:34:30', '2022-08-02 04:34:30', 0),
(40, 'Axel', 'Palacios', 'palas_1117@outlook.com', '2000-02-02', 'Masculino', '7228521039', 'Felipe Carrillo Puerto', 'MLVuKydkBh+x1zFLHFArYg==', 2, 'Aceptado', '2022-08-12 23:06:59', '2022-08-12 23:06:59', 0),
(41, 'UTVT', 'UTVT', 'usuario@utvt.com', '1985-02-03', 'Masculino', '7228521036', 'Universidad Tecnologica del Valle de Toluca', 'G0aOuwOiRiDgEQKZigBD9A==', 2, 'Aceptado', '2022-08-17 07:25:30', '2022-08-17 07:25:30', 0),
(42, 'Admin', 'UTVT', 'admin@utvt.com', '1985-02-02', 'Masculino', '7228521035', 'Universidad Tecnologica del Valle de Toluca', 'jtvWT/Jt4BaHgnBq6kgYuQ==', 1, 'Aceptado', '2022-08-17 07:27:39', '2022-08-17 07:27:39', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ventas`
--

CREATE TABLE `tb_ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_usuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adquirido` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_ventas`
--

INSERT INTO `tb_ventas` (`id`, `id_producto`, `id_usuario`, `cantidad`, `precio`, `adquirido`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '2', '17000', NULL, '2022-03-14 12:05:01', '2022-03-14 12:05:01'),
(2, '2', '2', '3', '25500', NULL, '2022-03-14 12:11:10', '2022-03-14 12:11:10'),
(3, '2', '2', '3', '25500', NULL, '2022-03-14 12:34:29', '2022-03-14 12:34:29'),
(4, '1', '3', '1', '7505', NULL, '2022-03-14 12:41:59', '2022-03-14 12:41:59'),
(5, '2', '4', '1', '8500', NULL, '2022-03-17 04:29:16', '2022-03-17 04:29:16'),
(6, '1', '5', '2', '4000', NULL, '2022-03-26 11:46:11', '2022-03-26 11:46:11'),
(7, '1', '15', '5', '10000', NULL, '2022-03-28 06:32:59', '2022-03-28 06:32:59'),
(11, '2', '18', '3', '36000', NULL, '2022-04-02 09:59:57', '2022-04-02 09:59:57'),
(12, '2', '18', '15', '180000', NULL, '2022-04-02 10:29:17', '2022-04-02 10:29:17'),
(13, '3', '19', '3', '36000', NULL, '2022-04-02 11:57:25', '2022-04-02 11:57:25'),
(14, '3', '19', '5', '60000', NULL, '2022-04-02 11:59:30', '2022-04-02 11:59:30'),
(22, '25', '31', '1', '3000', NULL, '2022-06-11 05:28:58', '2022-06-11 05:28:58'),
(23, '4', '31', '1', '12000', NULL, '2022-06-11 05:29:25', '2022-06-11 05:29:25'),
(25, '4', '29', '3', '36000', NULL, '2022-06-11 08:48:46', '2022-06-11 08:48:46'),
(26, '23', '29', '2', '3200', 'si', '2022-06-11 09:34:15', '2022-06-14 22:10:14'),
(27, '13', '29', '5', '4500', NULL, '2022-06-11 09:41:41', '2022-06-11 09:41:41'),
(28, '22', '29', '1', '350', NULL, '2022-06-12 01:24:53', '2022-06-12 01:24:53'),
(29, '33', '29', '1', '12', NULL, '2022-06-12 09:08:45', '2022-06-12 09:08:45'),
(30, '26', '31', '4', '20000', NULL, '2022-06-12 09:19:47', '2022-06-12 09:19:47'),
(31, '12', '35', '1', '5800', 'si', '2022-06-16 05:26:15', '2022-06-16 05:46:12'),
(32, '4', '35', '2', '24000', NULL, '2022-06-16 06:55:55', '2022-06-16 06:55:55'),
(33, '4', '30', '1', '12000', 'si', '2022-06-17 02:01:45', '2022-06-17 02:03:56'),
(34, '6', '30', '1', '14300', 'si', '2022-06-17 02:05:02', '2022-06-17 02:05:31'),
(35, '19', '30', '2', '1200', 'si', '2022-06-17 04:30:27', '2022-06-17 04:31:35'),
(36, '15', '24', '1', '4900', 'si', '2022-06-17 04:38:27', '2022-06-17 04:38:53'),
(37, '26', '24', '2', '10000', 'si', '2022-06-17 04:39:11', '2022-06-17 04:39:29'),
(38, '22', '35', '1', '1', NULL, '2022-06-19 11:30:19', '2022-06-19 11:30:19'),
(39, '43', '36', '1', '1', 'si', '2022-06-22 07:50:13', '2022-06-22 07:53:26'),
(40, '4', '30', '1', '1', 'si', '2022-06-24 00:34:00', '2022-06-24 00:34:29'),
(41, '4', '30', '1', '1', 'si', '2022-06-24 04:18:16', '2022-06-24 04:27:20'),
(42, '4', '37', '1', '1', NULL, '2022-07-09 23:28:26', '2022-07-09 23:28:26'),
(43, '4', '30', '1', '1', 'si', '2022-07-12 03:09:57', '2022-07-12 03:10:43'),
(44, '24', '38', '1', '2000', NULL, '2022-08-02 04:35:30', '2022-08-02 04:35:30'),
(45, '25', '38', '1', '3000', NULL, '2022-08-02 04:36:18', '2022-08-02 04:36:18'),
(46, '5', '40', '1', '8500', NULL, '2022-08-12 23:11:26', '2022-08-12 23:11:26'),
(47, '25', '40', '1', '3000', NULL, '2022-08-13 01:53:25', '2022-08-13 01:53:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `tb_codigo`
--
ALTER TABLE `tb_codigo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_tablas`
--
ALTER TABLE `tb_tablas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_codigo`
--
ALTER TABLE `tb_codigo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tb_tablas`
--
ALTER TABLE `tb_tablas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tb_ventas`
--
ALTER TABLE `tb_ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
