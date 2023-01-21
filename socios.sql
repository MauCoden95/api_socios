-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-01-2023 a las 22:09:50
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api_socios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

DROP TABLE IF EXISTS `socios`;
CREATE TABLE IF NOT EXISTS `socios` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `type` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id`, `name`, `birth`, `address`, `city`, `dni`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Francisco Torres', '1994-12-14', 'Itaqui 120', 'CABA', 38987001, 'Activo Simple', NULL, '2023-01-21 04:04:22'),
(2, 'Luciana Zepeda', '2002-01-09', 'Av. Saenz 980', 'CABA', 30125781, 'Activo Simple', NULL, NULL),
(3, 'Martina Guzman', '1990-05-17', 'Valentin Alsina 1293', 'Lanus', 30121381, 'Activo Pleno', NULL, NULL),
(4, 'Enrique Salgado', '1959-05-22', 'Av. Varela 2300', 'CABA', 25000381, 'Vitalicio', '2023-01-21 03:57:59', '2023-01-21 03:57:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
