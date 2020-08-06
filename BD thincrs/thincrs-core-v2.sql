-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2020 a las 03:59:21
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `thincrs-core-v2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_method`
--

CREATE TABLE `action_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `action` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_rule`
--

CREATE TABLE `action_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `lastname`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 4507, '2020-05-04 17:22:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer`
--

CREATE TABLE `answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `answer` text NOT NULL,
  `qualification` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `answer`, `qualification`, `created_at`, `updated_at`) VALUES
(29, 29, '', 0.25, '2020-05-14 22:55:52', NULL),
(30, 30, '', 0.5, '2020-05-14 22:55:52', NULL),
(31, 31, '', 0.75, '2020-05-14 22:55:52', NULL),
(32, 32, '', 1, '2020-05-14 22:55:52', NULL),
(33, 33, '', 0.25, '2020-05-14 22:55:52', NULL),
(34, 34, '', 0.5, '2020-05-14 22:55:52', NULL),
(35, 35, '', 0.75, '2020-05-14 22:55:52', NULL),
(36, 36, '', 1, '2020-05-14 22:55:52', NULL),
(37, 37, '', 0.25, '2020-05-14 22:55:52', NULL),
(38, 38, '', 0.5, '2020-05-14 22:55:52', NULL),
(39, 39, '', 0.75, '2020-05-14 22:55:52', NULL),
(40, 40, '', 1, '2020-05-14 22:55:52', NULL),
(41, 41, '', 0.25, '2020-05-14 22:55:52', NULL),
(42, 42, '', 0.5, '2020-05-14 22:55:52', NULL),
(44, 44, '', 0.75, '2020-05-14 22:55:52', NULL),
(45, 45, '', 1, '2020-05-14 22:55:52', NULL),
(46, 46, '', 0.25, '2020-05-14 22:55:52', NULL),
(47, 47, '', 0.5, '2020-05-14 22:55:52', NULL),
(48, 48, '', 0.75, '2020-05-14 22:55:52', NULL),
(49, 49, '', 1, '2020-05-14 22:55:52', NULL),
(50, 50, '', 0.25, '2020-05-14 22:55:52', NULL),
(51, 51, '', 0.5, '2020-05-14 22:55:52', NULL),
(52, 52, '', 0.75, '2020-05-14 22:55:52', NULL),
(53, 53, '', 1, '2020-05-14 22:55:52', NULL),
(54, 54, '', 0.25, '2020-05-14 22:55:52', NULL),
(55, 55, '', 0.5, '2020-05-14 22:55:52', NULL),
(56, 56, '', 0.75, '2020-05-14 22:55:52', NULL),
(57, 57, '', 1, '2020-05-14 22:55:52', NULL),
(58, 58, '', 0.25, '2020-05-14 22:55:52', NULL),
(59, 59, '', 0.5, '2020-05-14 22:55:52', NULL),
(60, 60, '', 0.75, '2020-05-14 22:55:52', NULL),
(61, 61, '', 1, '2020-05-14 22:55:52', NULL),
(62, 62, '', 0.25, '2020-05-14 22:55:52', NULL),
(63, 63, '', 0.5, '2020-05-14 22:55:52', NULL),
(64, 64, '', 0.75, '2020-05-14 22:55:52', NULL),
(65, 65, '', 1, '2020-05-14 22:55:52', NULL),
(66, 66, '', 0.25, '2020-05-14 22:55:52', NULL),
(67, 67, '', 0.5, '2020-05-14 22:55:52', NULL),
(68, 68, '', 0.75, '2020-05-14 22:55:52', NULL),
(69, 69, '', 1, '2020-05-14 22:55:52', NULL),
(70, 70, '', 0.25, '2020-05-14 22:55:52', NULL),
(71, 71, '', 0.5, '2020-05-14 22:55:52', NULL),
(72, 72, '', 0.75, '2020-05-14 22:55:52', NULL),
(73, 73, '', 1, '2020-05-14 22:55:52', NULL),
(74, 74, '', 0.25, '2020-05-14 22:55:52', NULL),
(75, 75, '', 0.5, '2020-05-14 22:55:52', NULL),
(76, 76, '', 0.75, '2020-05-14 22:55:52', NULL),
(77, 77, '', 1, '2020-05-14 22:55:52', NULL),
(78, 78, '', 0.25, '2020-05-14 22:55:52', NULL),
(79, 79, '', 0.5, '2020-05-14 22:55:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answer_feedback`
--

CREATE TABLE `answer_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `answer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `available_for`
--

CREATE TABLE `available_for` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidates`
--

CREATE TABLE `candidates` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(11) NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `step` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `discard` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` text DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `color`, `created_at`, `updated_at`) VALUES
(1, 'mobil ', NULL, '#FFD566', '2020-05-06 19:19:32', NULL),
(2, 'js', NULL, '#404140', '2020-05-06 19:21:04', NULL),
(3, 'java', NULL, '#0F2BE1', '2020-05-06 19:21:08', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge`
--

CREATE TABLE `challenge` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `university_id` int(10) UNSIGNED DEFAULT NULL,
  `enterprise_id` int(10) UNSIGNED DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `challenge`
--

INSERT INTO `challenge` (`id`, `admin_id`, `name`, `description`, `position`, `created_at`, `updated_at`, `university_id`, `enterprise_id`, `duration_minutes`) VALUES
(1, 1, 'Interfaz gráfica navegable ', 'Descripcion:  Interfaz gráfica navegable ', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(2, 1, 'Versión interactiva del aplicativo móvil', 'Descripcion:  Versión interactiva del aplicativo móvil', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(3, 1, 'Sincronización de datos', 'Descripcion:  Sincronización de datos', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(4, 1, 'Sistema de notificaciones', 'Descripcion:  Sistema de notificaciones', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(5, 1, 'Publicación del aplicativo', 'Descripcion:  Publicación del aplicativo', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(6, 1, 'Correcto funcionamiento de endpoint  de recepción de datos', 'Descripcion:  Correcto funcionamiento de endpoint  de recepción de datos\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(7, 1, '\nMódulo de consulta de datos general y reutilizable\n', 'Descripcion:  Módulo de consulta de datos general y reutilizable\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(8, 1, 'Desarrollo de módulo de edición segura', 'Descripcion:  Desarrollo de módulo de edición segura\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(9, 1, '\nDesarrollo de interfaz de administración\n', 'Descripcion:  Desarrollo de interfaz de administración\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(10, 1, 'Implementación y configuración de plataforma de reporteo.', 'Descripcion:  Implementación y configuración de plataforma de reporteo.\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(11, 1, '\nPlanificación e implementación de la estructura de un portal web\n', 'Descripcion:  Planificación e implementación de la estructura de un portal web\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(12, 1, '\nImplementación de la navegación y validaciones del lado del cliente.\n', 'Descripcion:  Implementación de la navegación y validaciones del lado del cliente.\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(13, 1, '\nImplementación de acceso a servicios por interface REST\n', 'Descripcion:  Implementación de acceso a servicios por interface REST\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(14, 1, '\nIntegración de módulos de servidor e interfaz de usuario\n', 'Descripcion:  Integración de módulos de servidor e interfaz de usuario\n', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL),
(15, 1, 'Implementación de pruebas unitarias y de integración tanto del servidor como del cliente', 'Descripcion:  Implementación de pruebas unitarias y de integración tanto del servidor como del cliente', 0, '2020-05-06 21:03:53', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge_competence`
--

CREATE TABLE `challenge_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` float DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `challenge_competence`
--

INSERT INTO `challenge_competence` (`id`, `competence_id`, `challenge_id`, `created_at`, `updated_at`, `weight`) VALUES
(1, 1, 1, '2020-05-06 22:20:33', NULL, 1),
(2, 2, 2, '2020-05-06 22:20:33', NULL, 1),
(3, 3, 3, '2020-05-06 22:20:33', NULL, 1),
(4, 4, 4, '2020-05-06 22:20:33', NULL, 1),
(5, 5, 5, '2020-05-06 22:20:33', NULL, 1),
(6, 6, 6, '2020-05-22 02:26:05', NULL, 2),
(7, 7, 7, '2020-05-22 02:26:13', NULL, 2),
(8, 8, 8, '2020-05-22 02:26:20', NULL, 2),
(9, 9, 9, '2020-05-22 02:26:25', NULL, 2),
(10, 10, 10, '2020-05-22 02:26:31', NULL, 2),
(11, 11, 11, '2020-05-22 02:27:23', NULL, 3),
(12, 12, 12, '2020-05-22 02:27:59', NULL, 3),
(13, 13, 13, '2020-05-22 02:28:04', NULL, 3),
(14, 14, 14, '2020-05-22 02:28:08', NULL, 3),
(15, 15, 15, '2020-05-22 02:28:14', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge_extra`
--

CREATE TABLE `challenge_extra` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge_level`
--

CREATE TABLE `challenge_level` (
  `id` int(10) NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `min_score` float NOT NULL,
  `max_score` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge_rubric`
--

CREATE TABLE `challenge_rubric` (
  `id` int(10) UNSIGNED NOT NULL,
  `rubric_id` int(10) UNSIGNED NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `feedback` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `challenge_rubric`
--

INSERT INTO `challenge_rubric` (`id`, `rubric_id`, `challenge_id`, `value`, `feedback`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2', '2020-05-06 21:20:55', NULL),
(2, 2, 1, 1, '2', '2020-05-06 21:20:55', NULL),
(3, 3, 1, 1, '2', '2020-05-06 21:20:55', NULL),
(4, 4, 2, 1, '2', '2020-05-06 21:20:55', NULL),
(5, 5, 2, 1, '2', '2020-05-06 21:20:55', NULL),
(6, 6, 2, 1, '2', '2020-05-06 21:20:55', NULL),
(7, 7, 3, 1, '2', '2020-05-06 21:20:55', NULL),
(8, 8, 3, 1, '2', '2020-05-06 21:20:55', NULL),
(9, 9, 3, 1, '2', '2020-05-06 21:20:55', NULL),
(10, 10, 4, 1, '2', '2020-05-06 21:20:55', NULL),
(11, 11, 4, 1, '2', '2020-05-06 21:20:55', NULL),
(12, 12, 4, 1, '2', '2020-05-06 21:20:55', NULL),
(13, 13, 5, 1, '2', '2020-05-06 21:20:55', NULL),
(14, 14, 5, 1, '2', '2020-05-06 21:20:55', NULL),
(15, 15, 5, 1, '2', '2020-05-06 21:20:55', NULL),
(16, 16, 6, 1, '2', '2020-05-06 21:20:55', NULL),
(17, 17, 6, 1, '2', '2020-05-06 21:20:55', NULL),
(18, 18, 6, 1, '2', '2020-05-06 21:20:55', NULL),
(19, 19, 7, 1, '2', '2020-05-06 21:20:55', NULL),
(20, 20, 7, 1, '2', '2020-05-06 21:20:55', NULL),
(21, 21, 7, 1, '2', '2020-05-06 21:20:55', NULL),
(22, 22, 8, 1, '2', '2020-05-06 21:20:55', NULL),
(23, 23, 8, 1, '2', '2020-05-06 21:20:55', NULL),
(24, 24, 8, 1, '2', '2020-05-06 21:20:55', NULL),
(25, 25, 9, 1, '2', '2020-05-06 21:20:55', NULL),
(26, 26, 9, 1, '2', '2020-05-06 21:20:55', NULL),
(27, 27, 9, 1, '2', '2020-05-06 21:20:55', NULL),
(28, 28, 10, 1, '2', '2020-05-06 21:20:55', NULL),
(29, 29, 10, 1, '2', '2020-05-06 21:20:55', NULL),
(30, 30, 10, 1, '2', '2020-05-06 21:20:55', NULL),
(31, 31, 11, 1, '2', '2020-05-06 21:20:55', NULL),
(32, 32, 11, 1, '2', '2020-05-06 21:20:55', NULL),
(33, 33, 11, 1, '2', '2020-05-06 21:20:55', NULL),
(34, 34, 12, 1, '2', '2020-05-06 21:20:55', NULL),
(35, 35, 12, 1, '2', '2020-05-06 21:20:55', NULL),
(36, 36, 12, 1, '2', '2020-05-06 21:20:55', NULL),
(37, 37, 13, 1, '2', '2020-05-06 21:20:55', NULL),
(38, 38, 13, 1, '2', '2020-05-06 21:20:55', NULL),
(39, 39, 13, 1, '2', '2020-05-06 21:20:55', NULL),
(40, 40, 14, 1, '2', '2020-05-06 21:20:55', NULL),
(41, 41, 14, 1, '2', '2020-05-06 21:20:55', NULL),
(42, 42, 14, 1, '2', '2020-05-06 21:20:55', NULL),
(43, 43, 15, 1, '2', '2020-05-06 21:20:55', NULL),
(44, 44, 15, 1, '2', '2020-05-06 21:20:55', NULL),
(45, 45, 15, 1, '2', '2020-05-06 21:20:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `challenge_variable`
--

CREATE TABLE `challenge_variable` (
  `id` int(10) UNSIGNED NOT NULL,
  `challenge_id` int(10) UNSIGNED DEFAULT NULL,
  `variable_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id`, `name`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'Aguscalientes', '2020-04-30 22:13:23', '2020-04-30 22:12:49', 1),
(2, 'Las vegas', '2020-04-30 22:14:40', '2020-04-30 22:13:30', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `type_user` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competence`
--

CREATE TABLE `competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `competence`
--

INSERT INTO `competence` (`id`, `admin_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Interfaz gráfica navegable ', 'Se creará la estructura de la aplicación que contenga los menús y las secciones para dar atención a la ciudadanía. Esto se creará en base a un maquetado previo.', '2020-05-11 00:51:20', NULL),
(2, 1, 'Versión interactiva del aplicativo móvil', '\nSe agregarán los campos necesarios para introducir información y mostrarla, guardadas localmente. Además se crearán validaciones por cada campo.\n', '2020-05-11 00:51:27', NULL),
(3, 1, 'Sincronización de datos', 'Los datos serán enviados y recibidos una vez que la aplicación cuente con internet. Se conectará a endpoints de los cuáles también se desarrollará la lógica. También se implementará el login.', '2020-05-11 00:51:59', NULL),
(4, 1, 'Sistema de notificaciones', '\nLa plataforma informará cada que una orden está siendo procesada y el estatus de cada etapa por notificaciones push.\n', '2020-05-11 00:52:16', NULL),
(5, 1, 'Publicación del aplicativo', '\nSe dará de alta la aplicación en la app store en la cuál se quiera tener publica.\n', '2020-05-11 00:52:30', NULL),
(6, 1, 'Correcto funcionamiento de endpoint  de recepción de datos\r\n', '\nSe creará un servicio web que recibe los datos de la solicitud, los valida y los guarda en base de datos.\n', '2020-05-11 00:56:51', NULL),
(7, 1, 'Módulo de consulta de datos general y reutilizable', '\nSe creará servicio web capaz de extraer información con modificadores que permiten traer la información depurada.\n', '2020-05-11 00:57:07', NULL),
(8, 1, 'Desarrollo de módulo de edición segura.\r\n', '\nSe creará servicio web que conforme a los privilegios y reglas de cada entidad de datos, sea capaz de editar, borrar y activar alertas de valores límites.\n', '2020-05-11 00:57:32', NULL),
(9, 1, 'Desarrollo de interfaz de administración', '\nSe creará una interfaz administrativa para funcionarios de ciudades inteligentes para visualizar y actualizar el estatus de las peticiones ciudadanas.\n', '2020-05-11 00:58:01', NULL),
(10, 1, '\r\nImplementación y configuración de plataforma de reporteo.', '\nPara cada uno de los servicios ofrecidos por la ciudad inteligente se podrán generar reportes ejecutivos a la medida y podrán ser mostrados con gráficos.\n', '2020-05-11 00:58:13', NULL),
(11, 1, 'Planificación e implementación de la estructura de un portal web', '\nDurante esta etapa se desarrollará un prototipo que estructura la aplicación posicionando los elementos gráficos (controles e imagenes) y secciones de la aplicación (menús, paneles, ventanas)\n', '2020-05-11 01:03:42', NULL),
(12, 1, 'Implementación de la navegación y validaciones del lado del cliente.', '\nPor medio de código Javascript/TypeScript se implementarán las navegación de la aplicación y la validación de campos.\n', '2020-05-11 01:03:25', NULL),
(13, 1, '\r\nImplementación de acceso a servicios por interface REST', '\nDesarrollo de los módulos de consulta de información y almacenamiento de datos en el lado del servidor.\n', '2020-05-11 01:03:12', NULL),
(14, 1, '\r\nIntegración de módulos de servidor e interfaz de usuario', '\nIntegración de los módulos del cliente de búsqueda y solicitud de atención con la interfaz web.\n', '2020-05-11 01:02:13', NULL),
(15, 1, '\r\nImplementación de pruebas unitarias y de integración tanto del servidor como del cliente\r\n', '\nDesarrollo de pruebas unitarias y de integración tanto del módulo del cliente como del servidor.\n', '2020-05-11 01:02:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinator`
--

CREATE TABLE `coordinator` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `university_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Mexico'),
(2, 'Estados unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oss_project` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT 1,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 0,
  `course_type_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `duration_minutes` int(11) NOT NULL DEFAULT 1,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id`, `admin_id`, `name`, `short_name`, `oss_project`, `created_at`, `updated_at`, `version`, `description`, `summary`, `visible`, `course_type_id`, `category_id`, `duration_minutes`, `start_date`, `end_date`) VALUES
(1, 1, '\nAplicación de atención ciudadana\n', '', '', '2020-05-06 19:28:42', NULL, 1, '\nCrearemos de inicio a fin una aplicación móvil que permita que los ciudadanos se comuniquen con su gobierno y generen solicitudes de atención a los servicios que el gobierno ofrece.\n', 'Las ciudades requieren de soluciones tecnológicas para dar una atención oportuna y eficiente a las problemáticas cotidianas. Es por ello que la implementación de soluciones de atención ciudadana que comenzaron siendo telefónicos ya estén presentes en plataformas digitales con estándares abiertos para el análisis de la información obtenida. Bajo este contexto, las ciudades se ven beneficiadas de expertos en múltiples ramas de la tecnología, para este reto nos enfocaremos en el desarrollo de plataformas móviles.', 0, 1, 1, 1, NULL, NULL),
(2, 1, 'Sistema de operación de Ciudades Inteligentes', '', '', '2020-05-06 19:28:42', NULL, 1, '\nSe desarrollará un sistema interno de gestión de ciudades inteligentes en el cual será posible llevar el control de las solicitudes de atención enviadas por los ciudadanos.\n', '\nLas ciudades requieren de soluciones tecnológicas para dar una atención oportuna y eficiente a las problemáticas cotidianas. Es por ello que la implementación de soluciones de atención ciudadana que comenzaron siendo telefónicos ya estén presentes en plataformas digitales con estándares abiertos para el análisis de la información obtenida. Bajo este contexto, las ciudades se ven beneficiadas de expertos en múltiples ramas de la tecnología, para este reto nos enfocaremos en Programación en Java.\n', 0, 1, 3, 1, NULL, NULL),
(3, 1, '\nDesarrollo de Web App de atención ciudadana\n', '', '', '2020-05-06 19:28:42', NULL, 1, '\nAplicación web que permite a un ciudadano, registrarse, acceder, consultar información, hacer una solicitud y ver el estatus de su solicitud.\n', '\nLas ciudades requieren de soluciones tecnológicas para dar una atención oportuna y eficiente a las problemáticas cotidianas. Es por ello que la implementación de soluciones de atención ciudadana que comenzaron siendo telefónicos ya estén presentes en plataformas digitales con estándares abiertos para el análisis de la información obtenida. Bajo este contexto, las ciudades se ven beneficiadas de expertos en múltiples ramas de la tecnología, para este reto nos enfocaremos en Javascript.\n', 0, 1, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_challenge_order`
--

CREATE TABLE `course_challenge_order` (
  `id` int(11) NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `course_challenge_order`
--

INSERT INTO `course_challenge_order` (`id`, `course_id`, `challenge_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-05-06 22:32:36', NULL),
(2, 1, 2, 2, '2020-05-06 22:32:36', NULL),
(3, 1, 3, 3, '2020-05-06 22:32:36', NULL),
(4, 1, 4, 4, '2020-05-06 22:32:36', NULL),
(5, 1, 5, 5, '2020-05-06 22:32:36', NULL),
(6, 3, 6, 6, '2020-05-06 22:32:36', NULL),
(7, 3, 7, 7, '2020-05-06 22:32:36', NULL),
(8, 3, 8, 8, '2020-05-06 22:32:36', NULL),
(9, 3, 9, 9, '2020-05-06 22:32:36', NULL),
(10, 3, 10, 10, '2020-05-06 22:32:36', NULL),
(11, 2, 11, 11, '2020-05-06 22:32:36', NULL),
(12, 2, 12, 12, '2020-05-06 22:32:36', NULL),
(13, 2, 13, 13, '2020-05-06 22:32:36', NULL),
(14, 2, 14, 14, '2020-05-06 22:32:36', NULL),
(15, 2, 15, 15, '2020-05-06 22:32:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_competence`
--

CREATE TABLE `course_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `course_competence`
--

INSERT INTO `course_competence` (`id`, `competence_id`, `course_id`, `created_at`, `updated_at`, `weight`) VALUES
(1, 1, 1, '2020-05-22 06:28:54', NULL, 0.5),
(2, 2, 1, '2020-05-22 06:29:02', NULL, 0.09),
(3, 3, 1, '2020-05-22 06:29:09', NULL, 0.11),
(4, 4, 1, '2020-05-22 06:29:20', NULL, 0.14),
(5, 5, 1, '2020-05-22 06:29:31', NULL, 0.16),
(6, 6, 2, '2020-05-22 06:26:55', NULL, 0.2),
(7, 7, 2, '2020-05-22 06:26:51', NULL, 0.5),
(8, 8, 2, '2020-05-22 06:26:46', NULL, 0.03),
(9, 9, 2, '2020-05-22 06:26:40', NULL, 0.12),
(10, 10, 2, '2020-05-22 06:26:33', NULL, 0.15),
(11, 11, 3, '2020-05-22 06:10:20', NULL, 0.04),
(12, 12, 3, '2020-05-22 06:10:26', NULL, 0.06),
(13, 13, 3, '2020-05-22 06:09:59', NULL, 0.1),
(14, 14, 3, '2020-05-22 06:09:42', NULL, 0.6),
(15, 15, 3, '2020-05-22 06:09:16', NULL, 0.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_evaluator`
--

CREATE TABLE `course_evaluator` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluator_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_topic`
--

CREATE TABLE `course_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `duration_minutes` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_tracing_under`
--

CREATE TABLE `course_tracing_under` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_type`
--

CREATE TABLE `course_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'program', '2020-05-06 14:37:46', NULL),
(4, 'certification', '2020-05-06 14:37:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `detail` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_variable`
--

CREATE TABLE `custom_variable` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_competence_challenge_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(160) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise`
--

CREATE TABLE `enterprise` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_talents` int(11) NOT NULL DEFAULT 0,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_six_month` int(11) DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acknowledgments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area_id` int(11) DEFAULT 0,
  `personal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wepowSubdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_customer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise_areas`
--

CREATE TABLE `enterprise_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise_members`
--

CREATE TABLE `enterprise_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enterprise_subscription`
--

CREATE TABLE `enterprise_subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(10) UNSIGNED DEFAULT NULL,
  `stripe_subscription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `description` longtext DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `limit_time` int(11) NOT NULL DEFAULT 0,
  `min_score` float NOT NULL DEFAULT 0,
  `max_intents` int(11) NOT NULL DEFAULT 1,
  `random` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration_minutes` int(11) NOT NULL DEFAULT 1,
  `evaluation_type_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation`
--

INSERT INTO `evaluation` (`id`, `admin_id`, `name`, `description`, `instructions`, `start_date`, `end_date`, `limit_time`, `min_score`, `max_intents`, `random`, `created_at`, `updated_at`, `duration_minutes`, `evaluation_type_id`) VALUES
(1, 1, 'Geografía', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus e', NULL, NULL, NULL, 0, 60, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(5, 1, 'Fragments', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(6, 1, 'Digcomp 2.1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(8, 1, 'Gestión de Información', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(9, 1, 'Comunicación y colaboración en ambientes virtuales', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(10, 1, 'Creación de contenido digital', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(11, 1, 'Seguridad digital', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque convallis molestie euismod. Aenean elementum pellentesque risus sit amet maximus. Ut mattis arcu ex, nec aliquam ex sodales nec. Pellentesque ut maximus ex. Aliquam pulvinar auctor augue, n...', NULL, NULL, NULL, 0, 60, 3, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(12, 1, 'Resolución de problemas en entornos virtuales', '', NULL, NULL, NULL, 0, 60, 3, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(13, 1, 'Digcomp 2.1', '', NULL, NULL, NULL, 0, 60, 3, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(14, 1, 'Diseño de la aplicación de comunicación y la disposición de la interfaz gráfica', '', NULL, NULL, NULL, 0, 8, 2, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(15, 1, 'Desarrollo de las funcionalidades del cliente.', '', NULL, NULL, NULL, 0, 8, 2, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(16, 1, 'Administración de usuarios', '', NULL, NULL, NULL, 0, 1, 3, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(17, 1, 'Optimización de la aplicación y funcionalidades', '', NULL, NULL, NULL, 0, 10, 3, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(18, 1, 'Implementación Cliente-Servidor', '', NULL, NULL, NULL, 0, 7, 2, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(19, 1, 'Full Stack', '', NULL, NULL, NULL, 0, 5, 1, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(20, 1, 'Data Visualization', 'evaluacion de fragmentos', NULL, NULL, NULL, 0, 5, 2, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(21, 1, 'Data Science', 'El examen de certificación de THINCRS-DIGCOMP fue desarrollado como una manera de evaluar las competencias digitales descritas en el Marco de Trabajo Europeo DIGCOMP en su versión 2.1, con base en el nivel de desempeño que posee una persona.', NULL, NULL, NULL, 0, 1, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(22, 1, 'Artificial Intelligence', 'Conoce tus habilidades', NULL, NULL, NULL, 0, 1, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(23, 1, 'Mobile Development', 'Conoce tus habilidades', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(24, 1, 'SQL Server', 'Conoce tus habilidades', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(25, 1, 'UI Designer', 'Conoce tus habilidades', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(26, 1, 'Customer Care', 'Conoce tus habilidades', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(27, 1, 'Digital Marketing', 'En este curso aprenderemos a fondo el lenguaje de programación de Java, lo que le da mucho valor a este curso es que vas a aprender lo que las empresas requieren día a día. Es común que en las escuelas el uso de ejemplos que no se usarán en la vida ...', NULL, NULL, NULL, 0, 2, 1, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(28, 1, 'SEO', 'Descripcion', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(29, 1, 'Graphic', 'Descripcion', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(30, 1, 'Administración de usuarios', 'Descripcion', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(31, 1, 'Optimización de la aplicación y funcionalidades', 'Descripcion', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(32, 1, 'Implementación Cliente-Servidor', 'Descripcion', NULL, NULL, NULL, 0, 2, 4, 1, '0000-00-00 00:00:00', NULL, 1, 1),
(33, 1, 'Full Stack', 'En esta evaluación validaremos tus conocimientos de programación', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(34, 1, 'Data Visualization', 'Evaluación de diagnóstico para data visualization', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(35, 1, 'Data Science', 'Evaluación de diagnóstico para Data Science', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(36, 1, 'Artificial Intelligence', 'Evaluación de diagnóstico para Artificial Intelligence', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(37, 1, 'Mobile Development', 'Evaluación de diagnóstico para Mobile Development', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(38, 1, 'SQL Server', 'Evaluación de diagnóstico para SQL Server', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(39, 1, 'UI Designer', 'Evaluación de diagnóstico para UI Designer', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(40, 1, 'Customer Care', 'Evaluación de diagnóstico para Customer Care', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(41, 1, 'Digital Marketing', 'Evaluación de diagnóstico para Digital Marketing', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(42, 1, 'SEO', 'Evaluación de diagnóstico para SEO', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2),
(43, 1, 'Graphic', 'Evaluación de diagnóstico para Graphic', NULL, NULL, NULL, 0, 2, 100, 1, '0000-00-00 00:00:00', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_category`
--

CREATE TABLE `evaluation_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_evaluation_competence_id` int(10) UNSIGNED NOT NULL,
  `question_category_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_category`
--

INSERT INTO `evaluation_category` (`id`, `talent_evaluation_competence_id`, `question_category_id`, `weight`, `created_at`, `updated_at`) VALUES
(13663, 1, 9, 2, '2020-05-20 21:54:53', NULL),
(13664, 1, 10, 9, '2020-05-20 21:54:53', NULL),
(13665, 1, 8, 5, '2020-05-20 21:54:53', NULL),
(13666, 2, 9, 2, '2020-05-20 21:54:53', NULL),
(13667, 2, 10, 9, '2020-05-20 21:54:53', NULL),
(13668, 2, 8, 5, '2020-05-20 21:54:53', NULL),
(13669, 3, 8, 5, '2020-05-20 21:54:53', NULL),
(13670, 3, 10, 9, '2020-05-20 21:54:53', NULL),
(13671, 3, 12, 3, '2020-05-20 21:54:53', NULL),
(13672, 4, 10, 9, '2020-05-20 21:54:53', NULL),
(13673, 4, 13, 8, '2020-05-20 21:54:53', NULL),
(13674, 4, 12, 3, '2020-05-20 21:54:53', NULL),
(13675, 5, 9, 2, '2020-05-20 21:54:53', NULL),
(13676, 5, 11, 4, '2020-05-20 21:54:53', NULL),
(13677, 5, 11, 4, '2020-05-20 21:54:53', NULL),
(13678, 6, 9, 2, '2020-05-20 21:54:53', NULL),
(13679, 6, 10, 9, '2020-05-20 21:54:53', NULL),
(13680, 6, 8, 5, '2020-05-20 21:54:53', NULL),
(13681, 7, 9, 2, '2020-05-20 21:54:53', NULL),
(13682, 7, 10, 9, '2020-05-20 21:54:53', NULL),
(13683, 7, 8, 5, '2020-05-20 21:54:53', NULL),
(13684, 8, 8, 5, '2020-05-20 21:54:53', NULL),
(13685, 8, 10, 9, '2020-05-20 21:54:53', NULL),
(13686, 8, 12, 3, '2020-05-20 21:54:53', NULL),
(13687, 9, 10, 9, '2020-05-20 21:54:53', NULL),
(13688, 9, 13, 8, '2020-05-20 21:54:53', NULL),
(13689, 9, 12, 3, '2020-05-20 21:54:53', NULL),
(13690, 11, 9, 2, '2020-05-20 21:54:53', NULL),
(13691, 11, 10, 9, '2020-05-20 21:54:53', NULL),
(13692, 11, 8, 5, '2020-05-20 21:54:53', NULL),
(13693, 12, 9, 2, '2020-05-20 21:54:53', NULL),
(13694, 12, 10, 9, '2020-05-20 21:54:53', NULL),
(13695, 12, 8, 5, '2020-05-20 21:54:53', NULL),
(13696, 13, 8, 5, '2020-05-20 21:54:53', NULL),
(13697, 13, 10, 9, '2020-05-20 21:54:53', NULL),
(13698, 13, 12, 3, '2020-05-20 21:54:53', NULL),
(13699, 15, 9, 2, '2020-05-20 21:54:53', NULL),
(13700, 15, 11, 4, '2020-05-20 21:54:53', NULL),
(13701, 15, 11, 4, '2020-05-20 21:54:53', NULL),
(13702, 16, 9, 2, '2020-05-20 21:54:53', NULL),
(13703, 16, 10, 9, '2020-05-20 21:54:53', NULL),
(13704, 16, 8, 5, '2020-05-20 21:54:53', NULL),
(13705, 17, 9, 2, '2020-05-20 21:54:53', NULL),
(13706, 17, 10, 9, '2020-05-20 21:54:53', NULL),
(13707, 17, 8, 5, '2020-05-20 21:54:53', NULL),
(13708, 19, 10, 9, '2020-05-20 21:54:53', NULL),
(13709, 19, 13, 8, '2020-05-20 21:54:53', NULL),
(13710, 19, 12, 3, '2020-05-20 21:54:53', NULL),
(13711, 20, 9, 2, '2020-05-20 21:54:53', NULL),
(13712, 20, 11, 4, '2020-05-20 21:54:53', NULL),
(13713, 20, 11, 4, '2020-05-20 21:54:53', NULL),
(13714, 21, 9, 2, '2020-05-20 21:54:53', NULL),
(13715, 21, 10, 9, '2020-05-20 21:54:53', NULL),
(13716, 21, 8, 5, '2020-05-20 21:54:53', NULL),
(13717, 23, 11, 4, '2020-05-20 21:54:53', NULL),
(13718, 23, 11, 4, '2020-05-20 21:54:53', NULL),
(13719, 23, 11, 4, '2020-05-20 21:54:53', NULL),
(13720, 24, 10, 9, '2020-05-20 21:54:53', NULL),
(13721, 24, 13, 8, '2020-05-20 21:54:53', NULL),
(13722, 24, 12, 3, '2020-05-20 21:54:53', NULL),
(13723, 25, 9, 2, '2020-05-20 21:54:53', NULL),
(13724, 25, 11, 4, '2020-05-20 21:54:53', NULL),
(13725, 25, 11, 4, '2020-05-20 21:54:53', NULL),
(13726, 27, 9, 2, '2020-05-20 21:54:53', NULL),
(13727, 27, 10, 9, '2020-05-20 21:54:53', NULL),
(13728, 27, 8, 5, '2020-05-20 21:54:53', NULL),
(13729, 28, 11, 4, '2020-05-20 21:54:53', NULL),
(13730, 28, 11, 4, '2020-05-20 21:54:53', NULL),
(13731, 28, 11, 4, '2020-05-20 21:54:53', NULL),
(13732, 29, 10, 9, '2020-05-20 21:54:53', NULL),
(13733, 29, 13, 8, '2020-05-20 21:54:53', NULL),
(13734, 29, 12, 3, '2020-05-20 21:54:53', NULL),
(13735, 30, 9, 2, '2020-05-20 21:54:53', NULL),
(13736, 30, 11, 4, '2020-05-20 21:54:53', NULL),
(13737, 30, 11, 4, '2020-05-20 21:54:53', NULL),
(13738, 32, 9, 2, '2020-05-20 21:54:53', NULL),
(13739, 32, 10, 9, '2020-05-20 21:54:53', NULL),
(13740, 32, 8, 5, '2020-05-20 21:54:53', NULL),
(13741, 33, 11, 4, '2020-05-20 21:54:53', NULL),
(13742, 33, 11, 4, '2020-05-20 21:54:53', NULL),
(13743, 33, 11, 4, '2020-05-20 21:54:53', NULL),
(13744, 34, 10, 9, '2020-05-20 21:54:53', NULL),
(13745, 34, 13, 8, '2020-05-20 21:54:53', NULL),
(13746, 34, 12, 3, '2020-05-20 21:54:53', NULL),
(13747, 37, 13, 8, '2020-05-20 21:54:53', NULL),
(13748, 37, 8, 5, '2020-05-20 21:54:53', NULL),
(13749, 37, 8, 5, '2020-05-20 21:54:53', NULL),
(13750, 38, 12, 3, '2020-05-20 21:54:53', NULL),
(13751, 38, 11, 4, '2020-05-20 21:54:53', NULL),
(13752, 38, 8, 5, '2020-05-20 21:54:53', NULL),
(13753, 40, 9, 2, '2020-05-20 21:54:53', NULL),
(13754, 40, 12, 3, '2020-05-20 21:54:53', NULL),
(13755, 40, 9, 2, '2020-05-20 21:54:53', NULL),
(13756, 43, 12, 3, '2020-05-20 21:54:53', NULL),
(13757, 43, 11, 4, '2020-05-20 21:54:53', NULL),
(13758, 43, 8, 5, '2020-05-20 21:54:53', NULL),
(13759, 44, 12, 3, '2020-05-20 21:54:53', NULL),
(13760, 44, 9, 2, '2020-05-20 21:54:53', NULL),
(13761, 44, 10, 9, '2020-05-20 21:54:53', NULL),
(13762, 45, 9, 2, '2020-05-20 21:54:53', NULL),
(13763, 45, 12, 3, '2020-05-20 21:54:53', NULL),
(13764, 45, 9, 2, '2020-05-20 21:54:53', NULL),
(13765, 47, 13, 8, '2020-05-20 21:54:53', NULL),
(13766, 47, 8, 5, '2020-05-20 21:54:53', NULL),
(13767, 47, 8, 5, '2020-05-20 21:54:53', NULL),
(13768, 49, 12, 3, '2020-05-20 21:54:53', NULL),
(13769, 49, 9, 2, '2020-05-20 21:54:53', NULL),
(13770, 49, 10, 9, '2020-05-20 21:54:53', NULL),
(13771, 50, 9, 2, '2020-05-20 21:54:53', NULL),
(13772, 50, 12, 3, '2020-05-20 21:54:53', NULL),
(13773, 50, 9, 2, '2020-05-20 21:54:53', NULL),
(13774, 51, 8, 5, '2020-05-20 21:54:53', NULL),
(13775, 51, 13, 8, '2020-05-20 21:54:53', NULL),
(13776, 51, 13, 8, '2020-05-20 21:54:53', NULL),
(13777, 53, 12, 3, '2020-05-20 21:54:53', NULL),
(13778, 53, 11, 4, '2020-05-20 21:54:53', NULL),
(13779, 53, 8, 5, '2020-05-20 21:54:53', NULL),
(13780, 54, 12, 3, '2020-05-20 21:54:53', NULL),
(13781, 54, 9, 2, '2020-05-20 21:54:53', NULL),
(13782, 54, 10, 9, '2020-05-20 21:54:53', NULL),
(13783, 56, 8, 5, '2020-05-20 21:54:53', NULL),
(13784, 56, 13, 8, '2020-05-20 21:54:53', NULL),
(13785, 56, 13, 8, '2020-05-20 21:54:53', NULL),
(13786, 57, 13, 8, '2020-05-20 21:54:53', NULL),
(13787, 57, 8, 5, '2020-05-20 21:54:53', NULL),
(13788, 57, 8, 5, '2020-05-20 21:54:53', NULL),
(13789, 58, 12, 3, '2020-05-20 21:54:53', NULL),
(13790, 58, 11, 4, '2020-05-20 21:54:53', NULL),
(13791, 58, 8, 5, '2020-05-20 21:54:53', NULL),
(13792, 59, 12, 3, '2020-05-20 21:54:53', NULL),
(13793, 59, 9, 2, '2020-05-20 21:54:53', NULL),
(13794, 59, 10, 9, '2020-05-20 21:54:53', NULL),
(13795, 60, 9, 2, '2020-05-20 21:54:53', NULL),
(13796, 60, 12, 3, '2020-05-20 21:54:53', NULL),
(13797, 60, 9, 2, '2020-05-20 21:54:53', NULL),
(13798, 63, 12, 3, '2020-05-20 21:54:53', NULL),
(13799, 63, 11, 4, '2020-05-20 21:54:53', NULL),
(13800, 63, 8, 5, '2020-05-20 21:54:54', NULL),
(13801, 65, 9, 2, '2020-05-20 21:54:54', NULL),
(13802, 65, 12, 3, '2020-05-20 21:54:54', NULL),
(13803, 65, 9, 2, '2020-05-20 21:54:54', NULL),
(13804, 66, 12, 3, '2020-05-20 21:54:54', NULL),
(13805, 66, 8, 5, '2020-05-20 21:54:54', NULL),
(13806, 66, 8, 5, '2020-05-20 21:54:54', NULL),
(13807, 70, 9, 2, '2020-05-20 21:54:54', NULL),
(13808, 70, 12, 3, '2020-05-20 21:54:54', NULL),
(13809, 70, 9, 2, '2020-05-20 21:54:54', NULL),
(13810, 71, 12, 3, '2020-05-20 21:54:54', NULL),
(13811, 71, 8, 5, '2020-05-20 21:54:54', NULL),
(13812, 71, 8, 5, '2020-05-20 21:54:54', NULL),
(13813, 72, 12, 3, '2020-05-20 21:54:54', NULL),
(13814, 72, 8, 5, '2020-05-20 21:54:54', NULL),
(13815, 72, 8, 5, '2020-05-20 21:54:54', NULL),
(13816, 78, 12, 3, '2020-05-20 21:54:54', NULL),
(13817, 78, 11, 4, '2020-05-20 21:54:54', NULL),
(13818, 78, 8, 5, '2020-05-20 21:54:54', NULL),
(13819, 79, 12, 3, '2020-05-20 21:54:54', NULL),
(13820, 79, 9, 2, '2020-05-20 21:54:54', NULL),
(13821, 79, 10, 9, '2020-05-20 21:54:54', NULL),
(13822, 81, 12, 3, '2020-05-20 21:54:54', NULL),
(13823, 81, 8, 5, '2020-05-20 21:54:54', NULL),
(13824, 81, 8, 5, '2020-05-20 21:54:54', NULL),
(13825, 82, 12, 3, '2020-05-20 21:54:54', NULL),
(13826, 82, 8, 5, '2020-05-20 21:54:54', NULL),
(13827, 82, 8, 5, '2020-05-20 21:54:54', NULL),
(13828, 83, 12, 3, '2020-05-20 21:54:54', NULL),
(13829, 83, 11, 4, '2020-05-20 21:54:54', NULL),
(13830, 83, 8, 5, '2020-05-20 21:54:54', NULL),
(13831, 85, 9, 2, '2020-05-20 21:54:54', NULL),
(13832, 85, 12, 3, '2020-05-20 21:54:54', NULL),
(13833, 85, 9, 2, '2020-05-20 21:54:54', NULL),
(13834, 87, 12, 3, '2020-05-20 21:54:54', NULL),
(13835, 87, 8, 5, '2020-05-20 21:54:54', NULL),
(13836, 87, 8, 5, '2020-05-20 21:54:54', NULL),
(13837, 89, 12, 3, '2020-05-20 21:54:54', NULL),
(13838, 89, 9, 2, '2020-05-20 21:54:54', NULL),
(13839, 89, 10, 9, '2020-05-20 21:54:54', NULL),
(13840, 92, 12, 3, '2020-05-20 21:54:54', NULL),
(13841, 92, 8, 5, '2020-05-20 21:54:54', NULL),
(13842, 92, 8, 5, '2020-05-20 21:54:54', NULL),
(13843, 94, 12, 3, '2020-05-20 21:54:54', NULL),
(13844, 94, 9, 2, '2020-05-20 21:54:54', NULL),
(13845, 94, 10, 9, '2020-05-20 21:54:54', NULL),
(13846, 96, 12, 3, '2020-05-20 21:54:54', NULL),
(13847, 96, 8, 5, '2020-05-20 21:54:54', NULL),
(13848, 97, 8, 5, '2020-05-20 21:54:54', NULL),
(13849, 100, 9, 2, '2020-05-20 21:54:54', NULL),
(13850, 100, 12, 3, '2020-05-20 21:54:54', NULL),
(13851, 100, 9, 2, '2020-05-20 21:54:54', NULL),
(13852, 101, 12, 3, '2020-05-20 21:54:54', NULL),
(13853, 101, 8, 5, '2020-05-20 21:54:54', NULL),
(13854, 101, 8, 5, '2020-05-20 21:54:54', NULL),
(13855, 102, 12, 3, '2020-05-20 21:54:54', NULL),
(13856, 102, 8, 5, '2020-05-20 21:54:54', NULL),
(13857, 102, 8, 5, '2020-05-20 21:54:54', NULL),
(13858, 106, 12, 3, '2020-05-20 21:54:54', NULL),
(13859, 106, 8, 5, '2020-05-20 21:54:54', NULL),
(13860, 106, 8, 5, '2020-05-20 21:54:54', NULL),
(13861, 107, 12, 3, '2020-05-20 21:54:54', NULL),
(13862, 107, 8, 5, '2020-05-20 21:54:54', NULL),
(13863, 107, 8, 5, '2020-05-20 21:54:54', NULL),
(13864, 109, 12, 3, '2020-05-20 21:54:54', NULL),
(13865, 109, 9, 2, '2020-05-20 21:54:54', NULL),
(13866, 109, 10, 9, '2020-05-20 21:54:54', NULL),
(13867, 110, 9, 2, '2020-05-20 21:54:54', NULL),
(13868, 110, 12, 3, '2020-05-20 21:54:54', NULL),
(13869, 110, 9, 2, '2020-05-20 21:54:54', NULL),
(13870, 113, 12, 3, '2020-05-20 21:54:54', NULL),
(13871, 113, 11, 4, '2020-05-20 21:54:54', NULL),
(13872, 113, 8, 5, '2020-05-20 21:54:54', NULL),
(13873, 114, 12, 3, '2020-05-20 21:54:54', NULL),
(13874, 114, 9, 2, '2020-05-20 21:54:54', NULL),
(13875, 114, 10, 9, '2020-05-20 21:54:54', NULL),
(13876, 118, 12, 3, '2020-05-20 21:54:54', NULL),
(13877, 118, 11, 4, '2020-05-20 21:54:54', NULL),
(13878, 118, 8, 5, '2020-05-20 21:54:54', NULL),
(13879, 119, 12, 3, '2020-05-20 21:54:54', NULL),
(13880, 119, 9, 2, '2020-05-20 21:54:54', NULL),
(13881, 119, 10, 9, '2020-05-20 21:54:54', NULL),
(13882, 121, 12, 3, '2020-05-20 21:54:54', NULL),
(13883, 121, 8, 5, '2020-05-20 21:54:54', NULL),
(13884, 121, 8, 5, '2020-05-20 21:54:54', NULL),
(13885, 124, 12, 3, '2020-05-20 21:54:54', NULL),
(13886, 124, 9, 2, '2020-05-20 21:54:54', NULL),
(13887, 124, 10, 9, '2020-05-20 21:54:54', NULL),
(13888, 126, 12, 3, '2020-05-20 21:54:54', NULL),
(13889, 126, 8, 5, '2020-05-20 21:54:54', NULL),
(13890, 126, 8, 5, '2020-05-20 21:54:54', NULL),
(13891, 129, 12, 3, '2020-05-20 21:54:54', NULL),
(13892, 129, 9, 2, '2020-05-20 21:54:54', NULL),
(13893, 129, 10, 9, '2020-05-20 21:54:54', NULL),
(13894, 131, 12, 3, '2020-05-20 21:54:54', NULL),
(13895, 131, 8, 5, '2020-05-20 21:54:54', NULL),
(13896, 131, 8, 5, '2020-05-20 21:54:54', NULL),
(13897, 133, 12, 3, '2020-05-20 21:54:54', NULL),
(13898, 133, 11, 4, '2020-05-20 21:54:54', NULL),
(13899, 133, 8, 5, '2020-05-20 21:54:54', NULL),
(13903, 140, 11, 4, '2020-05-20 21:54:54', NULL),
(13904, 140, 9, 2, '2020-05-20 21:54:54', NULL),
(13905, 140, 11, 4, '2020-05-20 21:54:54', NULL),
(13906, 144, 12, 3, '2020-05-20 21:54:54', NULL),
(13907, 144, 12, 3, '2020-05-20 21:54:54', NULL),
(13908, 144, 10, 9, '2020-05-20 21:54:54', NULL),
(13909, 145, 11, 4, '2020-05-20 21:54:54', NULL),
(13910, 145, 9, 2, '2020-05-20 21:54:54', NULL),
(13911, 145, 11, 4, '2020-05-20 21:54:54', NULL),
(13912, 148, 11, 4, '2020-05-20 21:54:54', NULL),
(13913, 148, 12, 3, '2020-05-20 21:54:54', NULL),
(13914, 148, 11, 4, '2020-05-20 21:54:54', NULL),
(13915, 150, 11, 4, '2020-05-20 21:54:54', NULL),
(13916, 150, 9, 2, '2020-05-20 21:54:54', NULL),
(13917, 150, 11, 4, '2020-05-20 21:54:54', NULL),
(13918, 151, 9, 2, '2020-05-20 21:54:54', NULL),
(13919, 151, 9, 2, '2020-05-20 21:54:54', NULL),
(13920, 151, 13, 8, '2020-05-20 21:54:54', NULL),
(13921, 153, 11, 4, '2020-05-20 21:54:54', NULL),
(13922, 153, 12, 3, '2020-05-20 21:54:54', NULL),
(13923, 153, 11, 4, '2020-05-20 21:54:54', NULL),
(13924, 157, 10, 9, '2020-05-20 21:54:54', NULL),
(13925, 157, 8, 5, '2020-05-20 21:54:54', NULL),
(13926, 157, 11, 4, '2020-05-20 21:54:54', NULL),
(13927, 159, 12, 3, '2020-05-20 21:54:54', NULL),
(13928, 159, 12, 3, '2020-05-20 21:54:54', NULL),
(13929, 159, 10, 9, '2020-05-20 21:54:54', NULL),
(13930, 162, 10, 9, '2020-05-20 21:54:54', NULL),
(13931, 162, 8, 5, '2020-05-20 21:54:54', NULL),
(13932, 162, 11, 4, '2020-05-20 21:54:54', NULL),
(13933, 164, 12, 3, '2020-05-20 21:54:54', NULL),
(13934, 164, 12, 3, '2020-05-20 21:54:54', NULL),
(13935, 164, 10, 9, '2020-05-20 21:54:54', NULL),
(13936, 167, 10, 9, '2020-05-20 21:54:54', NULL),
(13937, 167, 8, 5, '2020-05-20 21:54:54', NULL),
(13938, 167, 11, 4, '2020-05-20 21:54:54', NULL),
(13939, 169, 12, 3, '2020-05-20 21:54:54', NULL),
(13940, 169, 12, 3, '2020-05-20 21:54:54', NULL),
(13941, 169, 10, 9, '2020-05-20 21:54:54', NULL),
(13942, 171, 9, 2, '2020-05-20 21:54:54', NULL),
(13943, 171, 9, 2, '2020-05-20 21:54:54', NULL),
(13944, 171, 13, 8, '2020-05-20 21:54:54', NULL),
(13945, 172, 10, 9, '2020-05-20 21:54:54', NULL),
(13946, 172, 8, 5, '2020-05-20 21:54:54', NULL),
(13947, 172, 11, 4, '2020-05-20 21:54:54', NULL),
(13948, 173, 11, 4, '2020-05-20 21:54:54', NULL),
(13949, 173, 12, 3, '2020-05-20 21:54:54', NULL),
(13950, 173, 11, 4, '2020-05-20 21:54:54', NULL),
(13951, 174, 12, 3, '2020-05-20 21:54:54', NULL),
(13952, 174, 12, 3, '2020-05-20 21:54:54', NULL),
(13953, 174, 10, 9, '2020-05-20 21:54:54', NULL),
(13954, 175, 11, 4, '2020-05-20 21:54:54', NULL),
(13955, 175, 9, 2, '2020-05-20 21:54:54', NULL),
(13956, 175, 11, 4, '2020-05-20 21:54:54', NULL),
(13957, 178, 11, 4, '2020-05-20 21:54:54', NULL),
(13958, 178, 12, 3, '2020-05-20 21:54:54', NULL),
(13959, 178, 11, 4, '2020-05-20 21:54:54', NULL),
(13960, 179, 12, 3, '2020-05-20 21:54:54', NULL),
(13961, 179, 12, 3, '2020-05-20 21:54:54', NULL),
(13962, 179, 10, 9, '2020-05-20 21:54:54', NULL),
(13963, 180, 11, 4, '2020-05-20 21:54:54', NULL),
(13964, 180, 9, 2, '2020-05-20 21:54:54', NULL),
(13965, 180, 11, 4, '2020-05-20 21:54:54', NULL),
(13966, 181, 9, 2, '2020-05-20 21:54:54', NULL),
(13967, 181, 9, 2, '2020-05-20 21:54:54', NULL),
(13968, 181, 13, 8, '2020-05-20 21:54:54', NULL),
(13969, 184, 12, 3, '2020-05-20 21:54:54', NULL),
(13970, 184, 12, 3, '2020-05-20 21:54:54', NULL),
(13971, 184, 10, 9, '2020-05-20 21:54:54', NULL),
(13972, 185, 11, 4, '2020-05-20 21:54:54', NULL),
(13973, 185, 9, 2, '2020-05-20 21:54:54', NULL),
(13974, 185, 11, 4, '2020-05-20 21:54:54', NULL),
(13975, 186, 9, 2, '2020-05-20 21:54:54', NULL),
(13976, 186, 9, 2, '2020-05-20 21:54:54', NULL),
(13977, 186, 13, 8, '2020-05-20 21:54:54', NULL),
(13978, 188, 11, 4, '2020-05-20 21:54:54', NULL),
(13979, 188, 12, 3, '2020-05-20 21:54:54', NULL),
(13980, 188, 11, 4, '2020-05-20 21:54:54', NULL),
(13981, 190, 11, 4, '2020-05-20 21:54:54', NULL),
(13982, 190, 9, 2, '2020-05-20 21:54:54', NULL),
(13983, 190, 11, 4, '2020-05-20 21:54:54', NULL),
(13984, 191, 9, 2, '2020-05-20 21:54:54', NULL),
(13985, 191, 9, 2, '2020-05-20 21:54:54', NULL),
(13986, 191, 13, 8, '2020-05-20 21:54:54', NULL),
(13987, 193, 11, 4, '2020-05-20 21:54:54', NULL),
(13988, 193, 12, 3, '2020-05-20 21:54:54', NULL),
(13989, 193, 11, 4, '2020-05-20 21:54:54', NULL),
(13990, 194, 12, 3, '2020-05-20 21:54:54', NULL),
(13991, 194, 12, 3, '2020-05-20 21:54:54', NULL),
(13992, 194, 10, 9, '2020-05-20 21:54:54', NULL),
(13993, 196, 9, 2, '2020-05-20 21:54:54', NULL),
(13994, 196, 9, 2, '2020-05-20 21:54:54', NULL),
(13995, 196, 13, 8, '2020-05-20 21:54:54', NULL),
(13996, 198, 11, 4, '2020-05-20 21:54:54', NULL),
(13997, 198, 12, 3, '2020-05-20 21:54:54', NULL),
(13998, 198, 11, 4, '2020-05-20 21:54:54', NULL),
(13999, 199, 12, 3, '2020-05-20 21:54:54', NULL),
(14000, 199, 12, 3, '2020-05-20 21:54:54', NULL),
(14001, 199, 10, 9, '2020-05-20 21:54:54', NULL),
(14002, 200, 11, 4, '2020-05-20 21:54:54', NULL),
(14003, 200, 9, 2, '2020-05-20 21:54:54', NULL),
(14004, 200, 11, 4, '2020-05-20 21:54:54', NULL),
(14005, 202, 9, 2, '2020-05-20 21:54:54', NULL),
(14006, 202, 10, 9, '2020-05-20 21:54:54', NULL),
(14007, 202, 8, 5, '2020-05-20 21:54:54', NULL),
(14008, 203, 8, 5, '2020-05-20 21:54:54', NULL),
(14009, 203, 10, 9, '2020-05-20 21:54:54', NULL),
(14010, 203, 12, 3, '2020-05-20 21:54:54', NULL),
(14011, 204, 10, 9, '2020-05-20 21:54:54', NULL),
(14012, 204, 13, 8, '2020-05-20 21:54:54', NULL),
(14013, 204, 12, 3, '2020-05-20 21:54:54', NULL),
(14014, 205, 9, 2, '2020-05-20 21:54:54', NULL),
(14015, 205, 11, 4, '2020-05-20 21:54:54', NULL),
(14016, 205, 11, 4, '2020-05-20 21:54:54', NULL),
(14017, 207, 9, 2, '2020-05-20 21:54:54', NULL),
(14018, 207, 10, 9, '2020-05-20 21:54:54', NULL),
(14019, 207, 8, 5, '2020-05-20 21:54:54', NULL),
(14020, 209, 10, 9, '2020-05-20 21:54:54', NULL),
(14021, 209, 13, 8, '2020-05-20 21:54:54', NULL),
(14022, 209, 12, 3, '2020-05-20 21:54:54', NULL),
(14023, 210, 9, 2, '2020-05-20 21:54:54', NULL),
(14024, 210, 11, 4, '2020-05-20 21:54:54', NULL),
(14025, 210, 11, 4, '2020-05-20 21:54:54', NULL),
(14026, 211, 9, 2, '2020-05-20 21:54:54', NULL),
(14027, 211, 10, 9, '2020-05-20 21:54:54', NULL),
(14028, 211, 8, 5, '2020-05-20 21:54:54', NULL),
(14029, 212, 9, 2, '2020-05-20 21:54:54', NULL),
(14030, 212, 10, 9, '2020-05-20 21:54:54', NULL),
(14031, 212, 8, 5, '2020-05-20 21:54:55', NULL),
(14032, 213, 8, 5, '2020-05-20 21:54:55', NULL),
(14033, 213, 10, 9, '2020-05-20 21:54:55', NULL),
(14034, 213, 12, 3, '2020-05-20 21:54:55', NULL),
(14035, 215, 9, 2, '2020-05-20 21:54:55', NULL),
(14036, 215, 11, 4, '2020-05-20 21:54:55', NULL),
(14037, 215, 11, 4, '2020-05-20 21:54:55', NULL),
(14038, 216, 9, 2, '2020-05-20 21:54:55', NULL),
(14039, 216, 10, 9, '2020-05-20 21:54:55', NULL),
(14040, 216, 8, 5, '2020-05-20 21:54:55', NULL),
(14041, 218, 8, 5, '2020-05-20 21:54:55', NULL),
(14042, 218, 10, 9, '2020-05-20 21:54:55', NULL),
(14043, 218, 12, 3, '2020-05-20 21:54:55', NULL),
(14044, 220, 9, 2, '2020-05-20 21:54:55', NULL),
(14045, 220, 11, 4, '2020-05-20 21:54:55', NULL),
(14046, 220, 11, 4, '2020-05-20 21:54:55', NULL),
(14047, 221, 9, 2, '2020-05-20 21:54:55', NULL),
(14048, 221, 10, 9, '2020-05-20 21:54:55', NULL),
(14049, 221, 8, 5, '2020-05-20 21:54:55', NULL),
(14050, 222, 9, 2, '2020-05-20 21:54:55', NULL),
(14051, 222, 10, 9, '2020-05-20 21:54:55', NULL),
(14052, 222, 8, 5, '2020-05-20 21:54:55', NULL),
(14053, 223, 8, 5, '2020-05-20 21:54:55', NULL),
(14054, 223, 10, 9, '2020-05-20 21:54:55', NULL),
(14055, 223, 12, 3, '2020-05-20 21:54:55', NULL),
(14056, 227, 12, 3, '2020-05-20 21:54:55', NULL),
(14057, 227, 8, 5, '2020-05-20 21:54:55', NULL),
(14058, 227, 8, 5, '2020-05-20 21:54:55', NULL),
(14059, 228, 12, 3, '2020-05-20 21:54:55', NULL),
(14060, 228, 11, 4, '2020-05-20 21:54:55', NULL),
(14061, 228, 8, 5, '2020-05-20 21:54:55', NULL),
(14062, 231, 12, 3, '2020-05-20 21:54:55', NULL),
(14063, 231, 8, 5, '2020-05-20 21:54:55', NULL),
(14064, 231, 8, 5, '2020-05-20 21:54:55', NULL),
(14065, 233, 12, 3, '2020-05-20 21:54:55', NULL),
(14066, 233, 11, 4, '2020-05-20 21:54:55', NULL),
(14067, 233, 8, 5, '2020-05-20 21:54:55', NULL),
(14068, 238, 12, 3, '2020-05-20 21:54:55', NULL),
(14069, 238, 11, 4, '2020-05-20 21:54:55', NULL),
(14070, 238, 8, 5, '2020-05-20 21:54:55', NULL),
(14071, 240, 9, 2, '2020-05-20 21:54:55', NULL),
(14072, 240, 12, 3, '2020-05-20 21:54:55', NULL),
(14073, 240, 9, 2, '2020-05-20 21:54:55', NULL),
(14074, 241, 12, 3, '2020-05-20 21:54:55', NULL),
(14075, 241, 8, 5, '2020-05-20 21:54:55', NULL),
(14076, 241, 8, 5, '2020-05-20 21:54:55', NULL),
(14077, 245, 9, 2, '2020-05-20 21:54:55', NULL),
(14078, 245, 12, 3, '2020-05-20 21:54:55', NULL),
(14079, 245, 9, 2, '2020-05-20 21:54:55', NULL),
(14080, 246, 12, 3, '2020-05-20 21:54:55', NULL),
(14081, 246, 8, 5, '2020-05-20 21:54:55', NULL),
(14082, 246, 8, 5, '2020-05-20 21:54:55', NULL),
(14083, 249, 12, 3, '2020-05-20 21:54:55', NULL),
(14084, 249, 9, 2, '2020-05-20 21:54:55', NULL),
(14085, 249, 10, 9, '2020-05-20 21:54:55', NULL),
(14086, 254, 12, 3, '2020-05-20 21:54:55', NULL),
(14087, 254, 9, 2, '2020-05-20 21:54:55', NULL),
(14088, 254, 10, 9, '2020-05-20 21:54:55', NULL),
(14089, 255, 9, 2, '2020-05-20 21:54:55', NULL),
(14090, 255, 12, 3, '2020-05-20 21:54:55', NULL),
(14091, 255, 9, 2, '2020-05-20 21:54:55', NULL),
(14092, 257, 12, 3, '2020-05-20 21:54:55', NULL),
(14093, 257, 8, 5, '2020-05-20 21:54:55', NULL),
(14094, 259, 12, 3, '2020-05-20 21:54:55', NULL),
(14095, 259, 9, 2, '2020-05-20 21:54:55', NULL),
(14096, 259, 10, 9, '2020-05-20 21:54:55', NULL),
(14097, 263, 12, 3, '2020-05-20 21:54:55', NULL),
(14098, 263, 11, 4, '2020-05-20 21:54:55', NULL),
(14099, 263, 8, 5, '2020-05-20 21:54:55', NULL),
(14100, 264, 12, 3, '2020-05-20 21:54:55', NULL),
(14101, 264, 9, 2, '2020-05-20 21:54:55', NULL),
(14102, 264, 10, 9, '2020-05-20 21:54:55', NULL),
(14103, 268, 12, 3, '2020-05-20 21:54:55', NULL),
(14104, 268, 11, 4, '2020-05-20 21:54:55', NULL),
(14105, 268, 8, 5, '2020-05-20 21:54:55', NULL),
(14106, 270, 9, 2, '2020-05-20 21:54:55', NULL),
(14107, 270, 12, 3, '2020-05-20 21:54:55', NULL),
(14108, 270, 9, 2, '2020-05-20 21:54:55', NULL),
(14109, 272, 12, 3, '2020-05-20 21:54:55', NULL),
(14110, 272, 8, 5, '2020-05-20 21:54:55', NULL),
(14111, 272, 8, 5, '2020-05-20 21:54:55', NULL),
(14112, 273, 12, 3, '2020-05-20 21:54:55', NULL),
(14113, 273, 11, 4, '2020-05-20 21:54:55', NULL),
(14114, 273, 8, 5, '2020-05-20 21:54:55', NULL),
(14115, 276, 12, 3, '2020-05-20 21:54:55', NULL),
(14116, 276, 8, 5, '2020-05-20 21:54:55', NULL),
(14117, 276, 8, 5, '2020-05-20 21:54:55', NULL),
(14118, 278, 12, 3, '2020-05-20 21:54:55', NULL),
(14119, 278, 11, 4, '2020-05-20 21:54:55', NULL),
(14120, 278, 8, 5, '2020-05-20 21:54:55', NULL),
(14121, 289, 12, 3, '2020-05-20 21:54:55', NULL),
(14122, 289, 12, 3, '2020-05-20 21:54:55', NULL),
(14123, 289, 10, 9, '2020-05-20 21:54:55', NULL),
(14124, 292, 10, 9, '2020-05-20 21:54:55', NULL),
(14125, 292, 8, 5, '2020-05-20 21:54:55', NULL),
(14126, 292, 11, 4, '2020-05-20 21:54:55', NULL),
(14127, 298, 11, 4, '2020-05-20 21:54:55', NULL),
(14128, 298, 12, 3, '2020-05-20 21:54:55', NULL),
(14129, 298, 11, 4, '2020-05-20 21:54:55', NULL),
(14130, 304, 12, 3, '2020-05-20 21:54:55', NULL),
(14131, 304, 12, 3, '2020-05-20 21:54:55', NULL),
(14132, 304, 10, 9, '2020-05-20 21:54:55', NULL),
(14133, 309, 12, 3, '2020-05-20 21:54:55', NULL),
(14134, 309, 12, 3, '2020-05-20 21:54:55', NULL),
(14135, 309, 10, 9, '2020-05-20 21:54:55', NULL),
(14136, 315, 9, 2, '2020-05-20 21:54:55', NULL),
(14137, 315, 12, 3, '2020-05-20 21:54:55', NULL),
(14138, 315, 11, 4, '2020-05-20 21:54:55', NULL),
(14139, 316, 7, 7, '2020-05-20 21:54:55', NULL),
(14140, 316, 8, 5, '2020-05-20 21:54:55', NULL),
(14141, 316, 12, 3, '2020-05-20 21:54:55', NULL),
(14142, 322, 8, 5, '2020-05-20 21:54:55', NULL),
(14143, 322, 8, 5, '2020-05-20 21:54:55', NULL),
(14144, 322, 8, 5, '2020-05-20 21:54:55', NULL),
(14145, 328, 8, 5, '2020-05-20 21:54:55', NULL),
(14146, 328, 11, 4, '2020-05-20 21:54:55', NULL),
(14147, 328, 11, 4, '2020-05-20 21:54:55', NULL),
(14148, 336, 7, 7, '2020-05-20 21:54:55', NULL),
(14149, 336, 8, 5, '2020-05-20 21:54:55', NULL),
(14150, 336, 12, 3, '2020-05-20 21:54:55', NULL),
(14151, 337, 8, 5, '2020-05-20 21:54:55', NULL),
(14152, 337, 8, 5, '2020-05-20 21:54:55', NULL),
(14153, 337, 8, 5, '2020-05-20 21:54:55', NULL),
(14154, 338, 8, 5, '2020-05-20 21:54:55', NULL),
(14155, 338, 11, 4, '2020-05-20 21:54:55', NULL),
(14156, 338, 11, 4, '2020-05-20 21:54:55', NULL),
(14157, 339, 8, 5, '2020-05-20 21:54:55', NULL),
(14158, 339, 12, 3, '2020-05-20 21:54:55', NULL),
(14159, 339, 8, 5, '2020-05-20 21:54:55', NULL),
(14160, 340, 9, 2, '2020-05-20 21:54:55', NULL),
(14161, 340, 12, 3, '2020-05-20 21:54:55', NULL),
(14162, 340, 11, 4, '2020-05-20 21:54:55', NULL),
(14163, 341, 7, 7, '2020-05-20 21:54:55', NULL),
(14164, 341, 8, 5, '2020-05-20 21:54:55', NULL),
(14165, 341, 12, 3, '2020-05-20 21:54:55', NULL),
(14166, 342, 8, 5, '2020-05-20 21:54:55', NULL),
(14167, 342, 8, 5, '2020-05-20 21:54:55', NULL),
(14168, 342, 8, 5, '2020-05-20 21:54:55', NULL),
(14169, 343, 8, 5, '2020-05-20 21:54:55', NULL),
(14170, 343, 11, 4, '2020-05-20 21:54:55', NULL),
(14171, 343, 11, 4, '2020-05-20 21:54:55', NULL),
(14172, 344, 8, 5, '2020-05-20 21:54:55', NULL),
(14173, 344, 12, 3, '2020-05-20 21:54:55', NULL),
(14174, 344, 8, 5, '2020-05-20 21:54:55', NULL),
(14175, 347, 8, 5, '2020-05-20 21:54:55', NULL),
(14176, 347, 8, 5, '2020-05-20 21:54:55', NULL),
(14177, 347, 8, 5, '2020-05-20 21:54:55', NULL),
(14178, 348, 8, 5, '2020-05-20 21:54:55', NULL),
(14179, 348, 11, 4, '2020-05-20 21:54:55', NULL),
(14180, 348, 11, 4, '2020-05-20 21:54:55', NULL),
(14181, 349, 8, 5, '2020-05-20 21:54:55', NULL),
(14182, 349, 12, 3, '2020-05-20 21:54:55', NULL),
(14183, 349, 8, 5, '2020-05-20 21:54:55', NULL),
(14184, 351, 7, 7, '2020-05-20 21:54:55', NULL),
(14185, 351, 8, 5, '2020-05-20 21:54:55', NULL),
(14186, 351, 12, 3, '2020-05-20 21:54:55', NULL),
(14187, 353, 8, 5, '2020-05-20 21:54:55', NULL),
(14188, 353, 11, 4, '2020-05-20 21:54:55', NULL),
(14189, 353, 11, 4, '2020-05-20 21:54:55', NULL),
(14190, 354, 8, 5, '2020-05-20 21:54:55', NULL),
(14191, 354, 12, 3, '2020-05-20 21:54:55', NULL),
(14192, 354, 8, 5, '2020-05-20 21:54:55', NULL),
(14193, 356, 7, 7, '2020-05-20 21:54:55', NULL),
(14194, 356, 8, 5, '2020-05-20 21:54:55', NULL),
(14195, 356, 12, 3, '2020-05-20 21:54:55', NULL),
(14196, 357, 8, 5, '2020-05-20 21:54:55', NULL),
(14197, 357, 8, 5, '2020-05-20 21:54:55', NULL),
(14198, 357, 8, 5, '2020-05-20 21:54:55', NULL),
(14199, 359, 8, 5, '2020-05-20 21:54:55', NULL),
(14200, 359, 12, 3, '2020-05-20 21:54:55', NULL),
(14201, 359, 8, 5, '2020-05-20 21:54:55', NULL),
(14202, 361, 7, 7, '2020-05-20 21:54:55', NULL),
(14203, 361, 8, 5, '2020-05-20 21:54:55', NULL),
(14204, 361, 12, 3, '2020-05-20 21:54:55', NULL),
(14205, 362, 8, 5, '2020-05-20 21:54:55', NULL),
(14206, 362, 8, 5, '2020-05-20 21:54:55', NULL),
(14207, 362, 8, 5, '2020-05-20 21:54:55', NULL),
(14208, 364, 8, 5, '2020-05-20 21:54:55', NULL),
(14209, 364, 12, 3, '2020-05-20 21:54:55', NULL),
(14210, 364, 8, 5, '2020-05-20 21:54:55', NULL),
(14211, 366, 7, 7, '2020-05-20 21:54:55', NULL),
(14212, 366, 8, 5, '2020-05-20 21:54:55', NULL),
(14213, 366, 12, 3, '2020-05-20 21:54:55', NULL),
(14214, 367, 8, 5, '2020-05-20 21:54:55', NULL),
(14215, 367, 8, 5, '2020-05-20 21:54:55', NULL),
(14216, 367, 8, 5, '2020-05-20 21:54:55', NULL),
(14217, 368, 8, 5, '2020-05-20 21:54:55', NULL),
(14218, 368, 11, 4, '2020-05-20 21:54:55', NULL),
(14219, 368, 11, 4, '2020-05-20 21:54:55', NULL),
(14220, 372, 8, 5, '2020-05-20 21:54:55', NULL),
(14221, 372, 8, 5, '2020-05-20 21:54:55', NULL),
(14222, 372, 8, 5, '2020-05-20 21:54:55', NULL),
(14223, 373, 8, 5, '2020-05-20 21:54:55', NULL),
(14224, 373, 11, 4, '2020-05-20 21:54:55', NULL),
(14225, 373, 11, 4, '2020-05-20 21:54:55', NULL),
(14226, 375, 9, 2, '2020-05-20 21:54:55', NULL),
(14227, 375, 12, 3, '2020-05-20 21:54:55', NULL),
(14228, 375, 11, 4, '2020-05-20 21:54:55', NULL),
(14229, 376, 7, 7, '2020-05-20 21:54:55', NULL),
(14230, 376, 8, 5, '2020-05-20 21:54:55', NULL),
(14231, 376, 12, 3, '2020-05-20 21:54:55', NULL),
(14232, 378, 8, 5, '2020-05-20 21:54:55', NULL),
(14233, 378, 11, 4, '2020-05-20 21:54:55', NULL),
(14234, 378, 11, 4, '2020-05-20 21:54:55', NULL),
(14235, 380, 9, 2, '2020-05-20 21:54:55', NULL),
(14236, 380, 12, 3, '2020-05-20 21:54:55', NULL),
(14237, 380, 11, 4, '2020-05-20 21:54:55', NULL),
(14238, 381, 7, 7, '2020-05-20 21:54:55', NULL),
(14239, 381, 8, 5, '2020-05-20 21:54:55', NULL),
(14240, 381, 12, 3, '2020-05-20 21:54:55', NULL),
(14241, 382, 8, 5, '2020-05-20 21:54:55', NULL),
(14242, 382, 8, 5, '2020-05-20 21:54:55', NULL),
(14243, 382, 8, 5, '2020-05-20 21:54:55', NULL),
(14244, 385, 9, 2, '2020-05-20 21:54:55', NULL),
(14245, 385, 12, 3, '2020-05-20 21:54:55', NULL),
(14246, 385, 11, 4, '2020-05-20 21:54:55', NULL),
(14247, 386, 7, 7, '2020-05-20 21:54:55', NULL),
(14248, 386, 8, 5, '2020-05-20 21:54:55', NULL),
(14249, 386, 12, 3, '2020-05-20 21:54:55', NULL),
(14250, 387, 8, 5, '2020-05-20 21:54:55', NULL),
(14251, 387, 8, 5, '2020-05-20 21:54:55', NULL),
(14252, 387, 8, 5, '2020-05-20 21:54:55', NULL),
(14253, 388, 8, 5, '2020-05-20 21:54:55', NULL),
(14254, 388, 11, 4, '2020-05-20 21:54:55', NULL),
(14255, 388, 11, 4, '2020-05-20 21:54:55', NULL),
(14256, 394, 8, 5, '2020-05-20 21:54:55', NULL),
(14257, 394, 12, 3, '2020-05-20 21:54:55', NULL),
(14258, 394, 8, 5, '2020-05-20 21:54:55', NULL),
(14259, 395, 9, 2, '2020-05-20 21:54:55', NULL),
(14260, 395, 12, 3, '2020-05-20 21:54:55', NULL),
(14261, 395, 11, 4, '2020-05-20 21:54:55', NULL),
(14262, 398, 8, 5, '2020-05-20 21:54:55', NULL),
(14263, 398, 11, 4, '2020-05-20 21:54:55', NULL),
(14264, 398, 11, 4, '2020-05-20 21:54:56', NULL),
(14265, 400, 9, 2, '2020-05-20 21:54:56', NULL),
(14266, 400, 12, 3, '2020-05-20 21:54:56', NULL),
(14267, 400, 11, 4, '2020-05-20 21:54:56', NULL),
(14268, 403, 8, 5, '2020-05-20 21:54:56', NULL),
(14269, 403, 11, 4, '2020-05-20 21:54:56', NULL),
(14270, 403, 11, 4, '2020-05-20 21:54:56', NULL),
(14271, 404, 8, 5, '2020-05-20 21:54:56', NULL),
(14272, 404, 12, 3, '2020-05-20 21:54:56', NULL),
(14273, 404, 8, 5, '2020-05-20 21:54:56', NULL),
(14274, 406, 7, 7, '2020-05-20 21:54:56', NULL),
(14275, 406, 8, 5, '2020-05-20 21:54:56', NULL),
(14276, 406, 12, 3, '2020-05-20 21:54:56', NULL),
(14277, 409, 8, 5, '2020-05-20 21:54:56', NULL),
(14278, 409, 12, 3, '2020-05-20 21:54:56', NULL),
(14279, 409, 8, 5, '2020-05-20 21:54:56', NULL),
(14280, 411, 7, 7, '2020-05-20 21:54:56', NULL),
(14281, 411, 8, 5, '2020-05-20 21:54:56', NULL),
(14282, 411, 12, 3, '2020-05-20 21:54:56', NULL),
(14283, 413, 8, 5, '2020-05-20 21:54:56', NULL),
(14284, 413, 11, 4, '2020-05-20 21:54:56', NULL),
(14285, 413, 11, 4, '2020-05-20 21:54:56', NULL),
(14286, 417, 8, 5, '2020-05-20 21:54:56', NULL),
(14287, 417, 8, 5, '2020-05-20 21:54:56', NULL),
(14288, 417, 8, 5, '2020-05-20 21:54:56', NULL),
(14289, 419, 8, 5, '2020-05-20 21:54:56', NULL),
(14290, 419, 12, 3, '2020-05-20 21:54:56', NULL),
(14291, 419, 8, 5, '2020-05-20 21:54:56', NULL),
(14292, 422, 8, 5, '2020-05-20 21:54:56', NULL),
(14293, 422, 8, 5, '2020-05-20 21:54:56', NULL),
(14294, 422, 8, 5, '2020-05-20 21:54:56', NULL),
(14295, 423, 8, 5, '2020-05-20 21:54:56', NULL),
(14296, 423, 11, 4, '2020-05-20 21:54:56', NULL),
(14297, 423, 11, 4, '2020-05-20 21:54:56', NULL),
(14298, 427, 8, 5, '2020-05-20 21:54:56', NULL),
(14299, 427, 8, 5, '2020-05-20 21:54:56', NULL),
(14300, 427, 8, 5, '2020-05-20 21:54:56', NULL),
(14301, 428, 8, 5, '2020-05-20 21:54:56', NULL),
(14302, 428, 11, 4, '2020-05-20 21:54:56', NULL),
(14303, 428, 11, 4, '2020-05-20 21:54:56', NULL),
(14304, 432, 8, 5, '2020-05-20 21:54:56', NULL),
(14305, 432, 8, 5, '2020-05-20 21:54:56', NULL),
(14306, 432, 8, 5, '2020-05-20 21:54:56', NULL),
(14307, 435, 9, 2, '2020-05-20 21:54:56', NULL),
(14308, 435, 12, 3, '2020-05-20 21:54:56', NULL),
(14309, 435, 11, 4, '2020-05-20 21:54:56', NULL),
(14310, 436, 7, 7, '2020-05-20 21:54:56', NULL),
(14311, 436, 8, 5, '2020-05-20 21:54:56', NULL),
(14312, 436, 12, 3, '2020-05-20 21:54:56', NULL),
(14313, 440, 9, 2, '2020-05-20 21:54:56', NULL),
(14314, 440, 12, 3, '2020-05-20 21:54:56', NULL),
(14315, 440, 11, 4, '2020-05-20 21:54:56', NULL),
(14316, 441, 7, 7, '2020-05-20 21:54:56', NULL),
(14317, 441, 8, 5, '2020-05-20 21:54:56', NULL),
(14318, 441, 12, 3, '2020-05-20 21:54:56', NULL),
(14319, 442, 8, 5, '2020-05-20 21:54:56', NULL),
(14320, 442, 8, 5, '2020-05-20 21:54:56', NULL),
(14321, 442, 8, 5, '2020-05-20 21:54:56', NULL),
(14322, 455, 9, 2, '2020-05-20 21:54:56', NULL),
(14323, 455, 12, 3, '2020-05-20 21:54:56', NULL),
(14324, 455, 11, 4, '2020-05-20 21:54:56', NULL),
(14325, 459, 8, 5, '2020-05-20 21:54:56', NULL),
(14326, 459, 12, 3, '2020-05-20 21:54:56', NULL),
(14327, 459, 8, 5, '2020-05-20 21:54:56', NULL),
(14328, 463, 8, 5, '2020-05-20 21:54:56', NULL),
(14329, 463, 11, 4, '2020-05-20 21:54:56', NULL),
(14330, 463, 11, 4, '2020-05-20 21:54:56', NULL),
(14331, 467, 8, 5, '2020-05-20 21:54:56', NULL),
(14332, 467, 8, 5, '2020-05-20 21:54:56', NULL),
(14333, 467, 8, 5, '2020-05-20 21:54:56', NULL),
(14334, 471, 7, 7, '2020-05-20 21:54:56', NULL),
(14335, 471, 8, 5, '2020-05-20 21:54:56', NULL),
(14336, 471, 12, 3, '2020-05-20 21:54:56', NULL),
(14337, 479, 8, 5, '2020-05-20 21:54:56', NULL),
(14338, 479, 12, 3, '2020-05-20 21:54:56', NULL),
(14339, 479, 8, 5, '2020-05-20 21:54:56', NULL),
(14340, 483, 8, 5, '2020-05-20 21:54:56', NULL),
(14341, 483, 11, 4, '2020-05-20 21:54:56', NULL),
(14342, 483, 11, 4, '2020-05-20 21:54:56', NULL),
(14343, 487, 8, 5, '2020-05-20 21:54:56', NULL),
(14344, 487, 8, 5, '2020-05-20 21:54:56', NULL),
(14345, 487, 8, 5, '2020-05-20 21:54:56', NULL),
(14346, 491, 7, 7, '2020-05-20 21:54:56', NULL),
(14347, 491, 8, 5, '2020-05-20 21:54:56', NULL),
(14348, 491, 12, 3, '2020-05-20 21:54:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_category_feedback`
--

CREATE TABLE `evaluation_category_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `evaluation_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_category_feedback`
--

INSERT INTO `evaluation_category_feedback` (`id`, `feedback_id`, `evaluation_category_id`, `created_at`, `updated_at`) VALUES
(1210, 133, 14139, '2020-05-20 21:56:44', NULL),
(1211, 133, 14148, '2020-05-20 21:56:44', NULL),
(1212, 133, 14163, '2020-05-20 21:56:44', NULL),
(1213, 133, 14184, '2020-05-20 21:56:44', NULL),
(1214, 133, 14193, '2020-05-20 21:56:45', NULL),
(1215, 133, 14202, '2020-05-20 21:56:45', NULL),
(1216, 133, 14211, '2020-05-20 21:56:45', NULL),
(1217, 133, 14229, '2020-05-20 21:56:45', NULL),
(1218, 133, 14238, '2020-05-20 21:56:45', NULL),
(1219, 133, 14247, '2020-05-20 21:56:45', NULL),
(1220, 133, 14274, '2020-05-20 21:56:45', NULL),
(1221, 133, 14280, '2020-05-20 21:56:45', NULL),
(1222, 133, 14310, '2020-05-20 21:56:45', NULL),
(1223, 133, 14316, '2020-05-20 21:56:45', NULL),
(1224, 133, 14334, '2020-05-20 21:56:45', NULL),
(1225, 133, 14346, '2020-05-20 21:56:45', NULL),
(1226, 135, 13665, '2020-05-20 21:56:45', NULL),
(1227, 135, 13668, '2020-05-20 21:56:45', NULL),
(1228, 135, 13669, '2020-05-20 21:56:45', NULL),
(1229, 135, 13680, '2020-05-20 21:56:45', NULL),
(1230, 135, 13683, '2020-05-20 21:56:45', NULL),
(1231, 135, 13684, '2020-05-20 21:56:45', NULL),
(1232, 135, 13692, '2020-05-20 21:56:45', NULL),
(1233, 135, 13695, '2020-05-20 21:56:45', NULL),
(1234, 135, 13696, '2020-05-20 21:56:45', NULL),
(1235, 135, 13704, '2020-05-20 21:56:45', NULL),
(1236, 135, 13707, '2020-05-20 21:56:45', NULL),
(1237, 135, 13716, '2020-05-20 21:56:45', NULL),
(1238, 135, 13728, '2020-05-20 21:56:45', NULL),
(1239, 135, 13740, '2020-05-20 21:56:45', NULL),
(1240, 135, 13748, '2020-05-20 21:56:45', NULL),
(1241, 135, 13749, '2020-05-20 21:56:45', NULL),
(1242, 135, 13752, '2020-05-20 21:56:45', NULL),
(1243, 135, 13758, '2020-05-20 21:56:45', NULL),
(1244, 135, 13766, '2020-05-20 21:56:45', NULL),
(1245, 135, 13767, '2020-05-20 21:56:45', NULL),
(1246, 135, 13774, '2020-05-20 21:56:45', NULL),
(1247, 135, 13779, '2020-05-20 21:56:45', NULL),
(1248, 135, 13783, '2020-05-20 21:56:45', NULL),
(1249, 135, 13787, '2020-05-20 21:56:45', NULL),
(1250, 135, 13788, '2020-05-20 21:56:45', NULL),
(1251, 135, 13791, '2020-05-20 21:56:45', NULL),
(1252, 135, 13800, '2020-05-20 21:56:45', NULL),
(1253, 135, 13805, '2020-05-20 21:56:45', NULL),
(1254, 135, 13806, '2020-05-20 21:56:45', NULL),
(1255, 135, 13811, '2020-05-20 21:56:45', NULL),
(1256, 135, 13812, '2020-05-20 21:56:45', NULL),
(1257, 135, 13814, '2020-05-20 21:56:45', NULL),
(1258, 135, 13815, '2020-05-20 21:56:45', NULL),
(1259, 135, 13818, '2020-05-20 21:56:45', NULL),
(1260, 135, 13823, '2020-05-20 21:56:45', NULL),
(1261, 135, 13824, '2020-05-20 21:56:45', NULL),
(1262, 135, 13826, '2020-05-20 21:56:45', NULL),
(1263, 135, 13827, '2020-05-20 21:56:45', NULL),
(1264, 135, 13830, '2020-05-20 21:56:45', NULL),
(1265, 135, 13835, '2020-05-20 21:56:45', NULL),
(1266, 135, 13836, '2020-05-20 21:56:45', NULL),
(1267, 135, 13841, '2020-05-20 21:56:45', NULL),
(1268, 135, 13842, '2020-05-20 21:56:45', NULL),
(1269, 135, 13847, '2020-05-20 21:56:45', NULL),
(1270, 135, 13848, '2020-05-20 21:56:45', NULL),
(1271, 135, 13853, '2020-05-20 21:56:45', NULL),
(1272, 135, 13854, '2020-05-20 21:56:45', NULL),
(1273, 135, 13856, '2020-05-20 21:56:45', NULL),
(1274, 135, 13857, '2020-05-20 21:56:45', NULL),
(1275, 135, 13859, '2020-05-20 21:56:45', NULL),
(1276, 135, 13860, '2020-05-20 21:56:45', NULL),
(1277, 135, 13862, '2020-05-20 21:56:45', NULL),
(1278, 135, 13863, '2020-05-20 21:56:45', NULL),
(1279, 135, 13872, '2020-05-20 21:56:45', NULL),
(1280, 135, 13878, '2020-05-20 21:56:45', NULL),
(1281, 135, 13883, '2020-05-20 21:56:45', NULL),
(1282, 135, 13884, '2020-05-20 21:56:45', NULL),
(1283, 135, 13889, '2020-05-20 21:56:45', NULL),
(1284, 135, 13890, '2020-05-20 21:56:45', NULL),
(1285, 135, 13895, '2020-05-20 21:56:45', NULL),
(1286, 135, 13896, '2020-05-20 21:56:45', NULL),
(1287, 135, 13899, '2020-05-20 21:56:45', NULL),
(1288, 135, 13925, '2020-05-20 21:56:45', NULL),
(1289, 135, 13931, '2020-05-20 21:56:45', NULL),
(1290, 135, 13937, '2020-05-20 21:56:45', NULL),
(1291, 135, 13946, '2020-05-20 21:56:45', NULL),
(1292, 135, 14007, '2020-05-20 21:56:45', NULL),
(1293, 135, 14008, '2020-05-20 21:56:45', NULL),
(1294, 135, 14019, '2020-05-20 21:56:45', NULL),
(1295, 135, 14028, '2020-05-20 21:56:45', NULL),
(1296, 135, 14031, '2020-05-20 21:56:45', NULL),
(1297, 135, 14032, '2020-05-20 21:56:45', NULL),
(1298, 135, 14040, '2020-05-20 21:56:45', NULL),
(1299, 135, 14041, '2020-05-20 21:56:45', NULL),
(1300, 135, 14049, '2020-05-20 21:56:45', NULL),
(1301, 135, 14052, '2020-05-20 21:56:45', NULL),
(1302, 135, 14053, '2020-05-20 21:56:45', NULL),
(1303, 135, 14057, '2020-05-20 21:56:45', NULL),
(1304, 135, 14058, '2020-05-20 21:56:45', NULL),
(1305, 135, 14061, '2020-05-20 21:56:45', NULL),
(1306, 135, 14063, '2020-05-20 21:56:45', NULL),
(1307, 135, 14064, '2020-05-20 21:56:45', NULL),
(1308, 135, 14067, '2020-05-20 21:56:45', NULL),
(1309, 135, 14070, '2020-05-20 21:56:45', NULL),
(1310, 135, 14075, '2020-05-20 21:56:45', NULL),
(1311, 135, 14076, '2020-05-20 21:56:45', NULL),
(1312, 135, 14081, '2020-05-20 21:56:45', NULL),
(1313, 135, 14082, '2020-05-20 21:56:45', NULL),
(1314, 135, 14093, '2020-05-20 21:56:45', NULL),
(1315, 135, 14099, '2020-05-20 21:56:45', NULL),
(1316, 135, 14105, '2020-05-20 21:56:45', NULL),
(1317, 135, 14110, '2020-05-20 21:56:45', NULL),
(1318, 135, 14111, '2020-05-20 21:56:45', NULL),
(1319, 135, 14114, '2020-05-20 21:56:45', NULL),
(1320, 135, 14116, '2020-05-20 21:56:45', NULL),
(1321, 135, 14117, '2020-05-20 21:56:45', NULL),
(1322, 135, 14120, '2020-05-20 21:56:45', NULL),
(1323, 135, 14125, '2020-05-20 21:56:45', NULL),
(1324, 135, 14140, '2020-05-20 21:56:45', NULL),
(1325, 135, 14142, '2020-05-20 21:56:45', NULL),
(1326, 135, 14143, '2020-05-20 21:56:45', NULL),
(1327, 135, 14144, '2020-05-20 21:56:45', NULL),
(1328, 135, 14145, '2020-05-20 21:56:45', NULL),
(1329, 135, 14149, '2020-05-20 21:56:45', NULL),
(1330, 135, 14151, '2020-05-20 21:56:45', NULL),
(1331, 135, 14152, '2020-05-20 21:56:45', NULL),
(1332, 135, 14153, '2020-05-20 21:56:45', NULL),
(1333, 135, 14154, '2020-05-20 21:56:45', NULL),
(1334, 135, 14157, '2020-05-20 21:56:45', NULL),
(1335, 135, 14159, '2020-05-20 21:56:45', NULL),
(1336, 135, 14164, '2020-05-20 21:56:45', NULL),
(1337, 135, 14166, '2020-05-20 21:56:45', NULL),
(1338, 135, 14167, '2020-05-20 21:56:45', NULL),
(1339, 135, 14168, '2020-05-20 21:56:45', NULL),
(1340, 135, 14169, '2020-05-20 21:56:45', NULL),
(1341, 135, 14172, '2020-05-20 21:56:45', NULL),
(1342, 135, 14174, '2020-05-20 21:56:45', NULL),
(1343, 135, 14175, '2020-05-20 21:56:45', NULL),
(1344, 135, 14176, '2020-05-20 21:56:45', NULL),
(1345, 135, 14177, '2020-05-20 21:56:45', NULL),
(1346, 135, 14178, '2020-05-20 21:56:45', NULL),
(1347, 135, 14181, '2020-05-20 21:56:45', NULL),
(1348, 135, 14183, '2020-05-20 21:56:45', NULL),
(1349, 135, 14185, '2020-05-20 21:56:45', NULL),
(1350, 135, 14187, '2020-05-20 21:56:45', NULL),
(1351, 135, 14190, '2020-05-20 21:56:45', NULL),
(1352, 135, 14192, '2020-05-20 21:56:45', NULL),
(1353, 135, 14194, '2020-05-20 21:56:45', NULL),
(1354, 135, 14196, '2020-05-20 21:56:45', NULL),
(1355, 135, 14197, '2020-05-20 21:56:45', NULL),
(1356, 135, 14198, '2020-05-20 21:56:45', NULL),
(1357, 135, 14199, '2020-05-20 21:56:45', NULL),
(1358, 135, 14201, '2020-05-20 21:56:45', NULL),
(1359, 135, 14203, '2020-05-20 21:56:45', NULL),
(1360, 135, 14205, '2020-05-20 21:56:45', NULL),
(1361, 135, 14206, '2020-05-20 21:56:45', NULL),
(1362, 135, 14207, '2020-05-20 21:56:45', NULL),
(1363, 135, 14208, '2020-05-20 21:56:45', NULL),
(1364, 135, 14210, '2020-05-20 21:56:45', NULL),
(1365, 135, 14212, '2020-05-20 21:56:45', NULL),
(1366, 135, 14214, '2020-05-20 21:56:45', NULL),
(1367, 135, 14215, '2020-05-20 21:56:45', NULL),
(1368, 135, 14216, '2020-05-20 21:56:45', NULL),
(1369, 135, 14217, '2020-05-20 21:56:45', NULL),
(1370, 135, 14220, '2020-05-20 21:56:45', NULL),
(1371, 135, 14221, '2020-05-20 21:56:45', NULL),
(1372, 135, 14222, '2020-05-20 21:56:45', NULL),
(1373, 135, 14223, '2020-05-20 21:56:45', NULL),
(1374, 135, 14230, '2020-05-20 21:56:45', NULL),
(1375, 135, 14232, '2020-05-20 21:56:45', NULL),
(1376, 135, 14239, '2020-05-20 21:56:45', NULL),
(1377, 135, 14241, '2020-05-20 21:56:45', NULL),
(1378, 135, 14242, '2020-05-20 21:56:45', NULL),
(1379, 135, 14243, '2020-05-20 21:56:45', NULL),
(1380, 135, 14248, '2020-05-20 21:56:45', NULL),
(1381, 135, 14250, '2020-05-20 21:56:45', NULL),
(1382, 135, 14251, '2020-05-20 21:56:45', NULL),
(1383, 135, 14252, '2020-05-20 21:56:45', NULL),
(1384, 135, 14253, '2020-05-20 21:56:45', NULL),
(1385, 135, 14256, '2020-05-20 21:56:45', NULL),
(1386, 135, 14258, '2020-05-20 21:56:45', NULL),
(1387, 135, 14262, '2020-05-20 21:56:45', NULL),
(1388, 135, 14268, '2020-05-20 21:56:45', NULL),
(1389, 135, 14271, '2020-05-20 21:56:45', NULL),
(1390, 135, 14273, '2020-05-20 21:56:45', NULL),
(1391, 135, 14275, '2020-05-20 21:56:45', NULL),
(1392, 135, 14277, '2020-05-20 21:56:45', NULL),
(1393, 135, 14279, '2020-05-20 21:56:45', NULL),
(1394, 135, 14281, '2020-05-20 21:56:45', NULL),
(1395, 135, 14283, '2020-05-20 21:56:45', NULL),
(1396, 135, 14286, '2020-05-20 21:56:45', NULL),
(1397, 135, 14287, '2020-05-20 21:56:45', NULL),
(1398, 135, 14288, '2020-05-20 21:56:45', NULL),
(1399, 135, 14289, '2020-05-20 21:56:45', NULL),
(1400, 135, 14291, '2020-05-20 21:56:45', NULL),
(1401, 135, 14292, '2020-05-20 21:56:45', NULL),
(1402, 135, 14293, '2020-05-20 21:56:45', NULL),
(1403, 135, 14294, '2020-05-20 21:56:45', NULL),
(1404, 135, 14295, '2020-05-20 21:56:45', NULL),
(1405, 135, 14298, '2020-05-20 21:56:45', NULL),
(1406, 135, 14299, '2020-05-20 21:56:45', NULL),
(1407, 135, 14300, '2020-05-20 21:56:45', NULL),
(1408, 135, 14301, '2020-05-20 21:56:45', NULL),
(1409, 135, 14304, '2020-05-20 21:56:45', NULL),
(1410, 135, 14305, '2020-05-20 21:56:45', NULL),
(1411, 135, 14306, '2020-05-20 21:56:45', NULL),
(1412, 135, 14311, '2020-05-20 21:56:45', NULL),
(1413, 135, 14317, '2020-05-20 21:56:45', NULL),
(1414, 135, 14319, '2020-05-20 21:56:45', NULL),
(1415, 135, 14320, '2020-05-20 21:56:45', NULL),
(1416, 135, 14321, '2020-05-20 21:56:45', NULL),
(1417, 135, 14325, '2020-05-20 21:56:45', NULL),
(1418, 135, 14327, '2020-05-20 21:56:45', NULL),
(1419, 135, 14328, '2020-05-20 21:56:45', NULL),
(1420, 135, 14331, '2020-05-20 21:56:45', NULL),
(1421, 135, 14332, '2020-05-20 21:56:45', NULL),
(1422, 135, 14333, '2020-05-20 21:56:45', NULL),
(1423, 135, 14335, '2020-05-20 21:56:45', NULL),
(1424, 135, 14337, '2020-05-20 21:56:45', NULL),
(1425, 135, 14339, '2020-05-20 21:56:45', NULL),
(1426, 135, 14340, '2020-05-20 21:56:45', NULL),
(1427, 135, 14343, '2020-05-20 21:56:45', NULL),
(1428, 135, 14344, '2020-05-20 21:56:45', NULL),
(1429, 135, 14345, '2020-05-20 21:56:45', NULL),
(1430, 135, 14347, '2020-05-20 21:56:45', NULL),
(1431, 139, 13663, '2020-05-20 21:56:45', NULL),
(1432, 139, 13666, '2020-05-20 21:56:45', NULL),
(1433, 139, 13675, '2020-05-20 21:56:45', NULL),
(1434, 139, 13678, '2020-05-20 21:56:45', NULL),
(1435, 139, 13681, '2020-05-20 21:56:45', NULL),
(1436, 139, 13690, '2020-05-20 21:56:45', NULL),
(1437, 139, 13693, '2020-05-20 21:56:45', NULL),
(1438, 139, 13699, '2020-05-20 21:56:45', NULL),
(1439, 139, 13702, '2020-05-20 21:56:45', NULL),
(1440, 139, 13705, '2020-05-20 21:56:45', NULL),
(1441, 139, 13711, '2020-05-20 21:56:45', NULL),
(1442, 139, 13714, '2020-05-20 21:56:45', NULL),
(1443, 139, 13723, '2020-05-20 21:56:45', NULL),
(1444, 139, 13726, '2020-05-20 21:56:45', NULL),
(1445, 139, 13735, '2020-05-20 21:56:45', NULL),
(1446, 139, 13738, '2020-05-20 21:56:45', NULL),
(1447, 139, 13753, '2020-05-20 21:56:45', NULL),
(1448, 139, 13755, '2020-05-20 21:56:45', NULL),
(1449, 139, 13760, '2020-05-20 21:56:45', NULL),
(1450, 139, 13762, '2020-05-20 21:56:45', NULL),
(1451, 139, 13764, '2020-05-20 21:56:45', NULL),
(1452, 139, 13769, '2020-05-20 21:56:45', NULL),
(1453, 139, 13771, '2020-05-20 21:56:45', NULL),
(1454, 139, 13773, '2020-05-20 21:56:45', NULL),
(1455, 139, 13781, '2020-05-20 21:56:45', NULL),
(1456, 139, 13793, '2020-05-20 21:56:45', NULL),
(1457, 139, 13795, '2020-05-20 21:56:45', NULL),
(1458, 139, 13797, '2020-05-20 21:56:45', NULL),
(1459, 139, 13801, '2020-05-20 21:56:45', NULL),
(1460, 139, 13803, '2020-05-20 21:56:45', NULL),
(1461, 139, 13807, '2020-05-20 21:56:45', NULL),
(1462, 139, 13809, '2020-05-20 21:56:45', NULL),
(1463, 139, 13820, '2020-05-20 21:56:45', NULL),
(1464, 139, 13831, '2020-05-20 21:56:45', NULL),
(1465, 139, 13833, '2020-05-20 21:56:45', NULL),
(1466, 139, 13838, '2020-05-20 21:56:45', NULL),
(1467, 139, 13844, '2020-05-20 21:56:45', NULL),
(1468, 139, 13849, '2020-05-20 21:56:45', NULL),
(1469, 139, 13851, '2020-05-20 21:56:45', NULL),
(1470, 139, 13865, '2020-05-20 21:56:45', NULL),
(1471, 139, 13867, '2020-05-20 21:56:45', NULL),
(1472, 139, 13869, '2020-05-20 21:56:45', NULL),
(1473, 139, 13874, '2020-05-20 21:56:45', NULL),
(1474, 139, 13880, '2020-05-20 21:56:45', NULL),
(1475, 139, 13886, '2020-05-20 21:56:45', NULL),
(1476, 139, 13892, '2020-05-20 21:56:45', NULL),
(1479, 139, 13904, '2020-05-20 21:56:45', NULL),
(1480, 139, 13910, '2020-05-20 21:56:45', NULL),
(1481, 139, 13916, '2020-05-20 21:56:45', NULL),
(1482, 139, 13918, '2020-05-20 21:56:45', NULL),
(1483, 139, 13919, '2020-05-20 21:56:45', NULL),
(1484, 139, 13942, '2020-05-20 21:56:45', NULL),
(1485, 139, 13943, '2020-05-20 21:56:45', NULL),
(1486, 139, 13955, '2020-05-20 21:56:45', NULL),
(1487, 139, 13964, '2020-05-20 21:56:45', NULL),
(1488, 139, 13966, '2020-05-20 21:56:45', NULL),
(1489, 139, 13967, '2020-05-20 21:56:45', NULL),
(1490, 139, 13973, '2020-05-20 21:56:45', NULL),
(1491, 139, 13975, '2020-05-20 21:56:45', NULL),
(1492, 139, 13976, '2020-05-20 21:56:45', NULL),
(1493, 139, 13982, '2020-05-20 21:56:45', NULL),
(1494, 139, 13984, '2020-05-20 21:56:45', NULL),
(1495, 139, 13985, '2020-05-20 21:56:45', NULL),
(1496, 139, 13993, '2020-05-20 21:56:45', NULL),
(1497, 139, 13994, '2020-05-20 21:56:45', NULL),
(1498, 139, 14003, '2020-05-20 21:56:45', NULL),
(1499, 139, 14005, '2020-05-20 21:56:45', NULL),
(1500, 139, 14014, '2020-05-20 21:56:45', NULL),
(1501, 139, 14017, '2020-05-20 21:56:45', NULL),
(1502, 139, 14023, '2020-05-20 21:56:45', NULL),
(1503, 139, 14026, '2020-05-20 21:56:45', NULL),
(1504, 139, 14029, '2020-05-20 21:56:45', NULL),
(1505, 139, 14035, '2020-05-20 21:56:45', NULL),
(1506, 139, 14038, '2020-05-20 21:56:45', NULL),
(1507, 139, 14044, '2020-05-20 21:56:45', NULL),
(1508, 139, 14047, '2020-05-20 21:56:45', NULL),
(1509, 139, 14050, '2020-05-20 21:56:45', NULL),
(1510, 139, 14071, '2020-05-20 21:56:45', NULL),
(1511, 139, 14073, '2020-05-20 21:56:45', NULL),
(1512, 139, 14077, '2020-05-20 21:56:45', NULL),
(1513, 139, 14079, '2020-05-20 21:56:45', NULL),
(1514, 139, 14084, '2020-05-20 21:56:45', NULL),
(1515, 139, 14087, '2020-05-20 21:56:45', NULL),
(1516, 139, 14089, '2020-05-20 21:56:45', NULL),
(1517, 139, 14091, '2020-05-20 21:56:45', NULL),
(1518, 139, 14095, '2020-05-20 21:56:45', NULL),
(1519, 139, 14101, '2020-05-20 21:56:45', NULL),
(1520, 139, 14106, '2020-05-20 21:56:45', NULL),
(1521, 139, 14108, '2020-05-20 21:56:45', NULL),
(1522, 139, 14136, '2020-05-20 21:56:45', NULL),
(1523, 139, 14160, '2020-05-20 21:56:45', NULL),
(1524, 139, 14226, '2020-05-20 21:56:45', NULL),
(1525, 139, 14235, '2020-05-20 21:56:45', NULL),
(1526, 139, 14244, '2020-05-20 21:56:45', NULL),
(1527, 139, 14259, '2020-05-20 21:56:45', NULL),
(1528, 139, 14265, '2020-05-20 21:56:45', NULL),
(1529, 139, 14307, '2020-05-20 21:56:45', NULL),
(1530, 139, 14313, '2020-05-20 21:56:45', NULL),
(1531, 139, 14322, '2020-05-20 21:56:45', NULL),
(1532, 142, 13664, '2020-05-20 21:56:45', NULL),
(1533, 142, 13667, '2020-05-20 21:56:45', NULL),
(1534, 142, 13670, '2020-05-20 21:56:45', NULL),
(1535, 142, 13672, '2020-05-20 21:56:45', NULL),
(1536, 142, 13679, '2020-05-20 21:56:45', NULL),
(1537, 142, 13682, '2020-05-20 21:56:45', NULL),
(1538, 142, 13685, '2020-05-20 21:56:45', NULL),
(1539, 142, 13687, '2020-05-20 21:56:45', NULL),
(1540, 142, 13691, '2020-05-20 21:56:45', NULL),
(1541, 142, 13694, '2020-05-20 21:56:45', NULL),
(1542, 142, 13697, '2020-05-20 21:56:45', NULL),
(1543, 142, 13703, '2020-05-20 21:56:45', NULL),
(1544, 142, 13706, '2020-05-20 21:56:45', NULL),
(1545, 142, 13708, '2020-05-20 21:56:45', NULL),
(1546, 142, 13715, '2020-05-20 21:56:45', NULL),
(1547, 142, 13720, '2020-05-20 21:56:45', NULL),
(1548, 142, 13727, '2020-05-20 21:56:45', NULL),
(1549, 142, 13732, '2020-05-20 21:56:45', NULL),
(1550, 142, 13739, '2020-05-20 21:56:45', NULL),
(1551, 142, 13744, '2020-05-20 21:56:45', NULL),
(1552, 142, 13761, '2020-05-20 21:56:45', NULL),
(1553, 142, 13770, '2020-05-20 21:56:45', NULL),
(1554, 142, 13782, '2020-05-20 21:56:45', NULL),
(1555, 142, 13794, '2020-05-20 21:56:45', NULL),
(1556, 142, 13821, '2020-05-20 21:56:45', NULL),
(1557, 142, 13839, '2020-05-20 21:56:45', NULL),
(1558, 142, 13845, '2020-05-20 21:56:45', NULL),
(1559, 142, 13866, '2020-05-20 21:56:45', NULL),
(1560, 142, 13875, '2020-05-20 21:56:45', NULL),
(1561, 142, 13881, '2020-05-20 21:56:45', NULL),
(1562, 142, 13887, '2020-05-20 21:56:45', NULL),
(1563, 142, 13893, '2020-05-20 21:56:45', NULL),
(1564, 142, 13908, '2020-05-20 21:56:45', NULL),
(1565, 142, 13924, '2020-05-20 21:56:45', NULL),
(1566, 142, 13929, '2020-05-20 21:56:45', NULL),
(1567, 142, 13930, '2020-05-20 21:56:45', NULL),
(1568, 142, 13935, '2020-05-20 21:56:45', NULL),
(1569, 142, 13936, '2020-05-20 21:56:45', NULL),
(1570, 142, 13941, '2020-05-20 21:56:45', NULL),
(1571, 142, 13945, '2020-05-20 21:56:45', NULL),
(1572, 142, 13953, '2020-05-20 21:56:45', NULL),
(1573, 142, 13962, '2020-05-20 21:56:45', NULL),
(1574, 142, 13971, '2020-05-20 21:56:45', NULL),
(1575, 142, 13992, '2020-05-20 21:56:45', NULL),
(1576, 142, 14001, '2020-05-20 21:56:45', NULL),
(1577, 142, 14006, '2020-05-20 21:56:45', NULL),
(1578, 142, 14009, '2020-05-20 21:56:45', NULL),
(1579, 142, 14011, '2020-05-20 21:56:45', NULL),
(1580, 142, 14018, '2020-05-20 21:56:45', NULL),
(1581, 142, 14020, '2020-05-20 21:56:45', NULL),
(1582, 142, 14027, '2020-05-20 21:56:45', NULL),
(1583, 142, 14030, '2020-05-20 21:56:45', NULL),
(1584, 142, 14033, '2020-05-20 21:56:45', NULL),
(1585, 142, 14039, '2020-05-20 21:56:45', NULL),
(1586, 142, 14042, '2020-05-20 21:56:45', NULL),
(1587, 142, 14048, '2020-05-20 21:56:45', NULL),
(1588, 142, 14051, '2020-05-20 21:56:45', NULL),
(1589, 142, 14054, '2020-05-20 21:56:45', NULL),
(1590, 142, 14085, '2020-05-20 21:56:45', NULL),
(1591, 142, 14088, '2020-05-20 21:56:45', NULL),
(1592, 142, 14096, '2020-05-20 21:56:45', NULL),
(1593, 142, 14102, '2020-05-20 21:56:45', NULL),
(1594, 142, 14123, '2020-05-20 21:56:45', NULL),
(1595, 142, 14124, '2020-05-20 21:56:45', NULL),
(1596, 142, 14132, '2020-05-20 21:56:45', NULL),
(1597, 142, 14135, '2020-05-20 21:56:45', NULL),
(1598, 147, 13676, '2020-05-20 21:56:45', NULL),
(1599, 147, 13677, '2020-05-20 21:56:45', NULL),
(1600, 147, 13700, '2020-05-20 21:56:45', NULL),
(1601, 147, 13701, '2020-05-20 21:56:45', NULL),
(1602, 147, 13712, '2020-05-20 21:56:45', NULL),
(1603, 147, 13713, '2020-05-20 21:56:45', NULL),
(1604, 147, 13717, '2020-05-20 21:56:45', NULL),
(1605, 147, 13718, '2020-05-20 21:56:45', NULL),
(1606, 147, 13719, '2020-05-20 21:56:45', NULL),
(1607, 147, 13724, '2020-05-20 21:56:45', NULL),
(1608, 147, 13725, '2020-05-20 21:56:45', NULL),
(1609, 147, 13729, '2020-05-20 21:56:45', NULL),
(1610, 147, 13730, '2020-05-20 21:56:45', NULL),
(1611, 147, 13731, '2020-05-20 21:56:45', NULL),
(1612, 147, 13736, '2020-05-20 21:56:45', NULL),
(1613, 147, 13737, '2020-05-20 21:56:45', NULL),
(1614, 147, 13741, '2020-05-20 21:56:45', NULL),
(1615, 147, 13742, '2020-05-20 21:56:45', NULL),
(1616, 147, 13743, '2020-05-20 21:56:45', NULL),
(1617, 147, 13751, '2020-05-20 21:56:45', NULL),
(1618, 147, 13757, '2020-05-20 21:56:45', NULL),
(1619, 147, 13778, '2020-05-20 21:56:45', NULL),
(1620, 147, 13790, '2020-05-20 21:56:45', NULL),
(1621, 147, 13799, '2020-05-20 21:56:45', NULL),
(1622, 147, 13817, '2020-05-20 21:56:45', NULL),
(1623, 147, 13829, '2020-05-20 21:56:45', NULL),
(1624, 147, 13871, '2020-05-20 21:56:45', NULL),
(1625, 147, 13877, '2020-05-20 21:56:45', NULL),
(1626, 147, 13898, '2020-05-20 21:56:45', NULL),
(1627, 147, 13903, '2020-05-20 21:56:45', NULL),
(1628, 147, 13905, '2020-05-20 21:56:45', NULL),
(1629, 147, 13909, '2020-05-20 21:56:45', NULL),
(1630, 147, 13911, '2020-05-20 21:56:45', NULL),
(1631, 147, 13912, '2020-05-20 21:56:45', NULL),
(1632, 147, 13914, '2020-05-20 21:56:45', NULL),
(1633, 147, 13915, '2020-05-20 21:56:45', NULL),
(1634, 147, 13917, '2020-05-20 21:56:45', NULL),
(1635, 147, 13921, '2020-05-20 21:56:45', NULL),
(1636, 147, 13923, '2020-05-20 21:56:45', NULL),
(1637, 147, 13926, '2020-05-20 21:56:45', NULL),
(1638, 147, 13932, '2020-05-20 21:56:45', NULL),
(1639, 147, 13938, '2020-05-20 21:56:45', NULL),
(1640, 147, 13947, '2020-05-20 21:56:45', NULL),
(1641, 147, 13948, '2020-05-20 21:56:45', NULL),
(1642, 147, 13950, '2020-05-20 21:56:45', NULL),
(1643, 147, 13954, '2020-05-20 21:56:45', NULL),
(1644, 147, 13956, '2020-05-20 21:56:45', NULL),
(1645, 147, 13957, '2020-05-20 21:56:45', NULL),
(1646, 147, 13959, '2020-05-20 21:56:45', NULL),
(1647, 147, 13963, '2020-05-20 21:56:45', NULL),
(1648, 147, 13965, '2020-05-20 21:56:45', NULL),
(1649, 147, 13972, '2020-05-20 21:56:45', NULL),
(1650, 147, 13974, '2020-05-20 21:56:45', NULL),
(1651, 147, 13978, '2020-05-20 21:56:45', NULL),
(1652, 147, 13980, '2020-05-20 21:56:45', NULL),
(1653, 147, 13981, '2020-05-20 21:56:45', NULL),
(1654, 147, 13983, '2020-05-20 21:56:45', NULL),
(1655, 147, 13987, '2020-05-20 21:56:45', NULL),
(1656, 147, 13989, '2020-05-20 21:56:45', NULL),
(1657, 147, 13996, '2020-05-20 21:56:45', NULL),
(1658, 147, 13998, '2020-05-20 21:56:45', NULL),
(1659, 147, 14002, '2020-05-20 21:56:45', NULL),
(1660, 147, 14004, '2020-05-20 21:56:45', NULL),
(1661, 147, 14015, '2020-05-20 21:56:45', NULL),
(1662, 147, 14016, '2020-05-20 21:56:45', NULL),
(1663, 147, 14024, '2020-05-20 21:56:45', NULL),
(1664, 147, 14025, '2020-05-20 21:56:45', NULL),
(1665, 147, 14036, '2020-05-20 21:56:45', NULL),
(1666, 147, 14037, '2020-05-20 21:56:45', NULL),
(1667, 147, 14045, '2020-05-20 21:56:45', NULL),
(1668, 147, 14046, '2020-05-20 21:56:45', NULL),
(1669, 147, 14060, '2020-05-20 21:56:45', NULL),
(1670, 147, 14066, '2020-05-20 21:56:45', NULL),
(1671, 147, 14069, '2020-05-20 21:56:45', NULL),
(1672, 147, 14098, '2020-05-20 21:56:45', NULL),
(1673, 147, 14104, '2020-05-20 21:56:45', NULL),
(1674, 147, 14113, '2020-05-20 21:56:45', NULL),
(1675, 147, 14119, '2020-05-20 21:56:45', NULL),
(1676, 147, 14126, '2020-05-20 21:56:45', NULL),
(1677, 147, 14127, '2020-05-20 21:56:45', NULL),
(1678, 147, 14129, '2020-05-20 21:56:45', NULL),
(1679, 147, 14138, '2020-05-20 21:56:45', NULL),
(1680, 147, 14146, '2020-05-20 21:56:45', NULL),
(1681, 147, 14147, '2020-05-20 21:56:45', NULL),
(1682, 147, 14155, '2020-05-20 21:56:45', NULL),
(1683, 147, 14156, '2020-05-20 21:56:45', NULL),
(1684, 147, 14162, '2020-05-20 21:56:45', NULL),
(1685, 147, 14170, '2020-05-20 21:56:45', NULL),
(1686, 147, 14171, '2020-05-20 21:56:45', NULL),
(1687, 147, 14179, '2020-05-20 21:56:46', NULL),
(1688, 147, 14180, '2020-05-20 21:56:46', NULL),
(1689, 147, 14188, '2020-05-20 21:56:46', NULL),
(1690, 147, 14189, '2020-05-20 21:56:46', NULL),
(1691, 147, 14218, '2020-05-20 21:56:46', NULL),
(1692, 147, 14219, '2020-05-20 21:56:46', NULL),
(1693, 147, 14224, '2020-05-20 21:56:46', NULL),
(1694, 147, 14225, '2020-05-20 21:56:46', NULL),
(1695, 147, 14228, '2020-05-20 21:56:46', NULL),
(1696, 147, 14233, '2020-05-20 21:56:46', NULL),
(1697, 147, 14234, '2020-05-20 21:56:46', NULL),
(1698, 147, 14237, '2020-05-20 21:56:46', NULL),
(1699, 147, 14246, '2020-05-20 21:56:46', NULL),
(1700, 147, 14254, '2020-05-20 21:56:46', NULL),
(1701, 147, 14255, '2020-05-20 21:56:46', NULL),
(1702, 147, 14261, '2020-05-20 21:56:46', NULL),
(1703, 147, 14263, '2020-05-20 21:56:46', NULL),
(1704, 147, 14264, '2020-05-20 21:56:46', NULL),
(1705, 147, 14267, '2020-05-20 21:56:46', NULL),
(1706, 147, 14269, '2020-05-20 21:56:46', NULL),
(1707, 147, 14270, '2020-05-20 21:56:46', NULL),
(1708, 147, 14284, '2020-05-20 21:56:46', NULL),
(1709, 147, 14285, '2020-05-20 21:56:46', NULL),
(1710, 147, 14296, '2020-05-20 21:56:46', NULL),
(1711, 147, 14297, '2020-05-20 21:56:46', NULL),
(1712, 147, 14302, '2020-05-20 21:56:46', NULL),
(1713, 147, 14303, '2020-05-20 21:56:46', NULL),
(1714, 147, 14309, '2020-05-20 21:56:46', NULL),
(1715, 147, 14315, '2020-05-20 21:56:46', NULL),
(1716, 147, 14324, '2020-05-20 21:56:46', NULL),
(1717, 147, 14329, '2020-05-20 21:56:46', NULL),
(1718, 147, 14330, '2020-05-20 21:56:46', NULL),
(1719, 147, 14341, '2020-05-20 21:56:46', NULL),
(1720, 147, 14342, '2020-05-20 21:56:46', NULL),
(1721, 150, 13671, '2020-05-20 21:56:46', NULL),
(1722, 150, 13674, '2020-05-20 21:56:46', NULL),
(1723, 150, 13686, '2020-05-20 21:56:46', NULL),
(1724, 150, 13689, '2020-05-20 21:56:46', NULL),
(1725, 150, 13698, '2020-05-20 21:56:46', NULL),
(1726, 150, 13710, '2020-05-20 21:56:46', NULL),
(1727, 150, 13722, '2020-05-20 21:56:46', NULL),
(1728, 150, 13734, '2020-05-20 21:56:46', NULL),
(1729, 150, 13746, '2020-05-20 21:56:46', NULL),
(1730, 150, 13750, '2020-05-20 21:56:46', NULL),
(1731, 150, 13754, '2020-05-20 21:56:46', NULL),
(1732, 150, 13756, '2020-05-20 21:56:46', NULL),
(1733, 150, 13759, '2020-05-20 21:56:46', NULL),
(1734, 150, 13763, '2020-05-20 21:56:46', NULL),
(1735, 150, 13768, '2020-05-20 21:56:46', NULL),
(1736, 150, 13772, '2020-05-20 21:56:46', NULL),
(1737, 150, 13777, '2020-05-20 21:56:46', NULL),
(1738, 150, 13780, '2020-05-20 21:56:46', NULL),
(1739, 150, 13789, '2020-05-20 21:56:46', NULL),
(1740, 150, 13792, '2020-05-20 21:56:46', NULL),
(1741, 150, 13796, '2020-05-20 21:56:46', NULL),
(1742, 150, 13798, '2020-05-20 21:56:46', NULL),
(1743, 150, 13802, '2020-05-20 21:56:46', NULL),
(1744, 150, 13804, '2020-05-20 21:56:46', NULL),
(1745, 150, 13808, '2020-05-20 21:56:46', NULL),
(1746, 150, 13810, '2020-05-20 21:56:46', NULL),
(1747, 150, 13813, '2020-05-20 21:56:46', NULL),
(1748, 150, 13816, '2020-05-20 21:56:46', NULL),
(1749, 150, 13819, '2020-05-20 21:56:46', NULL),
(1750, 150, 13822, '2020-05-20 21:56:46', NULL),
(1751, 150, 13825, '2020-05-20 21:56:46', NULL),
(1752, 150, 13828, '2020-05-20 21:56:46', NULL),
(1753, 150, 13832, '2020-05-20 21:56:46', NULL),
(1754, 150, 13834, '2020-05-20 21:56:46', NULL),
(1755, 150, 13837, '2020-05-20 21:56:46', NULL),
(1756, 150, 13840, '2020-05-20 21:56:46', NULL),
(1757, 150, 13843, '2020-05-20 21:56:46', NULL),
(1758, 150, 13846, '2020-05-20 21:56:46', NULL),
(1759, 150, 13850, '2020-05-20 21:56:46', NULL),
(1760, 150, 13852, '2020-05-20 21:56:46', NULL),
(1761, 150, 13855, '2020-05-20 21:56:46', NULL),
(1762, 150, 13858, '2020-05-20 21:56:46', NULL),
(1763, 150, 13861, '2020-05-20 21:56:46', NULL),
(1764, 150, 13864, '2020-05-20 21:56:46', NULL),
(1765, 150, 13868, '2020-05-20 21:56:46', NULL),
(1766, 150, 13870, '2020-05-20 21:56:46', NULL),
(1767, 150, 13873, '2020-05-20 21:56:46', NULL),
(1768, 150, 13876, '2020-05-20 21:56:46', NULL),
(1769, 150, 13879, '2020-05-20 21:56:46', NULL),
(1770, 150, 13882, '2020-05-20 21:56:46', NULL),
(1771, 150, 13885, '2020-05-20 21:56:46', NULL),
(1772, 150, 13888, '2020-05-20 21:56:46', NULL),
(1773, 150, 13891, '2020-05-20 21:56:46', NULL),
(1774, 150, 13894, '2020-05-20 21:56:46', NULL),
(1775, 150, 13897, '2020-05-20 21:56:46', NULL),
(1776, 150, 13906, '2020-05-20 21:56:46', NULL),
(1777, 150, 13907, '2020-05-20 21:56:46', NULL),
(1778, 150, 13913, '2020-05-20 21:56:46', NULL),
(1779, 150, 13922, '2020-05-20 21:56:46', NULL),
(1780, 150, 13927, '2020-05-20 21:56:46', NULL),
(1781, 150, 13928, '2020-05-20 21:56:46', NULL),
(1782, 150, 13933, '2020-05-20 21:56:46', NULL),
(1783, 150, 13934, '2020-05-20 21:56:46', NULL),
(1784, 150, 13939, '2020-05-20 21:56:46', NULL),
(1785, 150, 13940, '2020-05-20 21:56:46', NULL),
(1786, 150, 13949, '2020-05-20 21:56:46', NULL),
(1787, 150, 13951, '2020-05-20 21:56:46', NULL),
(1788, 150, 13952, '2020-05-20 21:56:46', NULL),
(1789, 150, 13958, '2020-05-20 21:56:46', NULL),
(1790, 150, 13960, '2020-05-20 21:56:46', NULL),
(1791, 150, 13961, '2020-05-20 21:56:46', NULL),
(1792, 150, 13969, '2020-05-20 21:56:46', NULL),
(1793, 150, 13970, '2020-05-20 21:56:46', NULL),
(1794, 150, 13979, '2020-05-20 21:56:46', NULL),
(1795, 150, 13988, '2020-05-20 21:56:46', NULL),
(1796, 150, 13990, '2020-05-20 21:56:46', NULL),
(1797, 150, 13991, '2020-05-20 21:56:46', NULL),
(1798, 150, 13997, '2020-05-20 21:56:46', NULL),
(1799, 150, 13999, '2020-05-20 21:56:46', NULL),
(1800, 150, 14000, '2020-05-20 21:56:46', NULL),
(1801, 150, 14010, '2020-05-20 21:56:46', NULL),
(1802, 150, 14013, '2020-05-20 21:56:46', NULL),
(1803, 150, 14022, '2020-05-20 21:56:46', NULL),
(1804, 150, 14034, '2020-05-20 21:56:46', NULL),
(1805, 150, 14043, '2020-05-20 21:56:46', NULL),
(1806, 150, 14055, '2020-05-20 21:56:46', NULL),
(1807, 150, 14056, '2020-05-20 21:56:46', NULL),
(1808, 150, 14059, '2020-05-20 21:56:46', NULL),
(1809, 150, 14062, '2020-05-20 21:56:46', NULL),
(1810, 150, 14065, '2020-05-20 21:56:46', NULL),
(1811, 150, 14068, '2020-05-20 21:56:46', NULL),
(1812, 150, 14072, '2020-05-20 21:56:46', NULL),
(1813, 150, 14074, '2020-05-20 21:56:46', NULL),
(1814, 150, 14078, '2020-05-20 21:56:46', NULL),
(1815, 150, 14080, '2020-05-20 21:56:46', NULL),
(1816, 150, 14083, '2020-05-20 21:56:46', NULL),
(1817, 150, 14086, '2020-05-20 21:56:46', NULL),
(1818, 150, 14090, '2020-05-20 21:56:46', NULL),
(1819, 150, 14092, '2020-05-20 21:56:46', NULL),
(1820, 150, 14094, '2020-05-20 21:56:46', NULL),
(1821, 150, 14097, '2020-05-20 21:56:46', NULL),
(1822, 150, 14100, '2020-05-20 21:56:46', NULL),
(1823, 150, 14103, '2020-05-20 21:56:46', NULL),
(1824, 150, 14107, '2020-05-20 21:56:46', NULL),
(1825, 150, 14109, '2020-05-20 21:56:46', NULL),
(1826, 150, 14112, '2020-05-20 21:56:46', NULL),
(1827, 150, 14115, '2020-05-20 21:56:46', NULL),
(1828, 150, 14118, '2020-05-20 21:56:46', NULL),
(1829, 150, 14121, '2020-05-20 21:56:46', NULL),
(1830, 150, 14122, '2020-05-20 21:56:46', NULL),
(1831, 150, 14128, '2020-05-20 21:56:46', NULL),
(1832, 150, 14130, '2020-05-20 21:56:46', NULL),
(1833, 150, 14131, '2020-05-20 21:56:46', NULL),
(1834, 150, 14133, '2020-05-20 21:56:46', NULL),
(1835, 150, 14134, '2020-05-20 21:56:46', NULL),
(1836, 150, 14137, '2020-05-20 21:56:46', NULL),
(1837, 150, 14141, '2020-05-20 21:56:46', NULL),
(1838, 150, 14150, '2020-05-20 21:56:46', NULL),
(1839, 150, 14158, '2020-05-20 21:56:46', NULL),
(1840, 150, 14161, '2020-05-20 21:56:46', NULL),
(1841, 150, 14165, '2020-05-20 21:56:46', NULL),
(1842, 150, 14173, '2020-05-20 21:56:46', NULL),
(1843, 150, 14182, '2020-05-20 21:56:46', NULL),
(1844, 150, 14186, '2020-05-20 21:56:46', NULL),
(1845, 150, 14191, '2020-05-20 21:56:46', NULL),
(1846, 150, 14195, '2020-05-20 21:56:46', NULL),
(1847, 150, 14200, '2020-05-20 21:56:46', NULL),
(1848, 150, 14204, '2020-05-20 21:56:46', NULL),
(1849, 150, 14209, '2020-05-20 21:56:46', NULL),
(1850, 150, 14213, '2020-05-20 21:56:46', NULL),
(1851, 150, 14227, '2020-05-20 21:56:46', NULL),
(1852, 150, 14231, '2020-05-20 21:56:46', NULL),
(1853, 150, 14236, '2020-05-20 21:56:46', NULL),
(1854, 150, 14240, '2020-05-20 21:56:46', NULL),
(1855, 150, 14245, '2020-05-20 21:56:46', NULL),
(1856, 150, 14249, '2020-05-20 21:56:46', NULL),
(1857, 150, 14257, '2020-05-20 21:56:46', NULL),
(1858, 150, 14260, '2020-05-20 21:56:46', NULL),
(1859, 150, 14266, '2020-05-20 21:56:46', NULL),
(1860, 150, 14272, '2020-05-20 21:56:46', NULL),
(1861, 150, 14276, '2020-05-20 21:56:46', NULL),
(1862, 150, 14278, '2020-05-20 21:56:46', NULL),
(1863, 150, 14282, '2020-05-20 21:56:46', NULL),
(1864, 150, 14290, '2020-05-20 21:56:46', NULL),
(1865, 150, 14308, '2020-05-20 21:56:46', NULL),
(1866, 150, 14312, '2020-05-20 21:56:46', NULL),
(1867, 150, 14314, '2020-05-20 21:56:46', NULL),
(1868, 150, 14318, '2020-05-20 21:56:46', NULL),
(1869, 150, 14323, '2020-05-20 21:56:46', NULL),
(1870, 150, 14326, '2020-05-20 21:56:46', NULL),
(1871, 150, 14336, '2020-05-20 21:56:46', NULL),
(1872, 150, 14338, '2020-05-20 21:56:46', NULL),
(1873, 150, 14348, '2020-05-20 21:56:46', NULL),
(1874, 155, 13673, '2020-05-20 21:56:46', NULL),
(1875, 155, 13688, '2020-05-20 21:56:46', NULL),
(1876, 155, 13709, '2020-05-20 21:56:46', NULL),
(1877, 155, 13721, '2020-05-20 21:56:46', NULL),
(1878, 155, 13733, '2020-05-20 21:56:46', NULL),
(1879, 155, 13745, '2020-05-20 21:56:46', NULL),
(1880, 155, 13747, '2020-05-20 21:56:46', NULL),
(1881, 155, 13765, '2020-05-20 21:56:46', NULL),
(1882, 155, 13775, '2020-05-20 21:56:46', NULL),
(1883, 155, 13776, '2020-05-20 21:56:46', NULL),
(1884, 155, 13784, '2020-05-20 21:56:46', NULL),
(1885, 155, 13785, '2020-05-20 21:56:46', NULL),
(1886, 155, 13786, '2020-05-20 21:56:46', NULL),
(1888, 155, 13920, '2020-05-20 21:56:46', NULL),
(1889, 155, 13944, '2020-05-20 21:56:46', NULL),
(1890, 155, 13968, '2020-05-20 21:56:46', NULL),
(1891, 155, 13977, '2020-05-20 21:56:46', NULL),
(1892, 155, 13986, '2020-05-20 21:56:46', NULL),
(1893, 155, 13995, '2020-05-20 21:56:46', NULL),
(1894, 155, 14012, '2020-05-20 21:56:46', NULL),
(1895, 155, 14021, '2020-05-20 21:56:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_category_feedback_resource`
--

CREATE TABLE `evaluation_category_feedback_resource` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluation_category_feedback_id` int(10) UNSIGNED NOT NULL,
  `resource_id` int(10) UNSIGNED NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_category_feedback_resource`
--

INSERT INTO `evaluation_category_feedback_resource` (`id`, `evaluation_category_feedback_id`, `resource_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 1484, 45, 1, '2020-05-21 00:46:49', NULL),
(2, 1485, 45, 1, '2020-05-21 00:46:49', NULL),
(3, 1889, 61, 1, '2020-05-21 00:46:49', NULL),
(4, 1571, 48, 0, '2020-05-21 00:46:49', NULL),
(5, 1291, 41, 0, '2020-05-21 00:46:49', NULL),
(6, 1640, 53, 0, '2020-05-21 00:46:49', NULL),
(7, 1641, 53, 1, '2020-05-21 00:46:49', NULL),
(8, 1786, 56, 1, '2020-05-21 00:46:49', NULL),
(9, 1642, 53, 1, '2020-05-21 00:46:49', NULL),
(10, 1787, 56, 0, '2020-05-21 00:46:49', NULL),
(11, 1788, 56, 0, '2020-05-21 00:46:49', NULL),
(12, 1572, 48, 0, '2020-05-21 00:46:49', NULL),
(13, 1643, 53, 1, '2020-05-21 00:46:49', NULL),
(14, 1486, 45, 1, '2020-05-21 00:46:49', NULL),
(15, 1644, 53, 1, '2020-05-21 00:46:49', NULL),
(16, 1645, 53, 0, '2020-05-21 00:46:49', NULL),
(17, 1789, 56, 0, '2020-05-21 00:46:49', NULL),
(18, 1646, 53, 0, '2020-05-21 00:46:49', NULL),
(19, 1790, 56, 1, '2020-05-21 00:46:49', NULL),
(20, 1791, 56, 1, '2020-05-21 00:46:49', NULL),
(21, 1573, 48, 1, '2020-05-21 00:46:49', NULL),
(22, 1647, 53, 0, '2020-05-21 00:46:49', NULL),
(23, 1487, 45, 1, '2020-05-21 00:46:49', NULL),
(24, 1648, 53, 1, '2020-05-21 00:46:49', NULL),
(25, 1488, 45, 1, '2020-05-21 00:46:49', NULL),
(26, 1489, 45, 1, '2020-05-21 00:46:49', NULL),
(27, 1890, 61, 1, '2020-05-21 00:46:49', NULL),
(28, 1792, 56, 1, '2020-05-21 00:46:49', NULL),
(29, 1793, 56, 0, '2020-05-21 00:46:49', NULL),
(30, 1574, 48, 0, '2020-05-21 00:46:49', NULL),
(31, 1649, 53, 1, '2020-05-21 00:46:49', NULL),
(32, 1490, 45, 1, '2020-05-21 00:46:49', NULL),
(33, 1650, 53, 1, '2020-05-21 00:46:49', NULL),
(34, 1491, 45, 1, '2020-05-21 00:46:49', NULL),
(35, 1492, 45, 1, '2020-05-21 00:46:49', NULL),
(36, 1891, 61, 1, '2020-05-21 00:46:49', NULL),
(37, 1651, 53, 0, '2020-05-21 00:46:49', NULL),
(38, 1794, 56, 1, '2020-05-21 00:46:49', NULL),
(39, 1652, 53, 0, '2020-05-21 00:46:49', NULL),
(40, 1653, 53, 0, '2020-05-21 00:46:49', NULL),
(41, 1493, 45, 1, '2020-05-21 00:46:49', NULL),
(42, 1654, 53, 0, '2020-05-21 00:46:49', NULL),
(43, 1494, 45, 1, '2020-05-21 00:46:49', NULL),
(44, 1495, 45, 1, '2020-05-21 00:46:49', NULL),
(45, 1892, 61, 1, '2020-05-21 00:46:49', NULL),
(46, 1655, 53, 0, '2020-05-21 00:46:49', NULL),
(47, 1795, 56, 1, '2020-05-21 00:46:49', NULL),
(48, 1656, 53, 0, '2020-05-21 00:46:49', NULL),
(49, 1796, 56, 0, '2020-05-21 00:46:49', NULL),
(50, 1797, 56, 0, '2020-05-21 00:46:49', NULL),
(51, 1575, 48, 0, '2020-05-21 00:46:49', NULL),
(52, 1496, 45, 0, '2020-05-21 00:46:49', NULL),
(53, 1497, 45, 0, '2020-05-21 00:46:49', NULL),
(54, 1893, 61, 1, '2020-05-21 00:46:49', NULL),
(55, 1657, 53, 1, '2020-05-21 00:46:49', NULL),
(56, 1798, 56, 0, '2020-05-21 00:46:49', NULL),
(57, 1658, 53, 1, '2020-05-21 00:46:49', NULL),
(58, 1799, 56, 0, '2020-05-21 00:46:49', NULL),
(59, 1800, 56, 0, '2020-05-21 00:46:49', NULL),
(60, 1576, 48, 0, '2020-05-21 00:46:49', NULL),
(61, 1659, 53, 1, '2020-05-21 00:46:49', NULL),
(62, 1498, 45, 0, '2020-05-21 00:46:49', NULL),
(63, 1660, 53, 1, '2020-05-21 00:46:49', NULL),
(64, 1499, 45, 1, '2020-05-21 00:46:49', NULL),
(65, 1577, 48, 0, '2020-05-21 00:46:49', NULL),
(66, 1292, 41, 1, '2020-05-21 00:46:49', NULL),
(67, 1293, 41, 1, '2020-05-21 00:46:49', NULL),
(68, 1578, 48, 0, '2020-05-21 00:46:49', NULL),
(69, 1801, 56, 0, '2020-05-21 00:46:49', NULL),
(70, 1579, 48, 0, '2020-05-21 00:46:49', NULL),
(71, 1894, 61, 1, '2020-05-21 00:46:49', NULL),
(72, 1802, 56, 1, '2020-05-21 00:46:49', NULL),
(73, 1500, 45, 1, '2020-05-21 00:46:49', NULL),
(74, 1661, 53, 0, '2020-05-21 00:46:49', NULL),
(75, 1662, 53, 0, '2020-05-21 00:46:49', NULL),
(76, 1501, 45, 1, '2020-05-21 00:46:49', NULL),
(77, 1580, 48, 1, '2020-05-21 00:46:49', NULL),
(78, 1294, 41, 0, '2020-05-21 00:46:49', NULL),
(79, 1581, 48, 1, '2020-05-21 00:46:49', NULL),
(80, 1895, 61, 0, '2020-05-21 00:46:49', NULL),
(81, 1803, 56, 0, '2020-05-21 00:46:49', NULL),
(82, 1502, 45, 1, '2020-05-21 00:46:49', NULL),
(83, 1663, 53, 1, '2020-05-21 00:46:49', NULL),
(84, 1664, 53, 1, '2020-05-21 00:46:49', NULL),
(85, 1503, 45, 1, '2020-05-21 00:46:49', NULL),
(86, 1582, 48, 0, '2020-05-21 00:46:49', NULL),
(87, 1295, 41, 1, '2020-05-21 00:46:49', NULL),
(88, 1504, 45, 1, '2020-05-21 00:46:49', NULL),
(89, 1583, 48, 0, '2020-05-21 00:46:49', NULL),
(90, 1296, 41, 1, '2020-05-21 00:46:49', NULL),
(91, 1297, 41, 1, '2020-05-21 00:46:49', NULL),
(92, 1584, 48, 0, '2020-05-21 00:46:49', NULL),
(93, 1804, 56, 0, '2020-05-21 00:46:49', NULL),
(94, 1505, 45, 1, '2020-05-21 00:46:49', NULL),
(95, 1665, 53, 1, '2020-05-21 00:46:49', NULL),
(96, 1666, 53, 1, '2020-05-21 00:46:49', NULL),
(97, 1506, 45, 1, '2020-05-21 00:46:49', NULL),
(98, 1585, 48, 1, '2020-05-21 00:46:49', NULL),
(99, 1298, 41, 0, '2020-05-21 00:46:49', NULL),
(100, 1299, 41, 0, '2020-05-21 00:46:49', NULL),
(101, 1586, 48, 1, '2020-05-21 00:46:49', NULL),
(102, 1805, 56, 0, '2020-05-21 00:46:49', NULL),
(103, 1507, 45, 1, '2020-05-21 00:46:49', NULL),
(104, 1667, 53, 1, '2020-05-21 00:46:49', NULL),
(105, 1668, 53, 1, '2020-05-21 00:46:49', NULL),
(106, 1508, 45, 0, '2020-05-21 00:46:49', NULL),
(107, 1587, 48, 1, '2020-05-21 00:46:49', NULL),
(108, 1300, 41, 1, '2020-05-21 00:46:49', NULL),
(109, 1509, 45, 0, '2020-05-21 00:46:49', NULL),
(110, 1588, 48, 1, '2020-05-21 00:46:49', NULL),
(111, 1301, 41, 1, '2020-05-21 00:46:49', NULL),
(112, 1302, 41, 1, '2020-05-21 00:46:49', NULL),
(113, 1589, 48, 1, '2020-05-21 00:46:49', NULL),
(114, 1806, 56, 0, '2020-05-21 00:46:49', NULL),
(115, 1211, 39, 1, '2020-05-21 00:46:49', NULL),
(116, 1329, 41, 0, '2020-05-21 00:46:49', NULL),
(117, 1838, 56, 1, '2020-05-21 00:46:49', NULL),
(118, 1330, 41, 0, '2020-05-21 00:46:50', NULL),
(119, 1331, 41, 0, '2020-05-21 00:46:50', NULL),
(120, 1332, 41, 0, '2020-05-21 00:46:50', NULL),
(121, 1333, 41, 0, '2020-05-21 00:46:50', NULL),
(122, 1682, 53, 1, '2020-05-21 00:46:50', NULL),
(123, 1683, 53, 1, '2020-05-21 00:46:50', NULL),
(124, 1334, 41, 0, '2020-05-21 00:46:50', NULL),
(125, 1839, 56, 1, '2020-05-21 00:46:50', NULL),
(126, 1335, 41, 0, '2020-05-21 00:46:50', NULL),
(127, 1523, 45, 1, '2020-05-21 00:46:50', NULL),
(128, 1840, 56, 1, '2020-05-21 00:46:50', NULL),
(129, 1684, 53, 1, '2020-05-21 00:46:50', NULL),
(130, 1212, 39, 0, '2020-05-21 00:46:50', NULL),
(131, 1336, 41, 1, '2020-05-21 00:46:50', NULL),
(132, 1841, 56, 1, '2020-05-21 00:46:50', NULL),
(133, 1337, 41, 1, '2020-05-21 00:46:50', NULL),
(134, 1338, 41, 1, '2020-05-21 00:46:50', NULL),
(135, 1339, 41, 1, '2020-05-21 00:46:50', NULL),
(136, 1340, 41, 1, '2020-05-21 00:46:50', NULL),
(137, 1685, 53, 0, '2020-05-21 00:46:50', NULL),
(138, 1686, 53, 0, '2020-05-21 00:46:50', NULL),
(139, 1341, 41, 1, '2020-05-21 00:46:50', NULL),
(140, 1842, 56, 1, '2020-05-21 00:46:50', NULL),
(141, 1342, 41, 1, '2020-05-21 00:46:50', NULL),
(142, 1343, 41, 0, '2020-05-21 00:46:50', NULL),
(143, 1344, 41, 0, '2020-05-21 00:46:50', NULL),
(144, 1345, 41, 0, '2020-05-21 00:46:50', NULL),
(145, 1346, 41, 0, '2020-05-21 00:46:50', NULL),
(146, 1687, 53, 0, '2020-05-21 00:46:50', NULL),
(147, 1688, 53, 0, '2020-05-21 00:46:50', NULL),
(148, 1347, 41, 0, '2020-05-21 00:46:50', NULL),
(149, 1843, 56, 0, '2020-05-21 00:46:50', NULL),
(150, 1348, 41, 0, '2020-05-21 00:46:50', NULL),
(151, 1213, 39, 1, '2020-05-21 00:46:50', NULL),
(152, 1349, 41, 0, '2020-05-21 00:46:50', NULL),
(153, 1844, 56, 1, '2020-05-21 00:46:50', NULL),
(154, 1350, 41, 0, '2020-05-21 00:46:50', NULL),
(155, 1689, 53, 1, '2020-05-21 00:46:50', NULL),
(156, 1690, 53, 1, '2020-05-21 00:46:50', NULL),
(157, 1351, 41, 0, '2020-05-21 00:46:50', NULL),
(158, 1845, 56, 1, '2020-05-21 00:46:50', NULL),
(159, 1352, 41, 0, '2020-05-21 00:46:50', NULL),
(160, 1214, 39, 1, '2020-05-21 00:46:50', NULL),
(161, 1353, 41, 1, '2020-05-21 00:46:50', NULL),
(162, 1846, 56, 1, '2020-05-21 00:46:50', NULL),
(163, 1354, 41, 1, '2020-05-21 00:46:50', NULL),
(164, 1355, 41, 1, '2020-05-21 00:46:50', NULL),
(165, 1356, 41, 1, '2020-05-21 00:46:50', NULL),
(166, 1357, 41, 1, '2020-05-21 00:46:50', NULL),
(167, 1847, 56, 1, '2020-05-21 00:46:50', NULL),
(168, 1358, 41, 1, '2020-05-21 00:46:50', NULL),
(169, 1215, 39, 0, '2020-05-21 00:46:50', NULL),
(170, 1359, 41, 1, '2020-05-21 00:46:50', NULL),
(171, 1848, 56, 1, '2020-05-21 00:46:50', NULL),
(172, 1360, 41, 1, '2020-05-21 00:46:50', NULL),
(173, 1361, 41, 1, '2020-05-21 00:46:50', NULL),
(174, 1362, 41, 1, '2020-05-21 00:46:50', NULL),
(175, 1363, 41, 1, '2020-05-21 00:46:50', NULL),
(176, 1849, 56, 1, '2020-05-21 00:46:50', NULL),
(177, 1364, 41, 1, '2020-05-21 00:46:50', NULL),
(178, 1216, 39, 1, '2020-05-21 00:46:50', NULL),
(179, 1365, 41, 0, '2020-05-21 00:46:50', NULL),
(180, 1850, 56, 1, '2020-05-21 00:46:50', NULL),
(181, 1366, 41, 0, '2020-05-21 00:46:50', NULL),
(182, 1367, 41, 0, '2020-05-21 00:46:50', NULL),
(183, 1368, 41, 0, '2020-05-21 00:46:50', NULL),
(184, 1369, 41, 0, '2020-05-21 00:46:50', NULL),
(185, 1691, 53, 1, '2020-05-21 00:46:50', NULL),
(186, 1692, 53, 1, '2020-05-21 00:46:50', NULL),
(187, 1370, 41, 0, '2020-05-21 00:46:50', NULL),
(188, 1371, 41, 0, '2020-05-21 00:46:50', NULL),
(189, 1372, 41, 0, '2020-05-21 00:46:50', NULL),
(190, 1373, 41, 0, '2020-05-21 00:46:50', NULL),
(191, 1693, 53, 1, '2020-05-21 00:46:50', NULL),
(192, 1694, 53, 1, '2020-05-21 00:46:50', NULL),
(193, 1524, 45, 1, '2020-05-21 00:46:50', NULL),
(194, 1851, 56, 1, '2020-05-21 00:46:50', NULL),
(195, 1695, 53, 1, '2020-05-21 00:46:50', NULL),
(196, 1217, 39, 1, '2020-05-21 00:46:50', NULL),
(197, 1374, 41, 0, '2020-05-21 00:46:50', NULL),
(198, 1852, 56, 0, '2020-05-21 00:46:50', NULL),
(199, 1375, 41, 0, '2020-05-21 00:46:50', NULL),
(200, 1696, 53, 1, '2020-05-21 00:46:50', NULL),
(201, 1697, 53, 1, '2020-05-21 00:46:50', NULL),
(202, 1525, 45, 1, '2020-05-21 00:46:50', NULL),
(203, 1853, 56, 0, '2020-05-21 00:46:50', NULL),
(204, 1698, 53, 1, '2020-05-21 00:46:50', NULL),
(205, 1218, 39, 0, '2020-05-21 00:46:50', NULL),
(206, 1376, 41, 1, '2020-05-21 00:46:50', NULL),
(207, 1854, 56, 1, '2020-05-21 00:46:50', NULL),
(208, 1377, 41, 1, '2020-05-21 00:46:50', NULL),
(209, 1378, 41, 1, '2020-05-21 00:46:50', NULL),
(210, 1379, 41, 1, '2020-05-21 00:46:50', NULL),
(211, 1526, 45, 0, '2020-05-21 00:46:50', NULL),
(212, 1855, 56, 1, '2020-05-21 00:46:50', NULL),
(213, 1699, 53, 0, '2020-05-21 00:46:50', NULL),
(214, 1219, 39, 0, '2020-05-21 00:46:50', NULL),
(215, 1380, 41, 1, '2020-05-21 00:46:50', NULL),
(216, 1856, 56, 0, '2020-05-21 00:46:50', NULL),
(217, 1381, 41, 1, '2020-05-21 00:46:50', NULL),
(218, 1382, 41, 1, '2020-05-21 00:46:50', NULL),
(219, 1383, 41, 1, '2020-05-21 00:46:50', NULL),
(220, 1384, 41, 1, '2020-05-21 00:46:50', NULL),
(221, 1700, 53, 1, '2020-05-21 00:46:50', NULL),
(222, 1701, 53, 1, '2020-05-21 00:46:50', NULL),
(223, 1431, 45, 1, '2020-05-21 00:46:50', NULL),
(224, 1532, 48, 0, '2020-05-21 00:46:50', NULL),
(225, 1226, 41, 0, '2020-05-21 00:46:50', NULL),
(226, 1432, 45, 1, '2020-05-21 00:46:50', NULL),
(227, 1533, 48, 0, '2020-05-21 00:46:50', NULL),
(228, 1227, 41, 0, '2020-05-21 00:46:50', NULL),
(229, 1228, 41, 0, '2020-05-21 00:46:50', NULL),
(230, 1534, 48, 0, '2020-05-21 00:46:50', NULL),
(231, 1721, 56, 1, '2020-05-21 00:46:50', NULL),
(232, 1535, 48, 0, '2020-05-21 00:46:50', NULL),
(233, 1874, 61, 1, '2020-05-21 00:46:50', NULL),
(234, 1722, 56, 1, '2020-05-21 00:46:50', NULL),
(235, 1433, 45, 1, '2020-05-21 00:46:50', NULL),
(236, 1598, 53, 1, '2020-05-21 00:46:50', NULL),
(237, 1599, 53, 1, '2020-05-21 00:46:50', NULL),
(238, 1434, 45, 0, '2020-05-21 00:46:50', NULL),
(239, 1536, 48, 1, '2020-05-21 00:46:50', NULL),
(240, 1229, 41, 0, '2020-05-21 00:46:50', NULL),
(241, 1435, 45, 0, '2020-05-21 00:46:50', NULL),
(242, 1537, 48, 1, '2020-05-21 00:46:50', NULL),
(243, 1230, 41, 0, '2020-05-21 00:46:50', NULL),
(244, 1231, 41, 0, '2020-05-21 00:46:50', NULL),
(245, 1538, 48, 0, '2020-05-21 00:46:50', NULL),
(246, 1723, 56, 1, '2020-05-21 00:46:50', NULL),
(247, 1539, 48, 1, '2020-05-21 00:46:50', NULL),
(248, 1875, 61, 0, '2020-05-21 00:46:50', NULL),
(249, 1724, 56, 1, '2020-05-21 00:46:50', NULL),
(250, 1436, 45, 1, '2020-05-21 00:46:50', NULL),
(251, 1540, 48, 1, '2020-05-21 00:46:50', NULL),
(252, 1232, 41, 1, '2020-05-21 00:46:50', NULL),
(253, 1437, 45, 1, '2020-05-21 00:46:50', NULL),
(254, 1541, 48, 0, '2020-05-21 00:46:50', NULL),
(255, 1233, 41, 1, '2020-05-21 00:46:50', NULL),
(256, 1234, 41, 1, '2020-05-21 00:46:50', NULL),
(257, 1542, 48, 0, '2020-05-21 00:46:50', NULL),
(258, 1725, 56, 0, '2020-05-21 00:46:50', NULL),
(259, 1438, 45, 1, '2020-05-21 00:46:50', NULL),
(260, 1600, 53, 0, '2020-05-21 00:46:50', NULL),
(261, 1601, 53, 0, '2020-05-21 00:46:50', NULL),
(262, 1439, 45, 1, '2020-05-21 00:46:50', NULL),
(263, 1543, 48, 0, '2020-05-21 00:46:50', NULL),
(264, 1235, 41, 0, '2020-05-21 00:46:50', NULL),
(265, 1440, 45, 1, '2020-05-21 00:46:50', NULL),
(266, 1544, 48, 1, '2020-05-21 00:46:50', NULL),
(267, 1236, 41, 0, '2020-05-21 00:46:50', NULL),
(268, 1545, 48, 1, '2020-05-21 00:46:50', NULL),
(269, 1876, 61, 0, '2020-05-21 00:46:50', NULL),
(270, 1726, 56, 0, '2020-05-21 00:46:50', NULL),
(271, 1441, 45, 1, '2020-05-21 00:46:50', NULL),
(272, 1602, 53, 0, '2020-05-21 00:46:50', NULL),
(273, 1603, 53, 0, '2020-05-21 00:46:50', NULL),
(274, 1442, 45, 0, '2020-05-21 00:46:50', NULL),
(275, 1546, 48, 0, '2020-05-21 00:46:50', NULL),
(276, 1237, 41, 0, '2020-05-21 00:46:50', NULL),
(277, 1604, 53, 1, '2020-05-21 00:46:50', NULL),
(278, 1605, 53, 1, '2020-05-21 00:46:50', NULL),
(279, 1606, 53, 1, '2020-05-21 00:46:50', NULL),
(280, 1547, 48, 0, '2020-05-21 00:46:50', NULL),
(281, 1877, 61, 1, '2020-05-21 00:46:50', NULL),
(282, 1727, 56, 1, '2020-05-21 00:46:50', NULL),
(283, 1443, 45, 0, '2020-05-21 00:46:50', NULL),
(284, 1607, 53, 1, '2020-05-21 00:46:50', NULL),
(285, 1608, 53, 1, '2020-05-21 00:46:50', NULL),
(286, 1444, 45, 1, '2020-05-21 00:46:50', NULL),
(287, 1548, 48, 0, '2020-05-21 00:46:50', NULL),
(288, 1238, 41, 1, '2020-05-21 00:46:50', NULL),
(289, 1609, 53, 0, '2020-05-21 00:46:50', NULL),
(290, 1610, 53, 0, '2020-05-21 00:46:50', NULL),
(291, 1611, 53, 0, '2020-05-21 00:46:50', NULL),
(292, 1549, 48, 1, '2020-05-21 00:46:50', NULL),
(293, 1878, 61, 0, '2020-05-21 00:46:50', NULL),
(294, 1728, 56, 1, '2020-05-21 00:46:50', NULL),
(295, 1445, 45, 1, '2020-05-21 00:46:50', NULL),
(296, 1612, 53, 0, '2020-05-21 00:46:50', NULL),
(297, 1613, 53, 0, '2020-05-21 00:46:50', NULL),
(298, 1446, 45, 0, '2020-05-21 00:46:50', NULL),
(299, 1550, 48, 0, '2020-05-21 00:46:50', NULL),
(300, 1239, 41, 0, '2020-05-21 00:46:50', NULL),
(301, 1614, 53, 1, '2020-05-21 00:46:50', NULL),
(302, 1615, 53, 1, '2020-05-21 00:46:50', NULL),
(303, 1616, 53, 1, '2020-05-21 00:46:50', NULL),
(304, 1551, 48, 0, '2020-05-21 00:46:50', NULL),
(305, 1879, 61, 1, '2020-05-21 00:46:50', NULL),
(306, 1729, 56, 1, '2020-05-21 00:46:50', NULL),
(307, 1880, 61, 1, '2020-05-21 00:46:50', NULL),
(308, 1240, 41, 1, '2020-05-21 00:46:50', NULL),
(309, 1241, 41, 1, '2020-05-21 00:46:50', NULL),
(310, 1730, 56, 0, '2020-05-21 00:46:50', NULL),
(311, 1617, 53, 0, '2020-05-21 00:46:50', NULL),
(312, 1242, 41, 1, '2020-05-21 00:46:50', NULL),
(313, 1447, 45, 0, '2020-05-21 00:46:50', NULL),
(314, 1731, 56, 1, '2020-05-21 00:46:50', NULL),
(315, 1448, 45, 0, '2020-05-21 00:46:50', NULL),
(316, 1732, 56, 1, '2020-05-21 00:46:50', NULL),
(317, 1618, 53, 1, '2020-05-21 00:46:50', NULL),
(318, 1243, 41, 0, '2020-05-21 00:46:50', NULL),
(319, 1733, 56, 1, '2020-05-21 00:46:50', NULL),
(320, 1449, 45, 0, '2020-05-21 00:46:50', NULL),
(321, 1552, 48, 1, '2020-05-21 00:46:50', NULL),
(322, 1450, 45, 0, '2020-05-21 00:46:50', NULL),
(323, 1734, 56, 1, '2020-05-21 00:46:50', NULL),
(324, 1451, 45, 0, '2020-05-21 00:46:50', NULL),
(325, 1881, 61, 1, '2020-05-21 00:46:50', NULL),
(326, 1244, 41, 0, '2020-05-21 00:46:50', NULL),
(327, 1245, 41, 0, '2020-05-21 00:46:50', NULL),
(328, 1735, 56, 1, '2020-05-21 00:46:50', NULL),
(329, 1452, 45, 1, '2020-05-21 00:46:50', NULL),
(330, 1553, 48, 1, '2020-05-21 00:46:50', NULL),
(331, 1453, 45, 1, '2020-05-21 00:46:50', NULL),
(332, 1736, 56, 1, '2020-05-21 00:46:50', NULL),
(333, 1454, 45, 1, '2020-05-21 00:46:50', NULL),
(334, 1246, 41, 1, '2020-05-21 00:46:50', NULL),
(335, 1882, 61, 0, '2020-05-21 00:46:50', NULL),
(336, 1883, 61, 0, '2020-05-21 00:46:50', NULL),
(337, 1737, 56, 1, '2020-05-21 00:46:50', NULL),
(338, 1619, 53, 1, '2020-05-21 00:46:50', NULL),
(339, 1247, 41, 0, '2020-05-21 00:46:50', NULL),
(340, 1738, 56, 1, '2020-05-21 00:46:50', NULL),
(341, 1455, 45, 1, '2020-05-21 00:46:50', NULL),
(342, 1554, 48, 0, '2020-05-21 00:46:50', NULL),
(343, 1807, 56, 1, '2020-05-21 00:46:50', NULL),
(344, 1303, 41, 1, '2020-05-21 00:46:50', NULL),
(345, 1304, 41, 1, '2020-05-21 00:46:50', NULL),
(346, 1808, 56, 1, '2020-05-21 00:46:50', NULL),
(347, 1669, 53, 1, '2020-05-21 00:46:50', NULL),
(348, 1305, 41, 1, '2020-05-21 00:46:50', NULL),
(349, 1809, 56, 1, '2020-05-21 00:46:50', NULL),
(350, 1306, 41, 0, '2020-05-21 00:46:50', NULL),
(351, 1307, 41, 0, '2020-05-21 00:46:50', NULL),
(352, 1810, 56, 1, '2020-05-21 00:46:50', NULL),
(353, 1670, 53, 1, '2020-05-21 00:46:50', NULL),
(354, 1308, 41, 0, '2020-05-21 00:46:50', NULL),
(355, 1811, 56, 0, '2020-05-21 00:46:50', NULL),
(356, 1671, 53, 1, '2020-05-21 00:46:50', NULL),
(357, 1309, 41, 0, '2020-05-21 00:46:50', NULL),
(358, 1510, 45, 1, '2020-05-21 00:46:50', NULL),
(359, 1812, 56, 0, '2020-05-21 00:46:50', NULL),
(360, 1511, 45, 1, '2020-05-21 00:46:50', NULL),
(361, 1813, 56, 1, '2020-05-21 00:46:50', NULL),
(362, 1310, 41, 1, '2020-05-21 00:46:50', NULL),
(363, 1311, 41, 1, '2020-05-21 00:46:50', NULL),
(364, 1512, 45, 0, '2020-05-21 00:46:50', NULL),
(365, 1814, 56, 1, '2020-05-21 00:46:50', NULL),
(366, 1513, 45, 0, '2020-05-21 00:46:50', NULL),
(367, 1815, 56, 1, '2020-05-21 00:46:50', NULL),
(368, 1312, 41, 0, '2020-05-21 00:46:50', NULL),
(369, 1313, 41, 0, '2020-05-21 00:46:50', NULL),
(370, 1816, 56, 1, '2020-05-21 00:46:50', NULL),
(371, 1514, 45, 1, '2020-05-21 00:46:50', NULL),
(372, 1590, 48, 0, '2020-05-21 00:46:50', NULL),
(373, 1817, 56, 1, '2020-05-21 00:46:50', NULL),
(374, 1515, 45, 0, '2020-05-21 00:46:50', NULL),
(375, 1591, 48, 1, '2020-05-21 00:46:50', NULL),
(376, 1516, 45, 0, '2020-05-21 00:46:50', NULL),
(377, 1818, 56, 1, '2020-05-21 00:46:50', NULL),
(378, 1517, 45, 0, '2020-05-21 00:46:50', NULL),
(379, 1819, 56, 0, '2020-05-21 00:46:50', NULL),
(380, 1314, 41, 1, '2020-05-21 00:46:50', NULL),
(381, 1820, 56, 0, '2020-05-21 00:46:50', NULL),
(382, 1518, 45, 1, '2020-05-21 00:46:50', NULL),
(383, 1592, 48, 1, '2020-05-21 00:46:50', NULL),
(384, 1821, 56, 0, '2020-05-21 00:46:50', NULL),
(385, 1672, 53, 0, '2020-05-21 00:46:50', NULL),
(386, 1315, 41, 1, '2020-05-21 00:46:50', NULL),
(387, 1822, 56, 0, '2020-05-21 00:46:50', NULL),
(388, 1519, 45, 1, '2020-05-21 00:46:50', NULL),
(389, 1593, 48, 1, '2020-05-21 00:46:50', NULL),
(390, 1823, 56, 1, '2020-05-21 00:46:50', NULL),
(391, 1673, 53, 0, '2020-05-21 00:46:50', NULL),
(392, 1316, 41, 1, '2020-05-21 00:46:50', NULL),
(393, 1520, 45, 0, '2020-05-21 00:46:50', NULL),
(394, 1824, 56, 1, '2020-05-21 00:46:50', NULL),
(395, 1521, 45, 0, '2020-05-21 00:46:50', NULL),
(396, 1825, 56, 0, '2020-05-21 00:46:50', NULL),
(397, 1317, 41, 1, '2020-05-21 00:46:50', NULL),
(398, 1318, 41, 1, '2020-05-21 00:46:50', NULL),
(399, 1826, 56, 0, '2020-05-21 00:46:50', NULL),
(400, 1674, 53, 1, '2020-05-21 00:46:50', NULL),
(401, 1319, 41, 0, '2020-05-21 00:46:50', NULL),
(402, 1827, 56, 0, '2020-05-21 00:46:50', NULL),
(403, 1320, 41, 0, '2020-05-21 00:46:50', NULL),
(404, 1321, 41, 0, '2020-05-21 00:46:50', NULL),
(405, 1828, 56, 0, '2020-05-21 00:46:50', NULL),
(406, 1675, 53, 0, '2020-05-21 00:46:50', NULL),
(407, 1322, 41, 0, '2020-05-21 00:46:50', NULL),
(408, 1385, 41, 1, '2020-05-21 00:46:50', NULL),
(409, 1857, 56, 0, '2020-05-21 00:46:50', NULL),
(410, 1386, 41, 1, '2020-05-21 00:46:50', NULL),
(411, 1527, 45, 0, '2020-05-21 00:46:50', NULL),
(412, 1858, 56, 0, '2020-05-21 00:46:50', NULL),
(413, 1702, 53, 1, '2020-05-21 00:46:50', NULL),
(414, 1387, 41, 0, '2020-05-21 00:46:50', NULL),
(415, 1703, 53, 1, '2020-05-21 00:46:50', NULL),
(416, 1704, 53, 1, '2020-05-21 00:46:50', NULL),
(417, 1528, 45, 0, '2020-05-21 00:46:50', NULL),
(418, 1859, 56, 1, '2020-05-21 00:46:50', NULL),
(419, 1705, 53, 1, '2020-05-21 00:46:50', NULL),
(420, 1388, 41, 1, '2020-05-21 00:46:50', NULL),
(421, 1706, 53, 0, '2020-05-21 00:46:50', NULL),
(422, 1707, 53, 0, '2020-05-21 00:46:50', NULL),
(423, 1389, 41, 1, '2020-05-21 00:46:50', NULL),
(424, 1860, 56, 1, '2020-05-21 00:46:50', NULL),
(425, 1390, 41, 1, '2020-05-21 00:46:50', NULL),
(426, 1220, 39, 1, '2020-05-21 00:46:50', NULL),
(427, 1391, 41, 0, '2020-05-21 00:46:50', NULL),
(428, 1861, 56, 1, '2020-05-21 00:46:50', NULL),
(429, 1392, 41, 0, '2020-05-21 00:46:50', NULL),
(430, 1862, 56, 1, '2020-05-21 00:46:50', NULL),
(431, 1393, 41, 0, '2020-05-21 00:46:50', NULL),
(432, 1221, 39, 0, '2020-05-21 00:46:50', NULL),
(433, 1394, 41, 1, '2020-05-21 00:46:50', NULL),
(434, 1863, 56, 0, '2020-05-21 00:46:50', NULL),
(435, 1395, 41, 1, '2020-05-21 00:46:50', NULL),
(436, 1708, 53, 1, '2020-05-21 00:46:50', NULL),
(437, 1709, 53, 1, '2020-05-21 00:46:50', NULL),
(438, 1396, 41, 1, '2020-05-21 00:46:50', NULL),
(439, 1397, 41, 1, '2020-05-21 00:46:50', NULL),
(440, 1398, 41, 1, '2020-05-21 00:46:50', NULL),
(441, 1399, 41, 1, '2020-05-21 00:46:50', NULL),
(442, 1864, 56, 0, '2020-05-21 00:46:50', NULL),
(443, 1400, 41, 0, '2020-05-21 00:46:50', NULL),
(444, 1401, 41, 1, '2020-05-21 00:46:50', NULL),
(445, 1402, 41, 1, '2020-05-21 00:46:50', NULL),
(446, 1403, 41, 1, '2020-05-21 00:46:50', NULL),
(447, 1404, 41, 1, '2020-05-21 00:46:50', NULL),
(448, 1710, 53, 1, '2020-05-21 00:46:50', NULL),
(449, 1711, 53, 1, '2020-05-21 00:46:50', NULL),
(450, 1405, 41, 0, '2020-05-21 00:46:50', NULL),
(451, 1406, 41, 0, '2020-05-21 00:46:50', NULL),
(452, 1407, 41, 0, '2020-05-21 00:46:50', NULL),
(453, 1408, 41, 0, '2020-05-21 00:46:50', NULL),
(454, 1712, 53, 1, '2020-05-21 00:46:50', NULL),
(455, 1713, 53, 1, '2020-05-21 00:46:50', NULL),
(456, 1409, 41, 0, '2020-05-21 00:46:50', NULL),
(457, 1410, 41, 0, '2020-05-21 00:46:50', NULL),
(458, 1411, 41, 0, '2020-05-21 00:46:50', NULL),
(459, 1529, 45, 1, '2020-05-21 00:46:50', NULL),
(460, 1865, 56, 1, '2020-05-21 00:46:50', NULL),
(461, 1714, 53, 1, '2020-05-21 00:46:50', NULL),
(462, 1222, 39, 0, '2020-05-21 00:46:50', NULL),
(463, 1412, 41, 0, '2020-05-21 00:46:50', NULL),
(464, 1866, 56, 1, '2020-05-21 00:46:50', NULL),
(465, 1530, 45, 0, '2020-05-21 00:46:50', NULL),
(466, 1867, 56, 1, '2020-05-21 00:46:50', NULL),
(467, 1715, 53, 1, '2020-05-21 00:46:50', NULL),
(468, 1223, 39, 0, '2020-05-21 00:46:50', NULL),
(469, 1413, 41, 0, '2020-05-21 00:46:50', NULL),
(470, 1868, 56, 0, '2020-05-21 00:46:50', NULL),
(471, 1414, 41, 0, '2020-05-21 00:46:50', NULL),
(472, 1415, 41, 0, '2020-05-21 00:46:50', NULL),
(473, 1416, 41, 0, '2020-05-21 00:46:50', NULL),
(474, 1248, 41, 1, '2020-05-21 00:46:50', NULL),
(475, 1884, 61, 0, '2020-05-21 00:46:50', NULL),
(476, 1885, 61, 0, '2020-05-21 00:46:50', NULL),
(477, 1886, 61, 0, '2020-05-21 00:46:50', NULL),
(478, 1249, 41, 1, '2020-05-21 00:46:50', NULL),
(479, 1250, 41, 1, '2020-05-21 00:46:50', NULL),
(480, 1739, 56, 0, '2020-05-21 00:46:50', NULL),
(481, 1620, 53, 0, '2020-05-21 00:46:50', NULL),
(482, 1251, 41, 1, '2020-05-21 00:46:50', NULL),
(483, 1740, 56, 0, '2020-05-21 00:46:50', NULL),
(484, 1456, 45, 1, '2020-05-21 00:46:50', NULL),
(485, 1555, 48, 0, '2020-05-21 00:46:50', NULL),
(486, 1457, 45, 1, '2020-05-21 00:46:50', NULL),
(487, 1741, 56, 0, '2020-05-21 00:46:50', NULL),
(488, 1458, 45, 1, '2020-05-21 00:46:50', NULL),
(489, 1742, 56, 1, '2020-05-21 00:46:50', NULL),
(490, 1621, 53, 0, '2020-05-21 00:46:50', NULL),
(491, 1252, 41, 0, '2020-05-21 00:46:50', NULL),
(492, 1459, 45, 1, '2020-05-21 00:46:50', NULL),
(493, 1743, 56, 1, '2020-05-21 00:46:50', NULL),
(494, 1460, 45, 0, '2020-05-21 00:46:50', NULL),
(495, 1744, 56, 1, '2020-05-21 00:46:50', NULL),
(496, 1253, 41, 0, '2020-05-21 00:46:50', NULL),
(497, 1254, 41, 0, '2020-05-21 00:46:50', NULL),
(498, 1461, 45, 1, '2020-05-21 00:46:50', NULL),
(499, 1745, 56, 1, '2020-05-21 00:46:50', NULL),
(500, 1462, 45, 1, '2020-05-21 00:46:50', NULL),
(501, 1746, 56, 0, '2020-05-21 00:46:50', NULL),
(502, 1255, 41, 1, '2020-05-21 00:46:50', NULL),
(503, 1256, 41, 1, '2020-05-21 00:46:50', NULL),
(504, 1747, 56, 0, '2020-05-21 00:46:50', NULL),
(505, 1257, 41, 1, '2020-05-21 00:46:50', NULL),
(506, 1258, 41, 1, '2020-05-21 00:46:50', NULL),
(507, 1748, 56, 0, '2020-05-21 00:46:50', NULL),
(508, 1622, 53, 1, '2020-05-21 00:46:50', NULL),
(509, 1259, 41, 0, '2020-05-21 00:46:50', NULL),
(510, 1749, 56, 0, '2020-05-21 00:46:50', NULL),
(511, 1463, 45, 0, '2020-05-21 00:46:50', NULL),
(512, 1556, 48, 1, '2020-05-21 00:46:50', NULL),
(513, 1750, 56, 1, '2020-05-21 00:46:50', NULL),
(514, 1260, 41, 0, '2020-05-21 00:46:50', NULL),
(515, 1261, 41, 0, '2020-05-21 00:46:50', NULL),
(516, 1751, 56, 1, '2020-05-21 00:46:50', NULL),
(517, 1262, 41, 0, '2020-05-21 00:46:50', NULL),
(518, 1263, 41, 0, '2020-05-21 00:46:50', NULL),
(519, 1752, 56, 1, '2020-05-21 00:46:50', NULL),
(520, 1623, 53, 0, '2020-05-21 00:46:50', NULL),
(521, 1264, 41, 0, '2020-05-21 00:46:50', NULL),
(522, 1464, 45, 1, '2020-05-21 00:46:50', NULL),
(523, 1753, 56, 0, '2020-05-21 00:46:50', NULL),
(524, 1465, 45, 1, '2020-05-21 00:46:50', NULL),
(525, 1754, 56, 0, '2020-05-21 00:46:50', NULL),
(526, 1265, 41, 1, '2020-05-21 00:46:50', NULL),
(527, 1266, 41, 1, '2020-05-21 00:46:50', NULL),
(528, 1755, 56, 0, '2020-05-21 00:46:50', NULL),
(529, 1466, 45, 0, '2020-05-21 00:46:50', NULL),
(530, 1557, 48, 0, '2020-05-21 00:46:50', NULL),
(531, 1756, 56, 0, '2020-05-21 00:46:50', NULL),
(532, 1267, 41, 1, '2020-05-21 00:46:50', NULL),
(533, 1268, 41, 1, '2020-05-21 00:46:50', NULL),
(534, 1757, 56, 0, '2020-05-21 00:46:50', NULL),
(535, 1467, 45, 1, '2020-05-21 00:46:50', NULL),
(536, 1558, 48, 0, '2020-05-21 00:46:50', NULL),
(537, 1758, 56, 1, '2020-05-21 00:46:50', NULL),
(538, 1269, 41, 0, '2020-05-21 00:46:50', NULL),
(539, 1270, 41, 0, '2020-05-21 00:46:50', NULL),
(540, 1468, 45, 1, '2020-05-21 00:46:50', NULL),
(541, 1759, 56, 0, '2020-05-21 00:46:50', NULL),
(542, 1469, 45, 1, '2020-05-21 00:46:50', NULL),
(543, 1760, 56, 0, '2020-05-21 00:46:50', NULL),
(544, 1271, 41, 1, '2020-05-21 00:46:50', NULL),
(545, 1272, 41, 1, '2020-05-21 00:46:50', NULL),
(546, 1761, 56, 0, '2020-05-21 00:46:50', NULL),
(547, 1273, 41, 1, '2020-05-21 00:46:50', NULL),
(548, 1274, 41, 1, '2020-05-21 00:46:50', NULL),
(549, 1762, 56, 1, '2020-05-21 00:46:50', NULL),
(550, 1275, 41, 0, '2020-05-21 00:46:50', NULL),
(551, 1276, 41, 0, '2020-05-21 00:46:50', NULL),
(552, 1763, 56, 1, '2020-05-21 00:46:50', NULL),
(553, 1277, 41, 0, '2020-05-21 00:46:50', NULL),
(554, 1278, 41, 0, '2020-05-21 00:46:50', NULL),
(555, 1764, 56, 1, '2020-05-21 00:46:50', NULL),
(556, 1470, 45, 1, '2020-05-21 00:46:50', NULL),
(557, 1559, 48, 0, '2020-05-21 00:46:50', NULL),
(558, 1471, 45, 1, '2020-05-21 00:46:50', NULL),
(559, 1765, 56, 1, '2020-05-21 00:46:50', NULL),
(560, 1472, 45, 0, '2020-05-21 00:46:50', NULL),
(561, 1829, 56, 0, '2020-05-21 00:46:50', NULL),
(562, 1830, 56, 0, '2020-05-21 00:46:50', NULL),
(563, 1594, 48, 0, '2020-05-21 00:46:50', NULL),
(564, 1595, 48, 0, '2020-05-21 00:46:50', NULL),
(565, 1323, 41, 1, '2020-05-21 00:46:50', NULL),
(566, 1676, 53, 0, '2020-05-21 00:46:50', NULL),
(567, 1677, 53, 0, '2020-05-21 00:46:50', NULL),
(568, 1831, 56, 1, '2020-05-21 00:46:50', NULL),
(569, 1678, 53, 0, '2020-05-21 00:46:50', NULL),
(570, 1832, 56, 0, '2020-05-21 00:46:50', NULL),
(571, 1833, 56, 0, '2020-05-21 00:46:50', NULL),
(572, 1596, 48, 1, '2020-05-21 00:46:50', NULL),
(573, 1834, 56, 1, '2020-05-21 00:46:50', NULL),
(574, 1835, 56, 1, '2020-05-21 00:46:50', NULL),
(575, 1597, 48, 0, '2020-05-21 00:46:50', NULL),
(576, 1522, 45, 1, '2020-05-21 00:46:50', NULL),
(577, 1836, 56, 0, '2020-05-21 00:46:50', NULL),
(578, 1679, 53, 0, '2020-05-21 00:46:50', NULL),
(579, 1210, 39, 1, '2020-05-21 00:46:50', NULL),
(580, 1324, 41, 0, '2020-05-21 00:46:50', NULL),
(581, 1837, 56, 1, '2020-05-21 00:46:50', NULL),
(582, 1325, 41, 0, '2020-05-21 00:46:50', NULL),
(583, 1326, 41, 0, '2020-05-21 00:46:50', NULL),
(584, 1327, 41, 0, '2020-05-21 00:46:50', NULL),
(585, 1328, 41, 0, '2020-05-21 00:46:50', NULL),
(586, 1680, 53, 1, '2020-05-21 00:46:50', NULL),
(587, 1681, 53, 1, '2020-05-21 00:46:50', NULL),
(588, 1531, 45, 1, '2020-05-21 00:46:50', NULL),
(589, 1869, 56, 1, '2020-05-21 00:46:50', NULL),
(590, 1716, 53, 1, '2020-05-21 00:46:50', NULL),
(591, 1417, 41, 1, '2020-05-21 00:46:50', NULL),
(592, 1870, 56, 0, '2020-05-21 00:46:50', NULL),
(593, 1418, 41, 1, '2020-05-21 00:46:50', NULL),
(594, 1419, 41, 1, '2020-05-21 00:46:50', NULL),
(595, 1717, 53, 0, '2020-05-21 00:46:51', NULL),
(596, 1718, 53, 0, '2020-05-21 00:46:51', NULL),
(597, 1420, 41, 0, '2020-05-21 00:46:51', NULL),
(598, 1421, 41, 0, '2020-05-21 00:46:51', NULL),
(599, 1422, 41, 0, '2020-05-21 00:46:51', NULL),
(600, 1224, 39, 1, '2020-05-21 00:46:51', NULL),
(601, 1423, 41, 0, '2020-05-21 00:46:51', NULL),
(602, 1871, 56, 1, '2020-05-21 00:46:51', NULL),
(603, 1424, 41, 0, '2020-05-21 00:46:51', NULL),
(604, 1872, 56, 1, '2020-05-21 00:46:51', NULL),
(605, 1425, 41, 0, '2020-05-21 00:46:51', NULL),
(606, 1426, 41, 1, '2020-05-21 00:46:51', NULL),
(607, 1719, 53, 0, '2020-05-21 00:46:51', NULL),
(608, 1720, 53, 0, '2020-05-21 00:46:51', NULL),
(609, 1427, 41, 0, '2020-05-21 00:46:51', NULL),
(610, 1428, 41, 0, '2020-05-21 00:46:51', NULL),
(611, 1429, 41, 0, '2020-05-21 00:46:51', NULL),
(612, 1225, 39, 1, '2020-05-21 00:46:51', NULL),
(613, 1430, 41, 0, '2020-05-21 00:46:51', NULL),
(614, 1873, 56, 1, '2020-05-21 00:46:51', NULL),
(615, 1766, 56, 1, '2020-05-21 00:46:51', NULL),
(616, 1624, 53, 1, '2020-05-21 00:46:51', NULL),
(617, 1279, 41, 0, '2020-05-21 00:46:51', NULL),
(618, 1767, 56, 1, '2020-05-21 00:46:51', NULL),
(619, 1473, 45, 0, '2020-05-21 00:46:51', NULL),
(620, 1560, 48, 0, '2020-05-21 00:46:51', NULL),
(621, 1768, 56, 0, '2020-05-21 00:46:51', NULL),
(622, 1625, 53, 0, '2020-05-21 00:46:51', NULL),
(623, 1280, 41, 1, '2020-05-21 00:46:51', NULL),
(624, 1769, 56, 0, '2020-05-21 00:46:51', NULL),
(625, 1474, 45, 0, '2020-05-21 00:46:51', NULL),
(626, 1561, 48, 1, '2020-05-21 00:46:51', NULL),
(627, 1770, 56, 0, '2020-05-21 00:46:51', NULL),
(628, 1281, 41, 1, '2020-05-21 00:46:51', NULL),
(629, 1282, 41, 1, '2020-05-21 00:46:51', NULL),
(630, 1771, 56, 0, '2020-05-21 00:46:51', NULL),
(631, 1475, 45, 1, '2020-05-21 00:46:51', NULL),
(632, 1562, 48, 0, '2020-05-21 00:46:51', NULL),
(633, 1772, 56, 0, '2020-05-21 00:46:51', NULL),
(634, 1283, 41, 0, '2020-05-21 00:46:51', NULL),
(635, 1284, 41, 0, '2020-05-21 00:46:51', NULL),
(636, 1773, 56, 1, '2020-05-21 00:46:51', NULL),
(637, 1476, 45, 1, '2020-05-21 00:46:51', NULL),
(638, 1563, 48, 1, '2020-05-21 00:46:51', NULL),
(639, 1774, 56, 1, '2020-05-21 00:46:51', NULL),
(640, 1285, 41, 0, '2020-05-21 00:46:51', NULL),
(641, 1286, 41, 0, '2020-05-21 00:46:51', NULL),
(642, 1775, 56, 1, '2020-05-21 00:46:51', NULL),
(643, 1626, 53, 0, '2020-05-21 00:46:51', NULL),
(644, 1287, 41, 0, '2020-05-21 00:46:51', NULL),
(648, 1627, 53, 1, '2020-05-21 00:46:51', NULL),
(649, 1479, 45, 0, '2020-05-21 00:46:51', NULL),
(650, 1628, 53, 1, '2020-05-21 00:46:51', NULL),
(651, 1776, 56, 0, '2020-05-21 00:46:51', NULL),
(652, 1777, 56, 0, '2020-05-21 00:46:51', NULL),
(653, 1564, 48, 0, '2020-05-21 00:46:51', NULL),
(654, 1629, 53, 1, '2020-05-21 00:46:51', NULL),
(655, 1480, 45, 1, '2020-05-21 00:46:51', NULL),
(656, 1630, 53, 1, '2020-05-21 00:46:51', NULL),
(657, 1631, 53, 0, '2020-05-21 00:46:51', NULL),
(658, 1778, 56, 1, '2020-05-21 00:46:51', NULL),
(659, 1632, 53, 0, '2020-05-21 00:46:51', NULL),
(660, 1633, 53, 0, '2020-05-21 00:46:51', NULL),
(661, 1481, 45, 1, '2020-05-21 00:46:51', NULL),
(662, 1634, 53, 0, '2020-05-21 00:46:51', NULL),
(663, 1482, 45, 0, '2020-05-21 00:46:51', NULL),
(664, 1483, 45, 0, '2020-05-21 00:46:51', NULL),
(665, 1888, 61, 1, '2020-05-21 00:46:51', NULL),
(666, 1635, 53, 1, '2020-05-21 00:46:51', NULL),
(667, 1779, 56, 0, '2020-05-21 00:46:51', NULL),
(668, 1636, 53, 1, '2020-05-21 00:46:51', NULL),
(669, 1565, 48, 0, '2020-05-21 00:46:51', NULL),
(670, 1288, 41, 1, '2020-05-21 00:46:51', NULL),
(671, 1637, 53, 0, '2020-05-21 00:46:51', NULL),
(672, 1780, 56, 1, '2020-05-21 00:46:51', NULL),
(673, 1781, 56, 1, '2020-05-21 00:46:51', NULL),
(674, 1566, 48, 0, '2020-05-21 00:46:51', NULL),
(675, 1567, 48, 0, '2020-05-21 00:46:51', NULL),
(676, 1289, 41, 0, '2020-05-21 00:46:51', NULL),
(677, 1638, 53, 0, '2020-05-21 00:46:51', NULL),
(678, 1782, 56, 1, '2020-05-21 00:46:51', NULL),
(679, 1783, 56, 1, '2020-05-21 00:46:51', NULL),
(680, 1568, 48, 0, '2020-05-21 00:46:51', NULL),
(681, 1569, 48, 0, '2020-05-21 00:46:51', NULL),
(682, 1290, 41, 0, '2020-05-21 00:46:51', NULL),
(683, 1639, 53, 0, '2020-05-21 00:46:51', NULL),
(684, 1784, 56, 0, '2020-05-21 00:46:51', NULL),
(685, 1785, 56, 0, '2020-05-21 00:46:51', NULL),
(686, 1570, 48, 0, '2020-05-21 00:46:51', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_competence`
--

CREATE TABLE `evaluation_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_competence`
--

INSERT INTO `evaluation_competence` (`id`, `competence_id`, `evaluation_id`, `weight`, `created_at`, `updated_at`) VALUES
(1, 1, 23, 6, '2020-05-21 22:06:25', NULL),
(2, 2, 23, 6, '2020-05-21 22:06:31', NULL),
(3, 3, 8, 1, '2020-05-21 22:21:26', NULL),
(4, 4, 14, 6, '2020-05-21 22:21:35', NULL),
(5, 5, 12, 3, '2020-05-21 22:21:42', NULL),
(6, 6, 31, 6, '2020-05-21 22:21:58', NULL),
(7, 7, 31, 6, '2020-05-21 22:22:34', NULL),
(8, 8, 31, 6, '2020-05-21 22:22:40', NULL),
(9, 9, 14, 3, '2020-05-21 22:22:57', NULL),
(10, 10, 8, 1, '2020-05-21 22:23:03', NULL),
(11, 11, 8, 1, '2020-05-21 22:23:12', NULL),
(12, 12, 12, 6, '2020-05-21 22:23:26', NULL),
(13, 13, 12, 6, '2020-05-21 22:23:31', NULL),
(14, 14, 14, 3, '2020-05-21 22:23:40', NULL),
(15, 15, 23, 3, '2020-05-21 22:23:44', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_method`
--

CREATE TABLE `evaluation_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `action_method_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_question`
--

CREATE TABLE `evaluation_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_question`
--

INSERT INTO `evaluation_question` (`id`, `evaluation_id`, `question_id`, `created_at`, `updated_at`) VALUES
(1, 12, 29, '2020-05-12 06:13:50', NULL),
(2, 12, 33, '2020-05-12 06:13:50', NULL),
(3, 12, 40, '2020-05-12 06:13:50', NULL),
(4, 8, 41, '2020-05-12 06:13:50', NULL),
(5, 8, 36, '2020-05-12 06:13:50', NULL),
(6, 8, 32, '2020-05-12 06:13:50', NULL),
(7, 23, 30, '2020-05-12 06:13:50', NULL),
(8, 23, 31, '2020-05-12 06:13:50', NULL),
(9, 23, 34, '2020-05-12 06:13:50', NULL),
(10, 14, 35, '2020-05-12 06:13:50', NULL),
(11, 14, 37, '2020-05-12 06:13:50', NULL),
(12, 14, 38, '2020-05-12 06:13:50', NULL),
(13, 31, 39, '2020-05-12 06:13:50', NULL),
(14, 31, 42, '2020-05-12 06:13:50', NULL),
(15, 31, 43, '2020-05-12 06:13:50', NULL),
(16, 12, 54, '2020-05-12 19:03:18', NULL),
(17, 12, 55, '2020-05-12 19:03:18', NULL),
(18, 12, 56, '2020-05-12 19:03:18', NULL),
(19, 12, 50, '2020-05-12 19:03:18', NULL),
(20, 12, 49, '2020-05-12 19:03:18', NULL),
(21, 8, 48, '2020-05-12 19:03:18', NULL),
(22, 8, 51, '2020-05-12 19:03:18', NULL),
(23, 8, 52, '2020-05-12 19:03:18', NULL),
(24, 8, 57, '2020-05-12 19:03:18', NULL),
(25, 8, 58, '2020-05-12 19:03:18', NULL),
(26, 23, 61, '2020-05-12 19:03:18', NULL),
(27, 23, 62, '2020-05-12 19:03:18', NULL),
(28, 23, 63, '2020-05-12 19:03:18', NULL),
(29, 23, 64, '2020-05-12 19:03:18', NULL),
(30, 23, 65, '2020-05-12 19:03:18', NULL),
(31, 14, 44, '2020-05-12 19:03:18', NULL),
(32, 14, 45, '2020-05-12 19:03:18', NULL),
(33, 14, 46, '2020-05-12 19:03:18', NULL),
(34, 14, 47, '2020-05-12 19:03:18', NULL),
(35, 14, 68, '2020-05-12 19:03:18', NULL),
(36, 31, 53, '2020-05-12 19:03:18', NULL),
(37, 31, 66, '2020-05-12 19:03:18', NULL),
(38, 31, 70, '2020-05-12 19:03:18', NULL),
(39, 31, 79, '2020-05-12 19:03:18', NULL),
(40, 31, 77, '2020-05-12 19:03:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_rule`
--

CREATE TABLE `evaluation_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `action_rule_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluation_type`
--

CREATE TABLE `evaluation_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evaluation_type`
--

INSERT INTO `evaluation_type` (`id`, `name`) VALUES
(1, 'E'),
(2, 'P');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluator`
--

CREATE TABLE `evaluator` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `feedback_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`id`, `description`, `admin_id`, `created_at`, `updated_at`, `feedback_type_id`) VALUES
(99, 'Puedes recuperar y administrar la información y contenido guardado y almacenado.', 1, '2020-05-12 04:10:59', NULL, 2),
(100, 'Tienes tu propia estrategia de almacenamiento.', 1, '2020-05-12 04:10:59', NULL, 2),
(101, 'Entiendes los riesgos de salud asociados con el uso de tecnología.', 1, '2020-05-12 04:10:59', NULL, 2),
(102, 'Entiendes los aspectos positivos y negativos del uso de tecnología en el entorno.', 1, '2020-05-12 04:10:59', NULL, 2),
(103, 'Eres capaz de formular tu propio juicio sobre el impacto de tecnologías en la vida diaria, consumo en línea y en el ambiente.', 1, '2020-05-12 04:10:59', NULL, 2),
(104, 'Empleas medidas para el correcto uso de tecnologías para evitar problemas de salud.', 1, '2020-05-12 04:10:59', NULL, 2),
(105, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(106, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(107, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(108, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(109, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(110, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(111, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(112, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(113, 'Puedes separar apropiadamente la información que encuentras.', 1, '2020-05-12 04:10:59', NULL, 2),
(114, 'Puedes navegar la red para encontrar información y datos.', 1, '2020-05-12 04:10:59', NULL, 2),
(115, 'Puedes utilizar varias estrategias cuando buscas información en internet.', 1, '2020-05-12 04:10:59', NULL, 2),
(116, 'Guiar a otros y compartir datos, información y contenido digital a través de una variedad de herramientas digitales apropiadas en contextos determinados.', 1, '2020-05-12 04:10:59', NULL, 2),
(117, 'Identidicar las prácticas simples de referencia y atribución con autonomía y una guia adecuada.  ', 1, '2020-05-12 04:10:59', NULL, 2),
(118, 'Sabes cómo encontrar un buen balance entre los mundos en línea y fuera de línea.', 1, '2020-05-12 04:10:59', NULL, 2),
(119, 'Puedes navegar la red para encontrar información y datos.', 1, '2020-05-12 04:10:59', NULL, 2),
(120, 'Guiar a otros y compartir datos, información y contenido digital a través de una variedad de herramientas digitales apropiadas en contextos determinados.', 1, '2020-05-12 04:10:59', NULL, 2),
(121, 'Puedes recuperar y administrar la información y contenido guardado y almacenado.', 1, '2020-05-12 04:10:59', NULL, 2),
(122, 'Realizar búsqueda en línea a través de motores de búsqueda.', 1, '2020-05-12 04:10:59', NULL, 1),
(123, 'Realizar búsqueda en línea a través de motores de búsqueda.', 1, '2020-05-12 04:10:59', NULL, 1),
(124, 'Realizar búsqueda en línea a través de motores de búsqueda.', 1, '2020-05-12 04:10:59', NULL, 1),
(125, 'Realizar búsqueda en línea a través de motores de búsqueda.', 1, '2020-05-12 04:10:59', NULL, 1),
(126, 'Disociar la información que encuentras.', 1, '2020-05-12 04:10:59', NULL, 1),
(127, 'Disociar la información que encuentras.', 1, '2020-05-12 04:10:59', NULL, 1),
(128, 'Disociar la información que encuentras.', 1, '2020-05-12 04:10:59', NULL, 1),
(129, 'Disociar la información que encuentras.', 1, '2020-05-12 04:10:59', NULL, 1),
(130, 'Adoptar una estrategia de almacenamiento.', 1, '2020-05-12 04:10:59', NULL, 1),
(131, 'Adoptar una estrategia de almacenamiento.', 1, '2020-05-12 04:10:59', NULL, 1),
(132, 'Adoptar una estrategia de almacenamiento.', 1, '2020-05-12 04:10:59', NULL, 1),
(133, 'Adoptar una estrategia de almacenamiento.', 1, '2020-05-12 04:10:59', NULL, 1),
(134, 'Ser consciente que la información y archivos pueden ser ordenados y filtrados usando dispositivos digitales.', 1, '2020-05-12 04:10:59', NULL, 1),
(135, 'Ser consciente que la información y archivos pueden ser ordenados y filtrados usando dispositivos digitales.', 1, '2020-05-12 04:10:59', NULL, 1),
(136, 'Ser consciente que la información y archivos pueden ser ordenados y filtrados usando dispositivos digitales.', 1, '2020-05-12 04:10:59', NULL, 1),
(137, 'Ser consciente que la información y archivos pueden ser ordenados y filtrados usando dispositivos digitales.', 1, '2020-05-12 04:10:59', NULL, 1),
(138, 'Identificar medios de comunicación simples y apropiados en un contexto dado.', 1, '2020-05-12 04:10:59', NULL, 1),
(139, 'Identificar medios de comunicación simples y apropiados en un contexto dado.', 1, '2020-05-12 04:10:59', NULL, 1),
(140, 'Identificar medios de comunicación simples y apropiados en un contexto dado.', 1, '2020-05-12 04:10:59', NULL, 1),
(141, 'Identificar medios de comunicación simples y apropiados en un contexto dado.', 1, '2020-05-12 04:11:00', NULL, 1),
(142, 'Ser consciente de que los sitios web tienen diferentes reglas de publicación de contenido.', 1, '2020-05-12 04:11:00', NULL, 1),
(143, 'Ser consciente de que los sitios web tienen diferentes reglas de publicación de contenido.', 1, '2020-05-12 04:11:00', NULL, 1),
(144, 'Ser consciente de que los sitios web tienen diferentes reglas de publicación de contenido.', 1, '2020-05-12 04:11:00', NULL, 1),
(145, 'Ser consciente de que los sitios web tienen diferentes reglas de publicación de contenido.', 1, '2020-05-12 04:11:00', NULL, 1),
(146, 'Ser consciente que no cualquier sitio web otorga la autoría de un contenido al publicador del mismo dentro de dicho sitio web.', 1, '2020-05-12 04:11:00', NULL, 1),
(147, 'Ser consciente que no cualquier sitio web otorga la autoría de un contenido al publicador del mismo dentro de dicho sitio web.', 1, '2020-05-12 04:11:00', NULL, 1),
(148, 'Ser consciente que no cualquier sitio web otorga la autoría de un contenido al publicador del mismo dentro de dicho sitio web.', 1, '2020-05-12 04:11:00', NULL, 1),
(149, 'Ser consciente que no cualquier sitio web otorga la autoría de un contenido al publicador del mismo dentro de dicho sitio web.', 1, '2020-05-12 04:11:00', NULL, 1),
(150, 'Seguir pasos básicos para proteger tus dispositivos.', 1, '2020-05-12 04:11:00', NULL, 1),
(151, 'Seguir pasos básicos para proteger tus dispositivos.', 1, '2020-05-12 04:11:00', NULL, 1),
(152, 'Seguir pasos básicos para proteger tus dispositivos.', 1, '2020-05-12 04:11:00', NULL, 1),
(153, 'Seguir pasos básicos para proteger tus dispositivos.', 1, '2020-05-12 04:11:00', NULL, 1),
(154, 'Identificar los principales problemas con la privacidad en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(155, 'Identificar los principales problemas con la privacidad en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(156, 'Identificar los principales problemas con la privacidad en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(157, 'Identificar los principales problemas con la privacidad en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(158, 'Reconocer cómo protegerte a ti y a otros del ciber bullying.', 1, '2020-05-12 04:11:00', NULL, 1),
(159, 'Reconocer cómo protegerte a ti y a otros del ciber bullying.', 1, '2020-05-12 04:11:00', NULL, 1),
(160, 'Reconocer cómo protegerte a ti y a otros del ciber bullying.', 1, '2020-05-12 04:11:00', NULL, 1),
(161, 'Reconocer cómo protegerte a ti y a otros del ciber bullying.', 1, '2020-05-12 04:11:00', NULL, 1),
(162, 'Identificar el impacto del uso de tecnología en el entorno.', 1, '2020-05-12 04:11:00', NULL, 1),
(163, 'Identificar el impacto del uso de tecnología en el entorno.', 1, '2020-05-12 04:11:00', NULL, 1),
(164, 'Identificar el impacto del uso de tecnología en el entorno.', 1, '2020-05-12 04:11:00', NULL, 1),
(165, 'Identificar el impacto del uso de tecnología en el entorno.', 1, '2020-05-12 04:11:00', NULL, 1),
(166, 'Seleccionar servicios digitales simples para participar en la sociedad de manera autónoma.', 1, '2020-05-12 04:11:00', NULL, 1),
(167, 'Seleccionar servicios digitales simples para participar en la sociedad de manera autónoma.', 1, '2020-05-12 04:11:00', NULL, 1),
(168, 'Seleccionar servicios digitales simples para participar en la sociedad de manera autónoma.', 1, '2020-05-12 04:11:00', NULL, 1),
(169, 'Seleccionar servicios digitales simples para participar en la sociedad de manera autónoma.', 1, '2020-05-12 04:11:00', NULL, 1),
(170, 'Diferenciar las normas de comportamiento y los conocimientos prácticos simples al usar tecnologías digitales e interactuar en entornos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(171, 'Diferenciar las normas de comportamiento y los conocimientos prácticos simples al usar tecnologías digitales e interactuar en entornos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(172, 'Diferenciar las normas de comportamiento y los conocimientos prácticos simples al usar tecnologías digitales e interactuar en entornos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(173, 'Diferenciar las normas de comportamiento y los conocimientos prácticos simples al usar tecnologías digitales e interactuar en entornos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(174, 'Explicar y discutir formas bien definidas y rutinarias de proteger mi reputación en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(175, 'Explicar y discutir formas bien definidas y rutinarias de proteger mi reputación en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(176, 'Explicar y discutir formas bien definidas y rutinarias de proteger mi reputación en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(177, 'Explicar y discutir formas bien definidas y rutinarias de proteger mi reputación en línea.', 1, '2020-05-12 04:11:00', NULL, 1),
(178, 'Conocer sobre los diversos formatos existentes para crear contenidos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(179, 'Conocer sobre los diversos formatos existentes para crear contenidos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(180, 'Conocer sobre los diversos formatos existentes para crear contenidos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(181, 'Conocer sobre los diversos formatos existentes para crear contenidos digitales.', 1, '2020-05-12 04:11:00', NULL, 1),
(182, 'Utilizar una variedad de herramientas web para la representación del conocimiento, con el fin de interactuar, mostrar a los demás, crear, editar y re-elaborar lo más apropiado en el desarrollo de contenido digital en un contexto dado y complejo.', 1, '2020-05-12 04:11:00', NULL, 1),
(183, 'Utilizar una variedad de herramientas web para la representación del conocimiento, con el fin de interactuar, mostrar a los demás, crear, editar y re-elaborar lo más apropiado en el desarrollo de contenido digital en un contexto dado y complejo.', 1, '2020-05-12 04:11:00', NULL, 1),
(184, 'Utilizar una variedad de herramientas web para la representación del conocimiento, con el fin de interactuar, mostrar a los demás, crear, editar y re-elaborar lo más apropiado en el desarrollo de contenido digital en un contexto dado y complejo.', 1, '2020-05-12 04:11:00', NULL, 1),
(185, 'Utilizar una variedad de herramientas web para la representación del conocimiento, con el fin de interactuar, mostrar a los demás, crear, editar y re-elaborar lo más apropiado en el desarrollo de contenido digital en un contexto dado y complejo.', 1, '2020-05-12 04:11:00', NULL, 1),
(186, 'Proteger tu información personal cuando navegas en línea', 1, '2020-05-12 04:11:00', NULL, 1),
(187, 'Proteger tu información personal cuando navegas en línea', 1, '2020-05-12 04:11:00', NULL, 1),
(188, 'Proteger tu información personal cuando navegas en línea', 1, '2020-05-12 04:11:00', NULL, 1),
(189, 'Proteger tu información personal cuando navegas en línea', 1, '2020-05-12 04:11:00', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback_resource`
--

CREATE TABLE `feedback_resource` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `resource_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feedback_resource`
--

INSERT INTO `feedback_resource` (`id`, `feedback_id`, `resource_id`) VALUES
(5, 99, 5),
(6, 100, 6),
(7, 101, 7),
(8, 102, 8),
(9, 103, 9),
(10, 104, 10),
(11, 105, 11),
(12, 106, 12),
(13, 107, 13),
(14, 108, 14),
(15, 109, 15),
(16, 110, 16),
(17, 111, 17),
(18, 112, 18),
(19, 113, 19),
(20, 114, 20),
(21, 115, 21),
(22, 116, 22),
(23, 117, 23),
(24, 118, 24),
(25, 119, 20),
(26, 120, 21),
(27, 121, 22),
(28, 122, 23),
(29, 123, 25),
(30, 124, 26),
(31, 125, 27),
(32, 126, 28),
(33, 127, 29),
(34, 128, 30),
(35, 129, 31),
(36, 130, 32),
(37, 131, 33),
(38, 132, 34),
(39, 133, 35),
(40, 134, 36),
(41, 135, 37),
(42, 136, 38),
(43, 137, 39),
(44, 138, 40),
(45, 139, 41),
(46, 140, 42),
(47, 141, 43),
(48, 142, 44),
(49, 143, 45),
(50, 144, 46),
(51, 145, 47),
(52, 146, 48),
(53, 147, 49),
(54, 148, 50),
(55, 149, 51),
(56, 150, 52),
(57, 151, 53),
(58, 152, 54),
(59, 153, 55),
(60, 154, 56),
(61, 155, 57),
(62, 156, 58),
(63, 157, 59),
(64, 158, 60),
(65, 159, 61),
(66, 160, 62),
(67, 161, 63),
(68, 162, 64),
(69, 163, 65),
(70, 164, 66),
(71, 165, 67),
(72, 166, 68),
(73, 167, 69),
(74, 168, 70),
(75, 169, 71),
(76, 170, 72),
(77, 171, 73),
(78, 172, 74),
(79, 173, 75),
(80, 174, 76),
(81, 175, 77),
(82, 176, 78),
(83, 177, 79),
(84, 178, 80),
(85, 179, 81),
(86, 180, 82),
(87, 181, 83),
(88, 182, 84),
(89, 183, 85),
(90, 184, 86),
(91, 185, 87),
(92, 186, 88),
(93, 187, 89),
(94, 188, 90),
(95, 189, 91);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback_type`
--

CREATE TABLE `feedback_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `feedback_type`
--

INSERT INTO `feedback_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollo', '2020-05-12 03:25:39', NULL),
(2, 'url', '2020-05-12 03:25:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `file`
--

CREATE TABLE `file` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(100) NOT NULL,
  `filename` varchar(45) NOT NULL,
  `size` varchar(45) DEFAULT NULL,
  `mimetype` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group`
--

CREATE TABLE `group` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `career` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_talents` int(10) DEFAULT NULL,
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_campus_config`
--

CREATE TABLE `group_campus_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `university_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_career_config`
--

CREATE TABLE `group_career_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `university_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_descriptions_config`
--

CREATE TABLE `group_descriptions_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `university_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_invitation`
--

CREATE TABLE `group_invitation` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `flag` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_labels_config`
--

CREATE TABLE `group_labels_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `university_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_subject_config`
--

CREATE TABLE `group_subject_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `university_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hiring_offers`
--

CREATE TABLE `hiring_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `verification_id` varchar(45) NOT NULL,
  `interview_id` varchar(45) NOT NULL,
  `talent_id` varchar(45) NOT NULL,
  `enterprise_id` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_step` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interviews`
--

CREATE TABLE `interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interview_invitations`
--

CREATE TABLE `interview_invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `step_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `evaluator_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evaluator_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` tinyint(1) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interview_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interview_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issues`
--

CREATE TABLE `issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `sumary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_key` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_updated` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsored` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue_reqs`
--

CREATE TABLE `issue_reqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `issue_request_id` int(10) UNSIGNED DEFAULT NULL,
  `detail` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solved` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `issue_requests`
--

CREATE TABLE `issue_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `sumary` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_key` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignee` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_updated` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available` tinyint(4) DEFAULT NULL,
  `level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsored` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit_date` datetime DEFAULT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `link` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job`
--

CREATE TABLE `job` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_type_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `is_remote` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(45) DEFAULT NULL,
  `payload` longtext DEFAULT NULL,
  `attempts` tinyint(3) UNSIGNED DEFAULT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_competence`
--

CREATE TABLE `job_competence` (
  `int` int(10) UNSIGNED NOT NULL,
  `job_id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_type`
--

CREATE TABLE `job_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages_translate`
--

CREATE TABLE `languages_translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `translate_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `level`
--

CREATE TABLE `level` (
  `id` int(11) UNSIGNED NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `min_score` float NOT NULL,
  `max_score` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `level`
--

INSERT INTO `level` (`id`, `evaluation_id`, `name`, `min_score`, `max_score`, `created_at`, `updated_at`) VALUES
(1, 8, 'Básico', 1, 15, '2020-05-12 15:03:18', NULL),
(2, 8, 'Intermedio', 15, 20, '2020-05-12 15:03:18', NULL),
(3, 8, 'Avanzado', 20, 25, '2020-05-12 15:03:18', NULL),
(4, 8, 'Especializado', 25, 32, '2020-05-12 15:03:18', NULL),
(5, 12, 'Básico', 1, 15, '2020-05-12 15:03:18', NULL),
(6, 12, 'Intermedio', 15, 20, '2020-05-12 15:03:18', NULL),
(7, 12, 'Avanzado', 20, 25, '2020-05-12 15:03:18', NULL),
(8, 12, 'Especializado', 25, 32, '2020-05-12 15:03:18', NULL),
(9, 14, 'Básico', 1, 15, '2020-05-12 15:03:18', NULL),
(10, 14, 'Intermedio', 15, 20, '2020-05-12 15:03:18', NULL),
(11, 14, 'Avanzado', 20, 25, '2020-05-12 15:03:18', NULL),
(12, 14, 'Especializado', 25, 32, '2020-05-12 15:03:18', NULL),
(13, 23, 'Básico', 1, 15, '2020-05-12 15:03:19', NULL),
(14, 23, 'Intermedio', 15, 20, '2020-05-12 15:03:19', NULL),
(15, 23, 'Avanzado', 20, 25, '2020-05-12 15:03:19', NULL),
(16, 23, 'Especializado', 25, 32, '2020-05-12 15:03:19', NULL),
(17, 31, 'Básico', 1, 15, '2020-05-12 15:03:19', NULL),
(18, 31, 'Intermedio', 15, 20, '2020-05-12 15:03:19', NULL),
(19, 31, 'Avanzado', 20, 25, '2020-05-12 15:03:19', NULL),
(20, 31, 'Especializado', 25, 32, '2020-05-12 15:03:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprises_id` int(10) UNSIGNED NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `member_areas`
--

CREATE TABLE `member_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(52, NULL, 'Laravel Personal Access Client', 'fgfiXRSKwdXbhzQJ1gGpfcRPdoT2FtTCVqsUh70w', 'http://localhost', 1, 0, 0, '2020-05-08 06:31:15', '2020-05-08 06:31:15'),
(53, NULL, 'Laravel Password Grant Client', '4UBgi5TmCQeUJ2GA3dyKNzyjeh2aPNCFILAz2ImS', 'http://localhost', 0, 1, 0, '2020-05-08 06:31:15', '2020-05-08 06:31:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(25, 52, '2020-05-08 06:31:15', '2020-05-08 06:31:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_certifications`
--

CREATE TABLE `old_certifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `long_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moodle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_certification_talents`
--

CREATE TABLE `old_certification_talents` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `certification_id` int(10) UNSIGNED DEFAULT NULL,
  `file` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `folio` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_average` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_score_average` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `general_result` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `area1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area3` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level3` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area4` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level4` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area5` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level5` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area6` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level6` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area7` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level7` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area8` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level8` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area9` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level9` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area10` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level10` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_enterprises`
--

CREATE TABLE `old_enterprises` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `stripe_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_subscription` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_plan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_six_month` int(11) DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acknowledgments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `area_id` int(11) DEFAULT 0,
  `personal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wepowSubdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_evaluator`
--

CREATE TABLE `old_evaluator` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `university_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_groups`
--

CREATE TABLE `old_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `enterprise_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `career` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campus` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_talents` int(10) DEFAULT NULL,
  `short_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coordinator_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_group_invitations`
--

CREATE TABLE `old_group_invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `flag` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_modules`
--

CREATE TABLE `old_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_programs`
--

CREATE TABLE `old_programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enterprise_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `short_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moodle_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_shortname_prefix_availables`
--

CREATE TABLE `old_shortname_prefix_availables` (
  `id` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_talent_modules`
--

CREATE TABLE `old_talent_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  `talent_id` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `score` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `old_user_skills`
--

CREATE TABLE `old_user_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `experience` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pending_modules`
--

CREATE TABLE `pending_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `talent_email` varchar(45) DEFAULT NULL,
  `course_shortname` varchar(45) DEFAULT NULL,
  `num_module` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `points`
--

CREATE TABLE `points` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `detail` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question`
--

CREATE TABLE `question` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_type_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `short_name` varchar(45) NOT NULL,
  `question` longtext NOT NULL,
  `points` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `question`
--

INSERT INTO `question` (`id`, `question_type_id`, `admin_id`, `short_name`, `question`, `points`, `created_at`, `updated_at`, `question_category_id`) VALUES
(29, 1, 1, 'dig_0001', 'Si quisieras realizar una búsqueda, pero solamente obtener resultados de investigaciones y artículos científicos así como libros y revistas especializadas, ¿Qué herramienta utilizarías?', 2, '2020-05-14 23:26:18', NULL, 8),
(30, 1, 1, 'dig_0002', 'Debido al bajo desempeño de tu actual teléfono celular, decides ahorrar para comprar uno nuevo, por lo que en una hoja de cálculo creas una tabla de ingresos y gastos para llevar un control de lo que llevas ahorrado.', 2, '2020-05-14 23:26:14', NULL, 8),
(31, 1, 1, 'dig_0003', 'Decides utilizar un método para tener tus archivos respaldados, organizados y disponibles desde cualquier medio digital. ¿Cuál de las siguientes herramientas se adapta a tus necesidades?', 2, '2020-05-14 23:26:07', NULL, 8),
(32, 1, 1, 'dig_0004', 'Requieres establecer una comunicación compartida para desarrollar proyectos, conocer personas, entre muchas cosas más, ¿Qué opciones te permiten realizar la interacción con las tecnologías digitales?', 2, '2020-05-15 06:51:21', NULL, 9),
(33, 1, 1, 'dig_0005', 'Necesitas investigar en fuentes confiables sobre la historia de la web 2.0. Selecciona la opción que contenga herramientas que alojen información confiable.', 2, '2020-05-14 23:23:11', NULL, 10),
(34, 1, 1, 'dig_0006', 'Te encuentras participando en foros de discusión por medio de tu smartphone. Navegando por varios hilos, encuentras uno en el que discuten acerca del episodio más reciente de tu serie favorita: Los tronos están en juego. El hilo contiene una teoría s...', 2, '2020-05-16 05:49:40', NULL, 12),
(35, 1, 1, 'dig_0007', 'De las herramientas y aplicaciones básicas con las cuales cuenta una computadora ¿Cuál de las siguientes utilizas para crear y editar contenido relacionado a la descripción y cálculo de un inventario de los insumos de canasta básica que tienes en c...', 2, '2020-05-14 23:24:27', NULL, 9),
(36, 1, 1, 'dig_0008', 'Es el cumpleaños de uno de tus parientes el cual se encuentra lejos de ti, y optas por obsequiarle algo hecho por ti pues tienes infinidad de fotos, datos curiosos de él, y la música que prefiere. ¿Qué herramienta digital puedes utilizar para hacer ...', 2, '2020-05-14 23:24:31', NULL, 9),
(37, 1, 1, 'dig_0009', 'En una reunión familiar, te encuentras hablando con tu tío, el cual te comenta que necesita hacer un estudio de mercado, debido a que quiere emprender un negocio, el único problema es que posee conocimiento escaso acerca de la utilización las tecnolo...', 2, '2020-05-14 23:24:35', NULL, 9),
(38, 1, 1, 'dig_0010', 'Te encuentras utilizando una computadora en tu escuela a fin de adelantar una tarea. Guardas toda la información que encuentras en una carpeta que almacenas para su posterior utilización. Ya en tu casa, al abrir la carpeta te das cuenta que dentro de ...', 2, '2020-05-14 23:32:39', NULL, 8),
(39, 1, 1, 'dig_0011', 'Acabas de adquirir una nueva computadora y decides instalar programas de uso común como lo son programas de oficina que permiten crear y editar documentos, presentaciones y hojas de cálculo; un navegador web que permite navegar por la red; un cliente d...', 2, '2020-05-14 23:32:39', NULL, 11),
(40, 1, 1, 'dig_0012', 'Necesitas una herramienta para limpiar archivos del disco duro de tu PC ya que éste se está quedando sin espacio disponible. Para lo anterior, y navegando en foros de internet encuentras un programa gratuito con las siguientes características: Nombre:...', 2, '2020-05-14 23:32:39', NULL, 12),
(41, 1, 1, 'dig_0013', 'Como método de tener a la mano tu tarea, decides guardar y editar el documento desde la nube, por lo que al haber finalizado la edición, guardas el archivo en el almacenamiento de tu computadora. Al día siguiente, en el transcurso hacia tu escuela, de...', 2, '2020-05-05 05:11:37', NULL, 7),
(42, 1, 1, 'dig_0014', 'Te encuentras cursando una materia en línea; para la tarea de la próxima semana, el asesor carga un archivo a la plataforma, llamado semana_3.rar. Descargas el archivo, pero cuando tratas de abrirlo, tu computadora te muestra el siguiente mensaje: “N...', 2, '2020-05-05 05:11:37', NULL, 7),
(43, 1, 1, 'TL_Q_015_2020', 'Realizar investigaciones y estudiar grupos étnicos con relación a su cultura, sus costumbres y tradiciones, y compartir con ellos dichas vivencias.', 4, '2020-05-14 23:41:22', NULL, 7),
(44, 1, 1, 'fs_q_001', '¿Qué es un lenguaje de programación?', 2, '2020-05-15 01:11:06', NULL, 8),
(45, 1, 1, 'fs_q_002', '¿Qué es programar?', 2, '2020-05-15 00:25:10', NULL, 11),
(46, 1, 1, 'fs_q_003', '¿Cómo se aplican estilos?', 2, '2020-05-15 00:25:14', NULL, 11),
(47, 1, 1, 'fs_q_004', '¿Con qué lenguaje o librería le damos acciones a los botones?', 2, '2020-05-15 00:25:18', NULL, 11),
(48, 1, 1, 'fs_q_005', '¿Dónde se almacenan los datos en un sistema?', 2, '2020-05-14 23:41:36', NULL, 12),
(49, 1, 1, 'DXDC_0111', '<p>&amp;space Navegar a través de documentos electrónicos utilizando diversas herramientas para encontrar información, datos o contenido digital.</p>', 2, '2020-05-12 18:42:30', NULL, 8),
(50, 1, 1, 'DXDC_0121', '<p>&amp;space Analizar la credibilidad y la fiabilidad de las fuentes de datos, información y contenido digital.</p>', 2, '2020-05-12 18:42:30', NULL, 8),
(51, 1, 1, 'DXDC_0131A', '<p>&amp;space Organizar, almacenar y recuperar datos, información y contenidos digitales en un entorno estructurado.</p>', 2, '2020-05-12 18:42:30', NULL, 8),
(52, 1, 1, 'DXDC_0131B', '<p>Toda la información que se recolecta de la red puede ser filtrada y ordenada de acuerdo al criterio propio de cada persona.</p>', 2, '2020-05-12 18:42:30', NULL, 8),
(53, 1, 1, 'DXDC_0211', '<p>La principal manera de &amp;space en la sociedad de conocimiento actual es a través de la &amp;space a través de plataformas y medios digitales. Al realizar lo anterior es necesario cumplir con las reglas de &amp;space que describen normas de compor...', 2, '2020-05-12 18:42:30', NULL, 9),
(54, 1, 1, 'DXDC_0311B', '<p>El hecho de que hayas creado cualquier tipo de contenido propio y original, significa que puede ser publicado en cualquier sitio web, plataforma o red social.</p>', 2, '2020-05-12 18:42:30', NULL, 10),
(55, 1, 1, 'DXDC_0331B', '<p>Cuando publicas información o contenido original de tu propiedad en cualquier lugar de la red, éste automáticamente cuenta con las licencias de derechos de autor.</p>', 2, '2020-05-12 18:42:30', NULL, 11),
(56, 1, 1, 'DXDC_0411', '<p>&amp;space Conocer las medidas de seguridad y protección, teniendo en cuenta los riesgos y amenazas en ambientes digitales y tener debidamente en cuenta fiabilidad y privacidad.</p>', 2, '2020-05-15 02:25:08', NULL, 12),
(57, 1, 1, 'DXDC_0421', '<p>&amp;space Entender cómo usar y compartir información de uno mismo y al mismo tiempo poder protegerse a sí mismo y a los demás de los daños.</p>', 2, '2020-05-12 18:42:30', NULL, 12),
(58, 1, 1, 'DXDC_0431', '<p>&amp;space Poder evitar los riesgos para la salud física y psicológica al utilizar las tecnologías digitales.</p>', 2, '2020-05-12 18:42:30', NULL, 13),
(59, 1, 1, 'DXDC_0441', '<p>&amp;space Ser conscientes del impacto ambiental de las tecnologías digitales y su uso.</p>', 2, '2020-05-15 01:07:33', NULL, 13),
(60, 1, 1, 'DXDC_0232', '<p>&amp;space Participar activamente en la sociedad mediante el uso de servicios digitales públicos y privados.</p>', 2, '2020-05-12 18:42:30', NULL, 15),
(61, 1, 1, 'DXDC_0252', '<p>&amp;space Adaptar las estrategias de comunicación, ser conscientes y respetar la diversidad cultural y generacional en los entornos digitales.</p>', 2, '2020-05-15 01:12:34', NULL, 12),
(62, 1, 1, 'DXDC_0262', '<p>&amp;space Proteger la reputación propia, tratando con los datos que uno produce a través de varias herramientas, entornos y servicios digitales.</p>', 2, '2020-05-15 01:12:44', NULL, 9),
(63, 1, 1, 'DXDC_0312', '<p>La creación de contenidos digitales en diferentes formatos es una manera de expresarse a través de medios digitales y no implica la contribución a la sociedad del conocimiento actual.</p>', 2, '2020-05-12 18:42:30', NULL, 10),
(64, 1, 1, 'DXDC_0322', '<p>Debido a diversas leyes, se encuentra prohibido modificar, mejorar e integrar la información y conocimientos existentes para crear contenidos y conocimientos nuevos y originales.</p>', 2, '2020-05-15 00:23:17', NULL, 13),
(65, 1, 1, 'DXDC_0422B', '<p>El uso de un antivirus instalado en tu computadora personal, te deja exento de las amenazas de robo de información en la red.</p>', 2, '2020-05-12 18:42:30', NULL, 12),
(66, 1, 1, 'TL_Q_001_2020', 'Realizar ilustraciones, animaciones, dibujos y construcciones a través de medios digitales.', 2, '2020-05-15 01:14:59', NULL, 12),
(67, 1, 1, 'TL_Q_002_2020', 'Componer música y versos como también tocar un instrumento.', 2, '2020-05-12 18:42:30', NULL, 1),
(68, 1, 1, 'TL_Q_003_2020', 'Trazar, diseñar y crear logotipos y portadas de una revista o una empresa.', 2, '2020-05-15 01:11:34', NULL, 12),
(69, 1, 1, 'TL_Q_004_2020', 'Desarrollar y diseñar juegos interactivos electrónicos para dispositivos móviles, portátiles o computadoras de escritorio.', 2, '2020-05-12 18:42:30', NULL, 2),
(70, 1, 1, 'TL_Q_005_2020', 'Desarrollar campañas publicitarias para diversos medios (sociedad, empresas, instituciones, etc.).', 2, '2020-05-14 23:46:48', NULL, 9),
(71, 1, 1, 'TL_Q_006_2020', 'Diseñar, decorar y rediseñar espacios físicos ya sea en oficinas, locales comerciales o privados y viviendas.', 2, '2020-05-12 18:42:30', NULL, 2),
(72, 1, 1, 'TL_Q_007_2020', 'Tomar fotografías de diversas índoles (paisajes, eventos sociales, hechos históricos, rostros, lugares significativos, figuras públicas, etc.), para áreas periodísticas, publicitarias, sociales, políticas, artísticas y comerciales.', 2, '2020-05-12 18:42:30', NULL, 1),
(73, 1, 1, 'TL_Q_008_2020', 'El realizar spots publicitarios, crear guiones literarios y de audio, producir cortometrajes, programas educativos, de ficción, horror, etc.', 2, '2020-05-12 18:42:30', NULL, 1),
(74, 1, 1, 'TL_Q_009_2020', 'Cuestiones relacionadas a la ley, juicios legales o de diferente naturaleza así como defender a clientes individuales o empresas.', 2, '2020-05-12 18:42:30', NULL, 1),
(75, 1, 1, 'TL_Q_010_2020', 'Realizar investigaciones con relación a efectos, causas y repercusiones de los trastornos emocionales.', 2, '2020-05-12 18:42:30', NULL, 1),
(76, 1, 1, 'TL_Q_011_2020', 'Crear y escribir obras literarias, artículos de diferente naturaleza como investigaciones, novelas, cuentos y columnas periodísticas.', 2, '2020-05-12 18:42:30', NULL, 2),
(77, 1, 1, 'TL_Q_012_2020', 'Realizar gestiones, planeaciones y evaluaciones de convenios, proyectos y programas internacionales de cooperación para el desarrollo social.', 2, '2020-05-14 23:47:24', NULL, 11),
(78, 1, 1, 'TL_Q_013_2020', 'Aprender diversas lenguas o idiomas sean actuales, muertas o antiguas para realizar traducciones o ser intérprete.', 2, '2020-05-12 18:42:30', NULL, 1),
(79, 1, 1, 'TL_Q_014_2020', 'Diseñar y gestionar programas educativos para la vinculación, inducción e inclusión de niños con capacidades diferentes.', 2, '2020-05-14 23:47:15', NULL, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_category`
--

CREATE TABLE `question_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `question_category`
--

INSERT INTO `question_category` (`id`, `name`) VALUES
(7, 'Programación'),
(8, 'Protección de dispositivos'),
(9, 'Re elaboración de contenidos digitales'),
(10, 'Interaccion a través de tecnologías digitales.'),
(11, 'Desarrollo de contenido digital'),
(12, 'Proteccion de dispositivos'),
(13, 'Resolucion de problemas técnicos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `question_type`
--

CREATE TABLE `question_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(45) NOT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `question_type`
--

INSERT INTO `question_type` (`id`, `type`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Options', 'Opcion multiple ', '2020-05-04 17:21:44', NULL),
(2, 'Complite_Options', 'Completa opciones', '2020-05-04 17:21:50', NULL),
(3, 'Relation', 'Relacionar', '2020-05-04 17:21:55', NULL),
(4, 'Complite_Text', 'Completa el texto', '2020-05-04 17:21:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resource`
--

CREATE TABLE `resource` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `resource`
--

INSERT INTO `resource` (`id`, `name`, `url`) VALUES
(1, 'Ver recursos:  Navegadores, elementos básicos y aprender a usarlos (Browsers, basic elements and learn how to use them)', 'https://thincrs-one.udemy.com/fundamental_computing_skills/learn/v4/t/lecture/4881896?start=240'),
(2, 'Google, búsqueda básica (Google Basic Research)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708010?start=120'),
(3, 'Búsqueda avanzada (Advanced search)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/3512928?start=0'),
(4, 'Ver recurso: Internet applications (Aplicaciones de internet).', 'https://thincrs-one.udemy.com/fundamental_computing_skills/learn/v4/t/lecture/4881896?start=240'),
(5, 'Ver recurso: Social media (Medios sociales).', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/lecture/13029042#overview?start=20'),
(6, 'Ver recurso: ¿Es posible recuperar un archivo si lo elimino por accidente? (Is it possible to recover a file if I accidentally delete it?).', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707948?start=431'),
(7, 'Ver recursos: Interconnectivity (Interconectividad) - What IS Information Architecture? (¿Qué es la arquitectura de la información?).', 'https://thincrs-one.udemy.com/computacion-basica-desde-cero-hasta-redes-sociales/learn/v4/t/lecture/2319958?start=45'),
(8, 'Ver recurso: Building Cognitive Systems Around Mental Health Issues (Construyendo sistemas cognitivos en torno a problemas de salud mental).', 'https://thincrs-one.udemy.com/course/emotional-intelligence-a-neurological-guide-to-mastery/learn/lecture/11501602?start=60'),
(9, 'Ver recursos: What is a PV system and applications! (¿Qué es un sistema fotovoltaico y sus aplicaciones? Ver lecturas también)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8808230?start=25'),
(10, 'Ver recursos: The Solar PV system & How does it work (El sistema solar fotovoltaico y cómo funciona)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8824004?start=27'),
(11, 'Steps to managing emotions (Pasos para manejar las emociones)', 'https://thincrs-one.udemy.com/course/conflict-management/learn/lecture/6610334?start=115'),
(12, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(13, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(14, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(15, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(16, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(17, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(18, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(19, 'Ver recurso: Internet of Things (Internet de las cosas)', 'https://thincrs-one.udemy.com/course/1m-cyber-security-awareness/learn/lecture/13029076?start=0'),
(20, 'Ver recursos: ¿Cuál es la diferencia entre un directorio y un archivo? (What is the difference between a directory and a file?)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707942?start=75'),
(21, 'er recurso: Otros buscadores (Other search engines)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708024?start=75'),
(22, 'Ver recursos: Primary and Secondary Navigation (Navegación primaria y secundaria)', 'https://thincrs-one.udemy.com/ia-fundamentals/learn/lecture/5601358?start=73'),
(23, 'Ver recurso: How to cut posting time in half! (¿Cómo reducir el tiempo de publicación a la mitad?).', 'https://thincrs-one.udemy.com/social-media-marketing-ads/learn/v4/t/lecture/3987492?start=25'),
(24, 'Ver recurso: Internet best practices (Mejores prácticas de internet).', 'https://thincrs-one.udemy.com/fundamental_computing_skills/learn/lecture/4848736?start=135'),
(25, 'Navegadores, elementos básicos y aprender a usarlos (Browsers, basic elements and learn how to use them)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707982?start=310'),
(26, 'Navegadores, elementos básicos y aprender a usarlos (Browsers, basic elements and learn how to use them)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707982?start=310'),
(27, 'Navegadores, elementos básicos y aprender a usarlos (Browsers, basic elements and learn how to use them)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707982?start=310'),
(28, 'Navegadores, elementos básicos y aprender a usarlos (Browsers, basic elements and learn how to use them)', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707982?start=310'),
(29, 'Social media (Medios sociales)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/lecture/13028838#?start=26'),
(30, 'Social media (Medios sociales)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/lecture/13028838#?start=26'),
(31, 'Social media (Medios sociales)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/lecture/13028838#?start=26'),
(32, 'Social media (Medios sociales)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/lecture/13028838#?start=26'),
(33, 'Crear directorios y archivos, practica (Create directories and files, practice)', 'https://thincrs-one.udemy.com/computacion-basica-desde-cero-hasta-redes-sociales/learn/v4/t/lecture/2319958?start=45'),
(34, 'Crear directorios y archivos, practica (Create directories and files, practice)', 'https://thincrs-one.udemy.com/computacion-basica-desde-cero-hasta-redes-sociales/learn/v4/t/lecture/2319958?start=45'),
(35, 'Crear directorios y archivos, practica (Create directories and files, practice)', 'https://thincrs-one.udemy.com/computacion-basica-desde-cero-hasta-redes-sociales/learn/v4/t/lecture/2319958?start=45'),
(36, 'Crear directorios y archivos, practica (Create directories and files, practice)', 'https://thincrs-one.udemy.com/computacion-basica-desde-cero-hasta-redes-sociales/learn/v4/t/lecture/2319958?start=45'),
(37, '¿Cómo se organizan los archivos en mi computadora?', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707946#overview'),
(38, '¿Cómo se organizan los archivos en mi computadora?', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707946#overview'),
(39, '¿Cómo se organizan los archivos en mi computadora?', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707946#overview'),
(40, '¿Cómo se organizan los archivos en mi computadora?', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1707946#overview'),
(41, 'What content should I share on social media? (¿Qué contenido debo compartir en las redes sociales?)', 'https://thincrs-one.udemy.com/social-media-marketing-ads/learn/v4/t/lecture/3987470?start=0'),
(42, 'What content should I share on social media? (¿Qué contenido debo compartir en las redes sociales?)', 'https://thincrs-one.udemy.com/social-media-marketing-ads/learn/v4/t/lecture/3987470?start=0'),
(43, 'What content should I share on social media? (¿Qué contenido debo compartir en las redes sociales?)', 'https://thincrs-one.udemy.com/social-media-marketing-ads/learn/v4/t/lecture/3987470?start=0'),
(44, 'What content should I share on social media? (¿Qué contenido debo compartir en las redes sociales?)', 'https://thincrs-one.udemy.com/social-media-marketing-ads/learn/v4/t/lecture/3987470?start=0'),
(45, 'Infringement and Remedies', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5721002?start=10#overview'),
(46, 'Infringement and Remedies', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5721002?start=10#overview'),
(47, 'Infringement and Remedies', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5721002?start=10#overview'),
(48, 'Infringement and Remedies', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5721002?start=10#overview'),
(49, 'Works Elegible for Copyright', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5720710?start=10#overview'),
(50, 'Works Elegible for Copyright', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5720710?start=10#overview'),
(51, 'Works Elegible for Copyright', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5720710?start=10#overview'),
(52, 'Works Elegible for Copyright', 'https://thincrs-one.udemy.com/course/intellectual-property-inventors-entrepreneurs-creators/learn/lecture/5720710?start=10#overview'),
(53, 'Smartphones and mobile apps Part I (Teléfonos inteligentes y aplicaciones móviles parte 1)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/v4/t/lecture/13028742?start=35'),
(54, 'Smartphones and mobile apps Part I (Teléfonos inteligentes y aplicaciones móviles parte 1)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/v4/t/lecture/13028742?start=35'),
(55, 'Smartphones and mobile apps Part I (Teléfonos inteligentes y aplicaciones móviles parte 1)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/v4/t/lecture/13028742?start=35'),
(56, 'Smartphones and mobile apps Part I (Teléfonos inteligentes y aplicaciones móviles parte 1)', 'https://thincrs-one.udemy.com/1m-cyber-security-awareness/learn/v4/t/lecture/13028742?start=35'),
(57, 'What is privacy, anonymity and pseudonymity (¿Qué son la privacidad, anonimidad y pseudonimidad?)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9122438?start=23#overview'),
(58, 'What is privacy, anonymity and pseudonymity (¿Qué son la privacidad, anonimidad y pseudonimidad?)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9122438?start=23#overview'),
(59, 'What is privacy, anonymity and pseudonymity (¿Qué son la privacidad, anonimidad y pseudonimidad?)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9122438?start=23#overview'),
(60, 'What is privacy, anonymity and pseudonymity (¿Qué son la privacidad, anonimidad y pseudonimidad?)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9122438?start=23#overview'),
(61, 'Identity strategies (Estrategias de identidad)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9496686?start=36#overview'),
(62, 'Identity strategies (Estrategias de identidad)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9496686?start=36#overview'),
(63, 'Identity strategies (Estrategias de identidad)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9496686?start=36#overview'),
(64, 'Identity strategies (Estrategias de identidad)', 'https://thincrs-one.udemy.com/the-complete-2018-cyber-security-guide-for-non-professionals/learn/lecture/9496686?start=36#overview'),
(65, 'Why solar is the future? (¿Por qué la energía solar es el futuro?)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8801826?start=60'),
(66, 'Why solar is the future? (¿Por qué la energía solar es el futuro?)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8801826?start=60'),
(67, 'Why solar is the future? (¿Por qué la energía solar es el futuro?)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8801826?start=60'),
(68, 'Why solar is the future? (¿Por qué la energía solar es el futuro?)', 'https://thincrs-one.udemy.com/the-complete-solar-energy-course-beginner-to-advanced-level/learn/lecture/8801826?start=60'),
(69, 'What is Growth Hacking? (¿Qué es el pirateo del crecimiento?)', 'https://thincrs-one.udemy.com/growth-hacking-masterclass-become-a-digital-marketing-ninja/learn/lecture/2907164?start=15'),
(70, 'What is Growth Hacking? (¿Qué es el pirateo del crecimiento?)', 'https://thincrs-one.udemy.com/growth-hacking-masterclass-become-a-digital-marketing-ninja/learn/lecture/2907164?start=15'),
(71, 'What is Growth Hacking? (¿Qué es el pirateo del crecimiento?)', 'https://thincrs-one.udemy.com/growth-hacking-masterclass-become-a-digital-marketing-ninja/learn/lecture/2907164?start=15'),
(72, 'What is Growth Hacking? (¿Qué es el pirateo del crecimiento?)', 'https://thincrs-one.udemy.com/growth-hacking-masterclass-become-a-digital-marketing-ninja/learn/lecture/2907164?start=15'),
(73, 'Appropriate levels of formality (Niveles apropiados de formalidad)', 'https://thincrs-one.udemy.com/email-etiquette-for-business/learn/v4/t/lecture/6303688?start=340'),
(74, 'Appropriate levels of formality (Niveles apropiados de formalidad)', 'https://thincrs-one.udemy.com/email-etiquette-for-business/learn/v4/t/lecture/6303688?start=340'),
(75, 'Appropriate levels of formality (Niveles apropiados de formalidad)', 'https://thincrs-one.udemy.com/email-etiquette-for-business/learn/v4/t/lecture/6303688?start=340'),
(76, 'Appropriate levels of formality (Niveles apropiados de formalidad)', 'https://thincrs-one.udemy.com/email-etiquette-for-business/learn/v4/t/lecture/6303688?start=340'),
(77, 'Sources of Electronic Evidence (Fuentes de evidencia electrónica)', 'https://thincrs-one.udemy.com/course/digital-forensics-and-electronic-evidence/learn/lecture/7167310?start=40'),
(78, 'Sources of Electronic Evidence (Fuentes de evidencia electrónica)', 'https://thincrs-one.udemy.com/course/digital-forensics-and-electronic-evidence/learn/lecture/7167310?start=40'),
(79, 'Sources of Electronic Evidence (Fuentes de evidencia electrónica)', 'https://thincrs-one.udemy.com/course/digital-forensics-and-electronic-evidence/learn/lecture/7167310?start=40'),
(80, 'Sources of Electronic Evidence (Fuentes de evidencia electrónica)', 'https://thincrs-one.udemy.com/course/digital-forensics-and-electronic-evidence/learn/lecture/7167310?start=40'),
(81, 'What types of content should i create? (¿Qué tipos de contenido debo crear? Ver lecturas también)', 'https://thincrs-one.udemy.com/social-media-marketing-masterclass/learn/v4/t/lecture/5766242?start=60'),
(82, 'What types of content should i create? (¿Qué tipos de contenido debo crear? Ver lecturas también)', 'https://thincrs-one.udemy.com/social-media-marketing-masterclass/learn/v4/t/lecture/5766242?start=60'),
(83, 'What types of content should i create? (¿Qué tipos de contenido debo crear? Ver lecturas también)', 'https://thincrs-one.udemy.com/social-media-marketing-masterclass/learn/v4/t/lecture/5766242?start=60'),
(84, 'What types of content should i create? (¿Qué tipos de contenido debo crear? Ver lecturas también)', 'https://thincrs-one.udemy.com/social-media-marketing-masterclass/learn/v4/t/lecture/5766242?start=60'),
(85, 'Google Fonts (Fuentes de Google)', 'https://thincrs-one.udemy.com/course/recursos-web-plugins-y-utilidades/learn/lecture/4852960?start=38'),
(86, 'Google Fonts (Fuentes de Google)', 'https://thincrs-one.udemy.com/course/recursos-web-plugins-y-utilidades/learn/lecture/4852960?start=38'),
(87, 'Google Fonts (Fuentes de Google)', 'https://thincrs-one.udemy.com/course/recursos-web-plugins-y-utilidades/learn/lecture/4852960?start=38'),
(88, 'Google Fonts (Fuentes de Google)', 'https://thincrs-one.udemy.com/course/recursos-web-plugins-y-utilidades/learn/lecture/4852960?start=38'),
(89, 'Consejos de seguridad general en internet.', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708004#?start=1275overview'),
(90, 'Consejos de seguridad general en internet.', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708004#?start=1275overview'),
(91, 'Consejos de seguridad general en internet.', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708004#?start=1275overview'),
(92, 'Consejos de seguridad general en internet.', 'https://thincrs-one.udemy.com/course/computacion-basica-desde-cero-hasta-redes-sociales/learn/lecture/1708004#?start=1275overview');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubric`
--

CREATE TABLE `rubric` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rubric`
--

INSERT INTO `rubric` (`id`, `name`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Menú: Debe ser capaz de funcionar en distinta', '2020-05-06 20:51:19', NULL, 1),
(2, 'Secciones: Se evaluará que los componentes gr', '2020-05-06 20:51:19', NULL, 1),
(3, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(4, 'Validación de parámetros de entrada: Los camp', '2020-05-06 20:51:19', NULL, 1),
(5, 'Pruebas de consistencia de datos locales: Deb', '2020-05-06 20:51:19', NULL, 1),
(6, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(7, 'Revisión de base de datos: Estructura de base', '2020-05-06 20:51:19', NULL, 1),
(8, 'Pruebas online y offline: El sistema debe ser', '2020-05-06 20:51:19', NULL, 1),
(9, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(10, 'Configuración en el servicio: Debe estar corr', '2020-05-06 20:51:19', NULL, 1),
(11, 'Sistema de alertas: Debe ser capaz de dispara', '2020-05-06 20:51:19', NULL, 1),
(12, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(13, 'Información de envío de solicitud: Pre valida', '2020-05-06 20:51:19', NULL, 1),
(14, 'Firmado: La aplicación debe estar correctamen', '2020-05-06 20:51:19', NULL, 1),
(15, 'Instalación del aplicativo: Debe ser capaz de', '2020-05-06 20:51:19', NULL, 1),
(16, 'Validación de datos de entrada: Se probarán l', '2020-05-06 20:51:19', NULL, 1),
(17, 'Revisión de base de datos: La estructura debe', '2020-05-06 20:51:19', NULL, 1),
(18, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(19, 'Validación de parámetros de entrada: Los valo', '2020-05-06 20:51:19', NULL, 1),
(20, 'Pruebas de consistencia de datos: Los datos s', '2020-05-06 20:51:19', NULL, 1),
(21, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(22, 'Permisos: Solo usuarios con privilegios deben', '2020-05-06 20:51:19', NULL, 1),
(23, 'Disparo de alertas: El sistema debe disparar ', '2020-05-06 20:51:19', NULL, 1),
(24, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(25, 'Permisos: Solo usuarios con privilegios puede', '2020-05-06 20:51:19', NULL, 1),
(26, 'Pruebas de interfaz de usuario: La interfaz d', '2020-05-06 20:51:19', NULL, 1),
(27, 'Revisión del código: El código debe ser efici', '2020-05-06 20:51:19', NULL, 1),
(28, 'Permisos: Solo usuarios con privilegios puede', '2020-05-06 20:51:19', NULL, 1),
(29, 'Pruebas de reportes predeterminados: Los repo', '2020-05-06 20:51:19', NULL, 1),
(30, 'Revisión del código: El código debe ser mayor', '2020-05-06 20:51:19', NULL, 1),
(31, 'Maquetado de la interfaz web: Se evaluará qué', '2020-05-06 20:51:19', NULL, 1),
(32, 'Implementación del portal: Se evaluará el lay', '2020-05-06 20:51:19', NULL, 1),
(33, 'Responsividad: Se evaluará la interfaz en 3 r', '2020-05-06 20:51:19', NULL, 1),
(34, 'Validaciones: Se evaluará que las validacione', '2020-05-06 20:51:19', NULL, 1),
(35, 'Navegación: Se evaluará que todas las transic', '2020-05-06 20:51:19', NULL, 1),
(36, 'Evaluación de código: El código debe ser efic', '2020-05-06 20:51:19', NULL, 1),
(37, 'Pruebas de los parámetros del servicio web: S', '2020-05-06 20:51:19', NULL, 1),
(38, 'Pruebas de funcionamiento del servicio: Se re', '2020-05-06 20:51:19', NULL, 1),
(39, 'Revisión del código: Debe ser legible y ayuda', '2020-05-06 20:51:19', NULL, 1),
(40, 'Prueba End-to-End: Se probarán todas las func', '2020-05-06 20:51:19', NULL, 1),
(41, 'Experiencia de usuario: La aplicación debe co', '2020-05-06 20:51:19', NULL, 1),
(42, 'Revisión del código: Debe ser legible, con es', '2020-05-06 20:51:19', NULL, 1),
(43, 'Pruebas unitarias: Todos los módulos deberán ', '2020-05-06 20:51:19', NULL, 1),
(44, 'Pruebas de integración: Se deberán probar cas', '2020-05-06 20:51:19', NULL, 1),
(45, 'Reporte de pruebas: Se deberá entregar un doc', '2020-05-06 20:51:19', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubric_feedback`
--

CREATE TABLE `rubric_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `rubric_id` int(10) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scope`
--

CREATE TABLE `scope` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE `skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` float DEFAULT 1,
  `skill_type_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_type`
--

CREATE TABLE `skill_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL DEFAULT 'Soft'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialties`
--

CREATE TABLE `specialties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `special_users`
--

CREATE TABLE `special_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sponsored_issues`
--

CREATE TABLE `sponsored_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `issue_key` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sumary` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `studies`
--

CREATE TABLE `studies` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `institute_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscription`
--

CREATE TABLE `subscription` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `code` enum('educator','recruiter') NOT NULL,
  `stripe_plan` varchar(100) NOT NULL,
  `scope_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent`
--

CREATE TABLE `talent` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `stripe_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_subscription` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_plan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_subscription` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conekta_plan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `extrac_talent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `role_work` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dominated_technologies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tec_basic_knowledge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `education` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `salary` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `change_address` tinyint(3) UNSIGNED DEFAULT 0,
  `wepow_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT 0,
  `jira_user` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enterprise_id` int(11) UNSIGNED DEFAULT NULL,
  `university_id` int(10) UNSIGNED DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `inn` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `talent`
--

INSERT INTO `talent` (`id`, `lastname`, `user_id`, `stripe_id`, `stripe_subscription`, `stripe_plan`, `conekta_id`, `conekta_subscription`, `conekta_plan`, `city`, `state`, `country`, `birthdate`, `extrac_talent`, `experience`, `role_work`, `dominated_technologies`, `tec_basic_knowledge`, `school_name`, `linkedin`, `cv`, `github`, `skype`, `deleted_at`, `created_at`, `updated_at`, `education`, `salary`, `change_address`, `wepow_id`, `credits`, `points`, `jira_user`, `enterprise_id`, `university_id`, `admission_date`, `city_id`, `inn`) VALUES
(2570, 'Sebastian Galardo', 4406, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados unidos', '1980-02-03', 'Java', 1, 'Semi Senior', 'Desarrollador', 'Ing. En Sistemas Computacionales', 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', 'https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-02 01:47:24', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 9, '2020-05-01', 2, 0),
(2573, 'Christian Galardo', 4407, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1980-02-03', 'Java', 1, 'Semi Senior', 'Desarrollador', 'Ing. En Sistemas Computacionales', 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', 'https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 01:59:55', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 10, NULL, 2, 0),
(2574, 'Abraham Galardo', 4408, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-02', 'Java', 1, 'Semi Senior', 'Desarrollo', 'Ing. En Sistemas Computacionales', 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', 'https://github.com', 'https://www.skype.com/es/\r\n', NULL, '2020-05-03 02:08:31', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 11, NULL, 2, 0),
(2575, 'Alejandra Galardo', 4409, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 02:58:22', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 12, NULL, 2, 0),
(2576, 'Cecilia Galardo', 4410, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 03:02:18', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 13, NULL, 2, 0),
(2577, 'Gloria Galardo', 4411, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 03:03:49', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 14, NULL, 1, 0),
(2578, 'Solomeo Galardo', 4412, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 03:04:25', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 15, NULL, 1, 0),
(2579, 'Belen Galardo', 4413, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 03:04:46', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 16, NULL, 1, 0),
(2580, 'Jesus Galardo', 4414, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 03:08:09', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 17, NULL, 1, 0),
(2581, 'Machain Galardo', 4415, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Junior', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:51:53', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 18, NULL, 1, 0),
(2582, 'Ezequiel Galardo', 4416, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 1, 'Junior', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:52:10', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 19, NULL, 1, 0),
(2583, 'Alfredo Galardo', 4417, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:57:59', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 20, NULL, 2, 0),
(2584, 'Alberto Galardo', 4418, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:58:16', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 21, NULL, 2, 0),
(2585, 'Josue Galardo', 4419, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:58:30', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 22, NULL, 2, 0),
(2586, 'Helí Galardo', 4420, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:59:28', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 23, NULL, 2, 0),
(2587, 'Sergio Galardo', 4421, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 17:59:43', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 24, NULL, 2, 0),
(2588, 'Diego Galardo', 4422, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:02:32', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 25, NULL, 1, 0),
(2589, 'Esmeralda Galardo', 4423, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:02:44', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 26, NULL, 1, 0),
(2590, 'Melania Galardo', 4424, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:02:58', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 27, NULL, 1, 0),
(2591, 'Fernando Galardo', 4425, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:03:12', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 28, NULL, 1, 0),
(2592, 'Julio Galardo', 4426, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:03:27', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 29, NULL, 1, 0),
(2593, 'Saul Galardo', 4427, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:03:58', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 30, NULL, 1, 0),
(2594, 'Angel Galardo', 4428, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:07:22', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 31, NULL, 2, 0),
(2595, 'Pedro Galardo', 4429, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:07:51', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 32, NULL, 2, 0),
(2596, 'Samuel Galardo ', 4430, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:08:19', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 33, NULL, 2, 0),
(2597, 'Rodrigo Galrado', 4431, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:08:48', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 34, NULL, 2, 0),
(2598, 'Jaime Galardo', 4432, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:09:02', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 35, NULL, 2, 0),
(2599, 'Andres Galardo', 4433, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:10:43', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 36, NULL, 1, 0),
(2601, 'Andrea Galardo', 4434, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:11:26', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 37, NULL, 1, 0),
(2602, 'Alexa Galardo', 4435, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:11:40', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 38, NULL, 1, 0),
(2603, 'Jona Galardo', 4436, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:11:53', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 39, NULL, 1, 0),
(2604, 'Bryan Galrdo', 4437, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:12:12', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 40, NULL, 1, 0),
(2605, 'Adan Galardo', 4438, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 1, 'Student', 'Web Developer', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:12:26', NULL, 1, 0, 0, NULL, 1, 1, NULL, NULL, 41, NULL, 1, 0),
(2606, 'Nicolas Lozano', 4439, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:14:36', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 42, NULL, 2, 0),
(2608, 'Antonio Lozano', 4441, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:16:45', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 43, NULL, 2, 0),
(2609, 'Ludwig Lozano', 4442, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:17:13', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 44, NULL, 2, 0),
(2610, 'Demian Lozano ', 4443, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:17:41', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 45, NULL, 2, 0),
(2611, 'Howl Lozano', 4444, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:18:00', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 46, NULL, 2, 0),
(2612, 'Dimitri Lozano', 4445, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:21:28', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 47, NULL, 1, 0),
(2613, 'Jessica Lozano', 4446, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:21:47', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 48, NULL, 1, 0),
(2614, 'Andrue Lozano', 4447, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:22:03', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 49, NULL, 1, 0),
(2615, 'Alexander Lozano', 4448, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:22:21', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 50, NULL, 1, 0),
(2616, 'Anahí Lozano', 4449, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:22:43', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 51, NULL, 1, 0),
(2617, 'Karen Lozano', 4450, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:23:01', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 52, NULL, 1, 0),
(2618, 'Sarai Lozano', 4451, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:24:42', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 53, NULL, 2, 0),
(2619, 'Solovino Lozano', 4452, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:25:01', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 54, NULL, 2, 0),
(2620, 'Hector Lozano', 4453, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:25:27', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 55, NULL, 2, 0),
(2622, 'Daniel Lozano', 4454, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:27:00', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 56, NULL, 2, 0),
(2623, 'Mario Lozano', 4455, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:27:13', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 57, NULL, 2, 0),
(2624, 'Dario Lozano ', 4456, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:28:17', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 58, NULL, 1, 0),
(2625, 'Jorge Lozano', 4457, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:28:35', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 59, NULL, 1, 0),
(2627, 'Joel Lozano ', 4458, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:29:37', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 60, NULL, 1, 0),
(2628, 'Javier Lozano', 4459, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:30:08', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 61, NULL, 1, 0),
(2629, 'Nancy Lozano', 4460, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:30:21', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 62, NULL, 1, 0),
(2630, 'Jose Lozano', 4461, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:30:37', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 63, NULL, 1, 0),
(2631, 'Liliana Lozano', 4462, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:31:52', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 64, NULL, 2, 0),
(2632, 'Chaim Lozano', 4463, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:32:12', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 65, NULL, 2, 0),
(2633, 'Bert Lozano', 4464, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:32:53', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 66, NULL, 2, 0),
(2634, 'Paul  Lozano ', 4465, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:33:16', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 67, NULL, 2, 0),
(2635, 'George Lozano', 4466, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:33:43', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 68, NULL, 2, 0),
(2636, 'Bruce Lozano', 4467, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:37:18', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 75, NULL, 1, 0),
(2637, 'Marie Lozano', 4468, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:37:37', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 76, NULL, 1, 0),
(2638, 'Joan Lozano', 4469, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:38:47', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 77, NULL, 1, 0),
(2639, 'Ann Lozano', 4470, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:39:08', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 78, NULL, 1, 0),
(2640, 'Lita Lozano', 4471, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:39:23', NULL, 1, 2000, 0, NULL, 1, 1, NULL, NULL, 79, NULL, 1, 0),
(2641, 'Sandra Lozano', 4472, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 2, 'Semi Senior', 'Project Manager', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:41:28', NULL, 1, 1000, 0, NULL, 1, 1, NULL, NULL, 80, NULL, 1, 0),
(2642, 'Angela Lozano', 4473, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:48:35', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 81, NULL, 2, 0),
(2643, 'Kim Brown', 4474, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:49:07', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 82, NULL, 2, 0),
(2644, 'Jacqueline Brown', 4475, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:49:43', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 83, NULL, 2, 0),
(2645, 'Susan Brown', 4476, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:50:06', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 84, NULL, 2, 0),
(2646, 'Fryderyk Brown', 4477, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:50:27', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 85, NULL, 2, 0),
(2647, 'Peter Brown', 4478, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:51:12', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 86, NULL, 1, 0),
(2648, 'Franz Brown', 4479, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:52:54', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 87, NULL, 1, 0),
(2649, 'Pyotr Brown ', 4480, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:53:39', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 88, NULL, 1, 0),
(2650, 'Joseph Brown', 4481, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:53:56', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 89, NULL, 1, 0),
(2651, 'Jakob Brown', 4482, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:54:36', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 90, NULL, 1, 0),
(2652, 'Octavio Brown', 4483, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Java', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:54:56', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 91, NULL, 1, 0),
(2653, 'Pablo Brown ', 4484, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 18:56:11', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 92, NULL, 2, 0),
(2654, 'Federico Brown', 4485, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:00:03', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 93, NULL, 2, 0),
(2655, 'Amado Brown ', 4486, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:00:35', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 94, NULL, 2, 0),
(2656, 'Luis Brown', 4487, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:01:06', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 95, NULL, 2, 0),
(2657, 'Gabriela Brown', 4488, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:01:23', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 96, NULL, 2, 0),
(2658, 'Juana Brown', 4489, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:02:41', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 97, NULL, 1, 0),
(2659, 'Ruben Brown', 4490, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:03:58', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 98, NULL, 1, 0),
(2660, 'Emilio Brown', 4491, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:04:54', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 99, NULL, 1, 0),
(2661, 'Gustavo Brown', 4492, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:05:34', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 100, NULL, 1, 0),
(2662, 'Ramon Brown', 4493, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:05:56', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 101, NULL, 1, 0),
(2663, 'Nicamor Brown', 4494, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'JavaScritp', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:06:17', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 102, NULL, 1, 0),
(2664, 'Miguel Brown', 4495, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:07:50', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 103, NULL, 2, 0),
(2665, 'Alvaro Brown ', 4496, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:08:06', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 104, NULL, 2, 0),
(2666, 'Rafel Brown', 4497, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:08:23', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 105, NULL, 2, 0),
(2668, 'Vicente Brown', 4498, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:11:02', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 106, NULL, 2, 0),
(2669, 'Alfonsia Brown', 4499, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:11:25', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 107, NULL, 2, 0),
(2670, 'William Brown', 4500, NULL, NULL, NULL, NULL, NULL, NULL, 'Las vegas', 'Nevada', 'Estados Unidos', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Henderson', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:12:22', NULL, 1, 6000, 0, NULL, 1, 1, NULL, NULL, 108, NULL, 2, 0),
(2671, 'Carlos Brown ', 4501, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:13:00', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 109, NULL, 1, 0),
(2672, 'Jordi Brown', 4502, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:13:20', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 110, NULL, 1, 0),
(2673, 'Raul Brown ', 4503, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:13:36', NULL, 1, 7000, 0, NULL, 1, 1, NULL, NULL, 111, NULL, 1, 0),
(2674, 'Auron Brown', 4504, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:13:55', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 112, NULL, 1, 0),
(2675, 'Roque Brown', 4505, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:14:32', NULL, 1, 7500, 0, NULL, 1, 1, NULL, NULL, 113, NULL, 1, 0),
(2676, 'Florencia Brown', 4506, NULL, NULL, NULL, NULL, NULL, NULL, 'Aguascalientes', 'Mexico', 'Mexico', '1998-03-28', 'Movil', 3, 'Junior', 'Desarrollador Full Stack', NULL, 'Universidad Tecnologica', 'https://mx.linkedin.com', 'CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf', ' https://github.com', 'https://www.skype.com/es/', NULL, '2020-05-03 19:14:50', NULL, 1, 6500, 0, NULL, 1, 1, NULL, NULL, 114, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_badges`
--

CREATE TABLE `talent_badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `badge` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_challenge`
--

CREATE TABLE `talent_challenge` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `challenge_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `weight` float DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_challenge`
--

INSERT INTO `talent_challenge` (`id`, `talent_id`, `challenge_id`, `status`, `weight`, `created_at`, `updated_at`) VALUES
(1, 2594, 1, NULL, 3, '2020-05-22 21:27:39', NULL),
(2, 2594, 2, NULL, 3, '2020-05-22 21:27:39', NULL),
(3, 2594, 3, NULL, 3, '2020-05-22 21:27:39', NULL),
(4, 2594, 4, NULL, 3, '2020-05-22 21:27:39', NULL),
(5, 2594, 5, NULL, 3, '2020-05-22 21:27:39', NULL),
(6, 2594, 6, NULL, 2, '2020-05-22 21:27:39', NULL),
(7, 2594, 7, NULL, 2, '2020-05-22 21:27:39', NULL),
(8, 2594, 8, NULL, 2, '2020-05-22 21:27:39', NULL),
(9, 2594, 9, NULL, 2, '2020-05-22 21:27:39', NULL),
(10, 2594, 10, NULL, 2, '2020-05-22 21:27:39', NULL),
(11, 2594, 11, NULL, 1, '2020-05-22 21:27:39', NULL),
(12, 2594, 12, NULL, 1, '2020-05-22 21:27:39', NULL),
(13, 2594, 13, NULL, 1, '2020-05-22 21:27:39', NULL),
(14, 2594, 14, NULL, 1, '2020-05-22 21:27:39', NULL),
(15, 2594, 15, NULL, 1, '2020-05-22 21:27:39', NULL),
(16, 2595, 1, NULL, 3, '2020-05-22 21:27:39', NULL),
(17, 2595, 2, NULL, 3, '2020-05-22 21:27:39', NULL),
(18, 2595, 3, NULL, 3, '2020-05-22 21:27:39', NULL),
(19, 2595, 4, NULL, 3, '2020-05-22 21:27:39', NULL),
(20, 2595, 5, NULL, 3, '2020-05-22 21:27:39', NULL),
(21, 2595, 6, NULL, 2, '2020-05-22 21:27:39', NULL),
(22, 2595, 7, NULL, 2, '2020-05-22 21:27:39', NULL),
(23, 2595, 8, NULL, 2, '2020-05-22 21:27:39', NULL),
(24, 2595, 9, NULL, 2, '2020-05-22 21:27:39', NULL),
(25, 2595, 10, NULL, 2, '2020-05-22 21:27:39', NULL),
(26, 2595, 11, NULL, 1, '2020-05-22 21:27:39', NULL),
(27, 2595, 12, NULL, 1, '2020-05-22 21:27:39', NULL),
(28, 2595, 13, NULL, 1, '2020-05-22 21:27:39', NULL),
(29, 2595, 14, NULL, 1, '2020-05-22 21:27:39', NULL),
(30, 2595, 15, NULL, 1, '2020-05-22 21:27:39', NULL),
(31, 2596, 1, NULL, 3, '2020-05-22 21:27:39', NULL),
(32, 2596, 2, NULL, 3, '2020-05-22 21:27:39', NULL),
(33, 2596, 3, NULL, 3, '2020-05-22 21:27:39', NULL),
(34, 2596, 4, NULL, 3, '2020-05-22 21:27:39', NULL),
(35, 2596, 5, NULL, 3, '2020-05-22 21:27:39', NULL),
(36, 2596, 6, NULL, 2, '2020-05-22 21:27:39', NULL),
(37, 2596, 7, NULL, 2, '2020-05-22 21:27:39', NULL),
(38, 2596, 8, NULL, 2, '2020-05-22 21:27:39', NULL),
(39, 2596, 9, NULL, 2, '2020-05-22 21:27:39', NULL),
(40, 2596, 10, NULL, 2, '2020-05-22 21:27:39', NULL),
(41, 2596, 11, NULL, 1, '2020-05-22 21:27:39', NULL),
(42, 2596, 12, NULL, 1, '2020-05-22 21:27:39', NULL),
(43, 2596, 13, NULL, 1, '2020-05-22 21:27:39', NULL),
(44, 2596, 14, NULL, 1, '2020-05-22 21:27:39', NULL),
(45, 2596, 15, NULL, 1, '2020-05-22 21:27:39', NULL),
(46, 2597, 1, NULL, 3, '2020-05-22 21:27:39', NULL),
(47, 2597, 2, NULL, 3, '2020-05-22 21:27:39', NULL),
(48, 2597, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(49, 2597, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(50, 2597, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(51, 2597, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(52, 2597, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(53, 2597, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(54, 2597, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(55, 2597, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(56, 2597, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(57, 2597, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(58, 2597, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(59, 2597, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(60, 2597, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(61, 2598, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(62, 2598, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(63, 2598, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(64, 2598, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(65, 2598, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(66, 2598, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(67, 2598, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(68, 2598, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(69, 2598, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(70, 2598, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(71, 2598, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(72, 2598, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(73, 2598, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(74, 2598, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(75, 2598, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(76, 2599, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(77, 2599, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(78, 2599, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(79, 2599, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(80, 2599, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(81, 2599, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(82, 2599, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(83, 2599, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(84, 2599, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(85, 2599, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(86, 2599, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(87, 2599, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(88, 2599, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(89, 2599, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(90, 2599, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(91, 2601, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(92, 2601, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(93, 2601, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(94, 2601, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(95, 2601, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(96, 2601, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(97, 2601, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(98, 2601, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(99, 2601, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(100, 2601, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(101, 2601, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(102, 2601, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(103, 2601, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(104, 2601, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(105, 2601, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(106, 2602, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(107, 2602, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(108, 2602, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(109, 2602, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(110, 2602, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(111, 2602, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(112, 2602, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(113, 2602, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(114, 2602, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(115, 2602, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(116, 2602, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(117, 2602, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(118, 2602, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(119, 2602, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(120, 2602, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(121, 2603, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(122, 2603, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(123, 2603, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(124, 2603, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(125, 2603, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(126, 2603, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(127, 2603, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(128, 2603, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(129, 2603, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(130, 2603, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(131, 2603, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(132, 2603, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(133, 2603, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(134, 2603, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(135, 2603, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(136, 2604, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(137, 2604, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(138, 2604, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(139, 2604, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(140, 2604, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(141, 2604, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(142, 2604, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(143, 2604, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(144, 2604, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(145, 2604, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(146, 2604, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(147, 2604, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(148, 2604, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(149, 2604, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(150, 2604, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(151, 2605, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(152, 2605, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(153, 2605, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(154, 2605, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(155, 2605, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(156, 2605, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(157, 2605, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(158, 2605, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(159, 2605, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(160, 2605, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(161, 2605, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(162, 2605, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(163, 2605, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(164, 2605, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(165, 2605, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(166, 2631, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(167, 2631, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(168, 2631, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(169, 2631, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(170, 2631, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(171, 2631, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(172, 2631, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(173, 2631, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(174, 2631, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(175, 2631, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(176, 2631, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(177, 2631, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(178, 2631, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(179, 2631, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(180, 2631, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(181, 2632, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(182, 2632, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(183, 2632, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(184, 2632, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(185, 2632, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(186, 2632, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(187, 2632, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(188, 2632, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(189, 2632, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(190, 2632, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(191, 2632, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(192, 2632, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(193, 2632, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(194, 2632, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(195, 2632, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(196, 2633, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(197, 2633, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(198, 2633, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(199, 2633, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(200, 2633, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(201, 2633, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(202, 2633, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(203, 2633, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(204, 2633, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(205, 2633, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(206, 2633, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(207, 2633, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(208, 2633, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(209, 2633, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(210, 2633, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(211, 2634, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(212, 2634, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(213, 2634, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(214, 2634, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(215, 2634, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(216, 2634, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(217, 2634, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(218, 2634, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(219, 2634, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(220, 2634, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(221, 2634, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(222, 2634, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(223, 2634, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(224, 2634, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(225, 2634, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(226, 2635, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(227, 2635, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(228, 2635, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(229, 2635, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(230, 2635, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(231, 2635, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(232, 2635, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(233, 2635, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(234, 2635, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(235, 2635, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(236, 2635, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(237, 2635, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(238, 2635, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(239, 2635, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(240, 2635, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(241, 2636, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(242, 2636, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(243, 2636, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(244, 2636, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(245, 2636, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(246, 2636, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(247, 2636, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(248, 2636, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(249, 2636, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(250, 2636, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(251, 2636, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(252, 2636, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(253, 2636, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(254, 2636, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(255, 2636, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(256, 2637, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(257, 2637, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(258, 2637, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(259, 2637, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(260, 2637, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(261, 2637, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(262, 2637, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(263, 2637, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(264, 2637, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(265, 2637, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(266, 2637, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(267, 2637, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(268, 2637, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(269, 2637, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(270, 2637, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(271, 2638, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(272, 2638, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(273, 2638, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(274, 2638, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(275, 2638, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(276, 2638, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(277, 2638, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(278, 2638, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(279, 2638, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(280, 2638, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(281, 2638, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(282, 2638, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(283, 2638, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(284, 2638, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(285, 2638, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(286, 2639, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(287, 2639, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(288, 2639, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(289, 2639, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(290, 2639, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(291, 2639, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(292, 2639, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(293, 2639, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(294, 2639, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(295, 2639, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(296, 2639, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(297, 2639, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(298, 2639, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(299, 2639, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(300, 2639, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(301, 2640, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(302, 2640, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(303, 2640, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(304, 2640, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(305, 2640, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(306, 2640, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(307, 2640, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(308, 2640, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(309, 2640, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(310, 2640, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(311, 2640, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(312, 2640, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(313, 2640, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(314, 2640, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(315, 2640, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(316, 2641, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(317, 2641, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(318, 2641, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(319, 2641, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(320, 2641, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(321, 2641, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(322, 2641, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(323, 2641, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(324, 2641, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(325, 2641, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(326, 2641, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(327, 2641, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(328, 2641, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(329, 2641, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(330, 2641, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(331, 2664, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(332, 2664, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(333, 2664, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(334, 2664, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(335, 2664, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(336, 2664, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(337, 2664, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(338, 2664, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(339, 2664, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(340, 2664, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(341, 2664, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(342, 2664, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(343, 2664, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(344, 2664, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(345, 2664, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(346, 2665, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(347, 2665, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(348, 2665, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(349, 2665, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(350, 2665, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(351, 2665, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(352, 2665, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(353, 2665, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(354, 2665, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(355, 2665, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(356, 2665, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(357, 2665, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(358, 2665, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(359, 2665, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(360, 2665, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(361, 2666, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(362, 2666, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(363, 2666, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(364, 2666, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(365, 2666, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(366, 2666, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(367, 2666, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(368, 2666, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(369, 2666, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(370, 2666, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(371, 2666, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(372, 2666, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(373, 2666, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(374, 2666, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(375, 2666, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(376, 2668, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(377, 2668, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(378, 2668, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(379, 2668, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(380, 2668, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(381, 2668, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(382, 2668, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(383, 2668, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(384, 2668, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(385, 2668, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(386, 2668, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(387, 2668, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(388, 2668, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(389, 2668, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(390, 2668, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(391, 2669, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(392, 2669, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(393, 2669, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(394, 2669, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(395, 2669, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(396, 2669, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(397, 2669, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(398, 2669, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(399, 2669, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(400, 2669, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(401, 2669, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(402, 2669, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(403, 2669, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(404, 2669, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(405, 2669, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(406, 2670, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(407, 2670, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(408, 2670, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(409, 2670, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(410, 2670, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(411, 2670, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(412, 2670, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(413, 2670, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(414, 2670, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(415, 2670, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(416, 2670, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(417, 2670, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(418, 2670, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(419, 2670, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(420, 2670, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(421, 2671, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(422, 2671, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(423, 2671, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(424, 2671, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(425, 2671, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(426, 2671, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(427, 2671, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(428, 2671, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(429, 2671, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(430, 2671, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(431, 2671, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(432, 2671, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(433, 2671, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(434, 2671, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(435, 2671, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(436, 2672, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(437, 2672, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(438, 2672, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(439, 2672, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(440, 2672, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(441, 2672, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(442, 2672, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(443, 2672, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(444, 2672, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(445, 2672, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(446, 2672, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(447, 2672, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(448, 2672, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(449, 2672, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(450, 2672, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(451, 2673, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(452, 2673, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(453, 2673, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(454, 2673, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(455, 2673, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(456, 2673, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(457, 2673, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(458, 2673, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(459, 2673, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(460, 2673, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(461, 2673, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(462, 2673, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(463, 2673, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(464, 2673, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(465, 2673, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(466, 2674, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(467, 2674, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(468, 2674, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(469, 2674, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(470, 2674, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(471, 2674, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(472, 2674, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(473, 2674, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(474, 2674, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(475, 2674, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(476, 2674, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(477, 2674, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(478, 2674, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(479, 2674, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(480, 2674, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(481, 2675, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(482, 2675, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(483, 2675, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(484, 2675, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(485, 2675, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(486, 2675, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(487, 2675, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(488, 2675, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(489, 2675, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(490, 2675, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(491, 2675, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(492, 2675, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(493, 2675, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(494, 2675, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(495, 2675, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(496, 2676, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(497, 2676, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(498, 2676, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(499, 2676, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(500, 2676, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(501, 2676, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(502, 2676, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(503, 2676, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(504, 2676, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(505, 2676, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(506, 2676, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(507, 2676, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(508, 2676, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(509, 2676, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(510, 2676, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(511, 2570, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(512, 2570, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(513, 2570, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(514, 2570, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(515, 2570, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(516, 2570, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(517, 2570, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(518, 2570, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(519, 2570, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(520, 2570, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(521, 2570, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(522, 2570, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(523, 2570, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(524, 2570, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(525, 2570, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(526, 2573, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(527, 2573, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(528, 2573, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(529, 2573, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(530, 2573, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(531, 2573, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(532, 2573, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(533, 2573, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(534, 2573, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(535, 2573, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(536, 2573, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(537, 2573, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(538, 2573, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(539, 2573, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(540, 2573, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(541, 2574, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(542, 2574, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(543, 2574, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(544, 2574, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(545, 2574, 5, NULL, 3, '2020-05-22 21:27:40', NULL),
(546, 2574, 6, NULL, 2, '2020-05-22 21:27:40', NULL),
(547, 2574, 7, NULL, 2, '2020-05-22 21:27:40', NULL),
(548, 2574, 8, NULL, 2, '2020-05-22 21:27:40', NULL),
(549, 2574, 9, NULL, 2, '2020-05-22 21:27:40', NULL),
(550, 2574, 10, NULL, 2, '2020-05-22 21:27:40', NULL),
(551, 2574, 11, NULL, 1, '2020-05-22 21:27:40', NULL),
(552, 2574, 12, NULL, 1, '2020-05-22 21:27:40', NULL),
(553, 2574, 13, NULL, 1, '2020-05-22 21:27:40', NULL),
(554, 2574, 14, NULL, 1, '2020-05-22 21:27:40', NULL),
(555, 2574, 15, NULL, 1, '2020-05-22 21:27:40', NULL),
(556, 2575, 1, NULL, 3, '2020-05-22 21:27:40', NULL),
(557, 2575, 2, NULL, 3, '2020-05-22 21:27:40', NULL),
(558, 2575, 3, NULL, 3, '2020-05-22 21:27:40', NULL),
(559, 2575, 4, NULL, 3, '2020-05-22 21:27:40', NULL),
(560, 2575, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(561, 2575, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(562, 2575, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(563, 2575, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(564, 2575, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(565, 2575, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(566, 2575, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(567, 2575, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(568, 2575, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(569, 2575, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(570, 2575, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(571, 2576, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(572, 2576, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(573, 2576, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(574, 2576, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(575, 2576, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(576, 2576, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(577, 2576, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(578, 2576, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(579, 2576, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(580, 2576, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(581, 2576, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(582, 2576, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(583, 2576, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(584, 2576, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(585, 2576, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(586, 2577, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(587, 2577, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(588, 2577, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(589, 2577, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(590, 2577, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(591, 2577, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(592, 2577, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(593, 2577, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(594, 2577, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(595, 2577, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(596, 2577, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(597, 2577, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(598, 2577, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(599, 2577, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(600, 2577, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(601, 2578, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(602, 2578, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(603, 2578, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(604, 2578, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(605, 2578, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(606, 2578, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(607, 2578, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(608, 2578, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(609, 2578, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(610, 2578, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(611, 2578, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(612, 2578, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(613, 2578, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(614, 2578, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(615, 2578, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(616, 2579, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(617, 2579, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(618, 2579, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(619, 2579, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(620, 2579, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(621, 2579, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(622, 2579, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(623, 2579, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(624, 2579, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(625, 2579, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(626, 2579, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(627, 2579, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(628, 2579, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(629, 2579, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(630, 2579, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(631, 2580, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(632, 2580, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(633, 2580, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(634, 2580, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(635, 2580, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(636, 2580, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(637, 2580, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(638, 2580, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(639, 2580, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(640, 2580, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(641, 2580, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(642, 2580, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(643, 2580, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(644, 2580, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(645, 2580, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(646, 2581, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(647, 2581, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(648, 2581, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(649, 2581, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(650, 2581, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(651, 2581, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(652, 2581, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(653, 2581, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(654, 2581, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(655, 2581, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(656, 2581, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(657, 2581, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(658, 2581, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(659, 2581, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(660, 2581, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(661, 2582, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(662, 2582, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(663, 2582, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(664, 2582, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(665, 2582, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(666, 2582, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(667, 2582, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(668, 2582, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(669, 2582, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(670, 2582, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(671, 2582, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(672, 2582, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(673, 2582, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(674, 2582, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(675, 2582, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(676, 2606, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(677, 2606, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(678, 2606, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(679, 2606, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(680, 2606, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(681, 2606, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(682, 2606, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(683, 2606, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(684, 2606, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(685, 2606, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(686, 2606, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(687, 2606, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(688, 2606, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(689, 2606, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(690, 2606, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(691, 2608, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(692, 2608, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(693, 2608, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(694, 2608, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(695, 2608, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(696, 2608, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(697, 2608, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(698, 2608, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(699, 2608, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(700, 2608, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(701, 2608, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(702, 2608, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(703, 2608, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(704, 2608, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(705, 2608, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(706, 2609, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(707, 2609, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(708, 2609, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(709, 2609, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(710, 2609, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(711, 2609, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(712, 2609, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(713, 2609, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(714, 2609, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(715, 2609, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(716, 2609, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(717, 2609, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(718, 2609, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(719, 2609, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(720, 2609, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(721, 2610, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(722, 2610, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(723, 2610, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(724, 2610, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(725, 2610, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(726, 2610, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(727, 2610, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(728, 2610, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(729, 2610, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(730, 2610, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(731, 2610, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(732, 2610, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(733, 2610, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(734, 2610, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(735, 2610, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(736, 2611, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(737, 2611, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(738, 2611, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(739, 2611, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(740, 2611, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(741, 2611, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(742, 2611, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(743, 2611, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(744, 2611, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(745, 2611, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(746, 2611, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(747, 2611, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(748, 2611, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(749, 2611, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(750, 2611, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(751, 2612, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(752, 2612, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(753, 2612, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(754, 2612, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(755, 2612, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(756, 2612, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(757, 2612, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(758, 2612, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(759, 2612, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(760, 2612, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(761, 2612, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(762, 2612, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(763, 2612, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(764, 2612, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(765, 2612, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(766, 2613, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(767, 2613, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(768, 2613, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(769, 2613, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(770, 2613, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(771, 2613, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(772, 2613, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(773, 2613, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(774, 2613, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(775, 2613, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(776, 2613, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(777, 2613, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(778, 2613, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(779, 2613, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(780, 2613, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(781, 2614, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(782, 2614, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(783, 2614, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(784, 2614, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(785, 2614, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(786, 2614, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(787, 2614, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(788, 2614, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(789, 2614, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(790, 2614, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(791, 2614, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(792, 2614, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(793, 2614, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(794, 2614, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(795, 2614, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(796, 2615, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(797, 2615, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(798, 2615, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(799, 2615, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(800, 2615, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(801, 2615, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(802, 2615, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(803, 2615, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(804, 2615, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(805, 2615, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(806, 2615, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(807, 2615, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(808, 2615, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(809, 2615, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(810, 2615, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(811, 2616, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(812, 2616, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(813, 2616, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(814, 2616, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(815, 2616, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(816, 2616, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(817, 2616, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(818, 2616, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(819, 2616, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(820, 2616, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(821, 2616, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(822, 2616, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(823, 2616, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(824, 2616, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(825, 2616, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(826, 2617, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(827, 2617, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(828, 2617, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(829, 2617, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(830, 2617, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(831, 2617, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(832, 2617, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(833, 2617, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(834, 2617, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(835, 2617, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(836, 2617, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(837, 2617, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(838, 2617, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(839, 2617, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(840, 2617, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(841, 2642, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(842, 2642, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(843, 2642, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(844, 2642, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(845, 2642, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(846, 2642, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(847, 2642, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(848, 2642, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(849, 2642, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(850, 2642, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(851, 2642, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(852, 2642, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(853, 2642, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(854, 2642, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(855, 2642, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(856, 2643, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(857, 2643, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(858, 2643, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(859, 2643, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(860, 2643, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(861, 2643, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(862, 2643, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(863, 2643, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(864, 2643, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(865, 2643, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(866, 2643, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(867, 2643, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(868, 2643, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(869, 2643, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(870, 2643, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(871, 2644, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(872, 2644, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(873, 2644, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(874, 2644, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(875, 2644, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(876, 2644, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(877, 2644, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(878, 2644, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(879, 2644, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(880, 2644, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(881, 2644, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(882, 2644, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(883, 2644, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(884, 2644, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(885, 2644, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(886, 2645, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(887, 2645, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(888, 2645, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(889, 2645, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(890, 2645, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(891, 2645, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(892, 2645, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(893, 2645, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(894, 2645, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(895, 2645, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(896, 2645, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(897, 2645, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(898, 2645, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(899, 2645, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(900, 2645, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(901, 2646, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(902, 2646, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(903, 2646, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(904, 2646, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(905, 2646, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(906, 2646, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(907, 2646, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(908, 2646, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(909, 2646, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(910, 2646, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(911, 2646, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(912, 2646, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(913, 2646, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(914, 2646, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(915, 2646, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(916, 2647, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(917, 2647, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(918, 2647, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(919, 2647, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(920, 2647, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(921, 2647, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(922, 2647, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(923, 2647, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(924, 2647, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(925, 2647, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(926, 2647, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(927, 2647, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(928, 2647, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(929, 2647, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(930, 2647, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(931, 2648, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(932, 2648, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(933, 2648, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(934, 2648, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(935, 2648, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(936, 2648, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(937, 2648, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(938, 2648, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(939, 2648, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(940, 2648, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(941, 2648, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(942, 2648, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(943, 2648, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(944, 2648, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(945, 2648, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(946, 2649, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(947, 2649, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(948, 2649, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(949, 2649, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(950, 2649, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(951, 2649, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(952, 2649, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(953, 2649, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(954, 2649, 9, NULL, 2, '2020-05-22 21:27:41', NULL);
INSERT INTO `talent_challenge` (`id`, `talent_id`, `challenge_id`, `status`, `weight`, `created_at`, `updated_at`) VALUES
(955, 2649, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(956, 2649, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(957, 2649, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(958, 2649, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(959, 2649, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(960, 2649, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(961, 2650, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(962, 2650, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(963, 2650, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(964, 2650, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(965, 2650, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(966, 2650, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(967, 2650, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(968, 2650, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(969, 2650, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(970, 2650, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(971, 2650, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(972, 2650, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(973, 2650, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(974, 2650, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(975, 2650, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(976, 2651, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(977, 2651, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(978, 2651, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(979, 2651, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(980, 2651, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(981, 2651, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(982, 2651, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(983, 2651, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(984, 2651, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(985, 2651, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(986, 2651, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(987, 2651, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(988, 2651, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(989, 2651, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(990, 2651, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(991, 2652, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(992, 2652, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(993, 2652, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(994, 2652, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(995, 2652, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(996, 2652, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(997, 2652, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(998, 2652, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(999, 2652, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(1000, 2652, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(1001, 2652, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(1002, 2652, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(1003, 2652, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(1004, 2652, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(1005, 2652, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(1006, 2583, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(1007, 2583, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(1008, 2583, 3, NULL, 3, '2020-05-22 21:27:41', NULL),
(1009, 2583, 4, NULL, 3, '2020-05-22 21:27:41', NULL),
(1010, 2583, 5, NULL, 3, '2020-05-22 21:27:41', NULL),
(1011, 2583, 6, NULL, 2, '2020-05-22 21:27:41', NULL),
(1012, 2583, 7, NULL, 2, '2020-05-22 21:27:41', NULL),
(1013, 2583, 8, NULL, 2, '2020-05-22 21:27:41', NULL),
(1014, 2583, 9, NULL, 2, '2020-05-22 21:27:41', NULL),
(1015, 2583, 10, NULL, 2, '2020-05-22 21:27:41', NULL),
(1016, 2583, 11, NULL, 1, '2020-05-22 21:27:41', NULL),
(1017, 2583, 12, NULL, 1, '2020-05-22 21:27:41', NULL),
(1018, 2583, 13, NULL, 1, '2020-05-22 21:27:41', NULL),
(1019, 2583, 14, NULL, 1, '2020-05-22 21:27:41', NULL),
(1020, 2583, 15, NULL, 1, '2020-05-22 21:27:41', NULL),
(1021, 2584, 1, NULL, 3, '2020-05-22 21:27:41', NULL),
(1022, 2584, 2, NULL, 3, '2020-05-22 21:27:41', NULL),
(1023, 2584, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1024, 2584, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1025, 2584, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1026, 2584, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1027, 2584, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1028, 2584, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1029, 2584, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1030, 2584, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1031, 2584, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1032, 2584, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1033, 2584, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1034, 2584, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1035, 2584, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1036, 2585, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1037, 2585, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1038, 2585, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1039, 2585, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1040, 2585, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1041, 2585, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1042, 2585, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1043, 2585, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1044, 2585, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1045, 2585, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1046, 2585, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1047, 2585, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1048, 2585, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1049, 2585, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1050, 2585, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1051, 2586, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1052, 2586, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1053, 2586, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1054, 2586, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1055, 2586, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1056, 2586, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1057, 2586, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1058, 2586, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1059, 2586, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1060, 2586, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1061, 2586, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1062, 2586, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1063, 2586, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1064, 2586, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1065, 2586, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1066, 2587, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1067, 2587, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1068, 2587, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1069, 2587, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1070, 2587, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1071, 2587, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1072, 2587, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1073, 2587, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1074, 2587, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1075, 2587, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1076, 2587, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1077, 2587, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1078, 2587, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1079, 2587, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1080, 2587, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1081, 2588, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1082, 2588, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1083, 2588, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1084, 2588, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1085, 2588, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1086, 2588, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1087, 2588, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1088, 2588, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1089, 2588, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1090, 2588, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1091, 2588, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1092, 2588, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1093, 2588, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1094, 2588, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1095, 2588, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1096, 2589, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1097, 2589, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1098, 2589, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1099, 2589, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1100, 2589, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1101, 2589, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1102, 2589, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1103, 2589, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1104, 2589, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1105, 2589, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1106, 2589, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1107, 2589, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1108, 2589, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1109, 2589, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1110, 2589, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1111, 2590, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1112, 2590, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1113, 2590, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1114, 2590, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1115, 2590, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1116, 2590, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1117, 2590, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1118, 2590, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1119, 2590, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1120, 2590, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1121, 2590, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1122, 2590, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1123, 2590, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1124, 2590, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1125, 2590, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1126, 2591, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1127, 2591, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1128, 2591, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1129, 2591, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1130, 2591, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1131, 2591, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1132, 2591, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1133, 2591, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1134, 2591, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1135, 2591, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1136, 2591, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1137, 2591, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1138, 2591, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1139, 2591, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1140, 2591, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1141, 2592, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1142, 2592, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1143, 2592, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1144, 2592, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1145, 2592, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1146, 2592, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1147, 2592, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1148, 2592, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1149, 2592, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1150, 2592, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1151, 2592, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1152, 2592, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1153, 2592, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1154, 2592, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1155, 2592, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1156, 2593, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1157, 2593, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1158, 2593, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1159, 2593, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1160, 2593, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1161, 2593, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1162, 2593, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1163, 2593, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1164, 2593, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1165, 2593, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1166, 2593, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1167, 2593, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1168, 2593, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1169, 2593, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1170, 2593, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1171, 2618, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1172, 2618, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1173, 2618, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1174, 2618, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1175, 2618, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1176, 2618, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1177, 2618, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1178, 2618, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1179, 2618, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1180, 2618, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1181, 2618, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1182, 2618, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1183, 2618, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1184, 2618, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1185, 2618, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1186, 2619, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1187, 2619, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1188, 2619, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1189, 2619, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1190, 2619, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1191, 2619, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1192, 2619, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1193, 2619, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1194, 2619, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1195, 2619, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1196, 2619, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1197, 2619, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1198, 2619, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1199, 2619, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1200, 2619, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1201, 2620, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1202, 2620, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1203, 2620, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1204, 2620, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1205, 2620, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1206, 2620, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1207, 2620, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1208, 2620, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1209, 2620, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1210, 2620, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1211, 2620, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1212, 2620, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1213, 2620, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1214, 2620, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1215, 2620, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1216, 2622, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1217, 2622, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1218, 2622, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1219, 2622, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1220, 2622, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1221, 2622, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1222, 2622, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1223, 2622, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1224, 2622, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1225, 2622, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1226, 2622, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1227, 2622, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1228, 2622, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1229, 2622, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1230, 2622, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1231, 2623, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1232, 2623, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1233, 2623, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1234, 2623, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1235, 2623, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1236, 2623, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1237, 2623, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1238, 2623, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1239, 2623, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1240, 2623, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1241, 2623, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1242, 2623, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1243, 2623, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1244, 2623, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1245, 2623, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1246, 2624, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1247, 2624, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1248, 2624, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1249, 2624, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1250, 2624, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1251, 2624, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1252, 2624, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1253, 2624, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1254, 2624, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1255, 2624, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1256, 2624, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1257, 2624, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1258, 2624, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1259, 2624, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1260, 2624, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1261, 2625, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1262, 2625, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1263, 2625, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1264, 2625, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1265, 2625, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1266, 2625, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1267, 2625, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1268, 2625, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1269, 2625, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1270, 2625, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1271, 2625, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1272, 2625, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1273, 2625, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1274, 2625, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1275, 2625, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1276, 2627, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1277, 2627, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1278, 2627, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1279, 2627, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1280, 2627, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1281, 2627, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1282, 2627, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1283, 2627, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1284, 2627, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1285, 2627, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1286, 2627, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1287, 2627, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1288, 2627, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1289, 2627, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1290, 2627, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1291, 2628, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1292, 2628, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1293, 2628, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1294, 2628, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1295, 2628, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1296, 2628, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1297, 2628, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1298, 2628, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1299, 2628, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1300, 2628, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1301, 2628, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1302, 2628, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1303, 2628, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1304, 2628, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1305, 2628, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1306, 2629, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1307, 2629, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1308, 2629, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1309, 2629, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1310, 2629, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1311, 2629, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1312, 2629, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1313, 2629, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1314, 2629, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1315, 2629, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1316, 2629, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1317, 2629, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1318, 2629, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1319, 2629, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1320, 2629, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1321, 2630, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1322, 2630, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1323, 2630, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1324, 2630, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1325, 2630, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1326, 2630, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1327, 2630, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1328, 2630, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1329, 2630, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1330, 2630, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1331, 2630, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1332, 2630, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1333, 2630, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1334, 2630, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1335, 2630, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1336, 2653, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1337, 2653, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1338, 2653, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1339, 2653, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1340, 2653, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1341, 2653, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1342, 2653, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1343, 2653, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1344, 2653, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1345, 2653, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1346, 2653, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1347, 2653, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1348, 2653, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1349, 2653, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1350, 2653, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1351, 2654, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1352, 2654, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1353, 2654, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1354, 2654, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1355, 2654, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1356, 2654, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1357, 2654, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1358, 2654, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1359, 2654, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1360, 2654, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1361, 2654, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1362, 2654, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1363, 2654, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1364, 2654, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1365, 2654, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1366, 2655, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1367, 2655, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1368, 2655, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1369, 2655, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1370, 2655, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1371, 2655, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1372, 2655, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1373, 2655, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1374, 2655, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1375, 2655, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1376, 2655, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1377, 2655, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1378, 2655, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1379, 2655, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1380, 2655, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1381, 2656, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1382, 2656, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1383, 2656, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1384, 2656, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1385, 2656, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1386, 2656, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1387, 2656, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1388, 2656, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1389, 2656, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1390, 2656, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1391, 2656, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1392, 2656, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1393, 2656, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1394, 2656, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1395, 2656, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1396, 2657, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1397, 2657, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1398, 2657, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1399, 2657, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1400, 2657, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1401, 2657, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1402, 2657, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1403, 2657, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1404, 2657, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1405, 2657, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1406, 2657, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1407, 2657, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1408, 2657, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1409, 2657, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1410, 2657, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1411, 2658, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1412, 2658, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1413, 2658, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1414, 2658, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1415, 2658, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1416, 2658, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1417, 2658, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1418, 2658, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1419, 2658, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1420, 2658, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1421, 2658, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1422, 2658, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1423, 2658, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1424, 2658, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1425, 2658, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1426, 2659, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1427, 2659, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1428, 2659, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1429, 2659, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1430, 2659, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1431, 2659, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1432, 2659, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1433, 2659, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1434, 2659, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1435, 2659, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1436, 2659, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1437, 2659, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1438, 2659, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1439, 2659, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1440, 2659, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1441, 2660, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1442, 2660, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1443, 2660, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1444, 2660, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1445, 2660, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1446, 2660, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1447, 2660, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1448, 2660, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1449, 2660, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1450, 2660, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1451, 2660, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1452, 2660, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1453, 2660, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1454, 2660, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1455, 2660, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1456, 2661, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1457, 2661, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1458, 2661, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1459, 2661, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1460, 2661, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1461, 2661, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1462, 2661, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1463, 2661, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1464, 2661, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1465, 2661, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1466, 2661, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1467, 2661, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1468, 2661, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1469, 2661, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1470, 2661, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1471, 2662, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1472, 2662, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1473, 2662, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1474, 2662, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1475, 2662, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1476, 2662, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1477, 2662, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1478, 2662, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1479, 2662, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1480, 2662, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1481, 2662, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1482, 2662, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1483, 2662, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1484, 2662, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1485, 2662, 15, NULL, 1, '2020-05-22 21:27:42', NULL),
(1486, 2663, 1, NULL, 3, '2020-05-22 21:27:42', NULL),
(1487, 2663, 2, NULL, 3, '2020-05-22 21:27:42', NULL),
(1488, 2663, 3, NULL, 3, '2020-05-22 21:27:42', NULL),
(1489, 2663, 4, NULL, 3, '2020-05-22 21:27:42', NULL),
(1490, 2663, 5, NULL, 3, '2020-05-22 21:27:42', NULL),
(1491, 2663, 6, NULL, 2, '2020-05-22 21:27:42', NULL),
(1492, 2663, 7, NULL, 2, '2020-05-22 21:27:42', NULL),
(1493, 2663, 8, NULL, 2, '2020-05-22 21:27:42', NULL),
(1494, 2663, 9, NULL, 2, '2020-05-22 21:27:42', NULL),
(1495, 2663, 10, NULL, 2, '2020-05-22 21:27:42', NULL),
(1496, 2663, 11, NULL, 1, '2020-05-22 21:27:42', NULL),
(1497, 2663, 12, NULL, 1, '2020-05-22 21:27:42', NULL),
(1498, 2663, 13, NULL, 1, '2020-05-22 21:27:42', NULL),
(1499, 2663, 14, NULL, 1, '2020-05-22 21:27:42', NULL),
(1500, 2663, 15, NULL, 1, '2020-05-22 21:27:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_challenge_competence`
--

CREATE TABLE `talent_challenge_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `challenge_competence_id` int(10) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `path_file` varchar(150) DEFAULT NULL,
  `challenge_level_id` int(10) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_challenge_competence_feedback`
--

CREATE TABLE `talent_challenge_competence_feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `feedback_id` int(10) UNSIGNED NOT NULL,
  `talent_challenge_competence_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_challenge_evaluator`
--

CREATE TABLE `talent_challenge_evaluator` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_challenge_competence_id` int(10) UNSIGNED NOT NULL,
  `evaluator_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','assigned','declined','revised') NOT NULL DEFAULT 'pending',
  `assignment_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `talent_feedback_weight` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_challenge_evaluator_rubric`
--

CREATE TABLE `talent_challenge_evaluator_rubric` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_challenge_evaluator_id` int(10) UNSIGNED NOT NULL,
  `challenge_rubric_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_competence`
--

CREATE TABLE `talent_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_competence`
--

INSERT INTO `talent_competence` (`id`, `talent_id`, `competence_id`, `weight`, `created_at`, `updated_at`) VALUES
(1, 2594, 1, 3, '2020-05-22 21:22:14', NULL),
(2, 2594, 2, 3, '2020-05-22 21:22:14', NULL),
(3, 2594, 3, 3, '2020-05-22 21:22:14', NULL),
(4, 2594, 4, 3, '2020-05-22 21:22:14', NULL),
(5, 2594, 5, 3, '2020-05-22 21:22:14', NULL),
(6, 2594, 6, 2, '2020-05-22 21:22:14', NULL),
(7, 2594, 7, 2, '2020-05-22 21:22:14', NULL),
(8, 2594, 8, 2, '2020-05-22 21:22:14', NULL),
(9, 2594, 9, 2, '2020-05-22 21:22:14', NULL),
(10, 2594, 10, 2, '2020-05-22 21:22:14', NULL),
(11, 2594, 11, 1, '2020-05-22 21:22:14', NULL),
(12, 2594, 12, 1, '2020-05-22 21:22:14', NULL),
(13, 2594, 13, 1, '2020-05-22 21:22:14', NULL),
(14, 2594, 14, 1, '2020-05-22 21:22:14', NULL),
(15, 2594, 15, 1, '2020-05-22 21:22:14', NULL),
(16, 2595, 1, 3, '2020-05-22 21:22:14', NULL),
(17, 2595, 2, 3, '2020-05-22 21:22:14', NULL),
(18, 2595, 3, 3, '2020-05-22 21:22:14', NULL),
(19, 2595, 4, 3, '2020-05-22 21:22:14', NULL),
(20, 2595, 5, 3, '2020-05-22 21:22:14', NULL),
(21, 2595, 6, 2, '2020-05-22 21:22:14', NULL),
(22, 2595, 7, 2, '2020-05-22 21:22:14', NULL),
(23, 2595, 8, 2, '2020-05-22 21:22:14', NULL),
(24, 2595, 9, 2, '2020-05-22 21:22:14', NULL),
(25, 2595, 10, 2, '2020-05-22 21:22:14', NULL),
(26, 2595, 11, 1, '2020-05-22 21:22:14', NULL),
(27, 2595, 12, 1, '2020-05-22 21:22:14', NULL),
(28, 2595, 13, 1, '2020-05-22 21:22:14', NULL),
(29, 2595, 14, 1, '2020-05-22 21:22:14', NULL),
(30, 2595, 15, 1, '2020-05-22 21:22:14', NULL),
(31, 2596, 1, 3, '2020-05-22 21:22:14', NULL),
(32, 2596, 2, 3, '2020-05-22 21:22:14', NULL),
(33, 2596, 3, 3, '2020-05-22 21:22:14', NULL),
(34, 2596, 4, 3, '2020-05-22 21:22:14', NULL),
(35, 2596, 5, 3, '2020-05-22 21:22:14', NULL),
(36, 2596, 6, 2, '2020-05-22 21:22:14', NULL),
(37, 2596, 7, 2, '2020-05-22 21:22:14', NULL),
(38, 2596, 8, 2, '2020-05-22 21:22:14', NULL),
(39, 2596, 9, 2, '2020-05-22 21:22:14', NULL),
(40, 2596, 10, 2, '2020-05-22 21:22:14', NULL),
(41, 2596, 11, 1, '2020-05-22 21:22:14', NULL),
(42, 2596, 12, 1, '2020-05-22 21:22:14', NULL),
(43, 2596, 13, 1, '2020-05-22 21:22:14', NULL),
(44, 2596, 14, 1, '2020-05-22 21:22:14', NULL),
(45, 2596, 15, 1, '2020-05-22 21:22:14', NULL),
(46, 2597, 1, 3, '2020-05-22 21:22:14', NULL),
(47, 2597, 2, 3, '2020-05-22 21:22:14', NULL),
(48, 2597, 3, 3, '2020-05-22 21:22:14', NULL),
(49, 2597, 4, 3, '2020-05-22 21:22:14', NULL),
(50, 2597, 5, 3, '2020-05-22 21:22:14', NULL),
(51, 2597, 6, 2, '2020-05-22 21:22:14', NULL),
(52, 2597, 7, 2, '2020-05-22 21:22:14', NULL),
(53, 2597, 8, 2, '2020-05-22 21:22:14', NULL),
(54, 2597, 9, 2, '2020-05-22 21:22:14', NULL),
(55, 2597, 10, 2, '2020-05-22 21:22:14', NULL),
(56, 2597, 11, 1, '2020-05-22 21:22:14', NULL),
(57, 2597, 12, 1, '2020-05-22 21:22:14', NULL),
(58, 2597, 13, 1, '2020-05-22 21:22:14', NULL),
(59, 2597, 14, 1, '2020-05-22 21:22:14', NULL),
(60, 2597, 15, 1, '2020-05-22 21:22:14', NULL),
(61, 2598, 1, 3, '2020-05-22 21:22:14', NULL),
(62, 2598, 2, 3, '2020-05-22 21:22:14', NULL),
(63, 2598, 3, 3, '2020-05-22 21:22:14', NULL),
(64, 2598, 4, 3, '2020-05-22 21:22:14', NULL),
(65, 2598, 5, 3, '2020-05-22 21:22:14', NULL),
(66, 2598, 6, 2, '2020-05-22 21:22:14', NULL),
(67, 2598, 7, 2, '2020-05-22 21:22:14', NULL),
(68, 2598, 8, 2, '2020-05-22 21:22:14', NULL),
(69, 2598, 9, 2, '2020-05-22 21:22:14', NULL),
(70, 2598, 10, 2, '2020-05-22 21:22:14', NULL),
(71, 2598, 11, 1, '2020-05-22 21:22:14', NULL),
(72, 2598, 12, 1, '2020-05-22 21:22:14', NULL),
(73, 2598, 13, 1, '2020-05-22 21:22:14', NULL),
(74, 2598, 14, 1, '2020-05-22 21:22:14', NULL),
(75, 2598, 15, 1, '2020-05-22 21:22:14', NULL),
(76, 2599, 1, 3, '2020-05-22 21:22:14', NULL),
(77, 2599, 2, 3, '2020-05-22 21:22:14', NULL),
(78, 2599, 3, 3, '2020-05-22 21:22:14', NULL),
(79, 2599, 4, 3, '2020-05-22 21:22:14', NULL),
(80, 2599, 5, 3, '2020-05-22 21:22:14', NULL),
(81, 2599, 6, 2, '2020-05-22 21:22:14', NULL),
(82, 2599, 7, 2, '2020-05-22 21:22:14', NULL),
(83, 2599, 8, 2, '2020-05-22 21:22:14', NULL),
(84, 2599, 9, 2, '2020-05-22 21:22:14', NULL),
(85, 2599, 10, 2, '2020-05-22 21:22:14', NULL),
(86, 2599, 11, 1, '2020-05-22 21:22:14', NULL),
(87, 2599, 12, 1, '2020-05-22 21:22:14', NULL),
(88, 2599, 13, 1, '2020-05-22 21:22:14', NULL),
(89, 2599, 14, 1, '2020-05-22 21:22:14', NULL),
(90, 2599, 15, 1, '2020-05-22 21:22:14', NULL),
(91, 2601, 1, 3, '2020-05-22 21:22:14', NULL),
(92, 2601, 2, 3, '2020-05-22 21:22:14', NULL),
(93, 2601, 3, 3, '2020-05-22 21:22:14', NULL),
(94, 2601, 4, 3, '2020-05-22 21:22:14', NULL),
(95, 2601, 5, 3, '2020-05-22 21:22:14', NULL),
(96, 2601, 6, 2, '2020-05-22 21:22:14', NULL),
(97, 2601, 7, 2, '2020-05-22 21:22:14', NULL),
(98, 2601, 8, 2, '2020-05-22 21:22:14', NULL),
(99, 2601, 9, 2, '2020-05-22 21:22:14', NULL),
(100, 2601, 10, 2, '2020-05-22 21:22:14', NULL),
(101, 2601, 11, 1, '2020-05-22 21:22:14', NULL),
(102, 2601, 12, 1, '2020-05-22 21:22:14', NULL),
(103, 2601, 13, 1, '2020-05-22 21:22:15', NULL),
(104, 2601, 14, 1, '2020-05-22 21:22:15', NULL),
(105, 2601, 15, 1, '2020-05-22 21:22:15', NULL),
(106, 2602, 1, 3, '2020-05-22 21:22:15', NULL),
(107, 2602, 2, 3, '2020-05-22 21:22:15', NULL),
(108, 2602, 3, 3, '2020-05-22 21:22:15', NULL),
(109, 2602, 4, 3, '2020-05-22 21:22:15', NULL),
(110, 2602, 5, 3, '2020-05-22 21:22:15', NULL),
(111, 2602, 6, 2, '2020-05-22 21:22:15', NULL),
(112, 2602, 7, 2, '2020-05-22 21:22:15', NULL),
(113, 2602, 8, 2, '2020-05-22 21:22:15', NULL),
(114, 2602, 9, 2, '2020-05-22 21:22:15', NULL),
(115, 2602, 10, 2, '2020-05-22 21:22:15', NULL),
(116, 2602, 11, 1, '2020-05-22 21:22:15', NULL),
(117, 2602, 12, 1, '2020-05-22 21:22:15', NULL),
(118, 2602, 13, 1, '2020-05-22 21:22:15', NULL),
(119, 2602, 14, 1, '2020-05-22 21:22:15', NULL),
(120, 2602, 15, 1, '2020-05-22 21:22:15', NULL),
(121, 2603, 1, 3, '2020-05-22 21:22:15', NULL),
(122, 2603, 2, 3, '2020-05-22 21:22:15', NULL),
(123, 2603, 3, 3, '2020-05-22 21:22:15', NULL),
(124, 2603, 4, 3, '2020-05-22 21:22:15', NULL),
(125, 2603, 5, 3, '2020-05-22 21:22:15', NULL),
(126, 2603, 6, 2, '2020-05-22 21:22:15', NULL),
(127, 2603, 7, 2, '2020-05-22 21:22:15', NULL),
(128, 2603, 8, 2, '2020-05-22 21:22:15', NULL),
(129, 2603, 9, 2, '2020-05-22 21:22:15', NULL),
(130, 2603, 10, 2, '2020-05-22 21:22:15', NULL),
(131, 2603, 11, 1, '2020-05-22 21:22:15', NULL),
(132, 2603, 12, 1, '2020-05-22 21:22:15', NULL),
(133, 2603, 13, 1, '2020-05-22 21:22:15', NULL),
(134, 2603, 14, 1, '2020-05-22 21:22:15', NULL),
(135, 2603, 15, 1, '2020-05-22 21:22:15', NULL),
(136, 2604, 1, 3, '2020-05-22 21:22:15', NULL),
(137, 2604, 2, 3, '2020-05-22 21:22:15', NULL),
(138, 2604, 3, 3, '2020-05-22 21:22:15', NULL),
(139, 2604, 4, 3, '2020-05-22 21:22:15', NULL),
(140, 2604, 5, 3, '2020-05-22 21:22:15', NULL),
(141, 2604, 6, 2, '2020-05-22 21:22:15', NULL),
(142, 2604, 7, 2, '2020-05-22 21:22:15', NULL),
(143, 2604, 8, 2, '2020-05-22 21:22:15', NULL),
(144, 2604, 9, 2, '2020-05-22 21:22:15', NULL),
(145, 2604, 10, 2, '2020-05-22 21:22:15', NULL),
(146, 2604, 11, 1, '2020-05-22 21:22:15', NULL),
(147, 2604, 12, 1, '2020-05-22 21:22:15', NULL),
(148, 2604, 13, 1, '2020-05-22 21:22:15', NULL),
(149, 2604, 14, 1, '2020-05-22 21:22:15', NULL),
(150, 2604, 15, 1, '2020-05-22 21:22:15', NULL),
(151, 2605, 1, 3, '2020-05-22 21:22:15', NULL),
(152, 2605, 2, 3, '2020-05-22 21:22:15', NULL),
(153, 2605, 3, 3, '2020-05-22 21:22:15', NULL),
(154, 2605, 4, 3, '2020-05-22 21:22:15', NULL),
(155, 2605, 5, 3, '2020-05-22 21:22:15', NULL),
(156, 2605, 6, 2, '2020-05-22 21:22:15', NULL),
(157, 2605, 7, 2, '2020-05-22 21:22:15', NULL),
(158, 2605, 8, 2, '2020-05-22 21:22:15', NULL),
(159, 2605, 9, 2, '2020-05-22 21:22:15', NULL),
(160, 2605, 10, 2, '2020-05-22 21:22:15', NULL),
(161, 2605, 11, 1, '2020-05-22 21:22:15', NULL),
(162, 2605, 12, 1, '2020-05-22 21:22:15', NULL),
(163, 2605, 13, 1, '2020-05-22 21:22:15', NULL),
(164, 2605, 14, 1, '2020-05-22 21:22:15', NULL),
(165, 2605, 15, 1, '2020-05-22 21:22:15', NULL),
(166, 2631, 1, 3, '2020-05-22 21:22:15', NULL),
(167, 2631, 2, 3, '2020-05-22 21:22:15', NULL),
(168, 2631, 3, 3, '2020-05-22 21:22:15', NULL),
(169, 2631, 4, 3, '2020-05-22 21:22:15', NULL),
(170, 2631, 5, 3, '2020-05-22 21:22:15', NULL),
(171, 2631, 6, 2, '2020-05-22 21:22:15', NULL),
(172, 2631, 7, 2, '2020-05-22 21:22:15', NULL),
(173, 2631, 8, 2, '2020-05-22 21:22:15', NULL),
(174, 2631, 9, 2, '2020-05-22 21:22:15', NULL),
(175, 2631, 10, 2, '2020-05-22 21:22:15', NULL),
(176, 2631, 11, 1, '2020-05-22 21:22:15', NULL),
(177, 2631, 12, 1, '2020-05-22 21:22:15', NULL),
(178, 2631, 13, 1, '2020-05-22 21:22:15', NULL),
(179, 2631, 14, 1, '2020-05-22 21:22:15', NULL),
(180, 2631, 15, 1, '2020-05-22 21:22:15', NULL),
(181, 2632, 1, 3, '2020-05-22 21:22:15', NULL),
(182, 2632, 2, 3, '2020-05-22 21:22:15', NULL),
(183, 2632, 3, 3, '2020-05-22 21:22:15', NULL),
(184, 2632, 4, 3, '2020-05-22 21:22:15', NULL),
(185, 2632, 5, 3, '2020-05-22 21:22:15', NULL),
(186, 2632, 6, 2, '2020-05-22 21:22:15', NULL),
(187, 2632, 7, 2, '2020-05-22 21:22:15', NULL),
(188, 2632, 8, 2, '2020-05-22 21:22:15', NULL),
(189, 2632, 9, 2, '2020-05-22 21:22:15', NULL),
(190, 2632, 10, 2, '2020-05-22 21:22:15', NULL),
(191, 2632, 11, 1, '2020-05-22 21:22:15', NULL),
(192, 2632, 12, 1, '2020-05-22 21:22:15', NULL),
(193, 2632, 13, 1, '2020-05-22 21:22:15', NULL),
(194, 2632, 14, 1, '2020-05-22 21:22:15', NULL),
(195, 2632, 15, 1, '2020-05-22 21:22:15', NULL),
(196, 2633, 1, 3, '2020-05-22 21:22:15', NULL),
(197, 2633, 2, 3, '2020-05-22 21:22:15', NULL),
(198, 2633, 3, 3, '2020-05-22 21:22:15', NULL),
(199, 2633, 4, 3, '2020-05-22 21:22:15', NULL),
(200, 2633, 5, 3, '2020-05-22 21:22:15', NULL),
(201, 2633, 6, 2, '2020-05-22 21:22:15', NULL),
(202, 2633, 7, 2, '2020-05-22 21:22:15', NULL),
(203, 2633, 8, 2, '2020-05-22 21:22:15', NULL),
(204, 2633, 9, 2, '2020-05-22 21:22:15', NULL),
(205, 2633, 10, 2, '2020-05-22 21:22:15', NULL),
(206, 2633, 11, 1, '2020-05-22 21:22:15', NULL),
(207, 2633, 12, 1, '2020-05-22 21:22:15', NULL),
(208, 2633, 13, 1, '2020-05-22 21:22:15', NULL),
(209, 2633, 14, 1, '2020-05-22 21:22:15', NULL),
(210, 2633, 15, 1, '2020-05-22 21:22:15', NULL),
(211, 2634, 1, 3, '2020-05-22 21:22:15', NULL),
(212, 2634, 2, 3, '2020-05-22 21:22:15', NULL),
(213, 2634, 3, 3, '2020-05-22 21:22:15', NULL),
(214, 2634, 4, 3, '2020-05-22 21:22:15', NULL),
(215, 2634, 5, 3, '2020-05-22 21:22:15', NULL),
(216, 2634, 6, 2, '2020-05-22 21:22:15', NULL),
(217, 2634, 7, 2, '2020-05-22 21:22:15', NULL),
(218, 2634, 8, 2, '2020-05-22 21:22:15', NULL),
(219, 2634, 9, 2, '2020-05-22 21:22:15', NULL),
(220, 2634, 10, 2, '2020-05-22 21:22:15', NULL),
(221, 2634, 11, 1, '2020-05-22 21:22:15', NULL),
(222, 2634, 12, 1, '2020-05-22 21:22:15', NULL),
(223, 2634, 13, 1, '2020-05-22 21:22:15', NULL),
(224, 2634, 14, 1, '2020-05-22 21:22:15', NULL),
(225, 2634, 15, 1, '2020-05-22 21:22:15', NULL),
(226, 2635, 1, 3, '2020-05-22 21:22:15', NULL),
(227, 2635, 2, 3, '2020-05-22 21:22:15', NULL),
(228, 2635, 3, 3, '2020-05-22 21:22:15', NULL),
(229, 2635, 4, 3, '2020-05-22 21:22:15', NULL),
(230, 2635, 5, 3, '2020-05-22 21:22:15', NULL),
(231, 2635, 6, 2, '2020-05-22 21:22:15', NULL),
(232, 2635, 7, 2, '2020-05-22 21:22:15', NULL),
(233, 2635, 8, 2, '2020-05-22 21:22:15', NULL),
(234, 2635, 9, 2, '2020-05-22 21:22:15', NULL),
(235, 2635, 10, 2, '2020-05-22 21:22:15', NULL),
(236, 2635, 11, 1, '2020-05-22 21:22:15', NULL),
(237, 2635, 12, 1, '2020-05-22 21:22:15', NULL),
(238, 2635, 13, 1, '2020-05-22 21:22:15', NULL),
(239, 2635, 14, 1, '2020-05-22 21:22:15', NULL),
(240, 2635, 15, 1, '2020-05-22 21:22:15', NULL),
(241, 2636, 1, 3, '2020-05-22 21:22:15', NULL),
(242, 2636, 2, 3, '2020-05-22 21:22:15', NULL),
(243, 2636, 3, 3, '2020-05-22 21:22:15', NULL),
(244, 2636, 4, 3, '2020-05-22 21:22:15', NULL),
(245, 2636, 5, 3, '2020-05-22 21:22:15', NULL),
(246, 2636, 6, 2, '2020-05-22 21:22:15', NULL),
(247, 2636, 7, 2, '2020-05-22 21:22:15', NULL),
(248, 2636, 8, 2, '2020-05-22 21:22:15', NULL),
(249, 2636, 9, 2, '2020-05-22 21:22:15', NULL),
(250, 2636, 10, 2, '2020-05-22 21:22:15', NULL),
(251, 2636, 11, 1, '2020-05-22 21:22:15', NULL),
(252, 2636, 12, 1, '2020-05-22 21:22:15', NULL),
(253, 2636, 13, 1, '2020-05-22 21:22:15', NULL),
(254, 2636, 14, 1, '2020-05-22 21:22:15', NULL),
(255, 2636, 15, 1, '2020-05-22 21:22:15', NULL),
(256, 2637, 1, 3, '2020-05-22 21:22:15', NULL),
(257, 2637, 2, 3, '2020-05-22 21:22:15', NULL),
(258, 2637, 3, 3, '2020-05-22 21:22:15', NULL),
(259, 2637, 4, 3, '2020-05-22 21:22:15', NULL),
(260, 2637, 5, 3, '2020-05-22 21:22:15', NULL),
(261, 2637, 6, 2, '2020-05-22 21:22:15', NULL),
(262, 2637, 7, 2, '2020-05-22 21:22:15', NULL),
(263, 2637, 8, 2, '2020-05-22 21:22:15', NULL),
(264, 2637, 9, 2, '2020-05-22 21:22:15', NULL),
(265, 2637, 10, 2, '2020-05-22 21:22:15', NULL),
(266, 2637, 11, 1, '2020-05-22 21:22:15', NULL),
(267, 2637, 12, 1, '2020-05-22 21:22:15', NULL),
(268, 2637, 13, 1, '2020-05-22 21:22:15', NULL),
(269, 2637, 14, 1, '2020-05-22 21:22:15', NULL),
(270, 2637, 15, 1, '2020-05-22 21:22:15', NULL),
(271, 2638, 1, 3, '2020-05-22 21:22:15', NULL),
(272, 2638, 2, 3, '2020-05-22 21:22:15', NULL),
(273, 2638, 3, 3, '2020-05-22 21:22:15', NULL),
(274, 2638, 4, 3, '2020-05-22 21:22:15', NULL),
(275, 2638, 5, 3, '2020-05-22 21:22:15', NULL),
(276, 2638, 6, 2, '2020-05-22 21:22:15', NULL),
(277, 2638, 7, 2, '2020-05-22 21:22:15', NULL),
(278, 2638, 8, 2, '2020-05-22 21:22:15', NULL),
(279, 2638, 9, 2, '2020-05-22 21:22:15', NULL),
(280, 2638, 10, 2, '2020-05-22 21:22:15', NULL),
(281, 2638, 11, 1, '2020-05-22 21:22:15', NULL),
(282, 2638, 12, 1, '2020-05-22 21:22:15', NULL),
(283, 2638, 13, 1, '2020-05-22 21:22:15', NULL),
(284, 2638, 14, 1, '2020-05-22 21:22:15', NULL),
(285, 2638, 15, 1, '2020-05-22 21:22:15', NULL),
(286, 2639, 1, 3, '2020-05-22 21:22:15', NULL),
(287, 2639, 2, 3, '2020-05-22 21:22:15', NULL),
(288, 2639, 3, 3, '2020-05-22 21:22:15', NULL),
(289, 2639, 4, 3, '2020-05-22 21:22:15', NULL),
(290, 2639, 5, 3, '2020-05-22 21:22:15', NULL),
(291, 2639, 6, 2, '2020-05-22 21:22:15', NULL),
(292, 2639, 7, 2, '2020-05-22 21:22:15', NULL),
(293, 2639, 8, 2, '2020-05-22 21:22:15', NULL),
(294, 2639, 9, 2, '2020-05-22 21:22:15', NULL),
(295, 2639, 10, 2, '2020-05-22 21:22:15', NULL),
(296, 2639, 11, 1, '2020-05-22 21:22:15', NULL),
(297, 2639, 12, 1, '2020-05-22 21:22:15', NULL),
(298, 2639, 13, 1, '2020-05-22 21:22:15', NULL),
(299, 2639, 14, 1, '2020-05-22 21:22:15', NULL),
(300, 2639, 15, 1, '2020-05-22 21:22:15', NULL),
(301, 2640, 1, 3, '2020-05-22 21:22:15', NULL),
(302, 2640, 2, 3, '2020-05-22 21:22:15', NULL),
(303, 2640, 3, 3, '2020-05-22 21:22:15', NULL),
(304, 2640, 4, 3, '2020-05-22 21:22:15', NULL),
(305, 2640, 5, 3, '2020-05-22 21:22:15', NULL),
(306, 2640, 6, 2, '2020-05-22 21:22:15', NULL),
(307, 2640, 7, 2, '2020-05-22 21:22:15', NULL),
(308, 2640, 8, 2, '2020-05-22 21:22:15', NULL),
(309, 2640, 9, 2, '2020-05-22 21:22:15', NULL),
(310, 2640, 10, 2, '2020-05-22 21:22:15', NULL),
(311, 2640, 11, 1, '2020-05-22 21:22:15', NULL),
(312, 2640, 12, 1, '2020-05-22 21:22:15', NULL),
(313, 2640, 13, 1, '2020-05-22 21:22:15', NULL),
(314, 2640, 14, 1, '2020-05-22 21:22:15', NULL),
(315, 2640, 15, 1, '2020-05-22 21:22:15', NULL),
(316, 2641, 1, 3, '2020-05-22 21:22:15', NULL),
(317, 2641, 2, 3, '2020-05-22 21:22:15', NULL),
(318, 2641, 3, 3, '2020-05-22 21:22:15', NULL),
(319, 2641, 4, 3, '2020-05-22 21:22:15', NULL),
(320, 2641, 5, 3, '2020-05-22 21:22:15', NULL),
(321, 2641, 6, 2, '2020-05-22 21:22:15', NULL),
(322, 2641, 7, 2, '2020-05-22 21:22:15', NULL),
(323, 2641, 8, 2, '2020-05-22 21:22:15', NULL),
(324, 2641, 9, 2, '2020-05-22 21:22:15', NULL),
(325, 2641, 10, 2, '2020-05-22 21:22:15', NULL),
(326, 2641, 11, 1, '2020-05-22 21:22:15', NULL),
(327, 2641, 12, 1, '2020-05-22 21:22:15', NULL),
(328, 2641, 13, 1, '2020-05-22 21:22:15', NULL),
(329, 2641, 14, 1, '2020-05-22 21:22:15', NULL),
(330, 2641, 15, 1, '2020-05-22 21:22:15', NULL),
(331, 2664, 1, 3, '2020-05-22 21:22:15', NULL),
(332, 2664, 2, 3, '2020-05-22 21:22:15', NULL),
(333, 2664, 3, 3, '2020-05-22 21:22:15', NULL),
(334, 2664, 4, 3, '2020-05-22 21:22:15', NULL),
(335, 2664, 5, 3, '2020-05-22 21:22:15', NULL),
(336, 2664, 6, 2, '2020-05-22 21:22:15', NULL),
(337, 2664, 7, 2, '2020-05-22 21:22:15', NULL),
(338, 2664, 8, 2, '2020-05-22 21:22:15', NULL),
(339, 2664, 9, 2, '2020-05-22 21:22:15', NULL),
(340, 2664, 10, 2, '2020-05-22 21:22:15', NULL),
(341, 2664, 11, 1, '2020-05-22 21:22:15', NULL),
(342, 2664, 12, 1, '2020-05-22 21:22:15', NULL),
(343, 2664, 13, 1, '2020-05-22 21:22:15', NULL),
(344, 2664, 14, 1, '2020-05-22 21:22:15', NULL),
(345, 2664, 15, 1, '2020-05-22 21:22:15', NULL),
(346, 2665, 1, 3, '2020-05-22 21:22:15', NULL),
(347, 2665, 2, 3, '2020-05-22 21:22:15', NULL),
(348, 2665, 3, 3, '2020-05-22 21:22:15', NULL),
(349, 2665, 4, 3, '2020-05-22 21:22:15', NULL),
(350, 2665, 5, 3, '2020-05-22 21:22:15', NULL),
(351, 2665, 6, 2, '2020-05-22 21:22:15', NULL),
(352, 2665, 7, 2, '2020-05-22 21:22:15', NULL),
(353, 2665, 8, 2, '2020-05-22 21:22:15', NULL),
(354, 2665, 9, 2, '2020-05-22 21:22:15', NULL),
(355, 2665, 10, 2, '2020-05-22 21:22:15', NULL),
(356, 2665, 11, 1, '2020-05-22 21:22:15', NULL),
(357, 2665, 12, 1, '2020-05-22 21:22:15', NULL),
(358, 2665, 13, 1, '2020-05-22 21:22:15', NULL),
(359, 2665, 14, 1, '2020-05-22 21:22:15', NULL),
(360, 2665, 15, 1, '2020-05-22 21:22:15', NULL),
(361, 2666, 1, 3, '2020-05-22 21:22:15', NULL),
(362, 2666, 2, 3, '2020-05-22 21:22:15', NULL),
(363, 2666, 3, 3, '2020-05-22 21:22:15', NULL),
(364, 2666, 4, 3, '2020-05-22 21:22:15', NULL),
(365, 2666, 5, 3, '2020-05-22 21:22:15', NULL),
(366, 2666, 6, 2, '2020-05-22 21:22:15', NULL),
(367, 2666, 7, 2, '2020-05-22 21:22:15', NULL),
(368, 2666, 8, 2, '2020-05-22 21:22:15', NULL),
(369, 2666, 9, 2, '2020-05-22 21:22:15', NULL),
(370, 2666, 10, 2, '2020-05-22 21:22:15', NULL),
(371, 2666, 11, 1, '2020-05-22 21:22:15', NULL),
(372, 2666, 12, 1, '2020-05-22 21:22:15', NULL),
(373, 2666, 13, 1, '2020-05-22 21:22:15', NULL),
(374, 2666, 14, 1, '2020-05-22 21:22:15', NULL),
(375, 2666, 15, 1, '2020-05-22 21:22:15', NULL),
(376, 2668, 1, 3, '2020-05-22 21:22:15', NULL),
(377, 2668, 2, 3, '2020-05-22 21:22:15', NULL),
(378, 2668, 3, 3, '2020-05-22 21:22:15', NULL),
(379, 2668, 4, 3, '2020-05-22 21:22:15', NULL),
(380, 2668, 5, 3, '2020-05-22 21:22:15', NULL),
(381, 2668, 6, 2, '2020-05-22 21:22:15', NULL),
(382, 2668, 7, 2, '2020-05-22 21:22:15', NULL),
(383, 2668, 8, 2, '2020-05-22 21:22:15', NULL),
(384, 2668, 9, 2, '2020-05-22 21:22:15', NULL),
(385, 2668, 10, 2, '2020-05-22 21:22:15', NULL),
(386, 2668, 11, 1, '2020-05-22 21:22:15', NULL),
(387, 2668, 12, 1, '2020-05-22 21:22:15', NULL),
(388, 2668, 13, 1, '2020-05-22 21:22:15', NULL),
(389, 2668, 14, 1, '2020-05-22 21:22:15', NULL),
(390, 2668, 15, 1, '2020-05-22 21:22:15', NULL),
(391, 2669, 1, 3, '2020-05-22 21:22:15', NULL),
(392, 2669, 2, 3, '2020-05-22 21:22:15', NULL),
(393, 2669, 3, 3, '2020-05-22 21:22:15', NULL),
(394, 2669, 4, 3, '2020-05-22 21:22:15', NULL),
(395, 2669, 5, 3, '2020-05-22 21:22:15', NULL),
(396, 2669, 6, 2, '2020-05-22 21:22:15', NULL),
(397, 2669, 7, 2, '2020-05-22 21:22:15', NULL),
(398, 2669, 8, 2, '2020-05-22 21:22:15', NULL),
(399, 2669, 9, 2, '2020-05-22 21:22:15', NULL),
(400, 2669, 10, 2, '2020-05-22 21:22:15', NULL),
(401, 2669, 11, 1, '2020-05-22 21:22:15', NULL),
(402, 2669, 12, 1, '2020-05-22 21:22:15', NULL),
(403, 2669, 13, 1, '2020-05-22 21:22:15', NULL),
(404, 2669, 14, 1, '2020-05-22 21:22:15', NULL),
(405, 2669, 15, 1, '2020-05-22 21:22:15', NULL),
(406, 2670, 1, 3, '2020-05-22 21:22:15', NULL),
(407, 2670, 2, 3, '2020-05-22 21:22:15', NULL),
(408, 2670, 3, 3, '2020-05-22 21:22:15', NULL),
(409, 2670, 4, 3, '2020-05-22 21:22:15', NULL),
(410, 2670, 5, 3, '2020-05-22 21:22:15', NULL),
(411, 2670, 6, 2, '2020-05-22 21:22:15', NULL),
(412, 2670, 7, 2, '2020-05-22 21:22:15', NULL),
(413, 2670, 8, 2, '2020-05-22 21:22:15', NULL),
(414, 2670, 9, 2, '2020-05-22 21:22:15', NULL),
(415, 2670, 10, 2, '2020-05-22 21:22:15', NULL),
(416, 2670, 11, 1, '2020-05-22 21:22:15', NULL),
(417, 2670, 12, 1, '2020-05-22 21:22:15', NULL),
(418, 2670, 13, 1, '2020-05-22 21:22:15', NULL),
(419, 2670, 14, 1, '2020-05-22 21:22:15', NULL),
(420, 2670, 15, 1, '2020-05-22 21:22:15', NULL),
(421, 2671, 1, 3, '2020-05-22 21:22:15', NULL),
(422, 2671, 2, 3, '2020-05-22 21:22:15', NULL),
(423, 2671, 3, 3, '2020-05-22 21:22:15', NULL),
(424, 2671, 4, 3, '2020-05-22 21:22:15', NULL),
(425, 2671, 5, 3, '2020-05-22 21:22:15', NULL),
(426, 2671, 6, 2, '2020-05-22 21:22:15', NULL),
(427, 2671, 7, 2, '2020-05-22 21:22:15', NULL),
(428, 2671, 8, 2, '2020-05-22 21:22:15', NULL),
(429, 2671, 9, 2, '2020-05-22 21:22:15', NULL),
(430, 2671, 10, 2, '2020-05-22 21:22:15', NULL),
(431, 2671, 11, 1, '2020-05-22 21:22:15', NULL),
(432, 2671, 12, 1, '2020-05-22 21:22:15', NULL),
(433, 2671, 13, 1, '2020-05-22 21:22:15', NULL),
(434, 2671, 14, 1, '2020-05-22 21:22:15', NULL),
(435, 2671, 15, 1, '2020-05-22 21:22:15', NULL),
(436, 2672, 1, 3, '2020-05-22 21:22:15', NULL),
(437, 2672, 2, 3, '2020-05-22 21:22:15', NULL),
(438, 2672, 3, 3, '2020-05-22 21:22:15', NULL),
(439, 2672, 4, 3, '2020-05-22 21:22:15', NULL),
(440, 2672, 5, 3, '2020-05-22 21:22:15', NULL),
(441, 2672, 6, 2, '2020-05-22 21:22:15', NULL),
(442, 2672, 7, 2, '2020-05-22 21:22:15', NULL),
(443, 2672, 8, 2, '2020-05-22 21:22:15', NULL),
(444, 2672, 9, 2, '2020-05-22 21:22:15', NULL),
(445, 2672, 10, 2, '2020-05-22 21:22:15', NULL),
(446, 2672, 11, 1, '2020-05-22 21:22:15', NULL),
(447, 2672, 12, 1, '2020-05-22 21:22:15', NULL),
(448, 2672, 13, 1, '2020-05-22 21:22:15', NULL),
(449, 2672, 14, 1, '2020-05-22 21:22:15', NULL),
(450, 2672, 15, 1, '2020-05-22 21:22:15', NULL),
(451, 2673, 1, 3, '2020-05-22 21:22:15', NULL),
(452, 2673, 2, 3, '2020-05-22 21:22:15', NULL),
(453, 2673, 3, 3, '2020-05-22 21:22:15', NULL),
(454, 2673, 4, 3, '2020-05-22 21:22:15', NULL),
(455, 2673, 5, 3, '2020-05-22 21:22:15', NULL),
(456, 2673, 6, 2, '2020-05-22 21:22:15', NULL),
(457, 2673, 7, 2, '2020-05-22 21:22:15', NULL),
(458, 2673, 8, 2, '2020-05-22 21:22:15', NULL),
(459, 2673, 9, 2, '2020-05-22 21:22:15', NULL),
(460, 2673, 10, 2, '2020-05-22 21:22:15', NULL),
(461, 2673, 11, 1, '2020-05-22 21:22:15', NULL),
(462, 2673, 12, 1, '2020-05-22 21:22:15', NULL),
(463, 2673, 13, 1, '2020-05-22 21:22:15', NULL),
(464, 2673, 14, 1, '2020-05-22 21:22:15', NULL),
(465, 2673, 15, 1, '2020-05-22 21:22:15', NULL),
(466, 2674, 1, 3, '2020-05-22 21:22:15', NULL),
(467, 2674, 2, 3, '2020-05-22 21:22:15', NULL),
(468, 2674, 3, 3, '2020-05-22 21:22:15', NULL),
(469, 2674, 4, 3, '2020-05-22 21:22:15', NULL),
(470, 2674, 5, 3, '2020-05-22 21:22:15', NULL),
(471, 2674, 6, 2, '2020-05-22 21:22:15', NULL),
(472, 2674, 7, 2, '2020-05-22 21:22:15', NULL),
(473, 2674, 8, 2, '2020-05-22 21:22:15', NULL),
(474, 2674, 9, 2, '2020-05-22 21:22:15', NULL),
(475, 2674, 10, 2, '2020-05-22 21:22:15', NULL),
(476, 2674, 11, 1, '2020-05-22 21:22:15', NULL),
(477, 2674, 12, 1, '2020-05-22 21:22:15', NULL),
(478, 2674, 13, 1, '2020-05-22 21:22:15', NULL),
(479, 2674, 14, 1, '2020-05-22 21:22:15', NULL),
(480, 2674, 15, 1, '2020-05-22 21:22:15', NULL),
(481, 2675, 1, 3, '2020-05-22 21:22:15', NULL),
(482, 2675, 2, 3, '2020-05-22 21:22:15', NULL),
(483, 2675, 3, 3, '2020-05-22 21:22:15', NULL),
(484, 2675, 4, 3, '2020-05-22 21:22:15', NULL),
(485, 2675, 5, 3, '2020-05-22 21:22:15', NULL),
(486, 2675, 6, 2, '2020-05-22 21:22:15', NULL),
(487, 2675, 7, 2, '2020-05-22 21:22:15', NULL),
(488, 2675, 8, 2, '2020-05-22 21:22:15', NULL),
(489, 2675, 9, 2, '2020-05-22 21:22:15', NULL),
(490, 2675, 10, 2, '2020-05-22 21:22:15', NULL),
(491, 2675, 11, 1, '2020-05-22 21:22:15', NULL),
(492, 2675, 12, 1, '2020-05-22 21:22:15', NULL),
(493, 2675, 13, 1, '2020-05-22 21:22:15', NULL),
(494, 2675, 14, 1, '2020-05-22 21:22:15', NULL),
(495, 2675, 15, 1, '2020-05-22 21:22:15', NULL),
(496, 2676, 1, 3, '2020-05-22 21:22:15', NULL),
(497, 2676, 2, 3, '2020-05-22 21:22:15', NULL),
(498, 2676, 3, 3, '2020-05-22 21:22:15', NULL),
(499, 2676, 4, 3, '2020-05-22 21:22:15', NULL),
(500, 2676, 5, 3, '2020-05-22 21:22:15', NULL),
(501, 2676, 6, 2, '2020-05-22 21:22:15', NULL),
(502, 2676, 7, 2, '2020-05-22 21:22:15', NULL),
(503, 2676, 8, 2, '2020-05-22 21:22:15', NULL),
(504, 2676, 9, 2, '2020-05-22 21:22:15', NULL),
(505, 2676, 10, 2, '2020-05-22 21:22:15', NULL),
(506, 2676, 11, 1, '2020-05-22 21:22:15', NULL),
(507, 2676, 12, 1, '2020-05-22 21:22:15', NULL),
(508, 2676, 13, 1, '2020-05-22 21:22:15', NULL),
(509, 2676, 14, 1, '2020-05-22 21:22:15', NULL),
(510, 2676, 15, 1, '2020-05-22 21:22:15', NULL),
(511, 2570, 1, 3, '2020-05-22 21:22:15', NULL),
(512, 2570, 2, 3, '2020-05-22 21:22:15', NULL),
(513, 2570, 3, 3, '2020-05-22 21:22:15', NULL),
(514, 2570, 4, 3, '2020-05-22 21:22:15', NULL),
(515, 2570, 5, 3, '2020-05-22 21:22:15', NULL),
(516, 2570, 6, 2, '2020-05-22 21:22:15', NULL),
(517, 2570, 7, 2, '2020-05-22 21:22:15', NULL),
(518, 2570, 8, 2, '2020-05-22 21:22:15', NULL),
(519, 2570, 9, 2, '2020-05-22 21:22:15', NULL),
(520, 2570, 10, 2, '2020-05-22 21:22:15', NULL),
(521, 2570, 11, 1, '2020-05-22 21:22:15', NULL),
(522, 2570, 12, 1, '2020-05-22 21:22:15', NULL),
(523, 2570, 13, 1, '2020-05-22 21:22:15', NULL),
(524, 2570, 14, 1, '2020-05-22 21:22:15', NULL),
(525, 2570, 15, 1, '2020-05-22 21:22:15', NULL),
(526, 2573, 1, 3, '2020-05-22 21:22:15', NULL),
(527, 2573, 2, 3, '2020-05-22 21:22:15', NULL),
(528, 2573, 3, 3, '2020-05-22 21:22:15', NULL),
(529, 2573, 4, 3, '2020-05-22 21:22:15', NULL),
(530, 2573, 5, 3, '2020-05-22 21:22:15', NULL),
(531, 2573, 6, 2, '2020-05-22 21:22:15', NULL),
(532, 2573, 7, 2, '2020-05-22 21:22:15', NULL),
(533, 2573, 8, 2, '2020-05-22 21:22:15', NULL),
(534, 2573, 9, 2, '2020-05-22 21:22:15', NULL),
(535, 2573, 10, 2, '2020-05-22 21:22:15', NULL),
(536, 2573, 11, 1, '2020-05-22 21:22:15', NULL),
(537, 2573, 12, 1, '2020-05-22 21:22:15', NULL),
(538, 2573, 13, 1, '2020-05-22 21:22:15', NULL),
(539, 2573, 14, 1, '2020-05-22 21:22:15', NULL),
(540, 2573, 15, 1, '2020-05-22 21:22:15', NULL),
(541, 2574, 1, 3, '2020-05-22 21:22:15', NULL),
(542, 2574, 2, 3, '2020-05-22 21:22:15', NULL),
(543, 2574, 3, 3, '2020-05-22 21:22:15', NULL),
(544, 2574, 4, 3, '2020-05-22 21:22:15', NULL),
(545, 2574, 5, 3, '2020-05-22 21:22:15', NULL),
(546, 2574, 6, 2, '2020-05-22 21:22:15', NULL),
(547, 2574, 7, 2, '2020-05-22 21:22:15', NULL),
(548, 2574, 8, 2, '2020-05-22 21:22:15', NULL),
(549, 2574, 9, 2, '2020-05-22 21:22:15', NULL),
(550, 2574, 10, 2, '2020-05-22 21:22:15', NULL),
(551, 2574, 11, 1, '2020-05-22 21:22:15', NULL),
(552, 2574, 12, 1, '2020-05-22 21:22:15', NULL),
(553, 2574, 13, 1, '2020-05-22 21:22:15', NULL),
(554, 2574, 14, 1, '2020-05-22 21:22:15', NULL),
(555, 2574, 15, 1, '2020-05-22 21:22:15', NULL),
(556, 2575, 1, 3, '2020-05-22 21:22:15', NULL),
(557, 2575, 2, 3, '2020-05-22 21:22:15', NULL),
(558, 2575, 3, 3, '2020-05-22 21:22:15', NULL),
(559, 2575, 4, 3, '2020-05-22 21:22:15', NULL),
(560, 2575, 5, 3, '2020-05-22 21:22:15', NULL),
(561, 2575, 6, 2, '2020-05-22 21:22:15', NULL),
(562, 2575, 7, 2, '2020-05-22 21:22:15', NULL),
(563, 2575, 8, 2, '2020-05-22 21:22:15', NULL),
(564, 2575, 9, 2, '2020-05-22 21:22:15', NULL),
(565, 2575, 10, 2, '2020-05-22 21:22:15', NULL),
(566, 2575, 11, 1, '2020-05-22 21:22:15', NULL),
(567, 2575, 12, 1, '2020-05-22 21:22:15', NULL),
(568, 2575, 13, 1, '2020-05-22 21:22:15', NULL),
(569, 2575, 14, 1, '2020-05-22 21:22:15', NULL),
(570, 2575, 15, 1, '2020-05-22 21:22:15', NULL),
(571, 2576, 1, 3, '2020-05-22 21:22:15', NULL),
(572, 2576, 2, 3, '2020-05-22 21:22:15', NULL),
(573, 2576, 3, 3, '2020-05-22 21:22:15', NULL),
(574, 2576, 4, 3, '2020-05-22 21:22:15', NULL),
(575, 2576, 5, 3, '2020-05-22 21:22:15', NULL),
(576, 2576, 6, 2, '2020-05-22 21:22:15', NULL),
(577, 2576, 7, 2, '2020-05-22 21:22:15', NULL),
(578, 2576, 8, 2, '2020-05-22 21:22:15', NULL),
(579, 2576, 9, 2, '2020-05-22 21:22:15', NULL),
(580, 2576, 10, 2, '2020-05-22 21:22:15', NULL),
(581, 2576, 11, 1, '2020-05-22 21:22:15', NULL),
(582, 2576, 12, 1, '2020-05-22 21:22:15', NULL),
(583, 2576, 13, 1, '2020-05-22 21:22:15', NULL),
(584, 2576, 14, 1, '2020-05-22 21:22:15', NULL),
(585, 2576, 15, 1, '2020-05-22 21:22:15', NULL),
(586, 2577, 1, 3, '2020-05-22 21:22:15', NULL),
(587, 2577, 2, 3, '2020-05-22 21:22:15', NULL),
(588, 2577, 3, 3, '2020-05-22 21:22:15', NULL),
(589, 2577, 4, 3, '2020-05-22 21:22:15', NULL),
(590, 2577, 5, 3, '2020-05-22 21:22:15', NULL),
(591, 2577, 6, 2, '2020-05-22 21:22:15', NULL),
(592, 2577, 7, 2, '2020-05-22 21:22:15', NULL),
(593, 2577, 8, 2, '2020-05-22 21:22:15', NULL),
(594, 2577, 9, 2, '2020-05-22 21:22:15', NULL),
(595, 2577, 10, 2, '2020-05-22 21:22:15', NULL),
(596, 2577, 11, 1, '2020-05-22 21:22:15', NULL),
(597, 2577, 12, 1, '2020-05-22 21:22:15', NULL),
(598, 2577, 13, 1, '2020-05-22 21:22:15', NULL),
(599, 2577, 14, 1, '2020-05-22 21:22:15', NULL),
(600, 2577, 15, 1, '2020-05-22 21:22:15', NULL),
(601, 2578, 1, 3, '2020-05-22 21:22:15', NULL),
(602, 2578, 2, 3, '2020-05-22 21:22:15', NULL),
(603, 2578, 3, 3, '2020-05-22 21:22:15', NULL),
(604, 2578, 4, 3, '2020-05-22 21:22:15', NULL),
(605, 2578, 5, 3, '2020-05-22 21:22:15', NULL),
(606, 2578, 6, 2, '2020-05-22 21:22:15', NULL),
(607, 2578, 7, 2, '2020-05-22 21:22:15', NULL),
(608, 2578, 8, 2, '2020-05-22 21:22:15', NULL),
(609, 2578, 9, 2, '2020-05-22 21:22:15', NULL),
(610, 2578, 10, 2, '2020-05-22 21:22:15', NULL),
(611, 2578, 11, 1, '2020-05-22 21:22:15', NULL),
(612, 2578, 12, 1, '2020-05-22 21:22:15', NULL),
(613, 2578, 13, 1, '2020-05-22 21:22:15', NULL),
(614, 2578, 14, 1, '2020-05-22 21:22:15', NULL),
(615, 2578, 15, 1, '2020-05-22 21:22:15', NULL),
(616, 2579, 1, 3, '2020-05-22 21:22:15', NULL),
(617, 2579, 2, 3, '2020-05-22 21:22:15', NULL),
(618, 2579, 3, 3, '2020-05-22 21:22:15', NULL),
(619, 2579, 4, 3, '2020-05-22 21:22:15', NULL),
(620, 2579, 5, 3, '2020-05-22 21:22:15', NULL),
(621, 2579, 6, 2, '2020-05-22 21:22:15', NULL),
(622, 2579, 7, 2, '2020-05-22 21:22:15', NULL),
(623, 2579, 8, 2, '2020-05-22 21:22:15', NULL),
(624, 2579, 9, 2, '2020-05-22 21:22:15', NULL),
(625, 2579, 10, 2, '2020-05-22 21:22:15', NULL),
(626, 2579, 11, 1, '2020-05-22 21:22:15', NULL),
(627, 2579, 12, 1, '2020-05-22 21:22:15', NULL),
(628, 2579, 13, 1, '2020-05-22 21:22:15', NULL),
(629, 2579, 14, 1, '2020-05-22 21:22:15', NULL),
(630, 2579, 15, 1, '2020-05-22 21:22:15', NULL),
(631, 2580, 1, 3, '2020-05-22 21:22:15', NULL),
(632, 2580, 2, 3, '2020-05-22 21:22:15', NULL),
(633, 2580, 3, 3, '2020-05-22 21:22:15', NULL),
(634, 2580, 4, 3, '2020-05-22 21:22:15', NULL),
(635, 2580, 5, 3, '2020-05-22 21:22:15', NULL),
(636, 2580, 6, 2, '2020-05-22 21:22:15', NULL),
(637, 2580, 7, 2, '2020-05-22 21:22:15', NULL),
(638, 2580, 8, 2, '2020-05-22 21:22:15', NULL),
(639, 2580, 9, 2, '2020-05-22 21:22:15', NULL),
(640, 2580, 10, 2, '2020-05-22 21:22:15', NULL),
(641, 2580, 11, 1, '2020-05-22 21:22:15', NULL),
(642, 2580, 12, 1, '2020-05-22 21:22:15', NULL),
(643, 2580, 13, 1, '2020-05-22 21:22:15', NULL),
(644, 2580, 14, 1, '2020-05-22 21:22:15', NULL),
(645, 2580, 15, 1, '2020-05-22 21:22:16', NULL),
(646, 2581, 1, 3, '2020-05-22 21:22:16', NULL),
(647, 2581, 2, 3, '2020-05-22 21:22:16', NULL),
(648, 2581, 3, 3, '2020-05-22 21:22:16', NULL),
(649, 2581, 4, 3, '2020-05-22 21:22:16', NULL),
(650, 2581, 5, 3, '2020-05-22 21:22:16', NULL),
(651, 2581, 6, 2, '2020-05-22 21:22:16', NULL),
(652, 2581, 7, 2, '2020-05-22 21:22:16', NULL),
(653, 2581, 8, 2, '2020-05-22 21:22:16', NULL),
(654, 2581, 9, 2, '2020-05-22 21:22:16', NULL),
(655, 2581, 10, 2, '2020-05-22 21:22:16', NULL),
(656, 2581, 11, 1, '2020-05-22 21:22:16', NULL),
(657, 2581, 12, 1, '2020-05-22 21:22:16', NULL),
(658, 2581, 13, 1, '2020-05-22 21:22:16', NULL),
(659, 2581, 14, 1, '2020-05-22 21:22:16', NULL),
(660, 2581, 15, 1, '2020-05-22 21:22:16', NULL),
(661, 2582, 1, 3, '2020-05-22 21:22:16', NULL),
(662, 2582, 2, 3, '2020-05-22 21:22:16', NULL),
(663, 2582, 3, 3, '2020-05-22 21:22:16', NULL),
(664, 2582, 4, 3, '2020-05-22 21:22:16', NULL),
(665, 2582, 5, 3, '2020-05-22 21:22:16', NULL),
(666, 2582, 6, 2, '2020-05-22 21:22:16', NULL),
(667, 2582, 7, 2, '2020-05-22 21:22:16', NULL),
(668, 2582, 8, 2, '2020-05-22 21:22:16', NULL),
(669, 2582, 9, 2, '2020-05-22 21:22:16', NULL),
(670, 2582, 10, 2, '2020-05-22 21:22:16', NULL),
(671, 2582, 11, 1, '2020-05-22 21:22:16', NULL),
(672, 2582, 12, 1, '2020-05-22 21:22:16', NULL),
(673, 2582, 13, 1, '2020-05-22 21:22:16', NULL),
(674, 2582, 14, 1, '2020-05-22 21:22:16', NULL),
(675, 2582, 15, 1, '2020-05-22 21:22:16', NULL),
(676, 2606, 1, 3, '2020-05-22 21:22:16', NULL),
(677, 2606, 2, 3, '2020-05-22 21:22:16', NULL),
(678, 2606, 3, 3, '2020-05-22 21:22:16', NULL),
(679, 2606, 4, 3, '2020-05-22 21:22:16', NULL),
(680, 2606, 5, 3, '2020-05-22 21:22:16', NULL),
(681, 2606, 6, 2, '2020-05-22 21:22:16', NULL),
(682, 2606, 7, 2, '2020-05-22 21:22:16', NULL),
(683, 2606, 8, 2, '2020-05-22 21:22:16', NULL),
(684, 2606, 9, 2, '2020-05-22 21:22:16', NULL),
(685, 2606, 10, 2, '2020-05-22 21:22:16', NULL),
(686, 2606, 11, 1, '2020-05-22 21:22:16', NULL),
(687, 2606, 12, 1, '2020-05-22 21:22:16', NULL),
(688, 2606, 13, 1, '2020-05-22 21:22:16', NULL),
(689, 2606, 14, 1, '2020-05-22 21:22:16', NULL),
(690, 2606, 15, 1, '2020-05-22 21:22:16', NULL),
(691, 2608, 1, 3, '2020-05-22 21:22:16', NULL),
(692, 2608, 2, 3, '2020-05-22 21:22:16', NULL),
(693, 2608, 3, 3, '2020-05-22 21:22:16', NULL),
(694, 2608, 4, 3, '2020-05-22 21:22:16', NULL),
(695, 2608, 5, 3, '2020-05-22 21:22:16', NULL),
(696, 2608, 6, 2, '2020-05-22 21:22:16', NULL),
(697, 2608, 7, 2, '2020-05-22 21:22:16', NULL),
(698, 2608, 8, 2, '2020-05-22 21:22:16', NULL),
(699, 2608, 9, 2, '2020-05-22 21:22:16', NULL),
(700, 2608, 10, 2, '2020-05-22 21:22:16', NULL),
(701, 2608, 11, 1, '2020-05-22 21:22:16', NULL),
(702, 2608, 12, 1, '2020-05-22 21:22:16', NULL),
(703, 2608, 13, 1, '2020-05-22 21:22:16', NULL),
(704, 2608, 14, 1, '2020-05-22 21:22:16', NULL),
(705, 2608, 15, 1, '2020-05-22 21:22:16', NULL),
(706, 2609, 1, 3, '2020-05-22 21:22:16', NULL),
(707, 2609, 2, 3, '2020-05-22 21:22:16', NULL),
(708, 2609, 3, 3, '2020-05-22 21:22:16', NULL),
(709, 2609, 4, 3, '2020-05-22 21:22:16', NULL),
(710, 2609, 5, 3, '2020-05-22 21:22:16', NULL),
(711, 2609, 6, 2, '2020-05-22 21:22:16', NULL),
(712, 2609, 7, 2, '2020-05-22 21:22:16', NULL),
(713, 2609, 8, 2, '2020-05-22 21:22:16', NULL),
(714, 2609, 9, 2, '2020-05-22 21:22:16', NULL),
(715, 2609, 10, 2, '2020-05-22 21:22:16', NULL),
(716, 2609, 11, 1, '2020-05-22 21:22:16', NULL),
(717, 2609, 12, 1, '2020-05-22 21:22:16', NULL),
(718, 2609, 13, 1, '2020-05-22 21:22:16', NULL),
(719, 2609, 14, 1, '2020-05-22 21:22:16', NULL),
(720, 2609, 15, 1, '2020-05-22 21:22:16', NULL),
(721, 2610, 1, 3, '2020-05-22 21:22:16', NULL),
(722, 2610, 2, 3, '2020-05-22 21:22:16', NULL),
(723, 2610, 3, 3, '2020-05-22 21:22:16', NULL),
(724, 2610, 4, 3, '2020-05-22 21:22:16', NULL),
(725, 2610, 5, 3, '2020-05-22 21:22:16', NULL),
(726, 2610, 6, 2, '2020-05-22 21:22:16', NULL),
(727, 2610, 7, 2, '2020-05-22 21:22:16', NULL),
(728, 2610, 8, 2, '2020-05-22 21:22:16', NULL),
(729, 2610, 9, 2, '2020-05-22 21:22:16', NULL),
(730, 2610, 10, 2, '2020-05-22 21:22:16', NULL),
(731, 2610, 11, 1, '2020-05-22 21:22:16', NULL),
(732, 2610, 12, 1, '2020-05-22 21:22:16', NULL),
(733, 2610, 13, 1, '2020-05-22 21:22:16', NULL),
(734, 2610, 14, 1, '2020-05-22 21:22:16', NULL),
(735, 2610, 15, 1, '2020-05-22 21:22:16', NULL),
(736, 2611, 1, 3, '2020-05-22 21:22:16', NULL),
(737, 2611, 2, 3, '2020-05-22 21:22:16', NULL),
(738, 2611, 3, 3, '2020-05-22 21:22:16', NULL),
(739, 2611, 4, 3, '2020-05-22 21:22:16', NULL),
(740, 2611, 5, 3, '2020-05-22 21:22:16', NULL),
(741, 2611, 6, 2, '2020-05-22 21:22:16', NULL),
(742, 2611, 7, 2, '2020-05-22 21:22:16', NULL),
(743, 2611, 8, 2, '2020-05-22 21:22:16', NULL),
(744, 2611, 9, 2, '2020-05-22 21:22:16', NULL),
(745, 2611, 10, 2, '2020-05-22 21:22:16', NULL),
(746, 2611, 11, 1, '2020-05-22 21:22:16', NULL),
(747, 2611, 12, 1, '2020-05-22 21:22:16', NULL),
(748, 2611, 13, 1, '2020-05-22 21:22:16', NULL),
(749, 2611, 14, 1, '2020-05-22 21:22:16', NULL),
(750, 2611, 15, 1, '2020-05-22 21:22:16', NULL),
(751, 2612, 1, 3, '2020-05-22 21:22:16', NULL),
(752, 2612, 2, 3, '2020-05-22 21:22:16', NULL),
(753, 2612, 3, 3, '2020-05-22 21:22:16', NULL),
(754, 2612, 4, 3, '2020-05-22 21:22:16', NULL),
(755, 2612, 5, 3, '2020-05-22 21:22:16', NULL),
(756, 2612, 6, 2, '2020-05-22 21:22:16', NULL),
(757, 2612, 7, 2, '2020-05-22 21:22:16', NULL),
(758, 2612, 8, 2, '2020-05-22 21:22:16', NULL),
(759, 2612, 9, 2, '2020-05-22 21:22:16', NULL),
(760, 2612, 10, 2, '2020-05-22 21:22:16', NULL),
(761, 2612, 11, 1, '2020-05-22 21:22:16', NULL),
(762, 2612, 12, 1, '2020-05-22 21:22:16', NULL),
(763, 2612, 13, 1, '2020-05-22 21:22:16', NULL),
(764, 2612, 14, 1, '2020-05-22 21:22:16', NULL),
(765, 2612, 15, 1, '2020-05-22 21:22:16', NULL),
(766, 2613, 1, 3, '2020-05-22 21:22:16', NULL),
(767, 2613, 2, 3, '2020-05-22 21:22:16', NULL),
(768, 2613, 3, 3, '2020-05-22 21:22:16', NULL),
(769, 2613, 4, 3, '2020-05-22 21:22:16', NULL),
(770, 2613, 5, 3, '2020-05-22 21:22:16', NULL),
(771, 2613, 6, 2, '2020-05-22 21:22:16', NULL),
(772, 2613, 7, 2, '2020-05-22 21:22:16', NULL),
(773, 2613, 8, 2, '2020-05-22 21:22:16', NULL),
(774, 2613, 9, 2, '2020-05-22 21:22:16', NULL),
(775, 2613, 10, 2, '2020-05-22 21:22:16', NULL),
(776, 2613, 11, 1, '2020-05-22 21:22:16', NULL),
(777, 2613, 12, 1, '2020-05-22 21:22:16', NULL),
(778, 2613, 13, 1, '2020-05-22 21:22:16', NULL),
(779, 2613, 14, 1, '2020-05-22 21:22:16', NULL),
(780, 2613, 15, 1, '2020-05-22 21:22:16', NULL),
(781, 2614, 1, 3, '2020-05-22 21:22:16', NULL),
(782, 2614, 2, 3, '2020-05-22 21:22:16', NULL),
(783, 2614, 3, 3, '2020-05-22 21:22:16', NULL),
(784, 2614, 4, 3, '2020-05-22 21:22:16', NULL),
(785, 2614, 5, 3, '2020-05-22 21:22:16', NULL),
(786, 2614, 6, 2, '2020-05-22 21:22:16', NULL),
(787, 2614, 7, 2, '2020-05-22 21:22:16', NULL),
(788, 2614, 8, 2, '2020-05-22 21:22:16', NULL),
(789, 2614, 9, 2, '2020-05-22 21:22:16', NULL),
(790, 2614, 10, 2, '2020-05-22 21:22:16', NULL),
(791, 2614, 11, 1, '2020-05-22 21:22:16', NULL),
(792, 2614, 12, 1, '2020-05-22 21:22:16', NULL),
(793, 2614, 13, 1, '2020-05-22 21:22:16', NULL),
(794, 2614, 14, 1, '2020-05-22 21:22:16', NULL),
(795, 2614, 15, 1, '2020-05-22 21:22:16', NULL),
(796, 2615, 1, 3, '2020-05-22 21:22:16', NULL),
(797, 2615, 2, 3, '2020-05-22 21:22:16', NULL),
(798, 2615, 3, 3, '2020-05-22 21:22:16', NULL),
(799, 2615, 4, 3, '2020-05-22 21:22:16', NULL),
(800, 2615, 5, 3, '2020-05-22 21:22:16', NULL),
(801, 2615, 6, 2, '2020-05-22 21:22:16', NULL),
(802, 2615, 7, 2, '2020-05-22 21:22:16', NULL),
(803, 2615, 8, 2, '2020-05-22 21:22:16', NULL),
(804, 2615, 9, 2, '2020-05-22 21:22:16', NULL),
(805, 2615, 10, 2, '2020-05-22 21:22:16', NULL),
(806, 2615, 11, 1, '2020-05-22 21:22:16', NULL),
(807, 2615, 12, 1, '2020-05-22 21:22:16', NULL),
(808, 2615, 13, 1, '2020-05-22 21:22:16', NULL),
(809, 2615, 14, 1, '2020-05-22 21:22:16', NULL),
(810, 2615, 15, 1, '2020-05-22 21:22:16', NULL),
(811, 2616, 1, 3, '2020-05-22 21:22:16', NULL),
(812, 2616, 2, 3, '2020-05-22 21:22:16', NULL),
(813, 2616, 3, 3, '2020-05-22 21:22:16', NULL),
(814, 2616, 4, 3, '2020-05-22 21:22:16', NULL),
(815, 2616, 5, 3, '2020-05-22 21:22:16', NULL),
(816, 2616, 6, 2, '2020-05-22 21:22:16', NULL),
(817, 2616, 7, 2, '2020-05-22 21:22:16', NULL),
(818, 2616, 8, 2, '2020-05-22 21:22:16', NULL),
(819, 2616, 9, 2, '2020-05-22 21:22:16', NULL),
(820, 2616, 10, 2, '2020-05-22 21:22:16', NULL),
(821, 2616, 11, 1, '2020-05-22 21:22:16', NULL),
(822, 2616, 12, 1, '2020-05-22 21:22:16', NULL),
(823, 2616, 13, 1, '2020-05-22 21:22:16', NULL),
(824, 2616, 14, 1, '2020-05-22 21:22:16', NULL),
(825, 2616, 15, 1, '2020-05-22 21:22:16', NULL),
(826, 2617, 1, 3, '2020-05-22 21:22:16', NULL),
(827, 2617, 2, 3, '2020-05-22 21:22:16', NULL),
(828, 2617, 3, 3, '2020-05-22 21:22:16', NULL),
(829, 2617, 4, 3, '2020-05-22 21:22:16', NULL),
(830, 2617, 5, 3, '2020-05-22 21:22:16', NULL),
(831, 2617, 6, 2, '2020-05-22 21:22:16', NULL),
(832, 2617, 7, 2, '2020-05-22 21:22:16', NULL),
(833, 2617, 8, 2, '2020-05-22 21:22:16', NULL),
(834, 2617, 9, 2, '2020-05-22 21:22:16', NULL),
(835, 2617, 10, 2, '2020-05-22 21:22:16', NULL),
(836, 2617, 11, 1, '2020-05-22 21:22:16', NULL),
(837, 2617, 12, 1, '2020-05-22 21:22:16', NULL),
(838, 2617, 13, 1, '2020-05-22 21:22:16', NULL),
(839, 2617, 14, 1, '2020-05-22 21:22:16', NULL),
(840, 2617, 15, 1, '2020-05-22 21:22:16', NULL),
(841, 2642, 1, 3, '2020-05-22 21:22:16', NULL),
(842, 2642, 2, 3, '2020-05-22 21:22:16', NULL),
(843, 2642, 3, 3, '2020-05-22 21:22:16', NULL),
(844, 2642, 4, 3, '2020-05-22 21:22:16', NULL),
(845, 2642, 5, 3, '2020-05-22 21:22:16', NULL),
(846, 2642, 6, 2, '2020-05-22 21:22:16', NULL),
(847, 2642, 7, 2, '2020-05-22 21:22:16', NULL),
(848, 2642, 8, 2, '2020-05-22 21:22:16', NULL),
(849, 2642, 9, 2, '2020-05-22 21:22:16', NULL),
(850, 2642, 10, 2, '2020-05-22 21:22:16', NULL),
(851, 2642, 11, 1, '2020-05-22 21:22:16', NULL),
(852, 2642, 12, 1, '2020-05-22 21:22:16', NULL),
(853, 2642, 13, 1, '2020-05-22 21:22:16', NULL),
(854, 2642, 14, 1, '2020-05-22 21:22:16', NULL),
(855, 2642, 15, 1, '2020-05-22 21:22:16', NULL),
(856, 2643, 1, 3, '2020-05-22 21:22:16', NULL),
(857, 2643, 2, 3, '2020-05-22 21:22:16', NULL),
(858, 2643, 3, 3, '2020-05-22 21:22:16', NULL),
(859, 2643, 4, 3, '2020-05-22 21:22:16', NULL),
(860, 2643, 5, 3, '2020-05-22 21:22:16', NULL),
(861, 2643, 6, 2, '2020-05-22 21:22:16', NULL),
(862, 2643, 7, 2, '2020-05-22 21:22:16', NULL),
(863, 2643, 8, 2, '2020-05-22 21:22:16', NULL),
(864, 2643, 9, 2, '2020-05-22 21:22:16', NULL),
(865, 2643, 10, 2, '2020-05-22 21:22:16', NULL),
(866, 2643, 11, 1, '2020-05-22 21:22:16', NULL),
(867, 2643, 12, 1, '2020-05-22 21:22:16', NULL),
(868, 2643, 13, 1, '2020-05-22 21:22:16', NULL),
(869, 2643, 14, 1, '2020-05-22 21:22:16', NULL),
(870, 2643, 15, 1, '2020-05-22 21:22:16', NULL),
(871, 2644, 1, 3, '2020-05-22 21:22:16', NULL),
(872, 2644, 2, 3, '2020-05-22 21:22:16', NULL),
(873, 2644, 3, 3, '2020-05-22 21:22:16', NULL),
(874, 2644, 4, 3, '2020-05-22 21:22:16', NULL),
(875, 2644, 5, 3, '2020-05-22 21:22:16', NULL),
(876, 2644, 6, 2, '2020-05-22 21:22:16', NULL),
(877, 2644, 7, 2, '2020-05-22 21:22:16', NULL),
(878, 2644, 8, 2, '2020-05-22 21:22:16', NULL),
(879, 2644, 9, 2, '2020-05-22 21:22:16', NULL),
(880, 2644, 10, 2, '2020-05-22 21:22:16', NULL),
(881, 2644, 11, 1, '2020-05-22 21:22:16', NULL),
(882, 2644, 12, 1, '2020-05-22 21:22:16', NULL),
(883, 2644, 13, 1, '2020-05-22 21:22:16', NULL),
(884, 2644, 14, 1, '2020-05-22 21:22:16', NULL),
(885, 2644, 15, 1, '2020-05-22 21:22:16', NULL),
(886, 2645, 1, 3, '2020-05-22 21:22:16', NULL),
(887, 2645, 2, 3, '2020-05-22 21:22:16', NULL),
(888, 2645, 3, 3, '2020-05-22 21:22:16', NULL),
(889, 2645, 4, 3, '2020-05-22 21:22:16', NULL),
(890, 2645, 5, 3, '2020-05-22 21:22:16', NULL),
(891, 2645, 6, 2, '2020-05-22 21:22:16', NULL),
(892, 2645, 7, 2, '2020-05-22 21:22:16', NULL),
(893, 2645, 8, 2, '2020-05-22 21:22:16', NULL),
(894, 2645, 9, 2, '2020-05-22 21:22:16', NULL),
(895, 2645, 10, 2, '2020-05-22 21:22:16', NULL),
(896, 2645, 11, 1, '2020-05-22 21:22:16', NULL),
(897, 2645, 12, 1, '2020-05-22 21:22:16', NULL),
(898, 2645, 13, 1, '2020-05-22 21:22:16', NULL),
(899, 2645, 14, 1, '2020-05-22 21:22:16', NULL),
(900, 2645, 15, 1, '2020-05-22 21:22:16', NULL),
(901, 2646, 1, 3, '2020-05-22 21:22:16', NULL),
(902, 2646, 2, 3, '2020-05-22 21:22:16', NULL),
(903, 2646, 3, 3, '2020-05-22 21:22:16', NULL),
(904, 2646, 4, 3, '2020-05-22 21:22:16', NULL),
(905, 2646, 5, 3, '2020-05-22 21:22:16', NULL),
(906, 2646, 6, 2, '2020-05-22 21:22:16', NULL),
(907, 2646, 7, 2, '2020-05-22 21:22:16', NULL),
(908, 2646, 8, 2, '2020-05-22 21:22:16', NULL),
(909, 2646, 9, 2, '2020-05-22 21:22:16', NULL),
(910, 2646, 10, 2, '2020-05-22 21:22:16', NULL),
(911, 2646, 11, 1, '2020-05-22 21:22:16', NULL),
(912, 2646, 12, 1, '2020-05-22 21:22:16', NULL),
(913, 2646, 13, 1, '2020-05-22 21:22:16', NULL),
(914, 2646, 14, 1, '2020-05-22 21:22:16', NULL),
(915, 2646, 15, 1, '2020-05-22 21:22:16', NULL),
(916, 2647, 1, 3, '2020-05-22 21:22:16', NULL),
(917, 2647, 2, 3, '2020-05-22 21:22:16', NULL),
(918, 2647, 3, 3, '2020-05-22 21:22:16', NULL),
(919, 2647, 4, 3, '2020-05-22 21:22:16', NULL),
(920, 2647, 5, 3, '2020-05-22 21:22:16', NULL),
(921, 2647, 6, 2, '2020-05-22 21:22:16', NULL),
(922, 2647, 7, 2, '2020-05-22 21:22:16', NULL),
(923, 2647, 8, 2, '2020-05-22 21:22:16', NULL),
(924, 2647, 9, 2, '2020-05-22 21:22:16', NULL),
(925, 2647, 10, 2, '2020-05-22 21:22:16', NULL),
(926, 2647, 11, 1, '2020-05-22 21:22:16', NULL),
(927, 2647, 12, 1, '2020-05-22 21:22:16', NULL),
(928, 2647, 13, 1, '2020-05-22 21:22:16', NULL),
(929, 2647, 14, 1, '2020-05-22 21:22:16', NULL),
(930, 2647, 15, 1, '2020-05-22 21:22:16', NULL),
(931, 2648, 1, 3, '2020-05-22 21:22:16', NULL),
(932, 2648, 2, 3, '2020-05-22 21:22:16', NULL),
(933, 2648, 3, 3, '2020-05-22 21:22:16', NULL),
(934, 2648, 4, 3, '2020-05-22 21:22:16', NULL),
(935, 2648, 5, 3, '2020-05-22 21:22:16', NULL),
(936, 2648, 6, 2, '2020-05-22 21:22:16', NULL),
(937, 2648, 7, 2, '2020-05-22 21:22:16', NULL),
(938, 2648, 8, 2, '2020-05-22 21:22:16', NULL),
(939, 2648, 9, 2, '2020-05-22 21:22:16', NULL),
(940, 2648, 10, 2, '2020-05-22 21:22:16', NULL),
(941, 2648, 11, 1, '2020-05-22 21:22:16', NULL),
(942, 2648, 12, 1, '2020-05-22 21:22:16', NULL),
(943, 2648, 13, 1, '2020-05-22 21:22:16', NULL),
(944, 2648, 14, 1, '2020-05-22 21:22:16', NULL),
(945, 2648, 15, 1, '2020-05-22 21:22:16', NULL),
(946, 2649, 1, 3, '2020-05-22 21:22:16', NULL),
(947, 2649, 2, 3, '2020-05-22 21:22:16', NULL),
(948, 2649, 3, 3, '2020-05-22 21:22:16', NULL),
(949, 2649, 4, 3, '2020-05-22 21:22:16', NULL),
(950, 2649, 5, 3, '2020-05-22 21:22:16', NULL),
(951, 2649, 6, 2, '2020-05-22 21:22:16', NULL),
(952, 2649, 7, 2, '2020-05-22 21:22:16', NULL),
(953, 2649, 8, 2, '2020-05-22 21:22:16', NULL),
(954, 2649, 9, 2, '2020-05-22 21:22:16', NULL),
(955, 2649, 10, 2, '2020-05-22 21:22:16', NULL),
(956, 2649, 11, 1, '2020-05-22 21:22:16', NULL),
(957, 2649, 12, 1, '2020-05-22 21:22:16', NULL),
(958, 2649, 13, 1, '2020-05-22 21:22:16', NULL),
(959, 2649, 14, 1, '2020-05-22 21:22:16', NULL),
(960, 2649, 15, 1, '2020-05-22 21:22:16', NULL),
(961, 2650, 1, 3, '2020-05-22 21:22:16', NULL),
(962, 2650, 2, 3, '2020-05-22 21:22:16', NULL),
(963, 2650, 3, 3, '2020-05-22 21:22:16', NULL),
(964, 2650, 4, 3, '2020-05-22 21:22:16', NULL),
(965, 2650, 5, 3, '2020-05-22 21:22:16', NULL),
(966, 2650, 6, 2, '2020-05-22 21:22:16', NULL),
(967, 2650, 7, 2, '2020-05-22 21:22:16', NULL),
(968, 2650, 8, 2, '2020-05-22 21:22:16', NULL),
(969, 2650, 9, 2, '2020-05-22 21:22:16', NULL),
(970, 2650, 10, 2, '2020-05-22 21:22:16', NULL),
(971, 2650, 11, 1, '2020-05-22 21:22:16', NULL),
(972, 2650, 12, 1, '2020-05-22 21:22:16', NULL),
(973, 2650, 13, 1, '2020-05-22 21:22:16', NULL),
(974, 2650, 14, 1, '2020-05-22 21:22:16', NULL),
(975, 2650, 15, 1, '2020-05-22 21:22:16', NULL),
(976, 2651, 1, 3, '2020-05-22 21:22:16', NULL),
(977, 2651, 2, 3, '2020-05-22 21:22:16', NULL),
(978, 2651, 3, 3, '2020-05-22 21:22:16', NULL),
(979, 2651, 4, 3, '2020-05-22 21:22:16', NULL),
(980, 2651, 5, 3, '2020-05-22 21:22:16', NULL),
(981, 2651, 6, 2, '2020-05-22 21:22:16', NULL),
(982, 2651, 7, 2, '2020-05-22 21:22:16', NULL),
(983, 2651, 8, 2, '2020-05-22 21:22:16', NULL),
(984, 2651, 9, 2, '2020-05-22 21:22:16', NULL),
(985, 2651, 10, 2, '2020-05-22 21:22:16', NULL),
(986, 2651, 11, 1, '2020-05-22 21:22:16', NULL),
(987, 2651, 12, 1, '2020-05-22 21:22:16', NULL),
(988, 2651, 13, 1, '2020-05-22 21:22:16', NULL),
(989, 2651, 14, 1, '2020-05-22 21:22:16', NULL),
(990, 2651, 15, 1, '2020-05-22 21:22:16', NULL),
(991, 2652, 1, 3, '2020-05-22 21:22:16', NULL),
(992, 2652, 2, 3, '2020-05-22 21:22:16', NULL),
(993, 2652, 3, 3, '2020-05-22 21:22:16', NULL),
(994, 2652, 4, 3, '2020-05-22 21:22:16', NULL),
(995, 2652, 5, 3, '2020-05-22 21:22:16', NULL),
(996, 2652, 6, 2, '2020-05-22 21:22:16', NULL),
(997, 2652, 7, 2, '2020-05-22 21:22:16', NULL),
(998, 2652, 8, 2, '2020-05-22 21:22:16', NULL),
(999, 2652, 9, 2, '2020-05-22 21:22:16', NULL),
(1000, 2652, 10, 2, '2020-05-22 21:22:16', NULL),
(1001, 2652, 11, 1, '2020-05-22 21:22:16', NULL),
(1002, 2652, 12, 1, '2020-05-22 21:22:16', NULL),
(1003, 2652, 13, 1, '2020-05-22 21:22:16', NULL),
(1004, 2652, 14, 1, '2020-05-22 21:22:16', NULL),
(1005, 2652, 15, 1, '2020-05-22 21:22:16', NULL),
(1006, 2583, 1, 3, '2020-05-22 21:22:16', NULL),
(1007, 2583, 2, 3, '2020-05-22 21:22:16', NULL),
(1008, 2583, 3, 3, '2020-05-22 21:22:16', NULL),
(1009, 2583, 4, 3, '2020-05-22 21:22:16', NULL),
(1010, 2583, 5, 3, '2020-05-22 21:22:16', NULL),
(1011, 2583, 6, 2, '2020-05-22 21:22:16', NULL),
(1012, 2583, 7, 2, '2020-05-22 21:22:16', NULL),
(1013, 2583, 8, 2, '2020-05-22 21:22:16', NULL),
(1014, 2583, 9, 2, '2020-05-22 21:22:16', NULL),
(1015, 2583, 10, 2, '2020-05-22 21:22:16', NULL),
(1016, 2583, 11, 1, '2020-05-22 21:22:16', NULL),
(1017, 2583, 12, 1, '2020-05-22 21:22:16', NULL),
(1018, 2583, 13, 1, '2020-05-22 21:22:16', NULL),
(1019, 2583, 14, 1, '2020-05-22 21:22:16', NULL),
(1020, 2583, 15, 1, '2020-05-22 21:22:16', NULL),
(1021, 2584, 1, 3, '2020-05-22 21:22:16', NULL),
(1022, 2584, 2, 3, '2020-05-22 21:22:16', NULL),
(1023, 2584, 3, 3, '2020-05-22 21:22:16', NULL),
(1024, 2584, 4, 3, '2020-05-22 21:22:16', NULL),
(1025, 2584, 5, 3, '2020-05-22 21:22:16', NULL),
(1026, 2584, 6, 2, '2020-05-22 21:22:16', NULL),
(1027, 2584, 7, 2, '2020-05-22 21:22:16', NULL),
(1028, 2584, 8, 2, '2020-05-22 21:22:16', NULL),
(1029, 2584, 9, 2, '2020-05-22 21:22:16', NULL),
(1030, 2584, 10, 2, '2020-05-22 21:22:16', NULL),
(1031, 2584, 11, 1, '2020-05-22 21:22:16', NULL),
(1032, 2584, 12, 1, '2020-05-22 21:22:16', NULL),
(1033, 2584, 13, 1, '2020-05-22 21:22:16', NULL),
(1034, 2584, 14, 1, '2020-05-22 21:22:16', NULL),
(1035, 2584, 15, 1, '2020-05-22 21:22:16', NULL),
(1036, 2585, 1, 3, '2020-05-22 21:22:16', NULL),
(1037, 2585, 2, 3, '2020-05-22 21:22:16', NULL),
(1038, 2585, 3, 3, '2020-05-22 21:22:16', NULL),
(1039, 2585, 4, 3, '2020-05-22 21:22:16', NULL),
(1040, 2585, 5, 3, '2020-05-22 21:22:16', NULL),
(1041, 2585, 6, 2, '2020-05-22 21:22:16', NULL),
(1042, 2585, 7, 2, '2020-05-22 21:22:16', NULL),
(1043, 2585, 8, 2, '2020-05-22 21:22:16', NULL),
(1044, 2585, 9, 2, '2020-05-22 21:22:16', NULL),
(1045, 2585, 10, 2, '2020-05-22 21:22:16', NULL),
(1046, 2585, 11, 1, '2020-05-22 21:22:16', NULL),
(1047, 2585, 12, 1, '2020-05-22 21:22:16', NULL),
(1048, 2585, 13, 1, '2020-05-22 21:22:16', NULL),
(1049, 2585, 14, 1, '2020-05-22 21:22:16', NULL),
(1050, 2585, 15, 1, '2020-05-22 21:22:16', NULL),
(1051, 2586, 1, 3, '2020-05-22 21:22:16', NULL),
(1052, 2586, 2, 3, '2020-05-22 21:22:16', NULL),
(1053, 2586, 3, 3, '2020-05-22 21:22:16', NULL),
(1054, 2586, 4, 3, '2020-05-22 21:22:16', NULL),
(1055, 2586, 5, 3, '2020-05-22 21:22:16', NULL),
(1056, 2586, 6, 2, '2020-05-22 21:22:16', NULL),
(1057, 2586, 7, 2, '2020-05-22 21:22:16', NULL),
(1058, 2586, 8, 2, '2020-05-22 21:22:16', NULL),
(1059, 2586, 9, 2, '2020-05-22 21:22:16', NULL),
(1060, 2586, 10, 2, '2020-05-22 21:22:16', NULL),
(1061, 2586, 11, 1, '2020-05-22 21:22:16', NULL),
(1062, 2586, 12, 1, '2020-05-22 21:22:16', NULL),
(1063, 2586, 13, 1, '2020-05-22 21:22:16', NULL),
(1064, 2586, 14, 1, '2020-05-22 21:22:16', NULL),
(1065, 2586, 15, 1, '2020-05-22 21:22:16', NULL),
(1066, 2587, 1, 3, '2020-05-22 21:22:16', NULL),
(1067, 2587, 2, 3, '2020-05-22 21:22:16', NULL),
(1068, 2587, 3, 3, '2020-05-22 21:22:16', NULL),
(1069, 2587, 4, 3, '2020-05-22 21:22:16', NULL),
(1070, 2587, 5, 3, '2020-05-22 21:22:16', NULL),
(1071, 2587, 6, 2, '2020-05-22 21:22:16', NULL),
(1072, 2587, 7, 2, '2020-05-22 21:22:16', NULL),
(1073, 2587, 8, 2, '2020-05-22 21:22:16', NULL),
(1074, 2587, 9, 2, '2020-05-22 21:22:16', NULL),
(1075, 2587, 10, 2, '2020-05-22 21:22:16', NULL);
INSERT INTO `talent_competence` (`id`, `talent_id`, `competence_id`, `weight`, `created_at`, `updated_at`) VALUES
(1076, 2587, 11, 1, '2020-05-22 21:22:16', NULL),
(1077, 2587, 12, 1, '2020-05-22 21:22:16', NULL),
(1078, 2587, 13, 1, '2020-05-22 21:22:16', NULL),
(1079, 2587, 14, 1, '2020-05-22 21:22:16', NULL),
(1080, 2587, 15, 1, '2020-05-22 21:22:16', NULL),
(1081, 2588, 1, 3, '2020-05-22 21:22:16', NULL),
(1082, 2588, 2, 3, '2020-05-22 21:22:16', NULL),
(1083, 2588, 3, 3, '2020-05-22 21:22:16', NULL),
(1084, 2588, 4, 3, '2020-05-22 21:22:16', NULL),
(1085, 2588, 5, 3, '2020-05-22 21:22:16', NULL),
(1086, 2588, 6, 2, '2020-05-22 21:22:16', NULL),
(1087, 2588, 7, 2, '2020-05-22 21:22:16', NULL),
(1088, 2588, 8, 2, '2020-05-22 21:22:16', NULL),
(1089, 2588, 9, 2, '2020-05-22 21:22:16', NULL),
(1090, 2588, 10, 2, '2020-05-22 21:22:16', NULL),
(1091, 2588, 11, 1, '2020-05-22 21:22:16', NULL),
(1092, 2588, 12, 1, '2020-05-22 21:22:16', NULL),
(1093, 2588, 13, 1, '2020-05-22 21:22:16', NULL),
(1094, 2588, 14, 1, '2020-05-22 21:22:16', NULL),
(1095, 2588, 15, 1, '2020-05-22 21:22:16', NULL),
(1096, 2589, 1, 3, '2020-05-22 21:22:16', NULL),
(1097, 2589, 2, 3, '2020-05-22 21:22:16', NULL),
(1098, 2589, 3, 3, '2020-05-22 21:22:16', NULL),
(1099, 2589, 4, 3, '2020-05-22 21:22:17', NULL),
(1100, 2589, 5, 3, '2020-05-22 21:22:17', NULL),
(1101, 2589, 6, 2, '2020-05-22 21:22:17', NULL),
(1102, 2589, 7, 2, '2020-05-22 21:22:17', NULL),
(1103, 2589, 8, 2, '2020-05-22 21:22:17', NULL),
(1104, 2589, 9, 2, '2020-05-22 21:22:17', NULL),
(1105, 2589, 10, 2, '2020-05-22 21:22:17', NULL),
(1106, 2589, 11, 1, '2020-05-22 21:22:17', NULL),
(1107, 2589, 12, 1, '2020-05-22 21:22:17', NULL),
(1108, 2589, 13, 1, '2020-05-22 21:22:17', NULL),
(1109, 2589, 14, 1, '2020-05-22 21:22:17', NULL),
(1110, 2589, 15, 1, '2020-05-22 21:22:17', NULL),
(1111, 2590, 1, 3, '2020-05-22 21:22:17', NULL),
(1112, 2590, 2, 3, '2020-05-22 21:22:17', NULL),
(1113, 2590, 3, 3, '2020-05-22 21:22:17', NULL),
(1114, 2590, 4, 3, '2020-05-22 21:22:17', NULL),
(1115, 2590, 5, 3, '2020-05-22 21:22:17', NULL),
(1116, 2590, 6, 2, '2020-05-22 21:22:17', NULL),
(1117, 2590, 7, 2, '2020-05-22 21:22:17', NULL),
(1118, 2590, 8, 2, '2020-05-22 21:22:17', NULL),
(1119, 2590, 9, 2, '2020-05-22 21:22:17', NULL),
(1120, 2590, 10, 2, '2020-05-22 21:22:17', NULL),
(1121, 2590, 11, 1, '2020-05-22 21:22:17', NULL),
(1122, 2590, 12, 1, '2020-05-22 21:22:17', NULL),
(1123, 2590, 13, 1, '2020-05-22 21:22:17', NULL),
(1124, 2590, 14, 1, '2020-05-22 21:22:17', NULL),
(1125, 2590, 15, 1, '2020-05-22 21:22:17', NULL),
(1126, 2591, 1, 3, '2020-05-22 21:22:17', NULL),
(1127, 2591, 2, 3, '2020-05-22 21:22:17', NULL),
(1128, 2591, 3, 3, '2020-05-22 21:22:17', NULL),
(1129, 2591, 4, 3, '2020-05-22 21:22:17', NULL),
(1130, 2591, 5, 3, '2020-05-22 21:22:17', NULL),
(1131, 2591, 6, 2, '2020-05-22 21:22:17', NULL),
(1132, 2591, 7, 2, '2020-05-22 21:22:17', NULL),
(1133, 2591, 8, 2, '2020-05-22 21:22:17', NULL),
(1134, 2591, 9, 2, '2020-05-22 21:22:17', NULL),
(1135, 2591, 10, 2, '2020-05-22 21:22:17', NULL),
(1136, 2591, 11, 1, '2020-05-22 21:22:17', NULL),
(1137, 2591, 12, 1, '2020-05-22 21:22:17', NULL),
(1138, 2591, 13, 1, '2020-05-22 21:22:17', NULL),
(1139, 2591, 14, 1, '2020-05-22 21:22:17', NULL),
(1140, 2591, 15, 1, '2020-05-22 21:22:17', NULL),
(1141, 2592, 1, 3, '2020-05-22 21:22:17', NULL),
(1142, 2592, 2, 3, '2020-05-22 21:22:17', NULL),
(1143, 2592, 3, 3, '2020-05-22 21:22:17', NULL),
(1144, 2592, 4, 3, '2020-05-22 21:22:17', NULL),
(1145, 2592, 5, 3, '2020-05-22 21:22:17', NULL),
(1146, 2592, 6, 2, '2020-05-22 21:22:17', NULL),
(1147, 2592, 7, 2, '2020-05-22 21:22:17', NULL),
(1148, 2592, 8, 2, '2020-05-22 21:22:17', NULL),
(1149, 2592, 9, 2, '2020-05-22 21:22:17', NULL),
(1150, 2592, 10, 2, '2020-05-22 21:22:17', NULL),
(1151, 2592, 11, 1, '2020-05-22 21:22:17', NULL),
(1152, 2592, 12, 1, '2020-05-22 21:22:17', NULL),
(1153, 2592, 13, 1, '2020-05-22 21:22:17', NULL),
(1154, 2592, 14, 1, '2020-05-22 21:22:17', NULL),
(1155, 2592, 15, 1, '2020-05-22 21:22:17', NULL),
(1156, 2593, 1, 3, '2020-05-22 21:22:17', NULL),
(1157, 2593, 2, 3, '2020-05-22 21:22:17', NULL),
(1158, 2593, 3, 3, '2020-05-22 21:22:17', NULL),
(1159, 2593, 4, 3, '2020-05-22 21:22:17', NULL),
(1160, 2593, 5, 3, '2020-05-22 21:22:17', NULL),
(1161, 2593, 6, 2, '2020-05-22 21:22:17', NULL),
(1162, 2593, 7, 2, '2020-05-22 21:22:17', NULL),
(1163, 2593, 8, 2, '2020-05-22 21:22:17', NULL),
(1164, 2593, 9, 2, '2020-05-22 21:22:17', NULL),
(1165, 2593, 10, 2, '2020-05-22 21:22:17', NULL),
(1166, 2593, 11, 1, '2020-05-22 21:22:17', NULL),
(1167, 2593, 12, 1, '2020-05-22 21:22:17', NULL),
(1168, 2593, 13, 1, '2020-05-22 21:22:17', NULL),
(1169, 2593, 14, 1, '2020-05-22 21:22:17', NULL),
(1170, 2593, 15, 1, '2020-05-22 21:22:17', NULL),
(1171, 2618, 1, 3, '2020-05-22 21:22:17', NULL),
(1172, 2618, 2, 3, '2020-05-22 21:22:17', NULL),
(1173, 2618, 3, 3, '2020-05-22 21:22:17', NULL),
(1174, 2618, 4, 3, '2020-05-22 21:22:17', NULL),
(1175, 2618, 5, 3, '2020-05-22 21:22:17', NULL),
(1176, 2618, 6, 2, '2020-05-22 21:22:17', NULL),
(1177, 2618, 7, 2, '2020-05-22 21:22:17', NULL),
(1178, 2618, 8, 2, '2020-05-22 21:22:17', NULL),
(1179, 2618, 9, 2, '2020-05-22 21:22:17', NULL),
(1180, 2618, 10, 2, '2020-05-22 21:22:17', NULL),
(1181, 2618, 11, 1, '2020-05-22 21:22:17', NULL),
(1182, 2618, 12, 1, '2020-05-22 21:22:17', NULL),
(1183, 2618, 13, 1, '2020-05-22 21:22:17', NULL),
(1184, 2618, 14, 1, '2020-05-22 21:22:17', NULL),
(1185, 2618, 15, 1, '2020-05-22 21:22:17', NULL),
(1186, 2619, 1, 3, '2020-05-22 21:22:17', NULL),
(1187, 2619, 2, 3, '2020-05-22 21:22:17', NULL),
(1188, 2619, 3, 3, '2020-05-22 21:22:17', NULL),
(1189, 2619, 4, 3, '2020-05-22 21:22:17', NULL),
(1190, 2619, 5, 3, '2020-05-22 21:22:17', NULL),
(1191, 2619, 6, 2, '2020-05-22 21:22:17', NULL),
(1192, 2619, 7, 2, '2020-05-22 21:22:17', NULL),
(1193, 2619, 8, 2, '2020-05-22 21:22:17', NULL),
(1194, 2619, 9, 2, '2020-05-22 21:22:17', NULL),
(1195, 2619, 10, 2, '2020-05-22 21:22:17', NULL),
(1196, 2619, 11, 1, '2020-05-22 21:22:17', NULL),
(1197, 2619, 12, 1, '2020-05-22 21:22:17', NULL),
(1198, 2619, 13, 1, '2020-05-22 21:22:17', NULL),
(1199, 2619, 14, 1, '2020-05-22 21:22:17', NULL),
(1200, 2619, 15, 1, '2020-05-22 21:22:17', NULL),
(1201, 2620, 1, 3, '2020-05-22 21:22:17', NULL),
(1202, 2620, 2, 3, '2020-05-22 21:22:17', NULL),
(1203, 2620, 3, 3, '2020-05-22 21:22:17', NULL),
(1204, 2620, 4, 3, '2020-05-22 21:22:17', NULL),
(1205, 2620, 5, 3, '2020-05-22 21:22:17', NULL),
(1206, 2620, 6, 2, '2020-05-22 21:22:17', NULL),
(1207, 2620, 7, 2, '2020-05-22 21:22:17', NULL),
(1208, 2620, 8, 2, '2020-05-22 21:22:17', NULL),
(1209, 2620, 9, 2, '2020-05-22 21:22:17', NULL),
(1210, 2620, 10, 2, '2020-05-22 21:22:17', NULL),
(1211, 2620, 11, 1, '2020-05-22 21:22:17', NULL),
(1212, 2620, 12, 1, '2020-05-22 21:22:17', NULL),
(1213, 2620, 13, 1, '2020-05-22 21:22:17', NULL),
(1214, 2620, 14, 1, '2020-05-22 21:22:17', NULL),
(1215, 2620, 15, 1, '2020-05-22 21:22:17', NULL),
(1216, 2622, 1, 3, '2020-05-22 21:22:17', NULL),
(1217, 2622, 2, 3, '2020-05-22 21:22:17', NULL),
(1218, 2622, 3, 3, '2020-05-22 21:22:17', NULL),
(1219, 2622, 4, 3, '2020-05-22 21:22:17', NULL),
(1220, 2622, 5, 3, '2020-05-22 21:22:17', NULL),
(1221, 2622, 6, 2, '2020-05-22 21:22:17', NULL),
(1222, 2622, 7, 2, '2020-05-22 21:22:17', NULL),
(1223, 2622, 8, 2, '2020-05-22 21:22:17', NULL),
(1224, 2622, 9, 2, '2020-05-22 21:22:17', NULL),
(1225, 2622, 10, 2, '2020-05-22 21:22:17', NULL),
(1226, 2622, 11, 1, '2020-05-22 21:22:17', NULL),
(1227, 2622, 12, 1, '2020-05-22 21:22:17', NULL),
(1228, 2622, 13, 1, '2020-05-22 21:22:17', NULL),
(1229, 2622, 14, 1, '2020-05-22 21:22:17', NULL),
(1230, 2622, 15, 1, '2020-05-22 21:22:17', NULL),
(1231, 2623, 1, 3, '2020-05-22 21:22:17', NULL),
(1232, 2623, 2, 3, '2020-05-22 21:22:17', NULL),
(1233, 2623, 3, 3, '2020-05-22 21:22:17', NULL),
(1234, 2623, 4, 3, '2020-05-22 21:22:17', NULL),
(1235, 2623, 5, 3, '2020-05-22 21:22:17', NULL),
(1236, 2623, 6, 2, '2020-05-22 21:22:17', NULL),
(1237, 2623, 7, 2, '2020-05-22 21:22:17', NULL),
(1238, 2623, 8, 2, '2020-05-22 21:22:17', NULL),
(1239, 2623, 9, 2, '2020-05-22 21:22:17', NULL),
(1240, 2623, 10, 2, '2020-05-22 21:22:17', NULL),
(1241, 2623, 11, 1, '2020-05-22 21:22:17', NULL),
(1242, 2623, 12, 1, '2020-05-22 21:22:17', NULL),
(1243, 2623, 13, 1, '2020-05-22 21:22:17', NULL),
(1244, 2623, 14, 1, '2020-05-22 21:22:17', NULL),
(1245, 2623, 15, 1, '2020-05-22 21:22:17', NULL),
(1246, 2624, 1, 3, '2020-05-22 21:22:17', NULL),
(1247, 2624, 2, 3, '2020-05-22 21:22:17', NULL),
(1248, 2624, 3, 3, '2020-05-22 21:22:17', NULL),
(1249, 2624, 4, 3, '2020-05-22 21:22:17', NULL),
(1250, 2624, 5, 3, '2020-05-22 21:22:17', NULL),
(1251, 2624, 6, 2, '2020-05-22 21:22:17', NULL),
(1252, 2624, 7, 2, '2020-05-22 21:22:17', NULL),
(1253, 2624, 8, 2, '2020-05-22 21:22:17', NULL),
(1254, 2624, 9, 2, '2020-05-22 21:22:17', NULL),
(1255, 2624, 10, 2, '2020-05-22 21:22:17', NULL),
(1256, 2624, 11, 1, '2020-05-22 21:22:17', NULL),
(1257, 2624, 12, 1, '2020-05-22 21:22:17', NULL),
(1258, 2624, 13, 1, '2020-05-22 21:22:17', NULL),
(1259, 2624, 14, 1, '2020-05-22 21:22:17', NULL),
(1260, 2624, 15, 1, '2020-05-22 21:22:17', NULL),
(1261, 2625, 1, 3, '2020-05-22 21:22:17', NULL),
(1262, 2625, 2, 3, '2020-05-22 21:22:17', NULL),
(1263, 2625, 3, 3, '2020-05-22 21:22:17', NULL),
(1264, 2625, 4, 3, '2020-05-22 21:22:17', NULL),
(1265, 2625, 5, 3, '2020-05-22 21:22:17', NULL),
(1266, 2625, 6, 2, '2020-05-22 21:22:17', NULL),
(1267, 2625, 7, 2, '2020-05-22 21:22:17', NULL),
(1268, 2625, 8, 2, '2020-05-22 21:22:17', NULL),
(1269, 2625, 9, 2, '2020-05-22 21:22:17', NULL),
(1270, 2625, 10, 2, '2020-05-22 21:22:17', NULL),
(1271, 2625, 11, 1, '2020-05-22 21:22:17', NULL),
(1272, 2625, 12, 1, '2020-05-22 21:22:17', NULL),
(1273, 2625, 13, 1, '2020-05-22 21:22:17', NULL),
(1274, 2625, 14, 1, '2020-05-22 21:22:17', NULL),
(1275, 2625, 15, 1, '2020-05-22 21:22:17', NULL),
(1276, 2627, 1, 3, '2020-05-22 21:22:17', NULL),
(1277, 2627, 2, 3, '2020-05-22 21:22:17', NULL),
(1278, 2627, 3, 3, '2020-05-22 21:22:17', NULL),
(1279, 2627, 4, 3, '2020-05-22 21:22:17', NULL),
(1280, 2627, 5, 3, '2020-05-22 21:22:17', NULL),
(1281, 2627, 6, 2, '2020-05-22 21:22:17', NULL),
(1282, 2627, 7, 2, '2020-05-22 21:22:17', NULL),
(1283, 2627, 8, 2, '2020-05-22 21:22:17', NULL),
(1284, 2627, 9, 2, '2020-05-22 21:22:17', NULL),
(1285, 2627, 10, 2, '2020-05-22 21:22:17', NULL),
(1286, 2627, 11, 1, '2020-05-22 21:22:17', NULL),
(1287, 2627, 12, 1, '2020-05-22 21:22:17', NULL),
(1288, 2627, 13, 1, '2020-05-22 21:22:17', NULL),
(1289, 2627, 14, 1, '2020-05-22 21:22:17', NULL),
(1290, 2627, 15, 1, '2020-05-22 21:22:17', NULL),
(1291, 2628, 1, 3, '2020-05-22 21:22:17', NULL),
(1292, 2628, 2, 3, '2020-05-22 21:22:17', NULL),
(1293, 2628, 3, 3, '2020-05-22 21:22:17', NULL),
(1294, 2628, 4, 3, '2020-05-22 21:22:17', NULL),
(1295, 2628, 5, 3, '2020-05-22 21:22:17', NULL),
(1296, 2628, 6, 2, '2020-05-22 21:22:17', NULL),
(1297, 2628, 7, 2, '2020-05-22 21:22:17', NULL),
(1298, 2628, 8, 2, '2020-05-22 21:22:17', NULL),
(1299, 2628, 9, 2, '2020-05-22 21:22:17', NULL),
(1300, 2628, 10, 2, '2020-05-22 21:22:17', NULL),
(1301, 2628, 11, 1, '2020-05-22 21:22:17', NULL),
(1302, 2628, 12, 1, '2020-05-22 21:22:17', NULL),
(1303, 2628, 13, 1, '2020-05-22 21:22:17', NULL),
(1304, 2628, 14, 1, '2020-05-22 21:22:17', NULL),
(1305, 2628, 15, 1, '2020-05-22 21:22:17', NULL),
(1306, 2629, 1, 3, '2020-05-22 21:22:17', NULL),
(1307, 2629, 2, 3, '2020-05-22 21:22:17', NULL),
(1308, 2629, 3, 3, '2020-05-22 21:22:17', NULL),
(1309, 2629, 4, 3, '2020-05-22 21:22:17', NULL),
(1310, 2629, 5, 3, '2020-05-22 21:22:17', NULL),
(1311, 2629, 6, 2, '2020-05-22 21:22:17', NULL),
(1312, 2629, 7, 2, '2020-05-22 21:22:17', NULL),
(1313, 2629, 8, 2, '2020-05-22 21:22:17', NULL),
(1314, 2629, 9, 2, '2020-05-22 21:22:17', NULL),
(1315, 2629, 10, 2, '2020-05-22 21:22:17', NULL),
(1316, 2629, 11, 1, '2020-05-22 21:22:17', NULL),
(1317, 2629, 12, 1, '2020-05-22 21:22:17', NULL),
(1318, 2629, 13, 1, '2020-05-22 21:22:17', NULL),
(1319, 2629, 14, 1, '2020-05-22 21:22:17', NULL),
(1320, 2629, 15, 1, '2020-05-22 21:22:17', NULL),
(1321, 2630, 1, 3, '2020-05-22 21:22:17', NULL),
(1322, 2630, 2, 3, '2020-05-22 21:22:17', NULL),
(1323, 2630, 3, 3, '2020-05-22 21:22:17', NULL),
(1324, 2630, 4, 3, '2020-05-22 21:22:17', NULL),
(1325, 2630, 5, 3, '2020-05-22 21:22:17', NULL),
(1326, 2630, 6, 2, '2020-05-22 21:22:17', NULL),
(1327, 2630, 7, 2, '2020-05-22 21:22:17', NULL),
(1328, 2630, 8, 2, '2020-05-22 21:22:17', NULL),
(1329, 2630, 9, 2, '2020-05-22 21:22:17', NULL),
(1330, 2630, 10, 2, '2020-05-22 21:22:17', NULL),
(1331, 2630, 11, 1, '2020-05-22 21:22:17', NULL),
(1332, 2630, 12, 1, '2020-05-22 21:22:17', NULL),
(1333, 2630, 13, 1, '2020-05-22 21:22:17', NULL),
(1334, 2630, 14, 1, '2020-05-22 21:22:17', NULL),
(1335, 2630, 15, 1, '2020-05-22 21:22:17', NULL),
(1336, 2653, 1, 3, '2020-05-22 21:22:17', NULL),
(1337, 2653, 2, 3, '2020-05-22 21:22:17', NULL),
(1338, 2653, 3, 3, '2020-05-22 21:22:17', NULL),
(1339, 2653, 4, 3, '2020-05-22 21:22:17', NULL),
(1340, 2653, 5, 3, '2020-05-22 21:22:17', NULL),
(1341, 2653, 6, 2, '2020-05-22 21:22:17', NULL),
(1342, 2653, 7, 2, '2020-05-22 21:22:17', NULL),
(1343, 2653, 8, 2, '2020-05-22 21:22:17', NULL),
(1344, 2653, 9, 2, '2020-05-22 21:22:17', NULL),
(1345, 2653, 10, 2, '2020-05-22 21:22:17', NULL),
(1346, 2653, 11, 1, '2020-05-22 21:22:17', NULL),
(1347, 2653, 12, 1, '2020-05-22 21:22:17', NULL),
(1348, 2653, 13, 1, '2020-05-22 21:22:17', NULL),
(1349, 2653, 14, 1, '2020-05-22 21:22:17', NULL),
(1350, 2653, 15, 1, '2020-05-22 21:22:17', NULL),
(1351, 2654, 1, 3, '2020-05-22 21:22:17', NULL),
(1352, 2654, 2, 3, '2020-05-22 21:22:17', NULL),
(1353, 2654, 3, 3, '2020-05-22 21:22:17', NULL),
(1354, 2654, 4, 3, '2020-05-22 21:22:17', NULL),
(1355, 2654, 5, 3, '2020-05-22 21:22:17', NULL),
(1356, 2654, 6, 2, '2020-05-22 21:22:17', NULL),
(1357, 2654, 7, 2, '2020-05-22 21:22:17', NULL),
(1358, 2654, 8, 2, '2020-05-22 21:22:17', NULL),
(1359, 2654, 9, 2, '2020-05-22 21:22:17', NULL),
(1360, 2654, 10, 2, '2020-05-22 21:22:17', NULL),
(1361, 2654, 11, 1, '2020-05-22 21:22:17', NULL),
(1362, 2654, 12, 1, '2020-05-22 21:22:17', NULL),
(1363, 2654, 13, 1, '2020-05-22 21:22:17', NULL),
(1364, 2654, 14, 1, '2020-05-22 21:22:17', NULL),
(1365, 2654, 15, 1, '2020-05-22 21:22:17', NULL),
(1366, 2655, 1, 3, '2020-05-22 21:22:17', NULL),
(1367, 2655, 2, 3, '2020-05-22 21:22:17', NULL),
(1368, 2655, 3, 3, '2020-05-22 21:22:17', NULL),
(1369, 2655, 4, 3, '2020-05-22 21:22:17', NULL),
(1370, 2655, 5, 3, '2020-05-22 21:22:17', NULL),
(1371, 2655, 6, 2, '2020-05-22 21:22:17', NULL),
(1372, 2655, 7, 2, '2020-05-22 21:22:17', NULL),
(1373, 2655, 8, 2, '2020-05-22 21:22:17', NULL),
(1374, 2655, 9, 2, '2020-05-22 21:22:17', NULL),
(1375, 2655, 10, 2, '2020-05-22 21:22:17', NULL),
(1376, 2655, 11, 1, '2020-05-22 21:22:17', NULL),
(1377, 2655, 12, 1, '2020-05-22 21:22:17', NULL),
(1378, 2655, 13, 1, '2020-05-22 21:22:17', NULL),
(1379, 2655, 14, 1, '2020-05-22 21:22:17', NULL),
(1380, 2655, 15, 1, '2020-05-22 21:22:17', NULL),
(1381, 2656, 1, 3, '2020-05-22 21:22:17', NULL),
(1382, 2656, 2, 3, '2020-05-22 21:22:17', NULL),
(1383, 2656, 3, 3, '2020-05-22 21:22:17', NULL),
(1384, 2656, 4, 3, '2020-05-22 21:22:17', NULL),
(1385, 2656, 5, 3, '2020-05-22 21:22:17', NULL),
(1386, 2656, 6, 2, '2020-05-22 21:22:17', NULL),
(1387, 2656, 7, 2, '2020-05-22 21:22:17', NULL),
(1388, 2656, 8, 2, '2020-05-22 21:22:17', NULL),
(1389, 2656, 9, 2, '2020-05-22 21:22:17', NULL),
(1390, 2656, 10, 2, '2020-05-22 21:22:17', NULL),
(1391, 2656, 11, 1, '2020-05-22 21:22:17', NULL),
(1392, 2656, 12, 1, '2020-05-22 21:22:17', NULL),
(1393, 2656, 13, 1, '2020-05-22 21:22:17', NULL),
(1394, 2656, 14, 1, '2020-05-22 21:22:17', NULL),
(1395, 2656, 15, 1, '2020-05-22 21:22:17', NULL),
(1396, 2657, 1, 3, '2020-05-22 21:22:17', NULL),
(1397, 2657, 2, 3, '2020-05-22 21:22:17', NULL),
(1398, 2657, 3, 3, '2020-05-22 21:22:17', NULL),
(1399, 2657, 4, 3, '2020-05-22 21:22:17', NULL),
(1400, 2657, 5, 3, '2020-05-22 21:22:17', NULL),
(1401, 2657, 6, 2, '2020-05-22 21:22:17', NULL),
(1402, 2657, 7, 2, '2020-05-22 21:22:17', NULL),
(1403, 2657, 8, 2, '2020-05-22 21:22:17', NULL),
(1404, 2657, 9, 2, '2020-05-22 21:22:17', NULL),
(1405, 2657, 10, 2, '2020-05-22 21:22:17', NULL),
(1406, 2657, 11, 1, '2020-05-22 21:22:17', NULL),
(1407, 2657, 12, 1, '2020-05-22 21:22:17', NULL),
(1408, 2657, 13, 1, '2020-05-22 21:22:17', NULL),
(1409, 2657, 14, 1, '2020-05-22 21:22:17', NULL),
(1410, 2657, 15, 1, '2020-05-22 21:22:17', NULL),
(1411, 2658, 1, 3, '2020-05-22 21:22:17', NULL),
(1412, 2658, 2, 3, '2020-05-22 21:22:17', NULL),
(1413, 2658, 3, 3, '2020-05-22 21:22:17', NULL),
(1414, 2658, 4, 3, '2020-05-22 21:22:17', NULL),
(1415, 2658, 5, 3, '2020-05-22 21:22:17', NULL),
(1416, 2658, 6, 2, '2020-05-22 21:22:17', NULL),
(1417, 2658, 7, 2, '2020-05-22 21:22:17', NULL),
(1418, 2658, 8, 2, '2020-05-22 21:22:17', NULL),
(1419, 2658, 9, 2, '2020-05-22 21:22:17', NULL),
(1420, 2658, 10, 2, '2020-05-22 21:22:17', NULL),
(1421, 2658, 11, 1, '2020-05-22 21:22:17', NULL),
(1422, 2658, 12, 1, '2020-05-22 21:22:17', NULL),
(1423, 2658, 13, 1, '2020-05-22 21:22:17', NULL),
(1424, 2658, 14, 1, '2020-05-22 21:22:17', NULL),
(1425, 2658, 15, 1, '2020-05-22 21:22:17', NULL),
(1426, 2659, 1, 3, '2020-05-22 21:22:17', NULL),
(1427, 2659, 2, 3, '2020-05-22 21:22:17', NULL),
(1428, 2659, 3, 3, '2020-05-22 21:22:17', NULL),
(1429, 2659, 4, 3, '2020-05-22 21:22:17', NULL),
(1430, 2659, 5, 3, '2020-05-22 21:22:17', NULL),
(1431, 2659, 6, 2, '2020-05-22 21:22:17', NULL),
(1432, 2659, 7, 2, '2020-05-22 21:22:17', NULL),
(1433, 2659, 8, 2, '2020-05-22 21:22:17', NULL),
(1434, 2659, 9, 2, '2020-05-22 21:22:17', NULL),
(1435, 2659, 10, 2, '2020-05-22 21:22:17', NULL),
(1436, 2659, 11, 1, '2020-05-22 21:22:17', NULL),
(1437, 2659, 12, 1, '2020-05-22 21:22:17', NULL),
(1438, 2659, 13, 1, '2020-05-22 21:22:17', NULL),
(1439, 2659, 14, 1, '2020-05-22 21:22:17', NULL),
(1440, 2659, 15, 1, '2020-05-22 21:22:17', NULL),
(1441, 2660, 1, 3, '2020-05-22 21:22:17', NULL),
(1442, 2660, 2, 3, '2020-05-22 21:22:17', NULL),
(1443, 2660, 3, 3, '2020-05-22 21:22:17', NULL),
(1444, 2660, 4, 3, '2020-05-22 21:22:17', NULL),
(1445, 2660, 5, 3, '2020-05-22 21:22:17', NULL),
(1446, 2660, 6, 2, '2020-05-22 21:22:17', NULL),
(1447, 2660, 7, 2, '2020-05-22 21:22:17', NULL),
(1448, 2660, 8, 2, '2020-05-22 21:22:17', NULL),
(1449, 2660, 9, 2, '2020-05-22 21:22:17', NULL),
(1450, 2660, 10, 2, '2020-05-22 21:22:17', NULL),
(1451, 2660, 11, 1, '2020-05-22 21:22:17', NULL),
(1452, 2660, 12, 1, '2020-05-22 21:22:17', NULL),
(1453, 2660, 13, 1, '2020-05-22 21:22:17', NULL),
(1454, 2660, 14, 1, '2020-05-22 21:22:17', NULL),
(1455, 2660, 15, 1, '2020-05-22 21:22:17', NULL),
(1456, 2661, 1, 3, '2020-05-22 21:22:17', NULL),
(1457, 2661, 2, 3, '2020-05-22 21:22:17', NULL),
(1458, 2661, 3, 3, '2020-05-22 21:22:17', NULL),
(1459, 2661, 4, 3, '2020-05-22 21:22:17', NULL),
(1460, 2661, 5, 3, '2020-05-22 21:22:17', NULL),
(1461, 2661, 6, 2, '2020-05-22 21:22:17', NULL),
(1462, 2661, 7, 2, '2020-05-22 21:22:17', NULL),
(1463, 2661, 8, 2, '2020-05-22 21:22:17', NULL),
(1464, 2661, 9, 2, '2020-05-22 21:22:17', NULL),
(1465, 2661, 10, 2, '2020-05-22 21:22:17', NULL),
(1466, 2661, 11, 1, '2020-05-22 21:22:17', NULL),
(1467, 2661, 12, 1, '2020-05-22 21:22:17', NULL),
(1468, 2661, 13, 1, '2020-05-22 21:22:17', NULL),
(1469, 2661, 14, 1, '2020-05-22 21:22:17', NULL),
(1470, 2661, 15, 1, '2020-05-22 21:22:17', NULL),
(1471, 2662, 1, 3, '2020-05-22 21:22:17', NULL),
(1472, 2662, 2, 3, '2020-05-22 21:22:17', NULL),
(1473, 2662, 3, 3, '2020-05-22 21:22:17', NULL),
(1474, 2662, 4, 3, '2020-05-22 21:22:17', NULL),
(1475, 2662, 5, 3, '2020-05-22 21:22:17', NULL),
(1476, 2662, 6, 2, '2020-05-22 21:22:17', NULL),
(1477, 2662, 7, 2, '2020-05-22 21:22:17', NULL),
(1478, 2662, 8, 2, '2020-05-22 21:22:17', NULL),
(1479, 2662, 9, 2, '2020-05-22 21:22:17', NULL),
(1480, 2662, 10, 2, '2020-05-22 21:22:17', NULL),
(1481, 2662, 11, 1, '2020-05-22 21:22:17', NULL),
(1482, 2662, 12, 1, '2020-05-22 21:22:17', NULL),
(1483, 2662, 13, 1, '2020-05-22 21:22:17', NULL),
(1484, 2662, 14, 1, '2020-05-22 21:22:17', NULL),
(1485, 2662, 15, 1, '2020-05-22 21:22:17', NULL),
(1486, 2663, 1, 3, '2020-05-22 21:22:17', NULL),
(1487, 2663, 2, 3, '2020-05-22 21:22:17', NULL),
(1488, 2663, 3, 3, '2020-05-22 21:22:17', NULL),
(1489, 2663, 4, 3, '2020-05-22 21:22:17', NULL),
(1490, 2663, 5, 3, '2020-05-22 21:22:17', NULL),
(1491, 2663, 6, 2, '2020-05-22 21:22:17', NULL),
(1492, 2663, 7, 2, '2020-05-22 21:22:17', NULL),
(1493, 2663, 8, 2, '2020-05-22 21:22:17', NULL),
(1494, 2663, 9, 2, '2020-05-22 21:22:17', NULL),
(1495, 2663, 10, 2, '2020-05-22 21:22:17', NULL),
(1496, 2663, 11, 1, '2020-05-22 21:22:17', NULL),
(1497, 2663, 12, 1, '2020-05-22 21:22:17', NULL),
(1498, 2663, 13, 1, '2020-05-22 21:22:17', NULL),
(1499, 2663, 14, 1, '2020-05-22 21:22:17', NULL),
(1500, 2663, 15, 1, '2020-05-22 21:22:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_course`
--

CREATE TABLE `talent_course` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `credits` int(11) NOT NULL DEFAULT 0,
  `qualification` float NOT NULL DEFAULT 0,
  `level` enum('Básico','Intermedio','Avanzado','Especializado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Básico',
  `file` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('inprogress','finished') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inprogress',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `talent_course`
--

INSERT INTO `talent_course` (`id`, `talent_id`, `course_id`, `points`, `credits`, `qualification`, `level`, `file`, `status`, `created_at`, `updated_at`) VALUES
(1, 2570, 1, 5, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(2, 2573, 3, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(3, 2574, 1, 3, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(4, 2575, 1, 4, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(5, 2576, 1, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(6, 2576, 3, 2, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(7, 2577, 1, 9, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(8, 2577, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(9, 2577, 3, 1, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(10, 2578, 3, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(11, 2579, 1, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(12, 2580, 1, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(13, 2580, 3, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(14, 2581, 1, 3, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(15, 2582, 3, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(16, 2583, 1, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(17, 2583, 2, 7, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(18, 2584, 1, 5, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(19, 2585, 1, 6, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(20, 2586, 1, 4, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(21, 2587, 2, 3, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(22, 2588, 2, 7, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(23, 2589, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(24, 2589, 1, 2, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(25, 2590, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(26, 2591, 1, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(27, 2591, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(28, 2591, 3, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(29, 2592, 2, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(30, 2593, 1, 9, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(31, 2594, 2, 2, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(32, 2594, 3, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(33, 2594, 1, 3, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(34, 2595, 3, 5, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(35, 2596, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(36, 2597, 3, 19, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(37, 2598, 2, 9, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(38, 2599, 2, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(39, 2601, 3, 7, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(40, 2601, 1, 6, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(41, 2602, 3, 7, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(42, 2603, 2, 8, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(43, 2604, 2, 10, 0, 0, 'Básico', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(44, 2605, 2, 6, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(45, 2605, 1, 5, 0, 0, 'Básico', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(46, 2606, 1, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(47, 2606, 2, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(48, 2606, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(49, 2608, 1, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(50, 2609, 2, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(51, 2609, 2, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(52, 2610, 1, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(53, 2611, 3, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(54, 2611, 2, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(55, 2611, 1, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(56, 2612, 2, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(57, 2613, 1, 14, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(58, 2614, 1, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(59, 2615, 2, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(60, 2616, 2, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(61, 2616, 1, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(62, 2617, 2, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(63, 2618, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(64, 2619, 3, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(65, 2620, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(66, 2622, 1, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(68, 2624, 2, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(69, 2625, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(70, 2627, 1, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(71, 2628, 2, 14, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(72, 2629, 1, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(73, 2629, 3, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(74, 2630, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(75, 2631, 2, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(76, 2632, 3, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(77, 2633, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(78, 2634, 2, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(79, 2635, 3, 13, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(80, 2636, 2, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(81, 2637, 2, 14, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(82, 2638, 3, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(83, 2638, 2, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(84, 2639, 2, 15, 0, 0, 'Intermedio', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(85, 2640, 3, 12, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(86, 2641, 2, 11, 0, 0, 'Intermedio', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(87, 2642, 2, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(88, 2643, 1, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(89, 2644, 1, 17, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(90, 2645, 2, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(91, 2646, 2, 19, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(92, 2647, 1, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(93, 2648, 1, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(94, 2649, 1, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(95, 2650, 2, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(96, 2651, 2, 17, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(97, 2652, 1, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(98, 2653, 1, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(99, 2654, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(100, 2655, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(101, 2656, 3, 19, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(102, 2657, 1, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(103, 2658, 3, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(104, 2659, 1, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(105, 2659, 3, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(106, 2660, 1, 19, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(107, 2661, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(108, 2662, 3, 17, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(109, 2663, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(110, 2664, 3, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(111, 2665, 2, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(112, 2666, 2, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(113, 2668, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(114, 2669, 2, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(115, 2670, 3, 16, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(116, 2671, 3, 19, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(117, 2672, 2, 20, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(118, 2673, 2, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(119, 2674, 3, 20, 0, 0, 'Avanzado', NULL, 'finished', '2020-05-22 20:55:25', NULL),
(120, 2674, 2, 17, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL),
(121, 2675, 3, 18, 0, 0, 'Avanzado', NULL, 'inprogress', '2020-05-22 20:55:25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_course_competence`
--

CREATE TABLE `talent_course_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `course_competence_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `weight` float NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_course_competence`
--

INSERT INTO `talent_course_competence` (`id`, `talent_id`, `course_competence_id`, `status`, `weight`, `created_at`, `updated_at`) VALUES
(38, 2570, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(39, 2573, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(40, 2574, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(41, 2575, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(42, 2576, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(43, 2576, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(44, 2577, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(45, 2577, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(46, 2577, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(47, 2578, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(48, 2579, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(49, 2580, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(50, 2580, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(51, 2581, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(52, 2582, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(53, 2583, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(54, 2583, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(55, 2584, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(56, 2585, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(57, 2586, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(58, 2587, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(59, 2588, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(60, 2589, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(61, 2589, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(62, 2590, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(63, 2591, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(64, 2591, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(65, 2591, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(66, 2592, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(67, 2593, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(68, 2594, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(69, 2594, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(70, 2594, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(71, 2595, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(72, 2596, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(73, 2597, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(74, 2598, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(75, 2599, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(76, 2601, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(77, 2601, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(78, 2602, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(79, 2603, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(80, 2604, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(81, 2605, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(82, 2605, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(83, 2606, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(84, 2606, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(85, 2606, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(86, 2608, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(87, 2609, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(88, 2609, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(89, 2610, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(90, 2611, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(91, 2611, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(92, 2611, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(93, 2612, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(94, 2613, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(95, 2614, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(96, 2615, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(97, 2616, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(98, 2616, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(99, 2617, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(100, 2618, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(101, 2619, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(102, 2620, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(103, 2622, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(104, 2624, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(105, 2625, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(106, 2627, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(107, 2628, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(108, 2629, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(109, 2629, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(110, 2630, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(111, 2631, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(112, 2632, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(113, 2633, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(114, 2634, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(115, 2635, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(116, 2636, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(117, 2637, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(118, 2638, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(119, 2638, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(120, 2639, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(121, 2640, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(122, 2641, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(123, 2642, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(124, 2643, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(125, 2644, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(126, 2645, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(127, 2646, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(128, 2647, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(129, 2648, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(130, 2649, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(131, 2650, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(132, 2651, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(133, 2652, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(134, 2653, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(135, 2654, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(136, 2655, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(137, 2656, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(138, 2657, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(139, 2658, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(140, 2659, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(141, 2659, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(142, 2660, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(143, 2661, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(144, 2662, 11, 0, 1, '2020-05-22 20:55:48', NULL),
(145, 2663, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(146, 2664, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(147, 2665, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(148, 2666, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(149, 2668, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(150, 2669, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(151, 2670, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(152, 2671, 13, 0, 1, '2020-05-22 20:55:48', NULL),
(153, 2672, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(154, 2673, 15, 0, 1, '2020-05-22 20:55:48', NULL),
(155, 2674, 14, 0, 1, '2020-05-22 20:55:48', NULL),
(156, 2674, 12, 0, 1, '2020-05-22 20:55:48', NULL),
(157, 2675, 14, 0, 1, '2020-05-22 20:55:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_evaluation`
--

CREATE TABLE `talent_evaluation` (
  `id` int(11) NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `evaluation_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `weight` float DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_evaluation`
--

INSERT INTO `talent_evaluation` (`id`, `talent_id`, `evaluation_id`, `status`, `weight`, `created_at`, `updated_at`) VALUES
(1, 2594, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(2, 2594, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(3, 2594, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(4, 2594, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(5, 2594, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(6, 2595, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(7, 2595, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(8, 2595, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(9, 2595, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(10, 2595, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(11, 2596, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(12, 2596, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(13, 2596, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(14, 2596, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(15, 2596, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(16, 2597, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(17, 2597, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(18, 2597, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(19, 2597, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(20, 2597, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(21, 2598, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(22, 2598, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(23, 2598, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(24, 2598, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(25, 2598, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(26, 2599, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(27, 2599, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(28, 2599, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(29, 2599, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(30, 2599, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(31, 2601, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(32, 2601, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(33, 2601, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(34, 2601, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(35, 2601, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(36, 2602, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(37, 2602, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(38, 2602, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(39, 2602, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(40, 2602, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(41, 2603, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(42, 2603, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(43, 2603, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(44, 2603, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(45, 2603, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(46, 2604, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(47, 2604, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(48, 2604, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(49, 2604, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(50, 2604, 31, 0, 0, '2020-05-13 15:58:55', NULL),
(51, 2605, 8, 0, 0, '2020-05-13 15:58:55', NULL),
(52, 2605, 12, 0, 0, '2020-05-13 15:58:55', NULL),
(53, 2605, 14, 0, 0, '2020-05-13 15:58:55', NULL),
(54, 2605, 23, 0, 0, '2020-05-13 15:58:55', NULL),
(55, 2605, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(56, 2631, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(57, 2631, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(58, 2631, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(59, 2631, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(60, 2631, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(61, 2632, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(62, 2632, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(63, 2632, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(64, 2632, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(65, 2632, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(66, 2633, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(67, 2633, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(68, 2633, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(69, 2633, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(70, 2633, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(71, 2634, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(72, 2634, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(73, 2634, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(74, 2634, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(75, 2634, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(76, 2635, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(77, 2635, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(78, 2635, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(79, 2635, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(80, 2635, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(81, 2636, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(82, 2636, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(83, 2636, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(84, 2636, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(85, 2636, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(86, 2637, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(87, 2637, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(88, 2637, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(89, 2637, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(90, 2637, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(91, 2638, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(92, 2638, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(93, 2638, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(94, 2638, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(95, 2638, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(96, 2639, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(97, 2639, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(98, 2639, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(99, 2639, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(100, 2639, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(101, 2640, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(102, 2640, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(103, 2640, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(104, 2640, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(105, 2640, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(106, 2641, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(107, 2641, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(108, 2641, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(109, 2641, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(110, 2641, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(111, 2664, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(112, 2664, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(113, 2664, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(114, 2664, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(115, 2664, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(116, 2665, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(117, 2665, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(118, 2665, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(119, 2665, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(120, 2665, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(121, 2666, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(122, 2666, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(123, 2666, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(124, 2666, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(125, 2666, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(126, 2668, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(127, 2668, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(128, 2668, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(129, 2668, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(130, 2668, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(131, 2669, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(132, 2669, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(133, 2669, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(134, 2669, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(135, 2669, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(136, 2670, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(137, 2670, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(138, 2670, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(139, 2670, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(140, 2670, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(141, 2671, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(142, 2671, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(143, 2671, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(144, 2671, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(145, 2671, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(146, 2672, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(147, 2672, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(148, 2672, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(149, 2672, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(150, 2672, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(151, 2673, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(152, 2673, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(153, 2673, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(154, 2673, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(155, 2673, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(156, 2674, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(157, 2674, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(158, 2674, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(159, 2674, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(160, 2674, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(161, 2675, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(162, 2675, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(163, 2675, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(164, 2675, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(165, 2675, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(166, 2676, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(167, 2676, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(168, 2676, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(169, 2676, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(170, 2676, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(171, 2570, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(172, 2570, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(173, 2570, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(174, 2570, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(175, 2570, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(176, 2573, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(177, 2573, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(178, 2573, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(179, 2573, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(180, 2573, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(181, 2574, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(182, 2574, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(183, 2574, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(184, 2574, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(185, 2574, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(186, 2575, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(187, 2575, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(188, 2575, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(189, 2575, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(190, 2575, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(191, 2576, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(192, 2576, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(193, 2576, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(194, 2576, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(195, 2576, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(196, 2577, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(197, 2577, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(198, 2577, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(199, 2577, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(200, 2577, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(201, 2578, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(202, 2578, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(203, 2578, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(204, 2578, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(205, 2578, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(206, 2579, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(207, 2579, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(208, 2579, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(209, 2579, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(210, 2579, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(211, 2580, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(212, 2580, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(213, 2580, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(214, 2580, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(215, 2580, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(216, 2581, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(217, 2581, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(218, 2581, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(219, 2581, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(220, 2581, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(221, 2582, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(222, 2582, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(223, 2582, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(224, 2582, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(225, 2582, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(226, 2606, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(227, 2606, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(228, 2606, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(229, 2606, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(230, 2606, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(231, 2608, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(232, 2608, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(233, 2608, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(234, 2608, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(235, 2608, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(236, 2609, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(237, 2609, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(238, 2609, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(239, 2609, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(240, 2609, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(241, 2610, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(242, 2610, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(243, 2610, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(244, 2610, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(245, 2610, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(246, 2611, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(247, 2611, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(248, 2611, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(249, 2611, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(250, 2611, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(251, 2612, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(252, 2612, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(253, 2612, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(254, 2612, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(255, 2612, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(256, 2613, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(257, 2613, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(258, 2613, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(259, 2613, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(260, 2613, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(261, 2614, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(262, 2614, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(263, 2614, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(264, 2614, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(265, 2614, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(266, 2615, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(267, 2615, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(268, 2615, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(269, 2615, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(270, 2615, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(271, 2616, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(272, 2616, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(273, 2616, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(274, 2616, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(275, 2616, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(276, 2617, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(277, 2617, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(278, 2617, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(279, 2617, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(280, 2617, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(281, 2642, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(282, 2642, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(283, 2642, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(284, 2642, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(285, 2642, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(286, 2643, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(287, 2643, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(288, 2643, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(289, 2643, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(290, 2643, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(291, 2644, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(292, 2644, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(293, 2644, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(294, 2644, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(295, 2644, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(296, 2645, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(297, 2645, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(298, 2645, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(299, 2645, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(300, 2645, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(301, 2646, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(302, 2646, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(303, 2646, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(304, 2646, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(305, 2646, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(306, 2647, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(307, 2647, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(308, 2647, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(309, 2647, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(310, 2647, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(311, 2648, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(312, 2648, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(313, 2648, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(314, 2648, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(315, 2648, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(316, 2649, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(317, 2649, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(318, 2649, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(319, 2649, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(320, 2649, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(321, 2650, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(322, 2650, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(323, 2650, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(324, 2650, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(325, 2650, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(326, 2651, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(327, 2651, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(328, 2651, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(329, 2651, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(330, 2651, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(331, 2652, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(332, 2652, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(333, 2652, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(334, 2652, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(335, 2652, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(336, 2583, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(337, 2583, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(338, 2583, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(339, 2583, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(340, 2583, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(341, 2584, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(342, 2584, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(343, 2584, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(344, 2584, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(345, 2584, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(346, 2585, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(347, 2585, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(348, 2585, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(349, 2585, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(350, 2585, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(351, 2586, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(352, 2586, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(353, 2586, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(354, 2586, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(355, 2586, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(356, 2587, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(357, 2587, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(358, 2587, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(359, 2587, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(360, 2587, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(361, 2588, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(362, 2588, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(363, 2588, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(364, 2588, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(365, 2588, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(366, 2589, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(367, 2589, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(368, 2589, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(369, 2589, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(370, 2589, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(371, 2590, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(372, 2590, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(373, 2590, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(374, 2590, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(375, 2590, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(376, 2591, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(377, 2591, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(378, 2591, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(379, 2591, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(380, 2591, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(381, 2592, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(382, 2592, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(383, 2592, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(384, 2592, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(385, 2592, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(386, 2593, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(387, 2593, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(388, 2593, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(389, 2593, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(390, 2593, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(391, 2618, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(392, 2618, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(393, 2618, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(394, 2618, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(395, 2618, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(396, 2619, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(397, 2619, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(398, 2619, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(399, 2619, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(400, 2619, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(401, 2620, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(402, 2620, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(403, 2620, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(404, 2620, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(405, 2620, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(406, 2622, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(407, 2622, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(408, 2622, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(409, 2622, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(410, 2622, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(411, 2623, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(412, 2623, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(413, 2623, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(414, 2623, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(415, 2623, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(416, 2624, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(417, 2624, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(418, 2624, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(419, 2624, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(420, 2624, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(421, 2625, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(422, 2625, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(423, 2625, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(424, 2625, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(425, 2625, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(426, 2627, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(427, 2627, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(428, 2627, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(429, 2627, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(430, 2627, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(431, 2628, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(432, 2628, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(433, 2628, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(434, 2628, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(435, 2628, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(436, 2629, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(437, 2629, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(438, 2629, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(439, 2629, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(440, 2629, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(441, 2630, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(442, 2630, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(443, 2630, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(444, 2630, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(445, 2630, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(446, 2653, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(447, 2653, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(448, 2653, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(449, 2653, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(450, 2653, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(451, 2654, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(452, 2654, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(453, 2654, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(454, 2654, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(455, 2654, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(456, 2655, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(457, 2655, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(458, 2655, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(459, 2655, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(460, 2655, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(461, 2656, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(462, 2656, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(463, 2656, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(464, 2656, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(465, 2656, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(466, 2657, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(467, 2657, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(468, 2657, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(469, 2657, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(470, 2657, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(471, 2658, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(472, 2658, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(473, 2658, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(474, 2658, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(475, 2658, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(476, 2659, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(477, 2659, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(478, 2659, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(479, 2659, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(480, 2659, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(481, 2660, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(482, 2660, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(483, 2660, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(484, 2660, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(485, 2660, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(486, 2661, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(487, 2661, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(488, 2661, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(489, 2661, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(490, 2661, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(491, 2662, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(492, 2662, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(493, 2662, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(494, 2662, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(495, 2662, 31, 0, 0, '2020-05-13 15:58:56', NULL),
(496, 2663, 8, 0, 0, '2020-05-13 15:58:56', NULL),
(497, 2663, 12, 0, 0, '2020-05-13 15:58:56', NULL),
(498, 2663, 14, 0, 0, '2020-05-13 15:58:56', NULL),
(499, 2663, 23, 0, 0, '2020-05-13 15:58:56', NULL),
(500, 2663, 31, 0, 0, '2020-05-13 15:58:56', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_evaluation_answer`
--

CREATE TABLE `talent_evaluation_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `talent_evaluation_competence_id` int(10) UNSIGNED NOT NULL,
  `question` longtext NOT NULL,
  `talent_answer` longtext DEFAULT NULL,
  `correct_answer` longtext NOT NULL,
  `points` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `talent_answer_id` int(10) UNSIGNED DEFAULT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT 0,
  `question_category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_evaluation_answer`
--

INSERT INTO `talent_evaluation_answer` (`id`, `talent_id`, `talent_evaluation_competence_id`, `question`, `talent_answer`, `correct_answer`, `points`, `created_at`, `updated_at`, `question_id`, `talent_answer_id`, `pending`, `question_category_id`) VALUES
(1, 2594, 1, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(2, 2594, 1, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(3, 2594, 1, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(4, 2594, 2, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(5, 2594, 2, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(6, 2594, 2, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(7, 2594, 3, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 8),
(8, 2594, 3, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(9, 2594, 3, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 12),
(10, 2594, 4, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(11, 2594, 4, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(12, 2594, 4, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(13, 2594, 5, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(14, 2594, 5, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(15, 2594, 5, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(16, 2595, 6, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(17, 2595, 6, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(18, 2595, 6, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(19, 2595, 7, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(20, 2595, 7, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(21, 2595, 7, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(22, 2595, 8, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 8),
(23, 2595, 8, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(24, 2595, 8, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 12),
(25, 2595, 9, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(26, 2595, 9, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(27, 2595, 9, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(28, 2595, 10, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(29, 2595, 10, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(30, 2595, 10, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(31, 2596, 11, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(32, 2596, 11, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(33, 2596, 11, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(34, 2596, 12, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(35, 2596, 12, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(36, 2596, 12, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(37, 2596, 13, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 8),
(38, 2596, 13, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(39, 2596, 13, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 12),
(40, 2596, 14, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(41, 2596, 14, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(42, 2596, 14, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(43, 2596, 15, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(44, 2596, 15, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(45, 2596, 15, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(46, 2597, 16, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(47, 2597, 16, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(48, 2597, 16, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(49, 2597, 17, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(50, 2597, 17, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(51, 2597, 17, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(52, 2597, 18, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 36, 36, 0, 8),
(53, 2597, 18, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(54, 2597, 18, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 30, 30, 0, 12),
(55, 2597, 19, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(56, 2597, 19, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(57, 2597, 19, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(58, 2597, 20, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(59, 2597, 20, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(60, 2597, 20, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(61, 2598, 21, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(62, 2598, 21, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(63, 2598, 21, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(64, 2598, 22, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(65, 2598, 22, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(66, 2598, 22, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(67, 2598, 23, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(68, 2598, 23, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 46, 46, 0, 11),
(69, 2598, 23, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 47, 47, 0, 11),
(70, 2598, 24, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(71, 2598, 24, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(72, 2598, 24, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(73, 2598, 25, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(74, 2598, 25, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(75, 2598, 25, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(76, 2599, 26, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(77, 2599, 26, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(78, 2599, 26, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(79, 2599, 27, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(80, 2599, 27, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(81, 2599, 27, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(82, 2599, 28, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(83, 2599, 28, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 46, 46, 0, 11),
(84, 2599, 28, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 47, 47, 0, 11),
(85, 2599, 29, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(86, 2599, 29, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(87, 2599, 29, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(88, 2599, 30, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(89, 2599, 30, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(90, 2599, 30, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(91, 2601, 31, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 36, 36, 0, 9),
(92, 2601, 31, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 32, 32, 0, 10),
(93, 2601, 31, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 30, 30, 0, 8),
(94, 2601, 32, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 29, 29, 0, 9),
(95, 2601, 32, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 33, 33, 0, 10),
(96, 2601, 32, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 40, 40, 0, 8),
(97, 2601, 33, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(98, 2601, 33, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 46, 46, 0, 11),
(99, 2601, 33, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 47, 47, 0, 11),
(100, 2601, 34, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(101, 2601, 34, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 64, 64, 0, 13),
(102, 2601, 34, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 65, 65, 0, 12),
(103, 2601, 35, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(104, 2601, 35, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 79, 79, 0, 11),
(105, 2601, 35, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 77, 77, 0, 11),
(106, 2602, 36, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 52, 52, 0, 8),
(107, 2602, 36, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 57, 57, 0, 13),
(108, 2602, 36, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 58, 58, 0, 13),
(109, 2602, 37, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 56, 56, 0, 13),
(110, 2602, 37, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 50, 50, 0, 8),
(111, 2602, 37, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 49, 49, 0, 8),
(112, 2602, 38, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 68, 68, 0, 12),
(113, 2602, 38, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(114, 2602, 38, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 44, 44, 0, 8),
(115, 2602, 39, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 61, 61, 0, 12),
(116, 2602, 39, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 62, 62, 0, 9),
(117, 2602, 39, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(118, 2602, 40, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 53, 53, 0, 9),
(119, 2602, 40, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 66, 66, 0, 12),
(120, 2602, 40, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(121, 2603, 41, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 52, 52, 0, 8),
(122, 2603, 41, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 57, 57, 0, 13),
(123, 2603, 41, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 58, 58, 0, 13),
(124, 2603, 42, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 56, 56, 0, 13),
(125, 2603, 42, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 50, 50, 0, 8),
(126, 2603, 42, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 49, 49, 0, 8),
(127, 2603, 43, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 68, 68, 0, 12),
(128, 2603, 43, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(129, 2603, 43, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 44, 44, 0, 8),
(130, 2603, 44, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 61, 61, 0, 12),
(131, 2603, 44, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 62, 62, 0, 9),
(132, 2603, 44, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(133, 2603, 45, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 53, 53, 0, 9),
(134, 2603, 45, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 66, 66, 0, 12),
(135, 2603, 45, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(136, 2604, 46, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 52, 52, 0, 8),
(137, 2604, 46, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 57, 57, 0, 13),
(138, 2604, 46, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 58, 58, 0, 13),
(139, 2604, 47, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 56, 56, 0, 13),
(140, 2604, 47, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 50, 50, 0, 8),
(141, 2604, 47, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 49, 49, 0, 8),
(142, 2604, 48, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 68, 68, 0, 12),
(143, 2604, 48, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(144, 2604, 48, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 44, 44, 0, 8),
(145, 2604, 49, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 61, 61, 0, 12),
(146, 2604, 49, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 62, 62, 0, 9),
(147, 2604, 49, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(148, 2604, 50, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 53, 53, 0, 9),
(149, 2604, 50, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 66, 66, 0, 12),
(150, 2604, 50, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(151, 2605, 51, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 52, 52, 0, 8),
(152, 2605, 51, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 57, 57, 0, 13),
(153, 2605, 51, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 58, 58, 0, 13),
(154, 2605, 52, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 56, 56, 0, 13),
(155, 2605, 52, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 50, 50, 0, 8),
(156, 2605, 52, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 49, 49, 0, 8),
(157, 2605, 53, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 68, 68, 0, 12),
(158, 2605, 53, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 45, 45, 0, 11),
(159, 2605, 53, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 44, 44, 0, 8),
(160, 2605, 54, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 61, 61, 0, 12),
(161, 2605, 54, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 62, 62, 0, 9),
(162, 2605, 54, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 63, 63, 0, 10),
(163, 2605, 55, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 53, 53, 0, 9),
(164, 2605, 55, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 66, 66, 0, 12),
(165, 2605, 55, '', NULL, '', 2, '2020-05-20 21:53:36', NULL, 70, 70, 0, 9),
(166, 2631, 56, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 52, 52, 0, 8),
(167, 2631, 56, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 57, 57, 0, 13),
(168, 2631, 56, '', NULL, '', 0, '2020-05-20 21:53:36', NULL, 58, 58, 0, 13),
(169, 2631, 57, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 13),
(170, 2631, 57, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(171, 2631, 57, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(172, 2631, 58, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(173, 2631, 58, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(174, 2631, 58, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(175, 2631, 59, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 61, 61, 0, 12),
(176, 2631, 59, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 62, 62, 0, 9),
(177, 2631, 59, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 63, 63, 0, 10),
(178, 2631, 60, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(179, 2631, 60, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(180, 2631, 60, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(181, 2632, 61, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(182, 2632, 61, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 57, 57, 0, 13),
(183, 2632, 61, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 58, 58, 0, 13),
(184, 2632, 62, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 13),
(185, 2632, 62, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(186, 2632, 62, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(187, 2632, 63, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(188, 2632, 63, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(189, 2632, 63, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(190, 2632, 64, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 61, 61, 0, 12),
(191, 2632, 64, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 62, 62, 0, 9),
(192, 2632, 64, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 63, 63, 0, 10),
(193, 2632, 65, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(194, 2632, 65, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(195, 2632, 65, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(196, 2633, 66, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(197, 2633, 66, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(198, 2633, 66, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(199, 2633, 67, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(200, 2633, 67, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(201, 2633, 67, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(202, 2633, 68, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(203, 2633, 68, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(204, 2633, 68, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(205, 2633, 69, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(206, 2633, 69, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(207, 2633, 69, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(208, 2633, 70, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(209, 2633, 70, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(210, 2633, 70, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(211, 2634, 71, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(212, 2634, 71, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(213, 2634, 71, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(214, 2634, 72, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(215, 2634, 72, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(216, 2634, 72, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(217, 2634, 73, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(218, 2634, 73, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(219, 2634, 73, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(220, 2634, 74, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(221, 2634, 74, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(222, 2634, 74, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(223, 2634, 75, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(224, 2634, 75, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(225, 2634, 75, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(226, 2635, 76, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(227, 2635, 76, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(228, 2635, 76, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(229, 2635, 77, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(230, 2635, 77, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(231, 2635, 77, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(232, 2635, 78, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(233, 2635, 78, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(234, 2635, 78, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(235, 2635, 79, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(236, 2635, 79, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(237, 2635, 79, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(238, 2635, 80, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(239, 2635, 80, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(240, 2635, 80, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(241, 2636, 81, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(242, 2636, 81, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(243, 2636, 81, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(244, 2636, 82, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(245, 2636, 82, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(246, 2636, 82, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(247, 2636, 83, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(248, 2636, 83, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(249, 2636, 83, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(250, 2636, 84, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(251, 2636, 84, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(252, 2636, 84, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(253, 2636, 85, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(254, 2636, 85, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(255, 2636, 85, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(256, 2637, 86, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(257, 2637, 86, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(258, 2637, 86, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(259, 2637, 87, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(260, 2637, 87, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(261, 2637, 87, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(262, 2637, 88, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(263, 2637, 88, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(264, 2637, 88, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(265, 2637, 89, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(266, 2637, 89, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(267, 2637, 89, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(268, 2637, 90, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(269, 2637, 90, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(270, 2637, 90, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(271, 2638, 91, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(272, 2638, 91, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(273, 2638, 91, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(274, 2638, 92, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(275, 2638, 92, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(276, 2638, 92, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(277, 2638, 93, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(278, 2638, 93, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(279, 2638, 93, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(280, 2638, 94, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(281, 2638, 94, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(282, 2638, 94, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(283, 2638, 95, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(284, 2638, 95, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(285, 2638, 95, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(286, 2639, 96, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(287, 2639, 96, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(288, 2639, 96, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(289, 2639, 97, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(290, 2639, 97, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(291, 2639, 97, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(292, 2639, 98, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(293, 2639, 98, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(294, 2639, 98, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(295, 2639, 99, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(296, 2639, 99, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(297, 2639, 99, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(298, 2639, 100, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(299, 2639, 100, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(300, 2639, 100, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(301, 2640, 101, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(302, 2640, 101, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(303, 2640, 101, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(304, 2640, 102, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(305, 2640, 102, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(306, 2640, 102, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(307, 2640, 103, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(308, 2640, 103, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(309, 2640, 103, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(310, 2640, 104, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(311, 2640, 104, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(312, 2640, 104, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(313, 2640, 105, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(314, 2640, 105, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(315, 2640, 105, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(316, 2641, 106, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(317, 2641, 106, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(318, 2641, 106, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(319, 2641, 107, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(320, 2641, 107, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(321, 2641, 107, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(322, 2641, 108, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(323, 2641, 108, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(324, 2641, 108, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(325, 2641, 109, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(326, 2641, 109, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(327, 2641, 109, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(328, 2641, 110, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(329, 2641, 110, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(330, 2641, 110, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(331, 2664, 111, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(332, 2664, 111, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(333, 2664, 111, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(334, 2664, 112, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(335, 2664, 112, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(336, 2664, 112, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(337, 2664, 113, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(338, 2664, 113, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(339, 2664, 113, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(340, 2664, 114, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(341, 2664, 114, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(342, 2664, 114, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(343, 2664, 115, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(344, 2664, 115, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(345, 2664, 115, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(346, 2665, 116, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(347, 2665, 116, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(348, 2665, 116, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(349, 2665, 117, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(350, 2665, 117, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(351, 2665, 117, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(352, 2665, 118, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(353, 2665, 118, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(354, 2665, 118, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(355, 2665, 119, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(356, 2665, 119, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(357, 2665, 119, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(358, 2665, 120, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(359, 2665, 120, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(360, 2665, 120, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(361, 2666, 121, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(362, 2666, 121, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(363, 2666, 121, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(364, 2666, 122, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(365, 2666, 122, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(366, 2666, 122, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(367, 2666, 123, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(368, 2666, 123, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(369, 2666, 123, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(370, 2666, 124, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(371, 2666, 124, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(372, 2666, 124, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(373, 2666, 125, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(374, 2666, 125, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(375, 2666, 125, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(376, 2668, 126, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(377, 2668, 126, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(378, 2668, 126, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(379, 2668, 127, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(380, 2668, 127, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(381, 2668, 127, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(382, 2668, 128, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(383, 2668, 128, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(384, 2668, 128, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(385, 2668, 129, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(386, 2668, 129, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(387, 2668, 129, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(388, 2668, 130, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(389, 2668, 130, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 66, 66, 0, 12),
(390, 2668, 130, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 70, 70, 0, 9),
(391, 2669, 131, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 48, 48, 0, 12),
(392, 2669, 131, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 51, 51, 0, 8),
(393, 2669, 131, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 52, 52, 0, 8),
(394, 2669, 132, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 56, 56, 0, 12),
(395, 2669, 132, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 50, 50, 0, 8),
(396, 2669, 132, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 49, 49, 0, 8),
(397, 2669, 133, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 68, 68, 0, 12),
(398, 2669, 133, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 45, 45, 0, 11),
(399, 2669, 133, '', NULL, '', 0, '2020-05-20 21:53:37', NULL, 44, 44, 0, 8),
(400, 2669, 134, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 35, 35, 0, 12),
(401, 2669, 134, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 37, 37, 0, 9),
(402, 2669, 134, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 38, 38, 0, 10),
(403, 2669, 135, '', NULL, '', 2, '2020-05-20 21:53:37', NULL, 53, 53, 0, 9),
(404, 2669, 135, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 66, 66, 0, 12),
(405, 2669, 135, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 70, 70, 0, 9),
(406, 2670, 136, '', NULL, '', 2, '2020-05-21 04:33:29', NULL, 36, 36, 0, 9),
(407, 2670, 136, '', NULL, '', 2, '2020-05-21 04:33:35', NULL, 32, 32, 0, 9),
(408, 2670, 136, '', NULL, '', 2, '2020-05-21 04:33:39', NULL, 58, 58, 0, 13),
(409, 2670, 137, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(410, 2670, 137, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(411, 2670, 137, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(412, 2670, 138, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(413, 2670, 138, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(414, 2670, 138, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(415, 2670, 139, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(416, 2670, 139, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(417, 2670, 139, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(418, 2670, 140, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(419, 2670, 140, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(420, 2670, 140, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(421, 2671, 141, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(422, 2671, 141, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(423, 2671, 141, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(424, 2671, 142, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(425, 2671, 142, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(426, 2671, 142, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(427, 2671, 143, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(428, 2671, 143, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(429, 2671, 143, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(430, 2671, 144, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(431, 2671, 144, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(432, 2671, 144, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(433, 2671, 145, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(434, 2671, 145, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(435, 2671, 145, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(436, 2672, 146, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(437, 2672, 146, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(438, 2672, 146, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(439, 2672, 147, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(440, 2672, 147, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(441, 2672, 147, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(442, 2672, 148, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(443, 2672, 148, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(444, 2672, 148, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(445, 2672, 149, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(446, 2672, 149, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(447, 2672, 149, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(448, 2672, 150, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(449, 2672, 150, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(450, 2672, 150, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(451, 2673, 151, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(452, 2673, 151, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(453, 2673, 151, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(454, 2673, 152, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(455, 2673, 152, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(456, 2673, 152, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(457, 2673, 153, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(458, 2673, 153, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(459, 2673, 153, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(460, 2673, 154, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(461, 2673, 154, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(462, 2673, 154, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(463, 2673, 155, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(464, 2673, 155, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(465, 2673, 155, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(466, 2674, 156, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(467, 2674, 156, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(468, 2674, 156, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(469, 2674, 157, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(470, 2674, 157, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(471, 2674, 157, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(472, 2674, 158, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(473, 2674, 158, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(474, 2674, 158, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(475, 2674, 159, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(476, 2674, 159, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(477, 2674, 159, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(478, 2674, 160, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(479, 2674, 160, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(480, 2674, 160, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(481, 2675, 161, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(482, 2675, 161, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(483, 2675, 161, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(484, 2675, 162, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(485, 2675, 162, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(486, 2675, 162, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(487, 2675, 163, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(488, 2675, 163, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(489, 2675, 163, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(490, 2675, 164, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(491, 2675, 164, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(492, 2675, 164, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(493, 2675, 165, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(494, 2675, 165, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(495, 2675, 165, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(496, 2676, 166, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(497, 2676, 166, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(498, 2676, 166, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(499, 2676, 167, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(500, 2676, 167, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(501, 2676, 167, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(502, 2676, 168, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(503, 2676, 168, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(504, 2676, 168, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(505, 2676, 169, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(506, 2676, 169, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(507, 2676, 169, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(508, 2676, 170, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(509, 2676, 170, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(510, 2676, 170, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(511, 2570, 171, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(512, 2570, 171, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(513, 2570, 171, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(514, 2570, 172, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(515, 2570, 172, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(516, 2570, 172, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(517, 2570, 173, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(518, 2570, 173, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(519, 2570, 173, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(520, 2570, 174, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(521, 2570, 174, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(522, 2570, 174, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(523, 2570, 175, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(524, 2570, 175, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(525, 2570, 175, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(526, 2573, 176, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(527, 2573, 176, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(528, 2573, 176, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(529, 2573, 177, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(530, 2573, 177, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(531, 2573, 177, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(532, 2573, 178, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(533, 2573, 178, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(534, 2573, 178, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(535, 2573, 179, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(536, 2573, 179, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(537, 2573, 179, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(538, 2573, 180, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(539, 2573, 180, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(540, 2573, 180, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(541, 2574, 181, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(542, 2574, 181, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(543, 2574, 181, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(544, 2574, 182, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(545, 2574, 182, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(546, 2574, 182, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(547, 2574, 183, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(548, 2574, 183, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(549, 2574, 183, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(550, 2574, 184, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(551, 2574, 184, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(552, 2574, 184, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(553, 2574, 185, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(554, 2574, 185, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(555, 2574, 185, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(556, 2575, 186, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(557, 2575, 186, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(558, 2575, 186, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(559, 2575, 187, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(560, 2575, 187, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(561, 2575, 187, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(562, 2575, 188, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(563, 2575, 188, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(564, 2575, 188, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(565, 2575, 189, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(566, 2575, 189, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(567, 2575, 189, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(568, 2575, 190, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(569, 2575, 190, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(570, 2575, 190, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(571, 2576, 191, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(572, 2576, 191, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(573, 2576, 191, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(574, 2576, 192, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(575, 2576, 192, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(576, 2576, 192, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(577, 2576, 193, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(578, 2576, 193, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(579, 2576, 193, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(580, 2576, 194, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(581, 2576, 194, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(582, 2576, 194, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(583, 2576, 195, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(584, 2576, 195, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(585, 2576, 195, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(586, 2577, 196, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(587, 2577, 196, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 9),
(588, 2577, 196, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 58, 58, 0, 13),
(589, 2577, 197, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 54, 54, 0, 10),
(590, 2577, 197, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 50, 50, 0, 8),
(591, 2577, 197, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 55, 55, 0, 11),
(592, 2577, 198, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 46, 46, 0, 11),
(593, 2577, 198, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 68, 68, 0, 12),
(594, 2577, 198, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 45, 45, 0, 11),
(595, 2577, 199, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(596, 2577, 199, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 61, 61, 0, 12),
(597, 2577, 199, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(598, 2577, 200, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(599, 2577, 200, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 53, 53, 0, 9),
(600, 2577, 200, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 39, 39, 0, 11),
(601, 2578, 201, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(602, 2578, 201, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 10),
(603, 2578, 201, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 30, 30, 0, 8),
(604, 2578, 202, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 29, 29, 0, 9),
(605, 2578, 202, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 33, 33, 0, 10),
(606, 2578, 202, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 40, 40, 0, 8),
(607, 2578, 203, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 8),
(608, 2578, 203, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 10),
(609, 2578, 203, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 30, 30, 0, 12),
(610, 2578, 204, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(611, 2578, 204, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 64, 64, 0, 13),
(612, 2578, 204, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(613, 2578, 205, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 70, 70, 0, 9),
(614, 2578, 205, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(615, 2578, 205, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 77, 77, 0, 11),
(616, 2579, 206, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(617, 2579, 206, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 10),
(618, 2579, 206, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 30, 30, 0, 8),
(619, 2579, 207, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 29, 29, 0, 9),
(620, 2579, 207, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 33, 33, 0, 10),
(621, 2579, 207, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 40, 40, 0, 8),
(622, 2579, 208, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 36, 36, 0, 8),
(623, 2579, 208, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 32, 32, 0, 10),
(624, 2579, 208, '', NULL, '', 2, '2020-05-20 21:53:38', NULL, 30, 30, 0, 12),
(625, 2579, 209, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 63, 63, 0, 10),
(626, 2579, 209, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 64, 64, 0, 13),
(627, 2579, 209, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 65, 65, 0, 12),
(628, 2579, 210, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 70, 70, 0, 9),
(629, 2579, 210, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 79, 79, 0, 11),
(630, 2579, 210, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 77, 77, 0, 11),
(631, 2580, 211, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 36, 36, 0, 9),
(632, 2580, 211, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 32, 32, 0, 10),
(633, 2580, 211, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 30, 30, 0, 8),
(634, 2580, 212, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 29, 29, 0, 9),
(635, 2580, 212, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 33, 33, 0, 10),
(636, 2580, 212, '', NULL, '', 0, '2020-05-20 21:53:38', NULL, 40, 40, 0, 8),
(637, 2580, 213, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 36, 36, 0, 8),
(638, 2580, 213, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 32, 32, 0, 10),
(639, 2580, 213, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 30, 30, 0, 12),
(640, 2580, 214, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 63, 63, 0, 10),
(641, 2580, 214, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 64, 64, 0, 13),
(642, 2580, 214, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 65, 65, 0, 12),
(643, 2580, 215, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(644, 2580, 215, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 79, 79, 0, 11),
(645, 2580, 215, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 77, 77, 0, 11),
(646, 2581, 216, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 36, 36, 0, 9),
(647, 2581, 216, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 32, 32, 0, 10),
(648, 2581, 216, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 30, 30, 0, 8),
(649, 2581, 217, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 29, 29, 0, 9),
(650, 2581, 217, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 33, 33, 0, 10),
(651, 2581, 217, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 40, 40, 0, 8),
(652, 2581, 218, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 36, 36, 0, 8),
(653, 2581, 218, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 32, 32, 0, 10),
(654, 2581, 218, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 30, 30, 0, 12),
(655, 2581, 219, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 63, 63, 0, 10);
INSERT INTO `talent_evaluation_answer` (`id`, `talent_id`, `talent_evaluation_competence_id`, `question`, `talent_answer`, `correct_answer`, `points`, `created_at`, `updated_at`, `question_id`, `talent_answer_id`, `pending`, `question_category_id`) VALUES
(656, 2581, 219, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 64, 64, 0, 13),
(657, 2581, 219, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 65, 65, 0, 12),
(658, 2581, 220, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(659, 2581, 220, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 79, 79, 0, 11),
(660, 2581, 220, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 77, 77, 0, 11),
(661, 2582, 221, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 36, 36, 0, 9),
(662, 2582, 221, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 32, 32, 0, 10),
(663, 2582, 221, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 30, 30, 0, 8),
(664, 2582, 222, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 29, 29, 0, 9),
(665, 2582, 222, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 33, 33, 0, 10),
(666, 2582, 222, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 40, 40, 0, 8),
(667, 2582, 223, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 36, 36, 0, 8),
(668, 2582, 223, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 32, 32, 0, 10),
(669, 2582, 223, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 30, 30, 0, 12),
(670, 2582, 224, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 63, 63, 0, 10),
(671, 2582, 224, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 64, 64, 0, 13),
(672, 2582, 224, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 65, 65, 0, 12),
(673, 2582, 225, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(674, 2582, 225, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 79, 79, 0, 11),
(675, 2582, 225, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 77, 77, 0, 11),
(676, 2606, 226, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(677, 2606, 226, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(678, 2606, 226, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(679, 2606, 227, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(680, 2606, 227, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(681, 2606, 227, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(682, 2606, 228, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(683, 2606, 228, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(684, 2606, 228, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(685, 2606, 229, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(686, 2606, 229, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(687, 2606, 229, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(688, 2606, 230, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(689, 2606, 230, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(690, 2606, 230, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(691, 2608, 231, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(692, 2608, 231, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(693, 2608, 231, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(694, 2608, 232, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(695, 2608, 232, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(696, 2608, 232, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(697, 2608, 233, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(698, 2608, 233, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(699, 2608, 233, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(700, 2608, 234, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(701, 2608, 234, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(702, 2608, 234, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(703, 2608, 235, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(704, 2608, 235, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(705, 2608, 235, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(706, 2609, 236, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(707, 2609, 236, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(708, 2609, 236, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(709, 2609, 237, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(710, 2609, 237, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(711, 2609, 237, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(712, 2609, 238, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(713, 2609, 238, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(714, 2609, 238, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(715, 2609, 239, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(716, 2609, 239, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(717, 2609, 239, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(718, 2609, 240, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(719, 2609, 240, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(720, 2609, 240, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(721, 2610, 241, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(722, 2610, 241, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(723, 2610, 241, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(724, 2610, 242, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(725, 2610, 242, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(726, 2610, 242, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(727, 2610, 243, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(728, 2610, 243, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(729, 2610, 243, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(730, 2610, 244, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(731, 2610, 244, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(732, 2610, 244, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(733, 2610, 245, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(734, 2610, 245, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(735, 2610, 245, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(736, 2611, 246, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(737, 2611, 246, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(738, 2611, 246, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(739, 2611, 247, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(740, 2611, 247, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(741, 2611, 247, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(742, 2611, 248, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(743, 2611, 248, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(744, 2611, 248, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(745, 2611, 249, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(746, 2611, 249, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(747, 2611, 249, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(748, 2611, 250, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(749, 2611, 250, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(750, 2611, 250, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(751, 2612, 251, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(752, 2612, 251, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(753, 2612, 251, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(754, 2612, 252, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(755, 2612, 252, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(756, 2612, 252, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(757, 2612, 253, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(758, 2612, 253, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(759, 2612, 253, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(760, 2612, 254, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(761, 2612, 254, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(762, 2612, 254, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(763, 2612, 255, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(764, 2612, 255, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(765, 2612, 255, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(766, 2613, 256, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(767, 2613, 256, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(768, 2613, 256, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(769, 2613, 257, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(770, 2613, 257, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(771, 2613, 257, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(772, 2613, 258, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(773, 2613, 258, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(774, 2613, 258, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(775, 2613, 259, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(776, 2613, 259, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(777, 2613, 259, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(778, 2613, 260, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(779, 2613, 260, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(780, 2613, 260, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(781, 2614, 261, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(782, 2614, 261, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(783, 2614, 261, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(784, 2614, 262, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(785, 2614, 262, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(786, 2614, 262, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(787, 2614, 263, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(788, 2614, 263, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(789, 2614, 263, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(790, 2614, 264, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(791, 2614, 264, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(792, 2614, 264, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(793, 2614, 265, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(794, 2614, 265, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(795, 2614, 265, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(796, 2615, 266, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(797, 2615, 266, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(798, 2615, 266, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(799, 2615, 267, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(800, 2615, 267, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(801, 2615, 267, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(802, 2615, 268, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(803, 2615, 268, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(804, 2615, 268, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(805, 2615, 269, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(806, 2615, 269, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(807, 2615, 269, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(808, 2615, 270, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(809, 2615, 270, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(810, 2615, 270, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(811, 2616, 271, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(812, 2616, 271, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(813, 2616, 271, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(814, 2616, 272, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(815, 2616, 272, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(816, 2616, 272, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(817, 2616, 273, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(818, 2616, 273, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(819, 2616, 273, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(820, 2616, 274, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(821, 2616, 274, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(822, 2616, 274, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(823, 2616, 275, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(824, 2616, 275, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(825, 2616, 275, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(826, 2617, 276, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 48, 48, 0, 12),
(827, 2617, 276, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 51, 51, 0, 8),
(828, 2617, 276, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 52, 52, 0, 8),
(829, 2617, 277, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 56, 56, 0, 12),
(830, 2617, 277, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(831, 2617, 277, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 49, 49, 0, 8),
(832, 2617, 278, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(833, 2617, 278, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(834, 2617, 278, '', NULL, '', 0, '2020-05-20 21:53:39', NULL, 44, 44, 0, 8),
(835, 2617, 279, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 35, 35, 0, 12),
(836, 2617, 279, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 37, 37, 0, 9),
(837, 2617, 279, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 38, 38, 0, 10),
(838, 2617, 280, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 53, 53, 0, 9),
(839, 2617, 280, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 66, 66, 0, 12),
(840, 2617, 280, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 70, 70, 0, 9),
(841, 2642, 281, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 36, 36, 0, 9),
(842, 2642, 281, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 32, 32, 0, 9),
(843, 2642, 281, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 58, 58, 0, 13),
(844, 2642, 282, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 54, 54, 0, 10),
(845, 2642, 282, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 50, 50, 0, 8),
(846, 2642, 282, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 55, 55, 0, 11),
(847, 2642, 283, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 46, 46, 0, 11),
(848, 2642, 283, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 68, 68, 0, 12),
(849, 2642, 283, '', NULL, '', 2, '2020-05-20 21:53:39', NULL, 45, 45, 0, 11),
(850, 2642, 284, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(851, 2642, 284, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(852, 2642, 284, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(853, 2642, 285, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(854, 2642, 285, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(855, 2642, 285, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(856, 2643, 286, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 36, 36, 0, 9),
(857, 2643, 286, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 32, 32, 0, 9),
(858, 2643, 286, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 58, 58, 0, 13),
(859, 2643, 287, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 54, 54, 0, 10),
(860, 2643, 287, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(861, 2643, 287, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 55, 55, 0, 11),
(862, 2643, 288, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 46, 46, 0, 11),
(863, 2643, 288, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 68, 68, 0, 12),
(864, 2643, 288, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(865, 2643, 289, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(866, 2643, 289, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(867, 2643, 289, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(868, 2643, 290, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(869, 2643, 290, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(870, 2643, 290, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(871, 2644, 291, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 36, 36, 0, 9),
(872, 2644, 291, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 32, 32, 0, 9),
(873, 2644, 291, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 58, 58, 0, 13),
(874, 2644, 292, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 54, 54, 0, 10),
(875, 2644, 292, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(876, 2644, 292, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 55, 55, 0, 11),
(877, 2644, 293, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 46, 46, 0, 11),
(878, 2644, 293, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 68, 68, 0, 12),
(879, 2644, 293, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(880, 2644, 294, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(881, 2644, 294, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(882, 2644, 294, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(883, 2644, 295, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(884, 2644, 295, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(885, 2644, 295, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(886, 2645, 296, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 36, 36, 0, 9),
(887, 2645, 296, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 32, 32, 0, 9),
(888, 2645, 296, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 58, 58, 0, 13),
(889, 2645, 297, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 54, 54, 0, 10),
(890, 2645, 297, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(891, 2645, 297, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 55, 55, 0, 11),
(892, 2645, 298, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 46, 46, 0, 11),
(893, 2645, 298, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 68, 68, 0, 12),
(894, 2645, 298, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(895, 2645, 299, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(896, 2645, 299, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(897, 2645, 299, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(898, 2645, 300, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(899, 2645, 300, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(900, 2645, 300, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(901, 2646, 301, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 36, 36, 0, 9),
(902, 2646, 301, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 32, 32, 0, 9),
(903, 2646, 301, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 58, 58, 0, 13),
(904, 2646, 302, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 54, 54, 0, 10),
(905, 2646, 302, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(906, 2646, 302, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 55, 55, 0, 11),
(907, 2646, 303, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 46, 46, 0, 11),
(908, 2646, 303, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 68, 68, 0, 12),
(909, 2646, 303, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(910, 2646, 304, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(911, 2646, 304, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(912, 2646, 304, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(913, 2646, 305, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(914, 2646, 305, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(915, 2646, 305, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(916, 2647, 306, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 36, 36, 0, 9),
(917, 2647, 306, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 32, 32, 0, 9),
(918, 2647, 306, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 58, 58, 0, 13),
(919, 2647, 307, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 54, 54, 0, 10),
(920, 2647, 307, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(921, 2647, 307, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 55, 55, 0, 11),
(922, 2647, 308, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 46, 46, 0, 11),
(923, 2647, 308, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 68, 68, 0, 12),
(924, 2647, 308, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(925, 2647, 309, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 65, 65, 0, 12),
(926, 2647, 309, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 61, 61, 0, 12),
(927, 2647, 309, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 63, 63, 0, 10),
(928, 2647, 310, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 79, 79, 0, 11),
(929, 2647, 310, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(930, 2647, 310, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 39, 39, 0, 11),
(931, 2648, 311, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(932, 2648, 311, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(933, 2648, 311, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(934, 2648, 312, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(935, 2648, 312, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(936, 2648, 312, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(937, 2648, 313, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(938, 2648, 313, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(939, 2648, 313, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(940, 2648, 314, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(941, 2648, 314, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(942, 2648, 314, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(943, 2648, 315, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(944, 2648, 315, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(945, 2648, 315, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(946, 2649, 316, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(947, 2649, 316, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(948, 2649, 316, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(949, 2649, 317, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(950, 2649, 317, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(951, 2649, 317, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(952, 2649, 318, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(953, 2649, 318, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(954, 2649, 318, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(955, 2649, 319, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(956, 2649, 319, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(957, 2649, 319, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(958, 2649, 320, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(959, 2649, 320, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(960, 2649, 320, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(961, 2650, 321, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(962, 2650, 321, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(963, 2650, 321, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(964, 2650, 322, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(965, 2650, 322, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(966, 2650, 322, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(967, 2650, 323, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(968, 2650, 323, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(969, 2650, 323, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(970, 2650, 324, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(971, 2650, 324, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(972, 2650, 324, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(973, 2650, 325, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(974, 2650, 325, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(975, 2650, 325, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(976, 2651, 326, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(977, 2651, 326, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(978, 2651, 326, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(979, 2651, 327, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(980, 2651, 327, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(981, 2651, 327, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(982, 2651, 328, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(983, 2651, 328, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(984, 2651, 328, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(985, 2651, 329, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(986, 2651, 329, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(987, 2651, 329, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(988, 2651, 330, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(989, 2651, 330, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(990, 2651, 330, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(991, 2652, 331, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(992, 2652, 331, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(993, 2652, 331, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(994, 2652, 332, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(995, 2652, 332, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(996, 2652, 332, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(997, 2652, 333, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(998, 2652, 333, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(999, 2652, 333, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(1000, 2652, 334, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(1001, 2652, 334, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(1002, 2652, 334, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(1003, 2652, 335, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(1004, 2652, 335, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(1005, 2652, 335, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(1006, 2583, 336, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(1007, 2583, 336, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(1008, 2583, 336, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(1009, 2583, 337, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(1010, 2583, 337, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(1011, 2583, 337, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(1012, 2583, 338, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(1013, 2583, 338, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(1014, 2583, 338, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(1015, 2583, 339, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(1016, 2583, 339, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(1017, 2583, 339, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(1018, 2583, 340, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(1019, 2583, 340, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(1020, 2583, 340, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(1021, 2584, 341, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(1022, 2584, 341, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(1023, 2584, 341, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(1024, 2584, 342, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(1025, 2584, 342, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(1026, 2584, 342, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(1027, 2584, 343, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(1028, 2584, 343, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(1029, 2584, 343, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(1030, 2584, 344, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(1031, 2584, 344, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(1032, 2584, 344, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(1033, 2584, 345, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(1034, 2584, 345, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(1035, 2584, 345, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(1036, 2585, 346, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(1037, 2585, 346, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(1038, 2585, 346, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(1039, 2585, 347, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(1040, 2585, 347, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(1041, 2585, 347, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(1042, 2585, 348, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(1043, 2585, 348, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(1044, 2585, 348, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(1045, 2585, 349, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(1046, 2585, 349, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(1047, 2585, 349, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(1048, 2585, 350, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(1049, 2585, 350, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(1050, 2585, 350, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(1051, 2586, 351, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(1052, 2586, 351, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(1053, 2586, 351, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(1054, 2586, 352, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(1055, 2586, 352, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 49, 49, 0, 8),
(1056, 2586, 352, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 50, 50, 0, 8),
(1057, 2586, 353, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 38, 38, 0, 8),
(1058, 2586, 353, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 45, 45, 0, 11),
(1059, 2586, 353, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 47, 47, 0, 11),
(1060, 2586, 354, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 31, 31, 0, 8),
(1061, 2586, 354, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 34, 34, 0, 12),
(1062, 2586, 354, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 30, 30, 0, 8),
(1063, 2586, 355, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 53, 53, 0, 9),
(1064, 2586, 355, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 66, 66, 0, 12),
(1065, 2586, 355, '', NULL, '', 2, '2020-05-20 21:53:40', NULL, 77, 77, 0, 11),
(1066, 2587, 356, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 41, 41, 0, 7),
(1067, 2587, 356, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 52, 52, 0, 8),
(1068, 2587, 356, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 48, 48, 0, 12),
(1069, 2587, 357, '', NULL, '', 0, '2020-05-20 21:53:40', NULL, 29, 29, 0, 8),
(1070, 2587, 357, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1071, 2587, 357, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1072, 2587, 358, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1073, 2587, 358, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1074, 2587, 358, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1075, 2587, 359, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1076, 2587, 359, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1077, 2587, 359, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1078, 2587, 360, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1079, 2587, 360, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1080, 2587, 360, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1081, 2588, 361, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1082, 2588, 361, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1083, 2588, 361, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1084, 2588, 362, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1085, 2588, 362, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1086, 2588, 362, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1087, 2588, 363, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1088, 2588, 363, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1089, 2588, 363, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1090, 2588, 364, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1091, 2588, 364, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1092, 2588, 364, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1093, 2588, 365, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1094, 2588, 365, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1095, 2588, 364, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1096, 2589, 366, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1097, 2589, 366, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1098, 2589, 366, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1099, 2589, 367, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1100, 2589, 367, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1101, 2589, 367, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1102, 2589, 368, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1103, 2589, 368, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1104, 2589, 368, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1105, 2589, 369, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1106, 2589, 369, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1107, 2589, 369, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1108, 2589, 370, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1109, 2589, 370, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1110, 2589, 370, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1111, 2590, 371, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1112, 2590, 371, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1113, 2590, 371, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1114, 2590, 372, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1115, 2590, 372, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1116, 2590, 372, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1117, 2590, 373, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1118, 2590, 373, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1119, 2590, 373, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1120, 2590, 374, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1121, 2590, 374, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1122, 2590, 374, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1123, 2590, 375, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1124, 2590, 375, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1125, 2590, 375, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1126, 2591, 376, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1127, 2591, 376, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1128, 2591, 376, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1129, 2591, 377, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1130, 2591, 377, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1131, 2591, 377, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1132, 2591, 378, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1133, 2591, 378, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1134, 2591, 378, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1135, 2591, 379, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1136, 2591, 379, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1137, 2591, 379, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1138, 2591, 380, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1139, 2591, 380, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1140, 2591, 380, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1141, 2592, 381, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1142, 2592, 381, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1143, 2592, 381, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1144, 2592, 382, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1145, 2592, 382, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1146, 2592, 382, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1147, 2592, 383, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1148, 2592, 383, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1149, 2592, 383, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1150, 2592, 384, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1151, 2592, 384, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1152, 2592, 384, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1153, 2592, 385, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1154, 2592, 385, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1155, 2592, 385, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1156, 2593, 386, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1157, 2593, 386, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1158, 2593, 386, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1159, 2593, 387, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1160, 2593, 387, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1161, 2593, 387, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1162, 2593, 388, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1163, 2593, 388, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1164, 2593, 388, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1165, 2593, 389, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1166, 2593, 389, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1167, 2593, 389, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1168, 2593, 390, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1169, 2593, 390, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1170, 2593, 390, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1171, 2618, 391, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1172, 2618, 391, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1173, 2618, 391, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1174, 2618, 392, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1175, 2618, 392, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1176, 2618, 392, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1177, 2618, 393, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1178, 2618, 393, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1179, 2618, 393, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1180, 2618, 394, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1181, 2618, 394, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1182, 2618, 394, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1183, 2618, 395, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1184, 2618, 395, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1185, 2618, 395, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1186, 2619, 396, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1187, 2619, 396, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1188, 2619, 396, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1189, 2619, 397, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1190, 2619, 397, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1191, 2619, 397, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1192, 2619, 398, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1193, 2619, 398, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1194, 2619, 398, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1195, 2619, 399, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1196, 2619, 399, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1197, 2619, 399, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1198, 2619, 400, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1199, 2619, 400, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1200, 2619, 400, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1201, 2620, 401, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1202, 2620, 401, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1203, 2620, 401, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1204, 2620, 402, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1205, 2620, 402, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1206, 2620, 402, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1207, 2620, 403, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1208, 2620, 403, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1209, 2620, 403, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1210, 2620, 404, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1211, 2620, 404, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1212, 2620, 404, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1213, 2620, 405, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1214, 2620, 405, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1215, 2620, 405, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1216, 2622, 406, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1217, 2622, 406, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1218, 2622, 406, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1219, 2622, 407, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1220, 2622, 407, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1221, 2622, 407, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1222, 2622, 408, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1223, 2622, 408, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1224, 2622, 408, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1225, 2622, 409, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1226, 2622, 409, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1227, 2622, 409, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1228, 2622, 410, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1229, 2622, 410, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1230, 2622, 410, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1231, 2623, 411, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1232, 2623, 411, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1233, 2623, 411, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1234, 2623, 412, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1235, 2623, 412, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1236, 2623, 412, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1237, 2623, 413, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1238, 2623, 413, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1239, 2623, 413, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1240, 2623, 414, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1241, 2623, 414, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1242, 2623, 414, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1243, 2623, 415, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1244, 2623, 415, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1245, 2623, 415, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1246, 2624, 416, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1247, 2624, 416, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1248, 2624, 416, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1249, 2624, 417, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1250, 2624, 417, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1251, 2624, 417, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1252, 2624, 418, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1253, 2624, 418, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1254, 2624, 418, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1255, 2624, 419, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1256, 2624, 419, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1257, 2624, 419, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1258, 2624, 420, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1259, 2624, 420, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1260, 2624, 420, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1261, 2625, 421, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1262, 2625, 421, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1263, 2625, 421, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1264, 2625, 422, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1265, 2625, 422, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1266, 2625, 422, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1267, 2625, 423, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1268, 2625, 423, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1269, 2625, 423, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1270, 2625, 424, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1271, 2625, 424, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1272, 2625, 424, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1273, 2625, 425, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1274, 2625, 425, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1275, 2625, 425, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1276, 2627, 426, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1277, 2627, 426, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1278, 2627, 426, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1279, 2627, 427, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1280, 2627, 427, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1281, 2627, 427, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1282, 2627, 428, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1283, 2627, 428, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1284, 2627, 428, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1285, 2627, 429, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1286, 2627, 429, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12),
(1287, 2627, 429, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1288, 2627, 430, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1289, 2627, 430, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1290, 2627, 430, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1291, 2628, 431, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 41, 41, 0, 7),
(1292, 2628, 431, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 52, 52, 0, 8),
(1293, 2628, 431, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 48, 48, 0, 12),
(1294, 2628, 432, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 29, 29, 0, 8),
(1295, 2628, 432, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 49, 49, 0, 8),
(1296, 2628, 432, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 50, 50, 0, 8),
(1297, 2628, 433, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 38, 38, 0, 8),
(1298, 2628, 433, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 45, 45, 0, 11),
(1299, 2628, 433, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 47, 47, 0, 11),
(1300, 2628, 434, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 31, 31, 0, 8),
(1301, 2628, 434, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 34, 34, 0, 12);
INSERT INTO `talent_evaluation_answer` (`id`, `talent_id`, `talent_evaluation_competence_id`, `question`, `talent_answer`, `correct_answer`, `points`, `created_at`, `updated_at`, `question_id`, `talent_answer_id`, `pending`, `question_category_id`) VALUES
(1302, 2628, 434, '', NULL, '', 2, '2020-05-20 21:53:41', NULL, 30, 30, 0, 8),
(1303, 2628, 435, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 53, 53, 0, 9),
(1304, 2628, 435, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 66, 66, 0, 12),
(1305, 2628, 435, '', NULL, '', 0, '2020-05-20 21:53:41', NULL, 77, 77, 0, 11),
(1306, 2629, 436, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1307, 2629, 436, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1308, 2629, 436, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1309, 2629, 437, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1310, 2629, 437, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1311, 2629, 437, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1312, 2629, 438, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1313, 2629, 438, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1314, 2629, 438, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1315, 2629, 439, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1316, 2629, 439, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1317, 2629, 439, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1318, 2629, 440, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1319, 2629, 440, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1320, 2629, 440, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1321, 2630, 441, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1322, 2630, 441, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1323, 2630, 441, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1324, 2630, 442, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1325, 2630, 442, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1326, 2630, 442, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1327, 2630, 443, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1328, 2630, 443, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1329, 2630, 443, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1330, 2630, 444, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1331, 2630, 444, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1332, 2630, 444, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1333, 2630, 445, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1334, 2630, 445, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1335, 2630, 445, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1336, 2653, 446, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1337, 2653, 446, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1338, 2653, 446, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1339, 2653, 447, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1340, 2653, 447, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1341, 2653, 447, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1342, 2653, 448, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1343, 2653, 448, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1344, 2653, 448, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1345, 2653, 449, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1346, 2653, 449, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1347, 2653, 449, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1348, 2653, 450, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1349, 2653, 450, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1350, 2653, 450, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1351, 2654, 451, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1352, 2654, 451, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1353, 2654, 451, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1354, 2654, 452, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1355, 2654, 452, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1356, 2654, 452, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1357, 2654, 453, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1358, 2654, 453, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1359, 2654, 453, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1360, 2654, 454, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1361, 2654, 454, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1362, 2654, 454, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1363, 2654, 455, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1364, 2654, 455, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1365, 2654, 455, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1366, 2655, 456, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1367, 2655, 456, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1368, 2655, 456, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1369, 2655, 457, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1370, 2655, 457, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1371, 2655, 457, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1372, 2655, 458, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1373, 2655, 458, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1374, 2655, 458, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1375, 2655, 459, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1376, 2655, 459, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1377, 2655, 459, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1378, 2655, 460, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1379, 2655, 460, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1380, 2655, 460, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1381, 2656, 461, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1382, 2656, 461, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1383, 2656, 461, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1384, 2656, 462, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1385, 2656, 462, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1386, 2656, 462, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1387, 2656, 463, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1388, 2656, 463, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1389, 2656, 463, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1390, 2656, 464, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1391, 2656, 464, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1392, 2656, 464, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1393, 2656, 465, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1394, 2656, 465, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1395, 2656, 465, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1396, 2657, 466, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1397, 2657, 466, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1398, 2657, 466, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1399, 2657, 467, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1400, 2657, 467, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1401, 2657, 467, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1402, 2657, 468, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1403, 2657, 468, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1404, 2657, 468, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1405, 2657, 469, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1406, 2657, 469, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1407, 2657, 469, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1408, 2657, 470, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1409, 2657, 470, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1410, 2657, 470, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1411, 2658, 471, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1412, 2658, 471, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1413, 2658, 471, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1414, 2658, 472, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1415, 2658, 472, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1416, 2658, 472, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1417, 2658, 473, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1418, 2658, 473, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1419, 2658, 473, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1420, 2658, 474, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1421, 2658, 474, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1422, 2658, 474, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1423, 2658, 475, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1424, 2658, 475, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1425, 2658, 475, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1426, 2659, 476, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1427, 2659, 476, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1428, 2659, 476, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1429, 2659, 477, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1430, 2659, 477, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1431, 2659, 477, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1432, 2659, 478, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1433, 2659, 478, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1434, 2659, 478, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1435, 2659, 479, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1436, 2659, 479, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1437, 2659, 479, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1438, 2659, 480, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1439, 2659, 480, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1440, 2659, 480, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1441, 2660, 481, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1442, 2660, 481, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1443, 2660, 481, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1444, 2660, 482, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1445, 2660, 482, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1446, 2660, 482, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1447, 2660, 483, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1448, 2660, 483, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1449, 2660, 483, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1450, 2660, 484, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1451, 2660, 484, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1452, 2660, 484, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1453, 2660, 485, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1454, 2660, 485, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1455, 2660, 485, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1456, 2661, 486, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1457, 2661, 486, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1458, 2661, 486, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1459, 2661, 487, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1460, 2661, 487, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1461, 2661, 487, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1462, 2661, 488, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1463, 2661, 488, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1464, 2661, 488, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1465, 2661, 489, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1466, 2661, 489, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1467, 2661, 489, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1468, 2661, 490, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1469, 2661, 490, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1470, 2661, 490, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1471, 2662, 491, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1472, 2662, 491, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1473, 2662, 491, '', NULL, '', 0, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1474, 2662, 492, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1475, 2662, 492, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1476, 2662, 492, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1477, 2662, 493, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1478, 2662, 493, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1479, 2662, 493, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1480, 2662, 494, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1481, 2662, 494, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1482, 2662, 494, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1483, 2662, 495, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1484, 2662, 495, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1485, 2662, 495, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11),
(1486, 2663, 496, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 41, 41, 0, 7),
(1487, 2663, 496, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 52, 52, 0, 8),
(1488, 2663, 496, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 48, 48, 0, 12),
(1489, 2663, 497, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 29, 29, 0, 8),
(1490, 2663, 497, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 49, 49, 0, 8),
(1491, 2663, 497, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 50, 50, 0, 8),
(1492, 2663, 498, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 38, 38, 0, 8),
(1493, 2663, 498, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 45, 45, 0, 11),
(1494, 2663, 498, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 47, 47, 0, 11),
(1495, 2663, 499, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 31, 31, 0, 8),
(1496, 2663, 499, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 34, 34, 0, 12),
(1497, 2663, 499, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 30, 30, 0, 8),
(1498, 2663, 500, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 53, 53, 0, 9),
(1499, 2663, 500, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 66, 66, 0, 12),
(1500, 2663, 500, '', NULL, '', 2, '2020-05-20 21:53:42', NULL, 77, 77, 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_evaluation_competence`
--

CREATE TABLE `talent_evaluation_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `evaluation_competence_id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `extra` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `talent_evaluation_competence`
--

INSERT INTO `talent_evaluation_competence` (`id`, `talent_id`, `evaluation_competence_id`, `level_id`, `weight`, `created_at`, `updated_at`, `extra`) VALUES
(1, 2594, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(2, 2594, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(3, 2594, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(4, 2594, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(5, 2594, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(6, 2595, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(7, 2595, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(8, 2595, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(9, 2595, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(10, 2595, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(11, 2596, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(12, 2596, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(13, 2596, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(14, 2596, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(15, 2596, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(16, 2597, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(17, 2597, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(18, 2597, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(19, 2597, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(20, 2597, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(21, 2598, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(22, 2598, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(23, 2598, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(24, 2598, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(25, 2598, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(26, 2599, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(27, 2599, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(28, 2599, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(29, 2599, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(30, 2599, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(31, 2601, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(32, 2601, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(33, 2601, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(34, 2601, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(35, 2601, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(36, 2602, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(37, 2602, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(38, 2602, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(39, 2602, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(40, 2602, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(41, 2603, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(42, 2603, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(43, 2603, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(44, 2603, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(45, 2603, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(46, 2604, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(47, 2604, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(48, 2604, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(49, 2604, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(50, 2604, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(51, 2605, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(52, 2605, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(53, 2605, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(54, 2605, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(55, 2605, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(56, 2631, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(57, 2631, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(58, 2631, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(59, 2631, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(60, 2631, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(61, 2632, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(62, 2632, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(63, 2632, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(64, 2632, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(65, 2632, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(66, 2633, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(67, 2633, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(68, 2633, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(69, 2633, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(70, 2633, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(71, 2634, 3, 1, 0, '2020-05-13 05:03:41', NULL, 0),
(72, 2634, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(73, 2634, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(74, 2634, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(75, 2634, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(76, 2635, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(77, 2635, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(78, 2635, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(79, 2635, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(80, 2635, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(81, 2636, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(82, 2636, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(83, 2636, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(84, 2636, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(85, 2636, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(86, 2637, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(87, 2637, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(88, 2637, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(89, 2637, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(90, 2637, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(91, 2638, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(92, 2638, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(93, 2638, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(94, 2638, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(95, 2638, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(96, 2639, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(97, 2639, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(98, 2639, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(99, 2639, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(100, 2639, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(101, 2640, 3, 2, 0, '2020-05-13 05:03:41', NULL, 0),
(102, 2640, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(103, 2640, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(104, 2640, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(105, 2640, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(106, 2641, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(107, 2641, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(108, 2641, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(109, 2641, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(110, 2641, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(111, 2664, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(112, 2664, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(113, 2664, 14, 9, 0, '2020-05-13 05:03:41', NULL, 0),
(114, 2664, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(115, 2664, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(116, 2665, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(117, 2665, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(118, 2665, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(119, 2665, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(120, 2665, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(121, 2666, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(122, 2666, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(123, 2666, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(124, 2666, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(125, 2666, 8, 18, 0, '2020-05-13 05:03:41', NULL, 0),
(126, 2668, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(127, 2668, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(128, 2668, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(129, 2668, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(130, 2668, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(131, 2669, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(132, 2669, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(133, 2669, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(134, 2669, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(135, 2669, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(136, 2670, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(137, 2670, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(138, 2670, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(139, 2670, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(140, 2670, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(141, 2671, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(142, 2671, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(143, 2671, 14, 10, 0, '2020-05-13 05:03:41', NULL, 0),
(144, 2671, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(145, 2671, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(146, 2672, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(147, 2672, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(148, 2672, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(149, 2672, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(150, 2672, 8, 17, 0, '2020-05-13 05:03:41', NULL, 0),
(151, 2673, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(152, 2673, 12, 7, 0, '2020-05-13 05:03:41', NULL, 0),
(153, 2673, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(154, 2673, 15, 13, 0, '2020-05-13 05:03:41', NULL, 0),
(155, 2673, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(156, 2674, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(157, 2674, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(158, 2674, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(159, 2674, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(160, 2674, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(161, 2675, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(162, 2675, 12, 6, 0, '2020-05-13 05:03:41', NULL, 0),
(163, 2675, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(164, 2675, 15, 15, 0, '2020-05-13 05:03:41', NULL, 0),
(165, 2675, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(166, 2676, 3, 3, 0, '2020-05-13 05:03:41', NULL, 0),
(167, 2676, 12, 5, 0, '2020-05-13 05:03:41', NULL, 0),
(168, 2676, 14, 11, 0, '2020-05-13 05:03:41', NULL, 0),
(169, 2676, 15, 14, 0, '2020-05-13 05:03:41', NULL, 0),
(170, 2676, 8, 19, 0, '2020-05-13 05:03:41', NULL, 0),
(171, 2570, 11, 1, 0, '2020-05-13 05:04:34', NULL, 0),
(172, 2570, 5, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(173, 2570, 9, 9, 0, '2020-05-13 05:04:34', NULL, 0),
(174, 2570, 1, 13, 0, '2020-05-13 05:04:34', NULL, 0),
(175, 2570, 7, 17, 0, '2020-05-13 05:04:34', NULL, 0),
(176, 2573, 11, 1, 0, '2020-05-13 05:04:34', NULL, 0),
(177, 2573, 5, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(178, 2573, 9, 10, 0, '2020-05-13 05:04:34', NULL, 0),
(179, 2573, 1, 13, 0, '2020-05-13 05:04:34', NULL, 0),
(180, 2573, 7, 17, 0, '2020-05-13 05:04:34', NULL, 0),
(181, 2574, 11, 1, 0, '2020-05-13 05:04:34', NULL, 0),
(182, 2574, 5, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(183, 2574, 9, 9, 0, '2020-05-13 05:04:34', NULL, 0),
(184, 2574, 1, 13, 0, '2020-05-13 05:04:34', NULL, 0),
(185, 2574, 7, 18, 0, '2020-05-13 05:04:34', NULL, 0),
(186, 2575, 11, 1, 0, '2020-05-13 05:04:34', NULL, 0),
(187, 2575, 5, 6, 0, '2020-05-13 05:04:34', NULL, 0),
(188, 2575, 9, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(189, 2575, 1, 9, 0, '2020-05-13 05:04:34', NULL, 0),
(190, 2575, 7, 17, 0, '2020-05-13 05:04:34', NULL, 0),
(191, 2576, 11, 2, 0, '2020-05-13 05:04:34', NULL, 0),
(192, 2576, 5, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(193, 2576, 9, 10, 0, '2020-05-13 05:04:34', NULL, 0),
(194, 2576, 1, 13, 0, '2020-05-13 05:04:34', NULL, 0),
(195, 2576, 7, 17, 0, '2020-05-13 05:04:34', NULL, 0),
(196, 2577, 11, 2, 0, '2020-05-13 05:04:34', NULL, 0),
(197, 2577, 5, 5, 0, '2020-05-13 05:04:34', NULL, 0),
(198, 2577, 9, 9, 0, '2020-05-13 05:04:34', NULL, 0),
(199, 2577, 1, 13, 0, '2020-05-13 05:04:34', NULL, 0),
(200, 2577, 7, 18, 0, '2020-05-13 05:04:34', NULL, 0),
(201, 2578, 11, 1, 0, '2020-05-22 05:36:28', NULL, 0),
(202, 2578, 5, 6, 0, '2020-05-22 05:36:38', NULL, 0),
(203, 2578, 9, 10, 0, '2020-05-22 05:36:47', NULL, 0),
(204, 2578, 1, 13, 0, '2020-05-22 05:36:52', NULL, 0),
(205, 2578, 7, 17, 0, '2020-05-22 05:37:33', NULL, 0),
(206, 2579, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(207, 2579, 5, 5, 0, '2020-05-13 05:04:35', NULL, 0),
(208, 2579, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(209, 2579, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(210, 2579, 7, 17, 0, '2020-05-13 05:04:35', NULL, 0),
(211, 2580, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(212, 2580, 5, 5, 0, '2020-05-13 05:04:35', NULL, 0),
(213, 2580, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(214, 2580, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(215, 2580, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(216, 2581, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(217, 2581, 5, 5, 0, '2020-05-13 05:04:35', NULL, 0),
(218, 2581, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(219, 2581, 1, 13, 0, '2020-05-13 05:04:35', NULL, 0),
(220, 2581, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(221, 2582, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(222, 2582, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(223, 2582, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(224, 2582, 1, 13, 0, '2020-05-13 05:04:35', NULL, 0),
(225, 2582, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(226, 2606, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(227, 2606, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(228, 2606, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(229, 2606, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(230, 2606, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(231, 2608, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(232, 2608, 5, 5, 0, '2020-05-13 05:04:35', NULL, 0),
(233, 2608, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(234, 2608, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(235, 2608, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(236, 2609, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(237, 2609, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(238, 2609, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(239, 2609, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(240, 2609, 7, 17, 0, '2020-05-13 05:04:35', NULL, 0),
(241, 2610, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(242, 2610, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(243, 2610, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(244, 2610, 1, 13, 0, '2020-05-13 05:04:35', NULL, 0),
(245, 2610, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(246, 2611, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(247, 2611, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(248, 2611, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(249, 2611, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(250, 2611, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(251, 2612, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(252, 2612, 5, 5, 0, '2020-05-13 05:04:35', NULL, 0),
(253, 2612, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(254, 2612, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(255, 2612, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(256, 2613, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(257, 2613, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(258, 2613, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(259, 2613, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(260, 2613, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(261, 2614, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(262, 2614, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(263, 2614, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(264, 2614, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(265, 2614, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(266, 2615, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(267, 2615, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(268, 2615, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(269, 2615, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(270, 2615, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(271, 2616, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(272, 2616, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(273, 2616, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(274, 2616, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(275, 2616, 7, 17, 0, '2020-05-13 05:04:35', NULL, 0),
(276, 2617, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(277, 2617, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(278, 2617, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(279, 2617, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(280, 2617, 7, 17, 0, '2020-05-13 05:04:35', NULL, 0),
(281, 2642, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(282, 2642, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(283, 2642, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(284, 2642, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(285, 2642, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(286, 2643, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(287, 2643, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(288, 2643, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(289, 2643, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(290, 2643, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(291, 2644, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(292, 2644, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(293, 2644, 9, 10, 0, '2020-05-13 05:04:35', NULL, 0),
(294, 2644, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(295, 2644, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(296, 2645, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(297, 2645, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(298, 2645, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(299, 2645, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(300, 2645, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(301, 2646, 11, 1, 0, '2020-05-13 05:04:35', NULL, 0),
(302, 2646, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(303, 2646, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(304, 2646, 1, 14, 0, '2020-05-13 05:04:35', NULL, 0),
(305, 2646, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(306, 2647, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(307, 2647, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(308, 2647, 9, 9, 0, '2020-05-13 05:04:35', NULL, 0),
(309, 2647, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(310, 2647, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(311, 2648, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(312, 2648, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(313, 2648, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(314, 2648, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(315, 2648, 7, 17, 0, '2020-05-13 05:04:35', NULL, 0),
(316, 2649, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(317, 2649, 5, 6, 0, '2020-05-13 05:04:35', NULL, 0),
(318, 2649, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(319, 2649, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(320, 2649, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(321, 2650, 11, 2, 0, '2020-05-13 05:04:35', NULL, 0),
(322, 2650, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(323, 2650, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(324, 2650, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(325, 2650, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(326, 2651, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(327, 2651, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(328, 2651, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(329, 2651, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(330, 2651, 7, 18, 0, '2020-05-13 05:04:35', NULL, 0),
(331, 2652, 11, 3, 0, '2020-05-13 05:04:35', NULL, 0),
(332, 2652, 5, 7, 0, '2020-05-13 05:04:35', NULL, 0),
(333, 2652, 9, 11, 0, '2020-05-13 05:04:35', NULL, 0),
(334, 2652, 1, 15, 0, '2020-05-13 05:04:35', NULL, 0),
(335, 2652, 7, 19, 0, '2020-05-13 05:04:35', NULL, 0),
(336, 2583, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(337, 2583, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(338, 2583, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(339, 2583, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(340, 2583, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(341, 2584, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(342, 2584, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(343, 2584, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(344, 2584, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(345, 2584, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(346, 2585, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(347, 2585, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(348, 2585, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(349, 2585, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(350, 2585, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(351, 2586, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(352, 2586, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(353, 2586, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(354, 2586, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(355, 2586, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(356, 2587, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(357, 2587, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(358, 2587, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(359, 2587, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(360, 2587, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(361, 2588, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(362, 2588, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(363, 2588, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(364, 2588, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(365, 2588, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(366, 2589, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(367, 2589, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(368, 2589, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(369, 2589, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(370, 2589, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(371, 2590, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(372, 2590, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(373, 2590, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(374, 2590, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(375, 2590, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(376, 2591, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(377, 2591, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(378, 2591, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(379, 2591, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(380, 2591, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(381, 2592, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(382, 2592, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(383, 2592, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(384, 2592, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(385, 2592, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(386, 2593, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(387, 2593, 12, 5, 0, '2020-05-13 05:49:00', NULL, 0),
(388, 2593, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(389, 2593, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(390, 2593, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(391, 2618, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(392, 2618, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(393, 2618, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(394, 2618, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(395, 2618, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(396, 2619, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(397, 2619, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(398, 2619, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(399, 2619, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(400, 2619, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(401, 2620, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(402, 2620, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(403, 2620, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(404, 2620, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(405, 2620, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(406, 2622, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(407, 2622, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(408, 2622, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(409, 2622, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(410, 2622, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(411, 2623, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(412, 2623, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(413, 2623, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(414, 2623, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(415, 2623, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(416, 2624, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(417, 2624, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(418, 2624, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(419, 2624, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(420, 2624, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(421, 2625, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(422, 2625, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(423, 2625, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(424, 2625, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(425, 2625, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(426, 2627, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(427, 2627, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(428, 2627, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(429, 2627, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(430, 2627, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(431, 2628, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(432, 2628, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(433, 2628, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(434, 2628, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(435, 2628, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(436, 2629, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(437, 2629, 12, 6, 0, '2020-05-13 05:49:00', NULL, 0),
(438, 2629, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(439, 2629, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(440, 2629, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(441, 2630, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(442, 2630, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(443, 2630, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(444, 2630, 2, 14, 0, '2020-05-13 05:49:00', NULL, 0),
(445, 2630, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(446, 2653, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(447, 2653, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(448, 2653, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(449, 2653, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(450, 2653, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(451, 2654, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(452, 2654, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(453, 2654, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(454, 2654, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(455, 2654, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(456, 2655, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(457, 2655, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(458, 2655, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(459, 2655, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(460, 2655, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(461, 2656, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(462, 2656, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(463, 2656, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(464, 2656, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(465, 2656, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(466, 2657, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(467, 2657, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(468, 2657, 4, 9, 0, '2020-05-13 05:49:00', NULL, 0),
(469, 2657, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(470, 2657, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(471, 2658, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(472, 2658, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(473, 2658, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(474, 2658, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(475, 2658, 6, 18, 0, '2020-05-13 05:49:00', NULL, 0),
(476, 2659, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(477, 2659, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(478, 2659, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(479, 2659, 2, 13, 0, '2020-05-13 05:49:00', NULL, 0),
(480, 2659, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(481, 2660, 10, 1, 0, '2020-05-13 05:49:00', NULL, 0),
(482, 2660, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(483, 2660, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(484, 2660, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(485, 2660, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(486, 2661, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(487, 2661, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(488, 2661, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(489, 2661, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(490, 2661, 6, 17, 0, '2020-05-13 05:49:00', NULL, 0),
(491, 2662, 10, 3, 0, '2020-05-13 05:49:00', NULL, 0),
(492, 2662, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(493, 2662, 4, 10, 0, '2020-05-13 05:49:00', NULL, 0),
(494, 2662, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(495, 2662, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0),
(496, 2663, 10, 2, 0, '2020-05-13 05:49:00', NULL, 0),
(497, 2663, 12, 7, 0, '2020-05-13 05:49:00', NULL, 0),
(498, 2663, 4, 11, 0, '2020-05-13 05:49:00', NULL, 0),
(499, 2663, 2, 15, 0, '2020-05-13 05:49:00', NULL, 0),
(500, 2663, 6, 19, 0, '2020-05-13 05:49:00', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_groups`
--

CREATE TABLE `talent_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_languages`
--

CREATE TABLE `talent_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(11) UNSIGNED NOT NULL,
  `languages_id` int(11) UNSIGNED NOT NULL,
  `level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_log`
--

CREATE TABLE `talent_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(11) UNSIGNED DEFAULT NULL,
  `evaluation_id` int(11) UNSIGNED DEFAULT NULL,
  `resource_id` int(11) UNSIGNED DEFAULT NULL,
  `action` enum('start','finish','view') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_school`
--

CREATE TABLE `talent_school` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(11) NOT NULL,
  `school_name` varchar(45) DEFAULT NULL,
  `school_type` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `group` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_skill`
--

CREATE TABLE `talent_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `experience` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `weight` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_specialties`
--

CREATE TABLE `talent_specialties` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_topic`
--

CREATE TABLE `talent_topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `weight` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_topic_competence`
--

CREATE TABLE `talent_topic_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `topic_competence_id` int(10) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talent_udemy_course_activity`
--

CREATE TABLE `talent_udemy_course_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `id_udemy_course` int(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `user_is_deactivated` tinyint(4) DEFAULT NULL,
  `course_duration` float DEFAULT NULL,
  `completion_ratio` float DEFAULT NULL,
  `num_video_consumed_minutes` float DEFAULT NULL,
  `course_enroll_date` datetime DEFAULT NULL,
  `course_start_date` datetime DEFAULT NULL,
  `course_completion_date` datetime DEFAULT NULL,
  `first_completion_date` datetime DEFAULT NULL,
  `last_accessed_date` datetime DEFAULT NULL,
  `categories` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topic`
--

CREATE TABLE `topic` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topic_competence`
--

CREATE TABLE `topic_competence` (
  `id` int(10) UNSIGNED NOT NULL,
  `competence_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED DEFAULT NULL,
  `credit_id` int(10) UNSIGNED DEFAULT NULL,
  `point_id` int(10) UNSIGNED DEFAULT NULL,
  `issue_req_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translate`
--

CREATE TABLE `translate` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(45) NOT NULL,
  `translate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `udemy_categories`
--

CREATE TABLE `udemy_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `group` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `level_name` varchar(45) DEFAULT NULL,
  `school_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `udemy_projects`
--

CREATE TABLE `udemy_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `prefix` varchar(45) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `account_id` varchar(45) DEFAULT NULL,
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `udemy_resources`
--

CREATE TABLE `udemy_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_udemy_course` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(8000) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `instructors` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `locale` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unenrollers`
--

CREATE TABLE `unenrollers` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `member_id` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universities`
--

CREATE TABLE `universities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_talents` int(11) DEFAULT 0,
  `personal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `udemy_project_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `universities`
--

INSERT INTO `universities` (`id`, `user_id`, `type`, `max_talents`, `personal_name`, `lastname`, `summary`, `address`, `state`, `city`, `country`, `deleted_at`, `created_at`, `updated_at`, `udemy_project_id`) VALUES
(9, 4406, 'Henderson University', 0, 'Sebastian', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(10, 4407, 'Henderson University', 0, 'Christian ', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(11, 4408, 'Henderson University', 0, 'Abraham', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(12, 4409, 'Henderson University', 0, 'Alejandro', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(13, 4410, 'Henderson University', 0, 'Cecilia', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(14, 4411, 'Universidad Tecnologica', 0, 'Gloria', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(15, 4412, 'Universidad Tecnologica', 0, 'Solomeo', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(16, 4413, 'Universidad Tecnologica', 0, 'Belen', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(17, 4414, 'Universidad Tecnologica', 0, 'Jesus', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(18, 4415, 'Universidad Tecnologica', 0, 'Machain', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(19, 4416, 'Universidad Tecnologica', 0, 'Ezequiel', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(20, 4417, 'Henderson University', 0, 'Alfredo', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(21, 4418, 'Henderson University', 0, 'Alberto', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(22, 4419, 'Henderson University', 0, 'Josue', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(23, 4420, 'Henderson University', 0, 'Heli', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(24, 4421, 'Henderson University', 0, 'Sergio', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(25, 4422, 'Universidad Tecnologica', 0, 'Diego', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(26, 4423, 'Universidad Tecnologico', 0, 'Esmeralda ', 'Galrdo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(27, 4424, 'Universidad Tecnologica', 0, 'Melania', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(28, 4425, 'Universidad Teecnologica', 0, 'Fernando', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(29, 4426, 'Universidad Tecnologica', 0, 'Julio', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascaientes', 'Mexico', NULL, NULL, NULL, NULL),
(30, 4427, 'Universidad Tecnologica', 0, 'Saul', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(31, 4428, 'Henderson University', 0, 'Angel', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(32, 4429, 'Henderson University', 0, 'Pedro', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(33, 4430, 'Henderson University', 0, 'Samuel', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(34, 4431, 'Henderson University', 0, 'Rodrigo', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(35, 4432, 'Henderson University', 0, 'Jaime', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(36, 4433, 'Universidad Tecnologica', 0, 'Andres', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(37, 4434, 'Universidad Tecnologica', 0, 'Andrea', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(38, 4435, 'Universidad Tecnologica', 0, 'Alexa', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(39, 4436, 'Universidad Tecnologica', 0, 'Jona', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(40, 4437, 'Universidad Tecnologica', 0, 'Bryan', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(41, 4438, 'Universidad Tecnologica', 0, 'Adan', 'Galardo', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(42, 4439, 'Henderson University', 0, 'Nicolas ', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(43, 4441, 'Henderson University', 0, 'Antonio', 'Galardo', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(44, 4442, 'Henderson University', 0, 'Ludwig', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(45, 4443, 'Henderson University', 0, 'Demian', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(46, 4444, 'Henderson', 0, 'Howl', 'Lozaon', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(47, 4445, 'Universidad Tecnologica', 0, 'Dimitri', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(48, 4446, 'Universidad Tecnologica', 0, 'Jessica', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(49, 4447, 'Universidad Tecnologica', 0, 'Andrue', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(50, 4448, 'Universidad Tecnologica', 0, 'Alexander', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(51, 4449, 'Universidad Tecnologica ', 0, 'Anahi', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(52, 4450, 'Universidad Tecnologica', 0, 'Karen', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(53, 4451, 'Henderson university', 0, 'Sarai', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(54, 4452, 'Henderson University', 0, 'Solovino', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(55, 4453, 'Henderson University', 0, 'Hector', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(56, 4454, 'Hendeson University', 0, 'Daniel', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', '0000-00-00 00:00:00', NULL, NULL, NULL),
(57, 4455, 'Henderson Univerity', 0, 'Mario', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', '0000-00-00 00:00:00', NULL, NULL, NULL),
(58, 4456, 'Universidad Tecnologica', 0, 'Dario', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(59, 4457, 'Universidad Tecnologica', 0, 'Jorge', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(60, 4458, 'Universidad Tecnologica', 0, 'Joel', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascaliente', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(61, 4459, 'Universidad Tecnologica', 0, 'Javier', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(62, 4460, 'Universidad Tecnologica', 0, 'Nancy', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(63, 4461, 'Universidad Tecnologica', 0, 'Jose ', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(64, 4462, 'Henderson University', 0, 'Liliana', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(65, 4463, 'Henderson University', 0, 'Chaim', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(66, 4464, 'Henderson University', 0, 'Bert', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidades', NULL, NULL, NULL, NULL),
(67, 4465, 'Henderson University', 0, 'Paul', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(68, 4466, 'Henderson University', 0, 'George', 'Lozano', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(75, 4467, 'Universidad Tecnologica', 0, 'Bruce', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(76, 4468, 'Universidad Tecnologica', 0, 'Marie', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(77, 4469, 'Universidad Tecnologica', 0, 'Joan', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(78, 4470, 'Universidad Tecnologica', 0, 'Ann', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(79, 4471, 'Universidad Tecnologica', 0, 'Lita', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(80, 4472, 'Universidad Tecnologica', 0, 'Sandra', 'Lozano', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(81, 4473, 'Henderson University', 0, 'Angela', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(82, 4474, 'Henderson University', 0, 'Kim', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(83, 4475, 'Henderson University', 0, 'Jacqueline', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(84, 4476, 'Henderson University', 0, 'Susan', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(85, 4477, 'Henderson University', 0, 'Fryderyk', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(86, 4478, 'Universidad Tecnologica', 0, 'Peter', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(87, 4479, 'Universidad Tecnologica', 0, 'Franz', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(88, 4480, 'Universidad Tecnologica', 0, 'Pyotr', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(89, 4481, 'Universidad Tecnologica', 0, 'Joseph', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(90, 4482, 'Universidad Tecnologica', 0, 'Jakob', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(91, 4483, 'Universidad Tecnologica', 0, 'Octavio', 'Brwon', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(92, 4484, 'Henderson University', 0, 'Pablo', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(93, 4485, 'Henderson University', 0, 'Federico', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(94, 4486, 'Henderson University', 0, 'Amado', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(95, 4487, 'Henderson University', 0, 'Luis', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(96, 4488, 'Henderson University', 0, 'Gabriela', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(97, 4489, 'Universidad Tecnologica', 0, 'Juana', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(98, 4490, 'Universidad Tecnologica', 0, 'Ruben', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(99, 4491, 'Universidad Tecnologica', 0, 'Emilio', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(100, 4492, 'Universidad Tecnologica', 0, 'Gustavo', 'Brwon', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes ', 'Mexico', NULL, NULL, NULL, NULL),
(101, 4493, 'Universidad Tecnologica', 0, 'Ramon', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(102, 4494, 'Universidad Tecnologica ', 0, 'Nicamor', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(103, 4495, 'Henderson  University', 0, 'Miguel', 'Brwown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados unidos', NULL, NULL, NULL, NULL),
(104, 4496, 'Henderson University', 0, 'Alvaro', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados unidos', NULL, NULL, NULL, NULL),
(105, 4497, 'Henderson University', 0, 'Rafael', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(106, 4498, 'Henderson University', 0, 'Vicente', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas', 'Estados Unidos', NULL, NULL, NULL, NULL),
(107, 4499, 'Henderson', 0, 'Alfonsia', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(108, 4500, 'Henderson University', 0, 'Williams', 'Brown', NULL, '1100 Henderson St, Arkadelphia, AR 71999, Estados Unidos\r\n', NULL, 'Las vegas ', 'Estados Unidos', NULL, NULL, NULL, NULL),
(109, 4501, 'Universidad Tecnologica', 0, 'Carlos', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(110, 4502, 'Universidad Tecnologica', 0, 'Jordi', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(111, 4503, 'Universidad Tecnologica', 0, 'Raul', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes ', 'Mexico', NULL, NULL, NULL, NULL),
(112, 4504, 'Universidad Tecnologica', 0, 'Auron', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(113, 4505, 'Universidad Tecnologica ', 0, 'Roque', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes', 'Mexico', NULL, NULL, NULL, NULL),
(114, 4506, 'Universidad Tecnologica', 0, 'Florencia', 'Brown', NULL, 'Blvd. John Paul II 1302 Ex, Hacienda La Cantera, 20200 Aguascalientes', NULL, 'Aguascalientes ', 'Mexico', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_user` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT 0,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recover_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wepowApikey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporal_password` tinyint(4) NOT NULL DEFAULT 0,
  `terms_privacy` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type_user`, `remember_token`, `created_at`, `updated_at`, `img`, `facebook_id`, `linkedin_id`, `verify`, `verify_token`, `recover_password`, `wepowApikey`, `temporal_password`, `terms_privacy`) VALUES
(4406, 'Sebastian Galardo', 'Sebastian@thincrs.com', 'Sebastian1234', 2, 'tu nombre 1234', NULL, NULL, ':)', 'Sebastian Castellanos', 'Link_Sebastian', 1, '1', 'sebastian1234', NULL, 0, 1),
(4407, 'Christian Galardo', 'Christian@thincrs.com', 'Christian1234', 2, 'tu nombre 1234', '2020-04-30 01:28:06', '2020-05-01 01:28:06', ':D', 'Christian vals', 'link_Christian', 1, '1', 'Christian1234', NULL, 123, 1),
(4408, 'Abraham Galardo', 'Abraham@ael.com', 'Abraham1234', 2, 'tu nombre 1234', '2020-04-30 01:34:32', '2020-05-01 01:34:32', ':l', 'Abraham Ramirez', 'linke_Abraham', 1, '1', 'Abraham1234', NULL, 123, 1),
(4409, 'Alejandra Galardo', 'Alejandra@hotmail.com', 'Alejandra1234', 2, 'tu nombre 1234', '2020-04-30 01:46:00', '2020-05-01 01:46:00', ':3', 'Nany Macfee', 'link_Alejandra', 1, '1', 'Alejandra1234', NULL, 123, 1),
(4410, 'Cecilia Galardo', 'Cecilia@hotmail.com', 'Cecilia1234', 2, 'tu nombre 1234', '2020-04-30 18:15:38', '2020-04-30 18:15:38', ':D', 'Cecilia fav', 'Link_Cecilia', 1, '1', 'Cecilia1234', NULL, 123, 1),
(4411, 'Gloria Galardo', 'Gloria@outlook.es', 'Gloria1234', 2, 'tu nombre 1234', '2020-04-30 18:18:12', '2020-04-30 18:18:12', '>:3', 'Gloria loves', 'link_Gloria', 1, '1', 'Gloria1234', NULL, 123, 1),
(4412, 'Solomeo Galardo', 'Solomeo@outlook.es', 'Solomeo1234', 2, 'tu nombre 1234', '2020-04-30 18:23:08', '2020-04-30 18:23:08', ':(', 'Solomeo el mejor', 'link_Solomeo', 1, '1', 'Solomeo1234', NULL, 123, 1),
(4413, 'Belen Galardo', 'Belen@yahoo.com', 'Belen1234', 2, 'tu nombre 1234', '2020-04-30 18:28:24', '2020-04-30 18:28:24', ':s', 'Belen moris', 'Link_Belen', 1, '1', 'Belen1234', NULL, 123, 1),
(4414, 'Jesus Galardo', 'Jesus@hotmail.com', 'Jesus1234', 2, 'tu nombre 1234', '2020-04-30 18:30:55', '2020-04-30 18:30:55', ':p', 'Jesus llolca', 'Link_Jesus', 1, '1', 'Jesus1234', NULL, 123, 1),
(4415, 'Machain Galardo', 'Machain@hotmail.com', 'Machain12334', 2, 'tu nombre 1234', '2020-04-30 18:33:19', '2020-04-30 18:33:19', ':p', 'Machain atcomplete', 'Link_Machain', 1, '1', 'Machain1234', NULL, 123, 1),
(4416, 'Ezequiel Galardo', 'Ezequiel@yahoo.com', 'Ezequiel1234', 2, 'tu nombre 1234', '2020-04-30 18:35:09', '2020-04-30 18:35:09', ':S', 'Ezequiel sensual', 'Link_Ezequiel', 1, '1', 'Ezequiel1234', NULL, 123, 1),
(4417, 'Alfredo Galardo', 'Alfredo@outlook.es', 'Alfredo1234', 2, 'tu nombre 1234', '2020-04-30 18:37:40', '2020-04-30 18:37:40', ':K', 'Alfredo chaparris', 'Link_Alfredo', 1, '1', 'Alfredo12334', NULL, 123, 1),
(4418, 'Alberto Galardo', 'Alberto@gmail.com', 'Alberto1234', 2, 'tu nombre 1234', '2020-04-30 18:42:25', '2020-04-30 18:42:25', ':3', 'Alberto gitup', 'Link_Alberto', 1, '1', 'Alberto1234', NULL, 123, 1),
(4419, 'Josue Galardo', 'Josue@gmail.com', 'Josue1234', 2, 'tu nombre 1234', '2020-04-30 18:44:40', '2020-04-30 18:44:40', ':B', 'Josue bromash', 'Link_Josue', 1, '1', 'Josue1234', NULL, 123, 1),
(4420, 'Helí Galardo', 'Helí@yahoo.com', 'Helí1234', 2, 'tu nombre 1234', '2020-04-22 18:46:34', '2020-04-27 18:46:34', ':L', 'Helí villa', 'Link_Helí', 1, '1', 'Helí1234', NULL, 123, 1),
(4421, 'Sergio Galardo', 'Sergio@hotmail.com', 'Sergio1234', 2, 'tu nombre 1234', '2020-04-26 18:49:26', '2020-04-28 18:49:26', ':L', 'Sergio pelonchas', 'Link_Sergio', 1, '1', 'Sergio1234', NULL, 123, 1),
(4422, 'Diego Galardo', 'Diego@outlook.es', 'Diego1234', 2, 'tu nombre 1234', '2020-04-23 18:51:59', '2020-04-27 18:51:59', ':l', 'Diego el loco', 'Link_Diego', 1, '1', 'Diego1234', NULL, 123, 1),
(4423, 'Esmeralda Galardo', 'Esmeralda@gmail.com', 'Esmeralda1234', 2, 'tu nombre 1234', '2020-04-28 18:53:44', '2020-04-29 18:53:44', ':*', 'Esmeralda darks', 'Link_Esmeralda', 1, '1', 'Esmeralda1234', NULL, 123, 1),
(4424, 'Melania Galardo', 'Melania@outlook.es', 'Melania1234', 2, 'tu nombre 1234', '2020-04-14 18:55:19', '2020-04-15 18:55:19', ':(', 'Nany Macfee', 'Link_Melania', 1, '1', 'Melania1234', NULL, 123, 1),
(4425, 'Fernando Galardo', 'Fernando@gmail.com', 'Fernando1234', 2, 'tu nombre 1234', '2020-04-17 18:56:56', '2020-04-19 18:56:56', ':k', 'Fernando de lara lopez lopez loco', 'Link_Fernando', 1, '1', 'Fernando1234', NULL, 123, 1),
(4426, 'Julio Galardo', 'Julio@amazon.com', 'Julio1234', 2, 'tu nombre 1234', '2020-04-08 18:58:28', '2020-04-13 18:58:28', ':o', 'Julio locos pero pocos', 'Link_Julio', 1, '1', 'Julio1234', NULL, 123, 1),
(4427, 'Saul Galardo', 'Saul@amazon.com', 'Saul1234', 2, 'tu nombre 1234', '2020-04-02 20:00:03', '2020-04-03 20:00:03', ':p', 'Saul el macho', 'Link_Saul', 1, '1', 'Saul1234', NULL, 123, 1),
(4428, 'Angel Galardo', 'Angel@outloo.es', 'Angel1234', 2, 'tu nombre 1234', '2020-04-20 19:09:53', '2020-04-20 19:09:53', ':p', 'Angel plof', 'Link_Angel', 1, '1', 'Angel12334', NULL, 123, 1),
(4429, 'Pedro Galardo', 'Pedro@gmail.com', 'Pedro12334', 2, 'tu nombre 1234', '2020-04-27 19:12:29', '2020-04-29 19:12:29', ':s', 'Pedro pipas', 'Link_Pedro', 1, '1', 'Pedro1234', NULL, 123, 1),
(4430, 'Samuel Galardo ', 'Samuel@yahoo.com', 'Samuel1234', 2, 'tu nombre 1234', '2020-04-17 19:14:05', '2020-04-28 19:14:05', ':h', 'Samuel el chimuelo', 'Link_Samuel', 1, '1', 'Samuel1234', NULL, 123, 1),
(4431, 'Rodrigo Galrado', 'Rodrigo@yahoo.com', 'Rodrigo1234', 2, 'tu nombre 1234', '2020-04-29 19:15:52', '2020-04-30 19:15:52', ':l', 'Rodrigo el lineas locas', 'Link_Rodrigo', 1, '1', 'Rodrigo1234', NULL, 123, 1),
(4432, 'Jaime Galardo', 'Jaime@gmail.com', 'Jaime1234', 2, 'tu nombre 1234', '2020-04-07 19:17:45', '2020-04-22 19:17:45', ':l', 'Jaime el datos masivos', 'Link_Jaime', 1, '1', 'Jaime1234', NULL, 123, 1),
(4433, 'Andres Galardo', 'Andres@outloo.es', 'Andres1234', 2, 'tu nombre 1234', '2020-04-20 19:19:24', '2020-04-29 19:19:24', ':D', 'Andres el paciente', 'Link_Andres', 1, '1', 'Andres1234', NULL, 123, 1),
(4434, 'Andrea Galardo', 'Andrea@gmail.com', 'Andrea1234', 2, 'tu nombre 1234', '2020-04-19 19:20:56', '2020-04-27 19:20:56', ':u', 'Andrea la chavarucka', 'Link_Andrea', 1, '1', 'Andrea1234', NULL, 123, 1),
(4435, 'Alexa Galardo', 'Alexa@outlook.es', 'Alexa1234 ', 2, 'tu nombre 1234', '2020-04-26 19:22:54', '2020-04-28 19:22:54', ':e', 'Alexa la moxxa', 'Link_Alexa ', 1, '1', 'Alexa 1234', NULL, 123, 1),
(4436, 'Jona Galardo', 'Jona@gmail.com', 'Jona1234', 2, 'tu nombre 1234', '2020-04-23 19:26:15', '2020-04-25 19:26:15', ':ñ', 'Jona el mango', 'Link_Jona', 1, '1', 'Jona1234', NULL, 123, 1),
(4437, 'Bryan Galrdo', 'Bryan@hotmail.com', 'Bryan1234', 2, 'tu nombre 1234', '2020-04-26 19:28:00', '2020-04-27 19:28:00', ':l', 'Bryan el navajas locas', 'Link_Bryan', 1, '1', 'Bryan1234', NULL, 123, 1),
(4438, 'Adan Galardo', 'Adan@outlook.es', 'Adan1234', 2, 'tu nombre 1234', '2020-04-27 19:30:55', '2020-04-29 19:30:55', '<3 . <3', 'Adan el guapo !!!! ', 'Link_thebest_Adan', 1, '1', 'Adan12334', NULL, 123, 1),
(4439, 'Nicolas Lozano', 'Nicolas@gmail.com', 'Nicolas1234', 2, 'tu nombre 1234', '2020-04-24 19:33:06', '2020-04-25 19:33:06', ':S', 'Nicolas el rey del magnetismo loco', 'Link_Nicolas', 1, '1', 'Nicolas1234', NULL, 122, 1),
(4441, 'Antonio Lozano', 'Antonio@outlook.es', 'Antonio1234', 2, 'tu nombre 1234', '2020-04-26 19:46:15', '2020-04-28 19:46:15', ':D', 'Antonio lalos', 'Link_Antonio', 1, '1', 'Antonio1234', NULL, 122, 1),
(4442, 'Ludwig Lozano', 'Ludwig@yahoo.com', 'Ludwig1234', 2, 'tu nombre 12334', '2020-04-27 19:54:14', '2020-04-29 19:54:14', ':D', 'Ludwig el pro de la musica', 'Link_Ludwig', 1, '1', 'Ludwig1234', NULL, 122, 1),
(4443, 'Demian Lozano ', 'Demian@hotmail.com', 'Demian1234', 2, 'tu nombre 1234', '2020-04-18 19:56:21', '2020-04-26 19:56:21', ':p', 'Demian toxido', 'Link_Demian', 1, '1', 'Demian1234', NULL, 122, 1),
(4444, 'Howl Lozano', 'Howl@yahoo.com', 'Howl1234', 2, 'tu nombre 1234', '2020-04-24 19:58:00', '2020-04-27 19:58:00', ':d', 'Howl y su castillo', 'Link_Howl', 1, '1', 'Howl1234', NULL, 122, 1),
(4445, 'Dimitri Lozano', 'Dimitri@gmail.com', 'Dimitri 1234', 2, 'tu nombre 1234', '2020-04-26 19:59:22', '2020-04-29 19:59:22', ':D', 'Dimitri anastasio', 'Link_Dimitri ', 1, '1', 'Dimitri1234', NULL, 122, 1),
(4446, 'Jessica Lozano', 'Jessica@yahoo.com', 'Jessica1234', 2, 'tu nombre 1234', '2020-04-26 20:01:17', '2020-04-27 20:01:17', ':D', 'Jessica la guarra', 'Link_Jessica', 1, '1', 'Jessica1234', NULL, 122, 1),
(4447, 'Andrue Lozano', 'Andrue@yahoo.com', 'Andrue1234', 2, 'tu nombre 1234', '2020-04-26 20:02:40', '2020-04-28 20:02:40', ':D', 'Andrue el makako', 'Link_Andrue', 1, '1', 'Andrue1234', NULL, 122, 1),
(4448, 'Alexander Lozano', 'Alexander@outlook.es', 'Alexander1234', 2, 'tu nombre 1234', '2020-04-19 20:04:57', '2020-04-23 20:04:57', ':D', 'Alexander el pez', 'Link_Alexander', 1, '1', 'Alexander1234', NULL, 122, 1),
(4449, 'Anahí Lozano', 'Anahí@gmail.com', 'Anahí1234', 2, 'tu nombre 1234', '2020-04-16 20:06:17', '2020-04-21 20:06:17', ':D', 'Anahí la flor ', 'Link_Anahí', 1, '1', 'Anahí1234', NULL, 122, 1),
(4450, 'Karen Lozano', 'Karen@outlook.es', 'Karen1234', 2, 'tu nombre 1234', '2020-04-26 20:12:56', '2020-04-27 20:12:56', ':D', 'Karen michis', 'Link_Karen', 1, '1', 'Karen1234', NULL, 122, 1),
(4451, 'Sarai Lozano', 'Sarai@yahoo.com', 'Sarai1234', 2, 'tu nombre 1234', '2020-04-22 20:15:44', '2020-04-27 20:15:44', ':D', 'Sarai lochos', 'Link_Sarai', 1, '1', 'Sarai1234', NULL, 122, 1),
(4452, 'Solovino Lozano', 'Solovino@yahoo.com', 'Solovino1234', 2, 'tu nombre 1234', '2020-04-26 20:18:24', '2020-04-27 20:18:24', ':D', 'Solovino makutes', 'Link_Solovino', 1, '1', 'Solovino1234', NULL, 122, 1),
(4453, 'Hector Lozano', 'Hector@outlook.es', 'Hector1234', 2, 'tu nombre 1234', '2020-04-19 20:20:23', '2020-04-21 20:20:23', ':D', 'Hector el master', 'Link_Hector', 1, '1', 'Hector1234', NULL, 122, 1),
(4454, 'Daniel Lozano', 'Daniel@gmail.com', 'Daniel1234', 2, 'tu nombre 1234', '2020-04-26 20:21:45', '2020-04-29 20:21:45', ':(', 'Daniel lozano ', 'Link_Daniel', 1, '1', 'Daniel1234', NULL, 122, 1),
(4455, 'Mario Lozano', 'Mario@outlook.es', 'Mario1234', 2, 'tu nombre 1234', '2020-04-26 20:23:17', '2020-04-28 20:23:17', ':D', 'Mario kart', 'Link_Mario', 1, '1', 'Mario1234', NULL, 122, 1),
(4456, 'Dario Lozano ', 'Dario@gmail.com', 'Dario1234', 2, 'tu nombre 1234', '2020-04-29 20:24:54', '2020-04-30 20:24:54', ':D', 'Dario el mal', 'Link_Dario', 1, '1', 'Dario1234', NULL, 122, 1),
(4457, 'Jorge Lozano', 'Jorge@Outlook.es', 'Jorge1234', 2, 'tu nombre 1234', '2020-04-19 20:26:29', '2020-04-28 20:26:29', ':D ', 'Jorge el chango', 'Link_Jorge', 1, '1', 'Jorge1234', NULL, 122, 1),
(4458, 'Joel Lozano ', 'Joel@outlook.es', 'Joel1234', 2, 'tu nombre 1234', '2020-04-26 20:30:48', '2020-04-28 20:30:48', ':d', 'Joel el abogado', 'Link_Joel', 1, '1', 'Joel1234', NULL, 122, 1),
(4459, 'Javier Lozano', 'Javier@gmail.com', 'Javier1234', 2, 'tu nombre 1234', '2020-04-26 20:32:10', '2020-04-28 20:32:10', ':D', 'Javier el raro', 'Link_Javier', 1, '1', 'Javier1234', NULL, 122, 1),
(4460, 'Nancy Lozano', 'Nancy@yahoo.com', 'Nancy1234', 2, 'tu nombre 1234', '2020-04-26 20:33:51', '2020-04-29 20:33:51', ':p', 'Nancy royal', 'Link_Nancy', 1, '1', 'Nancy1234', NULL, 122, 1),
(4461, 'Jose Lozano', 'Jose@yahoo.com', 'Jose1234', 2, 'tu nombre 1234', '2020-04-01 21:35:19', '2020-04-14 20:35:19', ':p', 'Jose ...', 'Link_Jose', 1, '1', 'Jose1234', NULL, 122, 1),
(4462, 'Liliana Lozano', 'Liliana@yahoo.com', 'Liliana1234', 2, 'tu nombre 1234', '2020-04-27 20:37:20', '2020-04-22 20:37:20', ':D', 'Liliana arenas', 'Link_Liliana', 1, '1', 'Liliana1234', NULL, 122, 1),
(4463, 'Chaim Lozano', 'Chaim@yahoo.com', 'Chaim1234', 2, 'tu nombre 1234', '2020-04-30 01:34:32', '2020-04-30 18:15:38', ':D', 'Chaim ltz', 'Link_Chaim', 1, '1', 'Chaim1234', NULL, 122, 1),
(4464, 'Bert Lozano', 'Bert@outlook.es', 'Bert1234', 2, 'tu nombre 1234', '2020-04-30 18:30:55', '2020-04-30 18:33:19', ':D', 'Bert aints', 'Link_Bert', 1, '1', 'Bert1234', NULL, 122, 1),
(4465, 'Paul  Lozano ', 'Paul@gmail.com', 'Paul1234', 2, 'tu nombre 1234', '2020-04-07 20:45:42', '2020-04-27 20:45:42', ':(', 'Paul stanly', 'Link_Paul', 1, '1', 'Paul1234', NULL, 122, 1),
(4466, 'George Lozano', 'George@gmail.com', 'George1234', 2, 'tu nombre 1234', '2020-04-05 20:47:14', '2020-04-06 20:47:14', ':p', 'George morrison', 'Link_George', 1, '1', 'George1234', NULL, 122, 1),
(4467, 'Bruce Lozano', 'Bruce@gmail.com', 'Bruce1234', 2, 'tu nombre 1234', '2020-04-07 20:48:44', '2020-04-16 20:48:44', ':(', 'Bruce wills', 'Link_Bruce', 1, '1', 'Bruce1234', NULL, 122, 1),
(4468, 'Marie Lozano', 'Marie@gmail.com', 'Marie1234', 2, 'tu nombre 1234', '2020-04-30 18:23:08', '2020-04-30 18:33:19', ':D', 'Marie marsh', 'Link_Marie', 1, '1', 'Marie1234', NULL, 122, 1),
(4469, 'Joan Lozano', 'Joan@hotmail.com', 'Joan1234', 2, 'tu nombre 1234', '2020-04-19 20:53:00', '2020-04-26 20:53:01', ':(', 'Joan salones', 'Link_Joan', 1, '1', 'Joan1234', NULL, 122, 1),
(4470, 'Ann Lozano', 'Ann@hotmail.com', 'Ann1234', 2, 'tu nombre 1234|', '2020-04-28 20:54:28', '2020-04-29 20:54:28', ':d', 'Ann lona', 'Link_Ann', 1, '1', 'Ann1234', NULL, 122, 1),
(4471, 'Lita Lozano', 'Lita@gmail.com', 'Lita1234', 2, 'tu nombre 1234', '2020-04-28 20:55:46', '2020-04-29 20:55:46', ':D ', 'Lita lord', 'Link_Lita', 1, '1', 'Lita1234', NULL, 122, 1),
(4472, 'Sandra Lozano', 'Sandra@hotmail.com', 'Sandra1234', 2, 'tu nombre 1234', '2020-04-14 20:57:23', '2020-04-21 20:57:23', ':D', 'Sandra lux', 'Link_Sandra', 1, '1', 'Sandra1234', NULL, 122, 1),
(4473, 'Angela Brown', 'Angela@hotmail.com', 'Angela1234', 2, 'tu nombre', '2020-04-19 20:58:42', '2020-04-28 20:58:42', ':p', 'Angela la macarena', 'Link_Angela', 1, '1', 'Angela1234', NULL, 121, 1),
(4474, 'Kim Brown', 'Kim@hotmail.com', 'Kim1234', 2, 'tu nombre 1234', '2020-04-22 21:00:12', '2020-04-29 21:00:12', ':p', 'Kim karry', 'Link_Kim', 1, '1', 'Kim1234', NULL, 121, 1),
(4475, 'Jacqueline Brown', 'Jacqueline@gmail.com', 'Jacqueline1234', 2, 'tu nombre 1234', '2020-04-21 21:02:08', '2020-04-29 21:02:08', ':D', 'Jacqueline jess', 'Link_Jacqueline', 1, '1', 'Jacqueline1234', NULL, 121, 1),
(4476, 'Susan Brown', 'Susan@outlook.es', 'Susan1234', 2, 'tu nombre 1234', '2020-04-03 22:03:28', '2020-04-11 21:03:28', '-A', 'Susan pequitas', 'Link_Susan', 1, '1', 'Susan1234', NULL, 121, 1),
(4477, 'Fryderyk Brown', 'Fryderyk@hotmail.com', 'Fryderyk1234', 2, 'tu nombre 1234', '2020-04-09 21:05:30', '2020-04-20 21:05:30', '-o', 'Fryderyk lanz', 'Link_Fryderyk', 1, '1', 'Fryderyk1234', NULL, 121, 1),
(4478, 'Peter Brown', 'Peter@outlook.es', 'Peter1234', 2, 'tu nombre 1234', '2020-04-21 21:06:59', '2020-04-28 21:06:59', ':D', 'Peter jojobo', 'Link_Peter', 1, '1', 'Peter1234', NULL, 121, 1),
(4479, 'Franz Brown', 'Franz@gmail.com', 'Franz1234', 2, 'tu nombre 1234', '2020-04-09 21:08:18', '2020-04-21 21:08:18', ':p', 'Franz sinatra', 'Link_Franz', 1, '1', 'Franz1234', NULL, 121, 1),
(4480, 'Pyotr Brown ', 'Pyotr@hotmil.com', 'Pyotr1234', 2, 'tu nombre 1234', '2020-04-21 21:09:26', '2020-04-29 21:09:26', ':D', 'Pyotr parts', 'Link_Pyotr', 1, '1', 'Pyotr1234', NULL, 121, 1),
(4481, 'Joseph Brown', 'Joseph@hotmail.com', 'Joseph1234', 2, 'tu nombre 1234', '2020-04-03 22:10:41', '2020-04-07 21:10:41', ':k', 'Joseph johns', 'Link_Joseph', 1, '1', 'Joseph1234', NULL, 121, 1),
(4482, 'Jakob Brown', 'Jakob@outlook.es', 'Jakob1234', 2, 'tu nombre 1234', '2020-04-04 22:11:52', '2020-04-26 21:11:52', ':D', 'Jakob el bilingue', 'Link_Jakob', 1, '1', 'Jakob1234', NULL, 121, 1),
(4483, 'Octavio Brown', 'Octavio@outlook.es', 'Octavio1234', 2, 'tu nombre 1234', '2020-04-13 21:13:21', '2020-04-21 21:13:21', ':e', 'Octavio paz', 'Link_Octavio', 1, '1', 'Octavio1234', NULL, 121, 1),
(4484, 'Pablo Brown ', 'Pablo@hotmail.com', 'Pablo1234', 2, 'tu nombre 1234', '2020-04-08 21:14:44', '2020-04-22 21:14:44', ':w', 'Pablo neruda', 'Link_Pablo', 1, '1', 'Pablo1234', NULL, 121, 1),
(4485, 'Federico Brown', 'Federico@gmail.com', 'Federico1234', 2, 'tu nombre 1234', '2020-04-14 21:16:04', '2020-04-29 21:16:04', ':D', 'Federico marcks', 'Link_Federico', 1, '1', 'Federico1234', NULL, 121, 1),
(4486, 'Amado Brown ', 'Amado@outlook.es', 'Amado1234', 2, 'tu nombre 1234', '2020-04-09 21:17:41', '2020-04-28 21:17:41', ':D', 'Amado neruda', 'Link_Amado', 1, '1', 'Amado1234', NULL, 121, 1),
(4487, 'Luis Brown', 'Luis@outlook.es', 'Luis1234', 2, 'tu nombre 1234', '2020-04-01 22:19:08', '2020-04-02 22:19:08', ':D', 'Luis pop', 'Link_Luis', 1, '1', 'Luis1234', NULL, 121, 1),
(4488, 'Gabriela Brown', 'Gabriela@hotmail.com', 'Gabriela1234', 2, 'tu nombre 1234', '2020-04-22 21:29:33', '2020-04-28 21:29:33', ':p', 'Gabriela añoña', 'Link_Gabriela', 1, '1', 'Gabriela1234', NULL, 121, 1),
(4489, 'Juana Brown', 'Juana@outlook.es', 'Juana1234', 2, 'tu nombre 1234', '2020-04-20 21:35:19', '2020-04-22 21:35:19', ':p', 'Juana sor', 'Link_Juana', 1, '1', 'Juana1234', NULL, 121, 1),
(4490, 'Ruben Brown', 'Ruben@outlook.es', 'Ruben1234', 2, 'tu nombre 1234', '2020-04-22 21:36:43', '2020-04-28 21:36:43', ':D', 'Ruben roberts', 'Link_Ruben', 1, '1', 'Ruben1234', NULL, 121, 1),
(4491, 'Emilio Brown', 'Emilio@hotmail.com', 'Emilio1234', 2, 'tu nombre 1234', '2020-04-04 22:38:55', '2020-04-12 21:38:55', ':S', 'Emilio zapata', 'Link_Emilio', 1, '1', 'Emilio1234', NULL, 121, 1),
(4492, 'Gustavo Brown', 'Gustavo@yahoo.com', 'Gustavo1234', 2, 'tu nombre 1234', '2020-04-13 21:40:19', '2020-04-22 21:40:19', ':D', 'Gustavo Cerati', 'Link_Gustavo', 1, '1', 'Gustavo1234', NULL, 121, 1),
(4493, 'Ramon Brown', 'Ramon@yahoo.com', 'Ramon1234', 2, 'tu nombre 1234', '2020-04-21 21:41:29', '2020-04-23 21:41:29', ':D', 'Ramon el dragon', 'Link_Ramon', 1, '1', 'Ramon1234', NULL, 121, 1),
(4494, 'Nicamor Brown', 'Nicamor@hotmail.com', 'Nicamor1234', 2, 'tu nombre 1234', '2020-04-22 21:43:22', '2020-04-22 21:43:22', ':D', 'Nicamor tomar', 'Link_Nicamor', 1, '1', 'Nicamor1234', NULL, 121, 1),
(4495, 'Miguel Brown', 'Miguel@hotmail.com', 'Miguel1234', 2, 'tu nombre 1234', '2020-04-07 21:44:39', '2020-04-07 21:44:39', ':p', 'Miguel past', 'Link_Miguel', 1, '1', 'Miguel1234', NULL, 121, 1),
(4496, 'Alvaro Brown ', 'Alvaro@yahoo.com', 'Alvaro1234', 2, 'tu nombre 1234', '2020-04-03 22:46:12', '2020-04-08 21:46:12', ':D', 'Alvaro romero', 'Link_Alvaro', 1, '1', 'Alvaro1234', NULL, 121, 1),
(4497, 'Rafel Brown', 'Rafel@yahoo.com', 'Rafel1234', 2, 'tu nombre 1234', '2020-04-07 21:51:44', '2020-04-09 21:51:44', ':D', 'Rafel lopts', 'Link_Rafel', 1, '1', 'Rafel1234', NULL, 121, 1),
(4498, 'Vicente Brown', 'Vicente@yahoo.com', 'Vicente1234', 2, 'tu nombre 1234', '2020-04-20 21:53:18', '2020-04-22 21:53:18', ':D', 'Vicente fernandez', 'Link_Vicente', 1, '1', 'Vicente1234', NULL, 121, 1),
(4499, 'Alfonsia Brown', 'Alfonsia@yahoo.com', 'Alfonsia1234', 2, 'tu nombre 1234', '2020-04-09 21:54:37', '2020-04-10 21:54:37', ':D', 'Alfonsia alms', 'Link_Alfonsia', 1, '1', 'Alfonsia1234', NULL, 121, 1),
(4500, 'William Brown', 'William@outlook.es', 'William1234', 2, 'tu nombre 1234', '2020-04-26 21:55:42', '2020-04-28 21:55:42', ':D', 'William sanchez', 'Link_William', 1, '1', 'William1234', NULL, 121, 1),
(4501, 'Carlos Brown ', 'Carlos@hotmail.com', 'Carlos1234', 2, 'tu nombre 1234', '2020-04-17 21:57:05', '2020-04-18 21:57:05', ':D', 'Carlos smith', 'Link_Carlos', 1, '1', 'Carlos1234', NULL, 121, 1),
(4502, 'Jordi Brown', 'Jordi@outlook.es', 'Jordi1234', 2, 'tu nombre 1234', '2020-04-29 21:58:23', '2020-04-30 21:58:23', ':D', 'Jordi will', 'Link_Jordi', 1, '1', 'Jordi1234', NULL, 121, 1),
(4503, 'Raul Brown ', 'Raul@outlook.es', 'Raul1234', 2, 'tu nombre 1234', '2020-04-15 21:59:36', '2020-04-16 21:59:36', ':ñ', 'Raul roberts', 'Link_Raul', 1, '1', 'Raul1234', NULL, 121, 1),
(4504, 'Auron Brown', 'Auron@yahoo.com', 'Auron1234', 2, 'tu nombre 1234', '2020-04-30 01:34:32', '2020-04-30 18:33:19', ':D', 'Auron play', 'Link_Auron', 1, '1', 'Auron1234', NULL, 121, 1),
(4505, 'Roque Brown', 'Roque@gmail.com', 'Roque1234', 2, 'tu nombre 1234', '2020-04-30 01:34:32', '2020-04-30 18:33:19', ':S', 'Roque brown', 'Link_Roque', 1, '1', 'Roque1234', NULL, 121, 1),
(4506, 'Florencia Brown', 'Florencia@hotmail.com', 'Florencia1234', 2, 'tu nombre 1234', '2020-04-30 01:34:32', '2020-04-30 22:05:08', ':D', 'Florencia fantz', 'Link_Florencia', 1, '1', 'Florencia1234', NULL, 121, 1),
(4507, 'Admin', 'melanievillalobos@gmail.com', 'Admin1234', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_attempt_histories`
--

CREATE TABLE `user_attempt_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `talent_id` int(10) UNSIGNED NOT NULL,
  `certification_id` int(10) UNSIGNED NOT NULL,
  `quiz_moodle_id` double DEFAULT NULL,
  `quiz_name` varchar(100) DEFAULT NULL,
  `moodle_id` double DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `timestart` varchar(45) DEFAULT NULL,
  `timefinish` varchar(45) DEFAULT NULL,
  `sumgrades` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_platform_settings`
--

CREATE TABLE `user_platform_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(215) NOT NULL,
  `primary` varchar(7) NOT NULL,
  `secondary` varchar(7) NOT NULL,
  `background` varchar(7) NOT NULL,
  `font` varchar(7) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variable`
--

CREATE TABLE `variable` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `waiting_lists`
--

CREATE TABLE `waiting_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `program_name` varchar(45) NOT NULL,
  `program_code` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wepow_interviews`
--

CREATE TABLE `wepow_interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `wepow_interview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wepow_candidate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wepow_interview_candidate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `talent_id` int(11) DEFAULT NULL,
  `enterprise_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `action_method`
--
ALTER TABLE `action_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `action_rule`
--
ALTER TABLE `action_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_foreign_user_id_idx` (`user_id`);

--
-- Indices de la tabla `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_foreign_question_id_idx` (`question_id`);

--
-- Indices de la tabla `answer_feedback`
--
ALTER TABLE `answer_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_feedbacks_foreign_feedback_id_idx` (`feedback_id`),
  ADD KEY `answer_feedbacks_foreign_answer_id_idx` (`answer_id`);

--
-- Indices de la tabla `available_for`
--
ALTER TABLE `available_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `available_for_foreign_course_id_idx` (`course_id`),
  ADD KEY `available_for_foreign_enterprise_id_idx` (`enterprise_id`);

--
-- Indices de la tabla `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenges_foreign_admin_id_idx` (`admin_id`),
  ADD KEY `challenges_foreign_university_id_idx` (`university_id`),
  ADD KEY `challenges_foreign_enterprise_id_idx` (`enterprise_id`);

--
-- Indices de la tabla `challenge_competence`
--
ALTER TABLE `challenge_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_challenges_foreign_competence_id_idx` (`competence_id`),
  ADD KEY `competence_challenges_foreign_challenge_id_idx` (`challenge_id`);

--
-- Indices de la tabla `challenge_extra`
--
ALTER TABLE `challenge_extra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenge_extra_foreign_challenge_id_idx` (`challenge_id`);

--
-- Indices de la tabla `challenge_level`
--
ALTER TABLE `challenge_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenge_level_foreign_challenge_id_idx` (`challenge_id`);

--
-- Indices de la tabla `challenge_rubric`
--
ALTER TABLE `challenge_rubric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenge_rubrics_foreign_challenge_id_idx` (`challenge_id`),
  ADD KEY `challenge_rubrics_foreign_rubric_id_idx` (`rubric_id`);

--
-- Indices de la tabla `challenge_variable`
--
ALTER TABLE `challenge_variable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenge_variables_foreign_challenge_id_idx` (`challenge_id`),
  ADD KEY `challenge_variables_foreign_variable_id_idx` (`variable_id`);

--
-- Indices de la tabla `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_foreign_coountry_id_idx` (`country_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinator_enterprise_id_foreign_idx` (`enterprise_id`),
  ADD KEY `coordinator_user_id_foreign_idx` (`user_id`);

--
-- Indices de la tabla `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinators_university_id_foreign_idx` (`university_id`),
  ADD KEY `coordinators_user_id_foreign_idx` (`user_id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_foreign_type_id_idx` (`course_type_id`),
  ADD KEY `courses_foreign_category_id_idx` (`category_id`);

--
-- Indices de la tabla `course_challenge_order`
--
ALTER TABLE `course_challenge_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_challenge_order_foreign_course_id_idx` (`course_id`),
  ADD KEY `course_challenge_order_foreign_challenge_id_idx` (`challenge_id`);

--
-- Indices de la tabla `course_competence`
--
ALTER TABLE `course_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_compenteces_foreign_course_id_idx` (`course_id`),
  ADD KEY `course_compenteces_foreign_competence_id_idx` (`competence_id`);

--
-- Indices de la tabla `course_evaluator`
--
ALTER TABLE `course_evaluator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_evaluators_course_id_foreign_idx` (`course_id`),
  ADD KEY `course_evaluator_evaluator_id_foreign_idx` (`evaluator_id`);

--
-- Indices de la tabla `course_topic`
--
ALTER TABLE `course_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_topic_idx` (`course_id`),
  ADD KEY `course_topic_foreign_topic_id_idx` (`topic_id`);

--
-- Indices de la tabla `course_tracing_under`
--
ALTER TABLE `course_tracing_under`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_traicing_unders_foreign_course_id_idx` (`course_id`);

--
-- Indices de la tabla `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_idx` (`talent_id`);

--
-- Indices de la tabla `custom_variable`
--
ALTER TABLE `custom_variable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_variable_foreign_talent_competence_challenge_id_idx` (`talent_competence_challenge_id`);

--
-- Indices de la tabla `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enterprise_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `enterprise_areas`
--
ALTER TABLE `enterprise_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enterprise_members`
--
ALTER TABLE `enterprise_members`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enterprise_subscription`
--
ALTER TABLE `enterprise_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enterprise_subscription_foreign_enterprise_id_idx` (`enterprise_id`),
  ADD KEY `enterprise_subscription_foreign_subscription_id_idx` (`subscription_id`);

--
-- Indices de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_foreign_admin_id_idx` (`admin_id`),
  ADD KEY `evaluation_foreign_evaluation_type_id_idx` (`evaluation_type_id`);

--
-- Indices de la tabla `evaluation_category`
--
ALTER TABLE `evaluation_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_talent_evaluation_competence_id_idx` (`talent_evaluation_competence_id`),
  ADD KEY `evaluation_categories_foreign_question_category_id_idx` (`question_category_id`);

--
-- Indices de la tabla `evaluation_category_feedback`
--
ALTER TABLE `evaluation_category_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_category_feedback_foreign_feedback_id_idx` (`feedback_id`),
  ADD KEY `evaluation_category_feedback_foreign_evaluation_category_id_idx` (`evaluation_category_id`);

--
-- Indices de la tabla `evaluation_category_feedback_resource`
--
ALTER TABLE `evaluation_category_feedback_resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `eval_cat_feed_res_foreign_evaluation_category_feedback_id_idx` (`evaluation_category_feedback_id`),
  ADD KEY `eval_cat_feed_res_foreign_resource_id_idx` (`resource_id`);

--
-- Indices de la tabla `evaluation_competence`
--
ALTER TABLE `evaluation_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_evaluations_foreign_evaluation_id_idx` (`evaluation_id`),
  ADD KEY `competence_evaluations_foreign_competence_id_idx` (`competence_id`);

--
-- Indices de la tabla `evaluation_method`
--
ALTER TABLE `evaluation_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_methods_foreign_action_evaluation_id_idx` (`evaluation_id`),
  ADD KEY `evaluation_methods_foreign_action_method_id_idx` (`action_method_id`);

--
-- Indices de la tabla `evaluation_question`
--
ALTER TABLE `evaluation_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_questions_foreign_evaluation_id_idx` (`evaluation_id`),
  ADD KEY `evaluation_questions_foreign_question_id_idx` (`question_id`);

--
-- Indices de la tabla `evaluation_rule`
--
ALTER TABLE `evaluation_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation_rules_foreign_action_rule_id_idx` (`action_rule_id`),
  ADD KEY `evaluation_rules_foreign_evaluation_id_idx` (`evaluation_id`);

--
-- Indices de la tabla `evaluation_type`
--
ALTER TABLE `evaluation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluator`
--
ALTER TABLE `evaluator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluator_user_id_foreign_idx` (`user_id`),
  ADD KEY `evaluator_enterprise_id_foreign_idx` (`enterprise_id`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedbacks_foreign_admin_id_idx` (`admin_id`),
  ADD KEY `feedbacks_foreign_feedback_type_id_idx` (`feedback_type_id`);

--
-- Indices de la tabla `feedback_resource`
--
ALTER TABLE `feedback_resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `feedback_resource_foreign_feedback_id_idx` (`feedback_id`),
  ADD KEY `feedback_resource_foreign_resource_id_idx` (`resource_id`);

--
-- Indices de la tabla `feedback_type`
--
ALTER TABLE `feedback_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resources_foreign_user_id_idx` (`user_id`);

--
-- Indices de la tabla `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_coordinator_id_foreign_idx` (`coordinator_id`),
  ADD KEY `group_enterprise_id_foreign_idx` (`enterprise_id`),
  ADD KEY `group_course_id_foreign_idx` (`course_id`);

--
-- Indices de la tabla `group_campus_config`
--
ALTER TABLE `group_campus_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group_career_config`
--
ALTER TABLE `group_career_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group_descriptions_config`
--
ALTER TABLE `group_descriptions_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group_invitation`
--
ALTER TABLE `group_invitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_invitation_group_id_foreign_idx` (`group_id`);

--
-- Indices de la tabla `group_labels_config`
--
ALTER TABLE `group_labels_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `group_subject_config`
--
ALTER TABLE `group_subject_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hiring_offers`
--
ALTER TABLE `hiring_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `interview_invitations`
--
ALTER TABLE `interview_invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `issue_reqs`
--
ALTER TABLE `issue_reqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_issue_reqs_idx` (`talent_id`),
  ADD KEY `issue_request_id_idx` (`issue_request_id`);

--
-- Indices de la tabla `issue_requests`
--
ALTER TABLE `issue_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_idx` (`talent_id`),
  ADD KEY `course_id_idx` (`course_id`);

--
-- Indices de la tabla `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_foreign_job_type_id_idx` (`job_type_id`),
  ADD KEY `job_foreign_city_id_idx` (`city_id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `job_competence`
--
ALTER TABLE `job_competence`
  ADD PRIMARY KEY (`int`),
  ADD KEY `job_competence_foreign_job_id_idx` (`job_id`),
  ADD KEY `job_competence_foreign_competence_id_idx` (`competence_id`);

--
-- Indices de la tabla `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `languages_translate`
--
ALTER TABLE `languages_translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_translate_foreign_language_id_idx` (`language_id`),
  ADD KEY `languages_translate_foreign_translate_id_idx` (`translate_id`);

--
-- Indices de la tabla `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `levels_foreign_evaluation_id_idx` (`evaluation_id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_enterprises_id_foreign` (`enterprises_id`);

--
-- Indices de la tabla `member_areas`
--
ALTER TABLE `member_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `old_certifications`
--
ALTER TABLE `old_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `old_certification_talents`
--
ALTER TABLE `old_certification_talents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_certification_talents_idx` (`talent_id`),
  ADD KEY `certification_id_certification_talents_idx` (`certification_id`);

--
-- Indices de la tabla `old_enterprises`
--
ALTER TABLE `old_enterprises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enterprises_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `old_evaluator`
--
ALTER TABLE `old_evaluator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluators_user_id_foreign_idx` (`user_id`),
  ADD KEY `evaluators_university_id_foreign_idx` (`university_id`);

--
-- Indices de la tabla `old_groups`
--
ALTER TABLE `old_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_coordinator_id_foreign_idx` (`coordinator_id`),
  ADD KEY `groups_enterprise_id_foreign_idx` (`enterprise_id`);

--
-- Indices de la tabla `old_group_invitations`
--
ALTER TABLE `old_group_invitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_invitations_group_id_foreign_idx` (`group_id`);

--
-- Indices de la tabla `old_modules`
--
ALTER TABLE `old_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `old_programs`
--
ALTER TABLE `old_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `old_shortname_prefix_availables`
--
ALTER TABLE `old_shortname_prefix_availables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `old_talent_modules`
--
ALTER TABLE `old_talent_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `old_user_skills`
--
ALTER TABLE `old_user_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pending_modules`
--
ALTER TABLE `pending_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_idx` (`talent_id`);

--
-- Indices de la tabla `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_idx` (`talent_id`);

--
-- Indices de la tabla `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_foreign_admin_id_idx` (`admin_id`),
  ADD KEY `question_foreign_question_type_id_idx` (`question_type_id`);

--
-- Indices de la tabla `question_category`
--
ALTER TABLE `question_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubric`
--
ALTER TABLE `rubric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubric_foreign_admin_id_idx` (`admin_id`);

--
-- Indices de la tabla `rubric_feedback`
--
ALTER TABLE `rubric_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubric_feedbacks_foreign_feedback_id_idx` (`feedback_id`),
  ADD KEY `rubric_feedbacks_foreign_rubric_id_idx` (`rubric_id`);

--
-- Indices de la tabla `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_foreign_skill_type_id_idx` (`skill_type_id`);

--
-- Indices de la tabla `skill_type`
--
ALTER TABLE `skill_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `specialties`
--
ALTER TABLE `specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `special_users`
--
ALTER TABLE `special_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sponsored_issues`
--
ALTER TABLE `sponsored_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enterprise_id_idx` (`enterprise_id`);

--
-- Indices de la tabla `studies`
--
ALTER TABLE `studies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studies_talent_id_foreign` (`talent_id`);

--
-- Indices de la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_foreign_scope_id_idx` (`scope_id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talent`
--
ALTER TABLE `talent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talents_user_id_foreign` (`user_id`),
  ADD KEY `talents_foreign_city_id_idx` (`city_id`),
  ADD KEY `talent_enterprise_id_foreign_idx` (`enterprise_id`);

--
-- Indices de la tabla `talent_badges`
--
ALTER TABLE `talent_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talent_challenge`
--
ALTER TABLE `talent_challenge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_challenge_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_challenge_foreign_challenge_id_idx` (`challenge_id`);

--
-- Indices de la tabla `talent_challenge_competence`
--
ALTER TABLE `talent_challenge_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_competence_challenges_foreign_competence_challenge_i_idx` (`challenge_competence_id`),
  ADD KEY `talent_competence_challenges_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_challenge_competence_foreign_challenge_level_id_idx` (`challenge_level_id`);

--
-- Indices de la tabla `talent_challenge_competence_feedback`
--
ALTER TABLE `talent_challenge_competence_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_competence_challenge_feedbacks_foreign_feedback_id_idx` (`feedback_id`),
  ADD KEY `talent_comp_chal_feed_talent_competence_challenge_id_idx` (`talent_challenge_competence_id`);

--
-- Indices de la tabla `talent_challenge_evaluator`
--
ALTER TABLE `talent_challenge_evaluator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_chal_eval_foreign_talent_competence_challenge_id_idx` (`talent_challenge_competence_id`),
  ADD KEY `talent_chal_eval_foreign_evaluator_id_idx` (`evaluator_id`);

--
-- Indices de la tabla `talent_challenge_evaluator_rubric`
--
ALTER TABLE `talent_challenge_evaluator_rubric`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_chal_eval_rubrics_foreign_challenge_rubrics_id_idx` (`challenge_rubric_id`),
  ADD KEY `talent_chal_eval_rubr_foreign_talent_challenge_evaluators_i_idx` (`talent_challenge_evaluator_id`);

--
-- Indices de la tabla `talent_competence`
--
ALTER TABLE `talent_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_competence_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_competence_foreign_competence_id_idx` (`competence_id`);

--
-- Indices de la tabla `talent_course`
--
ALTER TABLE `talent_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_course_talents_idx` (`talent_id`),
  ADD KEY `course_id_course_talents_idx` (`course_id`);

--
-- Indices de la tabla `talent_course_competence`
--
ALTER TABLE `talent_course_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_course_competences_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_course_competences_foreign_course_competence_id_idx` (`course_competence_id`);

--
-- Indices de la tabla `talent_evaluation`
--
ALTER TABLE `talent_evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_evaluation_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_evaluation_foreign_evaluation_id_idx` (`evaluation_id`);

--
-- Indices de la tabla `talent_evaluation_answer`
--
ALTER TABLE `talent_evaluation_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_eval_answ_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_eval_answ_foreign_question_id_idx` (`question_id`),
  ADD KEY `talent_eval_answ_foreign_talent_answer_id_idx` (`talent_answer_id`),
  ADD KEY `talent_eval_answ_foreign_talent_evaluation_competence_id_idx` (`talent_evaluation_competence_id`),
  ADD KEY `talent_eval_answ_foreign_question_category_id_idx` (`question_category_id`);

--
-- Indices de la tabla `talent_evaluation_competence`
--
ALTER TABLE `talent_evaluation_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_competence_evaluations_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_competence_evaluations_competence_evaluation_id_idx` (`evaluation_competence_id`),
  ADD KEY `talent_competence_evaluations_level_id_idx` (`level_id`);

--
-- Indices de la tabla `talent_groups`
--
ALTER TABLE `talent_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_talent_groups_idx` (`talent_id`),
  ADD KEY `group_id_talent_groups_idx` (`group_id`);

--
-- Indices de la tabla `talent_languages`
--
ALTER TABLE `talent_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_languages_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_languages_foreign_language_id_idx` (`languages_id`);

--
-- Indices de la tabla `talent_log`
--
ALTER TABLE `talent_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_log_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_log_foreign_course_id_id_idx` (`course_id`),
  ADD KEY `talent_log_foreign_evaluation_id_idx` (`evaluation_id`),
  ADD KEY `talent_log_foreign_resource_id_idx` (`resource_id`);

--
-- Indices de la tabla `talent_school`
--
ALTER TABLE `talent_school`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indices de la tabla `talent_skill`
--
ALTER TABLE `talent_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_skills_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_skills_foreign_skill_id_idx` (`skill_id`);

--
-- Indices de la tabla `talent_specialties`
--
ALTER TABLE `talent_specialties`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talent_topic`
--
ALTER TABLE `talent_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_topic_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_topic_foreign_topic_id_idx` (`topic_id`);

--
-- Indices de la tabla `talent_topic_competence`
--
ALTER TABLE `talent_topic_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_topic_competence_foreign_talent_id_idx` (`talent_id`),
  ADD KEY `talent_topic_competence_foreign_topic_competence_id_idx` (`topic_competence_id`);

--
-- Indices de la tabla `talent_udemy_course_activity`
--
ALTER TABLE `talent_udemy_course_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_udemy_course_activity_foreign_talent_id_idx` (`talent_id`);

--
-- Indices de la tabla `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `topic_competence`
--
ALTER TABLE `topic_competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_topics_foreign_competence_id_idx` (`competence_id`),
  ADD KEY `competence_topics_foreign_topic_id_idx` (`topic_id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talent_id_idx` (`talent_id`),
  ADD KEY `credit_id_idx` (`credit_id`),
  ADD KEY `point_id_idx` (`point_id`),
  ADD KEY `issue_req_id_idx` (`issue_req_id`);

--
-- Indices de la tabla `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `udemy_categories`
--
ALTER TABLE `udemy_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `udemy_projects`
--
ALTER TABLE `udemy_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `udemy_resources`
--
ALTER TABLE `udemy_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unenrollers`
--
ALTER TABLE `unenrollers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universities_user_id_foreign_idx` (`user_id`),
  ADD KEY `universities_udemy_project_foreign_idx` (`udemy_project_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `user_attempt_histories`
--
ALTER TABLE `user_attempt_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_attempt_histories_talent_id_foreign_idx` (`talent_id`),
  ADD KEY `user_attempt_histories_certification_id_foreign_idx` (`certification_id`);

--
-- Indices de la tabla `user_platform_settings`
--
ALTER TABLE `user_platform_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign_idx` (`user_id`);

--
-- Indices de la tabla `variable`
--
ALTER TABLE `variable`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `waiting_lists`
--
ALTER TABLE `waiting_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wepow_interviews`
--
ALTER TABLE `wepow_interviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `action_method`
--
ALTER TABLE `action_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `action_rule`
--
ALTER TABLE `action_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT de la tabla `answer_feedback`
--
ALTER TABLE `answer_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `available_for`
--
ALTER TABLE `available_for`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `challenge`
--
ALTER TABLE `challenge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `challenge_competence`
--
ALTER TABLE `challenge_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `challenge_extra`
--
ALTER TABLE `challenge_extra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `challenge_level`
--
ALTER TABLE `challenge_level`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `challenge_rubric`
--
ALTER TABLE `challenge_rubric`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `challenge_variable`
--
ALTER TABLE `challenge_variable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `competence`
--
ALTER TABLE `competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2085;

--
-- AUTO_INCREMENT de la tabla `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `course_challenge_order`
--
ALTER TABLE `course_challenge_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `course_competence`
--
ALTER TABLE `course_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `course_evaluator`
--
ALTER TABLE `course_evaluator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `course_tracing_under`
--
ALTER TABLE `course_tracing_under`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `custom_variable`
--
ALTER TABLE `custom_variable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `enterprise_areas`
--
ALTER TABLE `enterprise_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enterprise_members`
--
ALTER TABLE `enterprise_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `enterprise_subscription`
--
ALTER TABLE `enterprise_subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `evaluation_category`
--
ALTER TABLE `evaluation_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14349;

--
-- AUTO_INCREMENT de la tabla `evaluation_category_feedback`
--
ALTER TABLE `evaluation_category_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1896;

--
-- AUTO_INCREMENT de la tabla `evaluation_category_feedback_resource`
--
ALTER TABLE `evaluation_category_feedback_resource`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT de la tabla `evaluation_competence`
--
ALTER TABLE `evaluation_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `evaluation_method`
--
ALTER TABLE `evaluation_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `evaluation_question`
--
ALTER TABLE `evaluation_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2066;

--
-- AUTO_INCREMENT de la tabla `evaluation_rule`
--
ALTER TABLE `evaluation_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `evaluation_type`
--
ALTER TABLE `evaluation_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evaluator`
--
ALTER TABLE `evaluator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT de la tabla `feedback_resource`
--
ALTER TABLE `feedback_resource`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `feedback_type`
--
ALTER TABLE `feedback_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `file`
--
ALTER TABLE `file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `group`
--
ALTER TABLE `group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `group_campus_config`
--
ALTER TABLE `group_campus_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `group_career_config`
--
ALTER TABLE `group_career_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `group_descriptions_config`
--
ALTER TABLE `group_descriptions_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `group_invitation`
--
ALTER TABLE `group_invitation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT de la tabla `group_labels_config`
--
ALTER TABLE `group_labels_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `group_subject_config`
--
ALTER TABLE `group_subject_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `hiring_offers`
--
ALTER TABLE `hiring_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `interview_invitations`
--
ALTER TABLE `interview_invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6569159;

--
-- AUTO_INCREMENT de la tabla `issue_reqs`
--
ALTER TABLE `issue_reqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `issue_requests`
--
ALTER TABLE `issue_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `job`
--
ALTER TABLE `job`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1096;

--
-- AUTO_INCREMENT de la tabla `job_competence`
--
ALTER TABLE `job_competence`
  MODIFY `int` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `languages_translate`
--
ALTER TABLE `languages_translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `member_areas`
--
ALTER TABLE `member_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `old_certifications`
--
ALTER TABLE `old_certifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `old_certification_talents`
--
ALTER TABLE `old_certification_talents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `old_enterprises`
--
ALTER TABLE `old_enterprises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `old_evaluator`
--
ALTER TABLE `old_evaluator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `old_groups`
--
ALTER TABLE `old_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `old_group_invitations`
--
ALTER TABLE `old_group_invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT de la tabla `old_modules`
--
ALTER TABLE `old_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `old_programs`
--
ALTER TABLE `old_programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `old_shortname_prefix_availables`
--
ALTER TABLE `old_shortname_prefix_availables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `old_talent_modules`
--
ALTER TABLE `old_talent_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT de la tabla `old_user_skills`
--
ALTER TABLE `old_user_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `pending_modules`
--
ALTER TABLE `pending_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1074;

--
-- AUTO_INCREMENT de la tabla `question_category`
--
ALTER TABLE `question_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `question_type`
--
ALTER TABLE `question_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `rubric`
--
ALTER TABLE `rubric`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `rubric_feedback`
--
ALTER TABLE `rubric_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `scope`
--
ALTER TABLE `scope`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `skill_type`
--
ALTER TABLE `skill_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `specialties`
--
ALTER TABLE `specialties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `special_users`
--
ALTER TABLE `special_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sponsored_issues`
--
ALTER TABLE `sponsored_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `studies`
--
ALTER TABLE `studies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `talent`
--
ALTER TABLE `talent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2677;

--
-- AUTO_INCREMENT de la tabla `talent_badges`
--
ALTER TABLE `talent_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talent_challenge`
--
ALTER TABLE `talent_challenge`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT de la tabla `talent_challenge_competence`
--
ALTER TABLE `talent_challenge_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `talent_challenge_competence_feedback`
--
ALTER TABLE `talent_challenge_competence_feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talent_challenge_evaluator`
--
ALTER TABLE `talent_challenge_evaluator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `talent_challenge_evaluator_rubric`
--
ALTER TABLE `talent_challenge_evaluator_rubric`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `talent_competence`
--
ALTER TABLE `talent_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT de la tabla `talent_course`
--
ALTER TABLE `talent_course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1086;

--
-- AUTO_INCREMENT de la tabla `talent_course_competence`
--
ALTER TABLE `talent_course_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT de la tabla `talent_evaluation`
--
ALTER TABLE `talent_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `talent_evaluation_answer`
--
ALTER TABLE `talent_evaluation_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14315;

--
-- AUTO_INCREMENT de la tabla `talent_evaluation_competence`
--
ALTER TABLE `talent_evaluation_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `talent_groups`
--
ALTER TABLE `talent_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `talent_languages`
--
ALTER TABLE `talent_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT de la tabla `talent_log`
--
ALTER TABLE `talent_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `talent_school`
--
ALTER TABLE `talent_school`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `talent_skill`
--
ALTER TABLE `talent_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `talent_specialties`
--
ALTER TABLE `talent_specialties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT de la tabla `talent_topic`
--
ALTER TABLE `talent_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `talent_topic_competence`
--
ALTER TABLE `talent_topic_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talent_udemy_course_activity`
--
ALTER TABLE `talent_udemy_course_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `topic_competence`
--
ALTER TABLE `topic_competence`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `udemy_categories`
--
ALTER TABLE `udemy_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `udemy_projects`
--
ALTER TABLE `udemy_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `udemy_resources`
--
ALTER TABLE `udemy_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26086;

--
-- AUTO_INCREMENT de la tabla `unenrollers`
--
ALTER TABLE `unenrollers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4508;

--
-- AUTO_INCREMENT de la tabla `user_attempt_histories`
--
ALTER TABLE `user_attempt_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `user_platform_settings`
--
ALTER TABLE `user_platform_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `variable`
--
ALTER TABLE `variable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `waiting_lists`
--
ALTER TABLE `waiting_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `wepow_interviews`
--
ALTER TABLE `wepow_interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admins_foreign_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_foreign_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `answer_feedback`
--
ALTER TABLE `answer_feedback`
  ADD CONSTRAINT `answer_feedback_foreign_answer_id` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `answer_feedback_foreign_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `available_for`
--
ALTER TABLE `available_for`
  ADD CONSTRAINT `available_for_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `available_for_foreign_enterprise_id` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge`
--
ALTER TABLE `challenge`
  ADD CONSTRAINT `challenges_foreign_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `challenges_foreign_enterprise_id` FOREIGN KEY (`enterprise_id`) REFERENCES `old_enterprises` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `challenges_foreign_university_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge_competence`
--
ALTER TABLE `challenge_competence`
  ADD CONSTRAINT `challenge_competence_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `challenge_competence_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge_extra`
--
ALTER TABLE `challenge_extra`
  ADD CONSTRAINT `challenge_extra_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge_level`
--
ALTER TABLE `challenge_level`
  ADD CONSTRAINT `challenge_level_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge_rubric`
--
ALTER TABLE `challenge_rubric`
  ADD CONSTRAINT `challenge_rubric_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `challenge_rubric_foreign_rubric_id` FOREIGN KEY (`rubric_id`) REFERENCES `rubric` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `challenge_variable`
--
ALTER TABLE `challenge_variable`
  ADD CONSTRAINT `challenge_variable_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `challenge_variable_foreign_variable_id` FOREIGN KEY (`variable_id`) REFERENCES `variable` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_foreign_coountry_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `coordinator`
--
ALTER TABLE `coordinator`
  ADD CONSTRAINT `coordinator_enterprise_id_foreign` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `coordinator_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `coordinators`
--
ALTER TABLE `coordinators`
  ADD CONSTRAINT `coordinators_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `coordinators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_foreign_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_foreign_course_type_id` FOREIGN KEY (`course_type_id`) REFERENCES `course_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course_challenge_order`
--
ALTER TABLE `course_challenge_order`
  ADD CONSTRAINT `course_challenge_order_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_challenge_order_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course_competence`
--
ALTER TABLE `course_competence`
  ADD CONSTRAINT `course_compenteces_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_compenteces_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course_evaluator`
--
ALTER TABLE `course_evaluator`
  ADD CONSTRAINT `course_evaluator_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_evaluator_evaluator_id_foreign` FOREIGN KEY (`evaluator_id`) REFERENCES `evaluator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course_topic`
--
ALTER TABLE `course_topic`
  ADD CONSTRAINT `course_topic_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_topic_foreign_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `course_tracing_under`
--
ALTER TABLE `course_tracing_under`
  ADD CONSTRAINT `course_traicing_unders_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `custom_variable`
--
ALTER TABLE `custom_variable`
  ADD CONSTRAINT `custom_variable_foreign_talent_competence_challenge_id` FOREIGN KEY (`talent_competence_challenge_id`) REFERENCES `talent_challenge_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `enterprise`
--
ALTER TABLE `enterprise`
  ADD CONSTRAINT `enterprise_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `enterprise_subscription`
--
ALTER TABLE `enterprise_subscription`
  ADD CONSTRAINT `enterprise_subscription_foreign_enterprise_id` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `enterprise_subscription_foreign_subscription_id` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_foreign_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_foreign_evaluation_type_id` FOREIGN KEY (`evaluation_type_id`) REFERENCES `evaluation_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_category`
--
ALTER TABLE `evaluation_category`
  ADD CONSTRAINT `_talent_evaluation_competence_id` FOREIGN KEY (`talent_evaluation_competence_id`) REFERENCES `talent_evaluation_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_categories_foreign_question_category_id` FOREIGN KEY (`question_category_id`) REFERENCES `question_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_category_feedback`
--
ALTER TABLE `evaluation_category_feedback`
  ADD CONSTRAINT `evaluation_category_feedback_foreign_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_category_feedbak_foreign_evaluation_category_id` FOREIGN KEY (`evaluation_category_id`) REFERENCES `evaluation_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_category_feedback_resource`
--
ALTER TABLE `evaluation_category_feedback_resource`
  ADD CONSTRAINT `eval_cat_feed_res_foreign_evaluation_category_feedback_id` FOREIGN KEY (`evaluation_category_feedback_id`) REFERENCES `evaluation_category_feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `eval_cat_feed_res_foreign_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_competence`
--
ALTER TABLE `evaluation_competence`
  ADD CONSTRAINT `evaluation_competence_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_competence_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_method`
--
ALTER TABLE `evaluation_method`
  ADD CONSTRAINT `evaluation_method_foreign_action_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_method_foreign_action_method_id` FOREIGN KEY (`action_method_id`) REFERENCES `action_method` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_question`
--
ALTER TABLE `evaluation_question`
  ADD CONSTRAINT `evaluation_question_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_question_foreign_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluation_rule`
--
ALTER TABLE `evaluation_rule`
  ADD CONSTRAINT `evaluation_rule_foreign_action_rule_id` FOREIGN KEY (`action_rule_id`) REFERENCES `action_rule` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluation_rule_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `evaluator`
--
ALTER TABLE `evaluator`
  ADD CONSTRAINT `evaluator_enterprise_id_foreign` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluator_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_foreign_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `feedback_foreign_feedback_type_id` FOREIGN KEY (`feedback_type_id`) REFERENCES `feedback_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `feedback_resource`
--
ALTER TABLE `feedback_resource`
  ADD CONSTRAINT `feedback_resource_foreign_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `feedback_resource_foreign_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `resources_foreign_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `group_coordinator_id_foreign` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `group_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `group_enteprise_id_foreign` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `group_invitation`
--
ALTER TABLE `group_invitation`
  ADD CONSTRAINT `group_invitation_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `issue_reqs`
--
ALTER TABLE `issue_reqs`
  ADD CONSTRAINT `issue_request_id` FOREIGN KEY (`issue_request_id`) REFERENCES `issue_requests` (`id`),
  ADD CONSTRAINT `talent_id_issue_reqs` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `issue_requests`
--
ALTER TABLE `issue_requests`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `talent_id_course` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_foreign_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `job_foreign_job_type_id` FOREIGN KEY (`job_type_id`) REFERENCES `job_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `job_competence`
--
ALTER TABLE `job_competence`
  ADD CONSTRAINT `job_competence_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `job_competence_foreign_job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `languages_translate`
--
ALTER TABLE `languages_translate`
  ADD CONSTRAINT `languages_translate_foreign_language_id` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `languages_translate_foreign_translate_id` FOREIGN KEY (`translate_id`) REFERENCES `translate` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `levels_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_enterprises_id_foreign` FOREIGN KEY (`enterprises_id`) REFERENCES `old_enterprises` (`id`);

--
-- Filtros para la tabla `old_certification_talents`
--
ALTER TABLE `old_certification_talents`
  ADD CONSTRAINT `certification_id_certification_talents` FOREIGN KEY (`certification_id`) REFERENCES `old_certifications` (`id`),
  ADD CONSTRAINT `talent_id_certification_talents` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `old_enterprises`
--
ALTER TABLE `old_enterprises`
  ADD CONSTRAINT `enterprises_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `old_evaluator`
--
ALTER TABLE `old_evaluator`
  ADD CONSTRAINT `evaluators_university_id_foreign` FOREIGN KEY (`university_id`) REFERENCES `universities` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `old_groups`
--
ALTER TABLE `old_groups`
  ADD CONSTRAINT `groups_coordinator_id_foreign` FOREIGN KEY (`coordinator_id`) REFERENCES `coordinators` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `groups_enteprise_id_foreign` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `old_group_invitations`
--
ALTER TABLE `old_group_invitations`
  ADD CONSTRAINT `group_invitations_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `old_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pending_modules`
--
ALTER TABLE `pending_modules`
  ADD CONSTRAINT `talent_id_pending_modules` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `talent_id_points` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_foreign_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `question_foreign_question_type_id` FOREIGN KEY (`question_type_id`) REFERENCES `question_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rubric`
--
ALTER TABLE `rubric`
  ADD CONSTRAINT `rubric_foreign_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `rubric_feedback`
--
ALTER TABLE `rubric_feedback`
  ADD CONSTRAINT `rubric_feedback_foreign_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rubric_feedback_foreign_rubric_id` FOREIGN KEY (`rubric_id`) REFERENCES `rubric` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `skills_foreign_skill_type_id` FOREIGN KEY (`skill_type_id`) REFERENCES `skill_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sponsored_issues`
--
ALTER TABLE `sponsored_issues`
  ADD CONSTRAINT `enterprise_id` FOREIGN KEY (`enterprise_id`) REFERENCES `old_enterprises` (`id`);

--
-- Filtros para la tabla `studies`
--
ALTER TABLE `studies`
  ADD CONSTRAINT `studies_talent_id_foreign` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_foreign_scope_id` FOREIGN KEY (`scope_id`) REFERENCES `scope` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent`
--
ALTER TABLE `talent`
  ADD CONSTRAINT `talent_enterprise_id_foreign` FOREIGN KEY (`enterprise_id`) REFERENCES `enterprise` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talents_foreign_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `talent_challenge`
--
ALTER TABLE `talent_challenge`
  ADD CONSTRAINT `talent_challenge_foreign_challenge_id` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_challenge_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_challenge_competence`
--
ALTER TABLE `talent_challenge_competence`
  ADD CONSTRAINT `talent_challenge_competence_foreign_challenge_competence_id` FOREIGN KEY (`challenge_competence_id`) REFERENCES `challenge_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_challenge_competence_foreign_challenge_level_id` FOREIGN KEY (`challenge_level_id`) REFERENCES `challenge_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_challenge_competence_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_challenge_competence_feedback`
--
ALTER TABLE `talent_challenge_competence_feedback`
  ADD CONSTRAINT `tal_chal_comp_fbk_foreign_feedback_id` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tal_chal_comp_fbk_foreign_tal_comp_chal_id` FOREIGN KEY (`talent_challenge_competence_id`) REFERENCES `talent_challenge_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_challenge_evaluator`
--
ALTER TABLE `talent_challenge_evaluator`
  ADD CONSTRAINT `talent_chal_eval_foreign_evaluator_id` FOREIGN KEY (`evaluator_id`) REFERENCES `evaluator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_chal_eval_foreign_talen_challenget_competence_id` FOREIGN KEY (`talent_challenge_competence_id`) REFERENCES `talent_challenge_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_challenge_evaluator_rubric`
--
ALTER TABLE `talent_challenge_evaluator_rubric`
  ADD CONSTRAINT `talent_chal_eval_rubr_foreign_challenge_rubric_id` FOREIGN KEY (`challenge_rubric_id`) REFERENCES `challenge_rubric` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_chal_eval_rubr_foreign_talent_challenge_evaluator_id` FOREIGN KEY (`talent_challenge_evaluator_id`) REFERENCES `talent_challenge_evaluator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_competence`
--
ALTER TABLE `talent_competence`
  ADD CONSTRAINT `talent_competence_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_competence_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_course`
--
ALTER TABLE `talent_course`
  ADD CONSTRAINT `course_id_course_talents` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `talent_id_course_talents` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `talent_course_competence`
--
ALTER TABLE `talent_course_competence`
  ADD CONSTRAINT `talent_course_competences_foreign_course_competence_id` FOREIGN KEY (`course_competence_id`) REFERENCES `course_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_course_competences_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_evaluation`
--
ALTER TABLE `talent_evaluation`
  ADD CONSTRAINT `talent_evaluation_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_evaluation_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_evaluation_answer`
--
ALTER TABLE `talent_evaluation_answer`
  ADD CONSTRAINT `talent_eval_answ_foreign_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_eval_answ_foreign_talent_answer_id` FOREIGN KEY (`talent_answer_id`) REFERENCES `answer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_eval_answ_foreign_talent_evaluation_competence_id` FOREIGN KEY (`talent_evaluation_competence_id`) REFERENCES `talent_evaluation_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_eval_answ_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_evaluation_answer_FK` FOREIGN KEY (`question_category_id`) REFERENCES `question_category` (`id`);

--
-- Filtros para la tabla `talent_evaluation_competence`
--
ALTER TABLE `talent_evaluation_competence`
  ADD CONSTRAINT `talent_competence_evaluations_evaluation_id` FOREIGN KEY (`evaluation_competence_id`) REFERENCES `evaluation_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_competence_evaluations_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_competence_evaluations_level_id` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_groups`
--
ALTER TABLE `talent_groups`
  ADD CONSTRAINT `group_id_talent_groups` FOREIGN KEY (`group_id`) REFERENCES `old_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_id_talent_groups` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_languages`
--
ALTER TABLE `talent_languages`
  ADD CONSTRAINT `talent_languages_foreign_language_id` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_languages_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_log`
--
ALTER TABLE `talent_log`
  ADD CONSTRAINT `talent_log_foreign_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_log_foreign_evaluation_id` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_log_foreign_resource_id` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_log_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_skill`
--
ALTER TABLE `talent_skill`
  ADD CONSTRAINT `talent_skills_foreign_skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_skills_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_topic`
--
ALTER TABLE `talent_topic`
  ADD CONSTRAINT `talent_topic_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_topic_foreign_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_topic_competence`
--
ALTER TABLE `talent_topic_competence`
  ADD CONSTRAINT `talent_topic_competence_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `talent_topic_competence_foreign_topic_competence_id` FOREIGN KEY (`topic_competence_id`) REFERENCES `topic_competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `talent_udemy_course_activity`
--
ALTER TABLE `talent_udemy_course_activity`
  ADD CONSTRAINT `talent_udemy_course_activity_foreign_talent_id` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `topic_competence`
--
ALTER TABLE `topic_competence`
  ADD CONSTRAINT `topic_competence_foreign_competence_id` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `topic_competence_foreign_topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `credit_id` FOREIGN KEY (`credit_id`) REFERENCES `credits` (`id`),
  ADD CONSTRAINT `issue_req_id` FOREIGN KEY (`issue_req_id`) REFERENCES `issue_reqs` (`id`),
  ADD CONSTRAINT `point_id` FOREIGN KEY (`point_id`) REFERENCES `points` (`id`),
  ADD CONSTRAINT `talent_id_transactions` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`);

--
-- Filtros para la tabla `universities`
--
ALTER TABLE `universities`
  ADD CONSTRAINT `universities_udemy_project_foreign` FOREIGN KEY (`udemy_project_id`) REFERENCES `udemy_projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `universities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_attempt_histories`
--
ALTER TABLE `user_attempt_histories`
  ADD CONSTRAINT `user_attempt_histories_certification_id_foreign` FOREIGN KEY (`certification_id`) REFERENCES `old_certifications` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_attempt_histories_talent_id_foreign` FOREIGN KEY (`talent_id`) REFERENCES `talent` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `user_platform_settings`
--
ALTER TABLE `user_platform_settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
