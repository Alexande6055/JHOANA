-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2026 a las 04:53:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `joomla-chocolate`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_action_logs`
--

CREATE TABLE `lgi49_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_action_logs`
--

INSERT INTO `lgi49_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2026-11-13 23:38:20', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-13 23:59:31', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":5,\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-13 23:59:42', 'com_guidedtours.state', 723, 12, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":252,\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:00:27', 'com_installer', 723, 252, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":252,\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:00:32', 'com_installer', 723, 252, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":254,\"name\":\"shaper_helixultimate\",\"extension_name\":\"shaper_helixultimate\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:00:32', 'com_installer', 723, 254, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":253,\"name\":\"Helix Ultimate based template installer\",\"extension_name\":\"Helix Ultimate based template installer\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:00:32', 'com_installer', 723, 253, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":256,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:11:58', 'com_installer', 723, 256, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":252,\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:11:58', 'com_installer', 723, 252, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":254,\"name\":\"shaper_helixultimate\",\"extension_name\":\"shaper_helixultimate\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:11:58', 'com_installer', 723, 254, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":255,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:11:58', 'com_installer', 723, 255, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":255,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:11:58', 'com_installer', 723, 255, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":256,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:14:27', 'com_installer', 723, 256, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":252,\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:14:27', 'com_installer', 723, 252, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":254,\"name\":\"shaper_helixultimate\",\"extension_name\":\"shaper_helixultimate\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:14:27', 'com_installer', 723, 254, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":255,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:14:27', 'com_installer', 723, 255, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":255,\"name\":\"SP Page Builder\",\"extension_name\":\"SP Page Builder\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:14:27', 'com_installer', 723, 255, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"asdasd\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:27:21', 'com_content.article', 723, 9, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-14 00:27:26', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-14 00:37:32', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-14 00:37:48', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":9,\"title\":\"asdasd\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=9\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 00:37:48', 'com_content.article', 723, 9, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-14 23:45:41', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-14 23:45:45', 'com_guidedtours.state', 723, 12, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-14 23:46:44', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-14 23:46:49', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__categories\"}', '2026-11-14 23:46:54', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__categories\"}', '2026-11-14 23:47:00', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__fields\"}', '2026-11-14 23:47:11', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__fields\"}', '2026-11-14 23:47:26', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-14 23:47:56', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-14 23:48:34', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-15 01:03:53', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-15 01:04:02', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-15 01:04:11', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-15 01:04:34', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-21 03:38:42', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:38:48', 'com_guidedtours.state', 723, 12, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":116,\"title\":\"Productos\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=116\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:40:06', 'com_menus.item', 723, 116, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__menu\"}', '2026-11-21 03:40:06', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":117,\"title\":\"Historia\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=117\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:40:19', 'com_menus.item', 723, 117, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__menu\"}', '2026-11-21 03:40:19', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":118,\"title\":\"Contacto\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=118\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:40:34', 'com_menus.item', 723, 118, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__menu\"}', '2026-11-21 03:40:34', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"111\",\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:51:25', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 03:51:25', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 03:51:25', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__menu\"}', '2026-11-21 04:05:21', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":19,\"title\":\"com_content\",\"extension_name\":\"com_content\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=19\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:30:29', 'com_config.component', 723, 19, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:34:09', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:34:09', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__categories\"}', '2026-11-21 04:35:38', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-21 04:40:48', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:41:43', 'com_guidedtours.state', 723, 12, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"114\",\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:49:32', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 04:49:32', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 04:49:32', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-21 05:15:46', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 05:18:21', 'com_content.article', 723, 4, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-21 05:18:21', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 05:48:45', 'com_content.article', 723, 4, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-21 05:48:45', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"114\",\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 05:50:59', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 05:50:59', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 05:50:59', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-21 19:53:32', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"114\",\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:00:55', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:00:55', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 20:00:55', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"111\",\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:10:21', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:10:21', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 20:10:21', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"111\",\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:17:06', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":111,\"title\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"extension_name\":\"Bot\\u00f3n Flotante WhatsApp Pedidos\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=111\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:17:06', 'com_modules.module', 723, 111, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 20:17:06', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__categories\"}', '2026-11-21 20:19:03', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__content\"}', '2026-11-21 20:19:03', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 20:19:03', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__sppagebuilder\"}', '2026-11-21 20:19:03', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":\"114\",\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:21:42', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":114,\"title\":\"Pie de P\\u00e1gina Institucional\",\"extension_name\":\"Pie de P\\u00e1gina Institucional\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=114\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:21:42', 'com_modules.module', 723, 114, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 20:21:42', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\"}', '2026-11-21 20:34:57', 'com_guidedtours.state', 723, 12, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 21:09:58', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 22:16:12', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 22:30:46', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":723,\"title\":\"administrador\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"table\":\"#__modules\"}', '2026-11-21 22:33:05', 'com_checkin', 723, 723, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":723,\"username\":\"administrador\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=723\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2026-11-21 23:09:49', 'com_users', 723, 0, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_action_logs_extensions`
--

CREATE TABLE `lgi49_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_action_logs_extensions`
--

INSERT INTO `lgi49_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler'),
(20, 'com_fields'),
(21, 'com_guidedtours');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_action_logs_users`
--

CREATE TABLE `lgi49_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_action_log_config`
--

CREATE TABLE `lgi49_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_action_log_config`
--

INSERT INTO `lgi49_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA'),
(21, 'field', 'com_fields.field', 'id', 'title', '#__fields', 'PLG_ACTIONLOG_JOOMLA'),
(22, 'guidedtour', 'com_guidedtours.state', 'id', 'title', '#__guidedtours', 'PLG_ACTIONLOG_JOOMLA'),
(23, 'contact', 'com_contact.form', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_assets`
--

CREATE TABLE `lgi49_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_assets`
--

INSERT INTO `lgi49_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 197, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 45, 48, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 11, 46, 47, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(13, 1, 49, 50, 1, 'com_login', 'com_login', '{}'),
(14, 1, 51, 52, 1, 'com_mails', 'com_mails', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 55, 58, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 59, 60, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 61, 140, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 141, 144, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 145, 146, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 147, 148, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 149, 150, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 142, 143, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 156, 157, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 62, 63, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 64, 65, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 66, 67, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 68, 69, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 70, 71, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 72, 73, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 74, 75, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 76, 77, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(49, 18, 82, 83, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 84, 85, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 86, 87, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 88, 89, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 92, 93, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 56, 57, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 96, 97, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 22, 39, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 23, 24, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 25, 26, 3, 'com_content.transition.1', 'UNPUBLISH', '{}'),
(59, 56, 27, 28, 3, 'com_content.transition.2', 'PUBLISH', '{}'),
(60, 56, 29, 30, 3, 'com_content.transition.3', 'TRASH', '{}'),
(61, 56, 31, 32, 3, 'com_content.transition.4', 'ARCHIVE', '{}'),
(62, 56, 33, 34, 3, 'com_content.transition.5', 'FEATURE', '{}'),
(63, 56, 35, 36, 3, 'com_content.transition.6', 'UNFEATURE', '{}'),
(64, 56, 37, 38, 3, 'com_content.transition.7', 'PUBLISH_AND_FEATURE', '{}'),
(65, 1, 151, 152, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 153, 154, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 78, 79, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 80, 81, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 90, 91, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 94, 95, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 98, 99, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 100, 101, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 102, 103, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 104, 105, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 106, 107, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 108, 109, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 110, 111, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 112, 113, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 114, 115, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 116, 117, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 118, 119, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 120, 121, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 122, 123, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 124, 125, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 126, 127, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 128, 129, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 130, 131, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 173, 180, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 1, 181, 182, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 183, 184, 1, 'com_categories', 'com_categories', '{}'),
(93, 1, 185, 186, 1, 'com_fields', 'com_fields', '{}'),
(94, 1, 187, 188, 1, 'com_workflow', 'com_workflow', '{}'),
(95, 1, 189, 190, 1, 'com_guidedtours', 'com_guidedtours', '{}'),
(96, 18, 132, 133, 2, 'com_modules.module.109', 'Guided Tours', '{}'),
(97, 90, 174, 175, 2, 'com_scheduler.task.1', 'Rotate Logs', '{}'),
(98, 90, 176, 177, 2, 'com_scheduler.task.2', 'Session GC', '{}'),
(99, 90, 178, 179, 2, 'com_scheduler.task.3', 'Update Notification', '{}'),
(100, 1, 191, 194, 1, 'com_sppagebuilder', 'SP Page Builder', '{}'),
(101, 18, 134, 135, 2, 'com_modules.module.110', 'SP Page Builder', '{}'),
(102, 27, 19, 20, 3, 'com_content.article.9', 'asdasd', '{}'),
(103, 18, 136, 137, 2, 'com_modules.module.111', 'Botón Flotante WhatsApp Pedidos', '{}'),
(104, 18, 138, 139, 2, 'com_modules.module.114', 'Pie de Página Institucional', '{}'),
(105, 100, 192, 193, 2, 'com_sppagebuilder.page.1', 'Inicio', '{}'),
(106, 1, 195, 196, 1, 'com_content.article.4', 'Pasta Tradicional de Chocolate de Taza (100% Cacao)', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_associations`
--

CREATE TABLE `lgi49_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_banners`
--

CREATE TABLE `lgi49_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_banner_clients`
--

CREATE TABLE `lgi49_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_banner_tracks`
--

CREATE TABLE `lgi49_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_categories`
--

CREATE TABLE `lgi49_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_categories`
--

INSERT INTO `lgi49_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 13, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, NULL, 1, '{}', '', '', '{}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 723, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 0, '*', 1),
(8, 0, 1, 11, 12, 1, 'especialidades-cacao', 'com_content', 'Especialidades de Cacao', 'especialidades-cacao', '', 'Catálogo de especialidades artesanales de cacao fino de aroma.', 1, 0, NULL, 1, '{}', 'Chocolate artesanal tradicional de Ambato.', 'chocolate, cacao, ambato', '{\"robots\":\"\",\"author\":\"\"}', 1, '2026-11-14 01:41:07', 1, '2026-11-14 01:41:07', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_contact_details`
--

CREATE TABLE `lgi49_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_content`
--

CREATE TABLE `lgi49_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_content`
--

INSERT INTO `lgi49_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 27, 'Tableta 70% Cacao Fino de Aroma', 'tableta-70-cacao', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.50 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Barra de chocolate oscuro artesanal elaborada con una noble selección de cacao nacional fino de aroma. Equilibrio perfecto entre notas frutales, tostado en leña y amargor elegante.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Tableta+70%25+Cacao+Fino+de+Aroma+%28%244.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.50 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Barra de chocolate oscuro artesanal elaborada con una noble selección de cacao nacional fino de aroma. Equilibrio perfecto entre notas frutales, tostado en leña y amargor elegante.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Tableta+70%25+Cacao+Fino+de+Aroma+%28%244.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>Elaborada siguiendo la tradición ambateña desde 1952, nuestra <strong>Tableta 70% Cacao</strong> es el estandarte de nuestra casa chocolatera. Seleccionamos cuidadosamente granos de cacao fino de aroma provenientes de pequeños productores andinos y del litoral ecuatoriano.</p>\n        <h4>Características:</h4>\n        <ul>\n            <li><strong>Porcentaje:</strong> 70% masa de cacao pura, 30% panela agroecológica.</li>\n            <li><strong>Peso Neto:</strong> 100 gramos.</li>\n            <li><strong>Notas de Cata:</strong> Frutos secos, ciruela pasa y madera noble.</li>\n            <li><strong>Recomendación:</strong> Ideal para degustación directa, maridaje con café o derretir en leche caliente.</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Tableta 70% Cacao Fino de Aroma - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Tableta 70% Cacao Fino de Aroma - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 1, 'chocolate, artesanal, ambato, cacao, tableta 70% cacao fino de aroma', 'Barra de chocolate oscuro artesanal elaborada con una noble selección de cacao nacional fino de aroma. Equilibrio perfecto entre notas frutales, tostado en leña y amargor elegante.', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 1, '*', ''),
(2, 27, 'Chocolate con Naranja & Jengibre', 'chocolate-naranja-jengibre', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$5.00 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Fusión aromática vibrante que combina chocolate semiamargo al 60% con cáscara de naranja confitada al sol y el toque cálido y especiado del jengibre fresco.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Chocolate+con+Naranja+%26+Jengibre+%28%245.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$5.00 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Fusión aromática vibrante que combina chocolate semiamargo al 60% con cáscara de naranja confitada al sol y el toque cálido y especiado del jengibre fresco.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Chocolate+con+Naranja+%26+Jengibre+%28%245.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>Una experiencia sensorial única que despierta el paladar. La acidez cítrica de la naranja andina se equilibra con el picor sutil del jengibre molido en piedra, envueltos en la untuosidad del cacao puro.</p>\n        <h4>Características:</h4>\n        <ul>\n            <li><strong>Porcentaje:</strong> 60% licor de cacao artesanal.</li>\n            <li><strong>Ingredientes:</strong> Cacao fino, panela orgánica, cáscara de naranja deshidratada y jengibre natural.</li>\n            <li><strong>Peso Neto:</strong> 100 gramos.</li>\n            <li><strong>Beneficios:</strong> Alto contenido de antioxidantes y efecto revitalizante natural.</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Chocolate con Naranja & Jengibre - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Chocolate con Naranja & Jengibre - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 2, 'chocolate, artesanal, ambato, cacao, chocolate con naranja & jengibre', 'Fusión aromática vibrante que combina chocolate semiamargo al 60% con cáscara de naranja confitada al sol y el toque cálido y especiado del jengibre fresco.', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 1, '*', ''),
(3, 27, 'Cacao en Grano Tostado en Paila', 'cacao-en-grano-tostado', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$6.00 <small style=\"font-size:0.9rem; color:#666;\">(250g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Granos enteros de cacao fino de aroma seleccionados a mano, fermentados a punto óptimo y tostados a fuego lento en paila de cobre tradicional en Ambato.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Cacao+en+Grano+Tostado+en+Paila+%28%246.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$6.00 <small style=\"font-size:0.9rem; color:#666;\">(250g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Granos enteros de cacao fino de aroma seleccionados a mano, fermentados a punto óptimo y tostados a fuego lento en paila de cobre tradicional en Ambato.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Cacao+en+Grano+Tostado+en+Paila+%28%246.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>La pureza del campo ecuatoriano sin intermediarios. Nuestros granos conservan su manteca natural y teobromina, ofreciendo una textura crujiente y aroma inigualable.</p>\n        <h4>Características:</h4>\n        <ul>\n            <li><strong>Ingrediente:</strong> 100% grano de cacao nacional ecuatoriano.</li>\n            <li><strong>Presentación:</strong> Bolsa kraft biodegradable de 250 gramos con cierre hermético.</li>\n            <li><strong>Usos versátiles:</strong> Snack energético superfood, infusión de cáscara o molienda casera para pasta de taza.</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Cacao en Grano Tostado en Paila - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Cacao en Grano Tostado en Paila - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 3, 'chocolate, artesanal, ambato, cacao, cacao en grano tostado en paila', 'Granos enteros de cacao fino de aroma seleccionados a mano, fermentados a punto óptimo y tostados a fuego lento en paila de cobre tradicional en Ambato.', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 1, '*', ''),
(4, 106, 'Pasta Tradicional de Chocolate de Taza (100% Cacao)', 'pasta-tradicional-chocolate-taza', '<!-- Hero Showcase: 2 Columnas perfectamente equilibradas -->\r\n<div class=\"product-hero-showcase\"><!-- Columna Izquierda: Galería e Imagen de Producto -->\r\n<div class=\"product-gallery-card\"><img src=\"images/productos/imagen_producto_default.avif\" alt=\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\"></div>\r\n<!-- Columna Derecha: Información Editorial y Compra -->\r\n<div class=\"product-summary-col\"><!-- Retorno al Catálogo -->\r\n<div style=\"margin-bottom: 16px;\"><a href=\"index.php/component/content/category/especialidades-cacao\" class=\"btn-volver-catalogo\"> ← Volver al Catálogo de Especialidades </a></div>\r\n<!-- Ceja y Título Principal -->\r\n<div class=\"producto-eyebrow\" style=\"color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.85rem; font-weight: bold; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 8px;\">✦ TRADICIÓN DESDE 1952 • CACAO PURO 100%</div>\r\n<h1 class=\"producto-titulo-detalle\" style=\"font-family: \'Playfair Display\', Georgia, serif; font-size: 2.5rem; color: #3B2314; font-weight: bold; line-height: 1.2; margin-bottom: 16px;\">Pasta Tradicional de Chocolate de Taza</h1>\r\n<p class=\"lead\" style=\"color: #4A3528; font-size: 1.1rem; line-height: 1.7; margin-bottom: 24px;\">La clásica pasta pura sin azúcar para preparar el tradicional chocolate caliente con espuma espesa de molinillo de madera, tal como se sirve en los hogares de Ambato desde 1952.</p>\r\n<!-- Caja de Compra de Alta Conversión -->\r\n<div class=\"caja-compra-detalle\" style=\"background: #FAF5EE; border: 1.5px solid rgba(193, 154, 61, 0.35); border-radius: 16px; padding: 26px; box-shadow: 0 10px 30px rgba(59, 35, 20, 0.06);\">\r\n<div style=\"display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; margin-bottom: 20px; gap: 10px;\">\r\n<div>\r\n<div style=\"font-size: 0.82rem; color: #8C6239; font-weight: bold; text-transform: uppercase; letter-spacing: 1.5px;\">Precio Oficial de Fábrica</div>\r\n<div style=\"font-size: 2.4rem; font-weight: bold; color: #3B2314; font-family: \'Playfair Display\', serif; line-height: 1;\">$4.00 <span style=\"font-size: 1rem; color: #6C4A33; font-weight: 500; font-family: \'Montserrat\', sans-serif;\">(Pasta 200g)</span></div>\r\n</div>\r\n<div style=\"display: inline-flex; align-items: center; gap: 8px; background: rgba(37, 211, 102, 0.12); color: #1E824C; padding: 7px 16px; border-radius: 50px; font-size: 0.88rem; font-weight: bold;\"><span style=\"font-size: 1.1rem; line-height: 0;\">●</span> En Stock • Envíos a todo el Ecuador</div>\r\n</div>\r\n<!-- Stepper de Cantidad, Agregar al Carrito y WhatsApp -->\r\n<div style=\"display: flex; gap: 14px; align-items: center; flex-wrap: wrap; margin-bottom: 18px;\">\r\n<div class=\"control-cantidad-card\" style=\"height: 48px; border: 2px solid #C19A3D; border-radius: 8px; display: inline-flex; align-items: center; background: #FFFFFF;\"><button type=\"button\" class=\"btn-qty\" onclick=\"window.cambiarQtyCard(this, -1)\" aria-label=\"Disminuir\" style=\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\">-</button> <input type=\"text\" class=\"input-qty-card\" value=\"1\" readonly=\"readonly\" aria-label=\"Cantidad\" style=\"width: 45px; height: 100%; border: none; text-align: center; font-size: 1.1rem; font-weight: bold; color: #3B2314; background: transparent;\"> <button type=\"button\" class=\"btn-qty\" onclick=\"window.cambiarQtyCard(this, 1)\" aria-label=\"Aumentar\" style=\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\">+</button></div>\r\n<button type=\"button\" class=\"btn-comprar-card\" onclick=\"window.agregarAlCarritoDirecto(\'Pasta Tradicional de Chocolate de Taza (100% Cacao)\', 4.00, \'/joomla/images/productos/imagen_producto_default.avif\', this)\" style=\"height: 48px; background: #8C6239; color: #FFFFFF; border: none; border-radius: 8px; font-weight: bold; font-size: 1rem; padding: 0 24px; cursor: pointer; display: inline-flex; align-items: center; gap: 8px; transition: background 0.2s ease;\"> <span style=\"font-size: 1.2rem;\">🛒</span> Agregar al Carrito </button> <a href=\"https://wa.me/593994851768?text=Hola,%20deseo%20ordenar%20la%20Pasta%20Tradicional%20de%20Chocolate%20de%20Taza%20($4.00)\" target=\"_blank\" rel=\"noopener\" style=\"height: 48px; background: #25D366; color: #FFFFFF; text-decoration: none; border-radius: 8px; font-weight: bold; font-size: 0.95rem; padding: 0 20px; display: inline-flex; align-items: center; gap: 8px; box-sizing: border-box;\"> <img src=\"https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg\" alt=\"\" style=\"width: 20px; height: 20px;\"> Pedir por WhatsApp </a></div>\r\n<!-- Sellos de Confianza -->\r\n<div style=\"display: flex; gap: 20px; flex-wrap: wrap; border-top: 1px solid rgba(193, 154, 61, 0.25); padding-top: 14px; font-size: 0.88rem; color: #6C4A33;\">\r\n<div>🚚 <strong>Envíos:</strong> Cobertura a todo el Ecuador</div>\r\n<div>🌱 <strong>Pureza:</strong> 100% Licor de Cacao sin químicos</div>\r\n<div>📍 <strong>Origen:</strong> Hecho en Ambato desde 1952</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Sección de Atributos a Ancho Completo (4 Columnas Equilibradas) -->\r\n<div class=\"product-attributes-fullwidth\">\r\n<h3 style=\"font-family: \'Playfair Display\', Georgia, serif; font-size: 1.85rem; color: #3B2314; font-weight: bold; text-align: center; margin-bottom: 24px;\">Atributos de Alta Chocolatería</h3>\r\n<div class=\"product-attributes-grid\">\r\n<div style=\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\">\r\n<div style=\"font-size: 1.8rem; margin-bottom: 10px;\">🍫</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\">100% Cacao Puro</div>\r\n<div style=\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\">Sin azúcar añadida, libre de grasas hidrogenadas</div>\r\n</div>\r\n<div style=\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\">\r\n<div style=\"font-size: 1.8rem; margin-bottom: 10px;\">📍</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\">Origen Tungurahua</div>\r\n<div style=\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\">Granos seleccionados y tostados en Ambato</div>\r\n</div>\r\n<div style=\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\">\r\n<div style=\"font-size: 1.8rem; margin-bottom: 10px;\">🔥</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\">Paila Tradicional</div>\r\n<div style=\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\">Tostado a leña y molienda en piedra volcánica</div>\r\n</div>\r\n<div style=\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\">\r\n<div style=\"font-size: 1.8rem; margin-bottom: 10px;\">☕</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\">Rendimiento</div>\r\n<div style=\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\">Rinde de 8 a 10 tazas con espuma dorada</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Sección del Ritual a Ancho Completo (3 Columnas Equilibradas) -->\r\n<div class=\"product-ritual-fullwidth\">\r\n<h3 style=\"font-family: \'Playfair Display\', Georgia, serif; font-size: 1.85rem; color: #3B2314; font-weight: bold; text-align: center; margin-bottom: 10px;\">El Ritual de Preparación Tradicional</h3>\r\n<p style=\"text-align: center; color: #6C4A33; font-size: 1.05rem; max-width: 650px; margin: 0 auto 30px auto;\">Tres pasos ancestrales para despertar todo el aroma y la espuma dorada del cacao ambateño en casa.</p>\r\n<div class=\"product-ritual-grid\">\r\n<div style=\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\">\r\n<div style=\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\">1</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\">Hervir y Especiar</div>\r\n<p style=\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\">Hervir 1 litro de leche entera o vegetal con canela en rama y dos clavos de olor.</p>\r\n</div>\r\n<div style=\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\">\r\n<div style=\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\">2</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\">Rallar y Fundir</div>\r\n<p style=\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\">Rallar 50g de pasta tradicional e incorporar a fuego medio hasta disolución total.</p>\r\n</div>\r\n<div style=\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\">\r\n<div style=\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\">3</div>\r\n<div style=\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\">Batir con Molinillo</div>\r\n<p style=\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\">Batir con molinillo de madera hasta coronar con abundante espuma sedosa y servir.</p>\r\n</div>\r\n</div>\r\n</div>', '', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-21 05:48:45', 723, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images\\/productos\\/imagen_producto_default.avif\",\"image_intro_alt\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\",\"imgclass_intro\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/productos\\/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\",\"imgclass_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"helix_ultimate_image\":\"\",\"helix_ultimate_image_alt_txt\":\"\",\"helix_ultimate_article_format\":\"standard\",\"helix_ultimate_audio\":\"\",\"helix_ultimate_gallery\":\"\",\"helix_ultimate_video\":\"\"}', 3, 4, 'chocolate, artesanal, ambato, cacao, pasta tradicional de chocolate de taza (100% cacao)', 'La auténtica pasta ambateña para preparar el tradicional chocolate caliente con espuma de molinillo. Sin azúcar añadida, solo cacao puro concentrado.', 1, 37, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(5, 27, 'Chocolate con Almendras Tostadas y Sal Marina', 'chocolate-almendras-sal-marina', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$5.50 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Chocolate oscuro al 65% coronado con trocitos de almendras enteras tostadas y una pizca de cristales de sal marina que intensifican las notas a cacao.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Chocolate+con+Almendras+Tostadas+y+Sal+Marina+%28%245.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$5.50 <small style=\"font-size:0.9rem; color:#666;\">(100g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Chocolate oscuro al 65% coronado con trocitos de almendras enteras tostadas y una pizca de cristales de sal marina que intensifican las notas a cacao.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Chocolate+con+Almendras+Tostadas+y+Sal+Marina+%28%245.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>El balance perfecto entre lo dulce, lo amargo y un toque salino sutil que resalta la intensidad aromática del chocolate artesanal ambateño.</p>\n        <h4>Características:</h4>\n        <ul>\n            <li><strong>Porcentaje:</strong> 65% cacao fino de aroma.</li>\n            <li><strong>Toppings:</strong> Almendras seleccionadas crujientes y sal marina mineral sin refinar.</li>\n            <li><strong>Peso Neto:</strong> 100 gramos.</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Chocolate con Almendras Tostadas y Sal Marina - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Chocolate con Almendras Tostadas y Sal Marina - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 5, 'chocolate, artesanal, ambato, cacao, chocolate con almendras tostadas y sal marina', 'Chocolate oscuro al 65% coronado con trocitos de almendras enteras tostadas y una pizca de cristales de sal marina que intensifican las notas a cacao.', 1, 5, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(6, 27, 'Cacao Puro en Polvo Desgrasado', 'cacao-puro-en-polvo', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.80 <small style=\"font-size:0.9rem; color:#666;\">(250g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Cacao en polvo soluble obtenido por prensado mecánico en frío, sin alcalinizar, sin azúcares y sin conservantes químicos.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Cacao+Puro+en+Polvo+Desgrasado+%28%244.80%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.80 <small style=\"font-size:0.9rem; color:#666;\">(250g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Cacao en polvo soluble obtenido por prensado mecánico en frío, sin alcalinizar, sin azúcares y sin conservantes químicos.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Cacao+Puro+en+Polvo+Desgrasado+%28%244.80%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>Ideal para deportistas, repostería saludable, batidos matutinos y postres gourmet. Aporta toda la energía natural del cacao andino.</p>\n        <h4>Características:</h4>\n        <ul>\n            <li><strong>Ingrediente:</strong> 100% Cacao natural desgrasado.</li>\n            <li><strong>Presentación:</strong> Doypack resellable de 250 gramos.</li>\n            <li><strong>Aporte:</strong> Rico en magnesio, hierro y antioxidantes flavonoides.</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Cacao Puro en Polvo Desgrasado - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Cacao Puro en Polvo Desgrasado - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 6, 'chocolate, artesanal, ambato, cacao, cacao puro en polvo desgrasado', 'Cacao en polvo soluble obtenido por prensado mecánico en frío, sin alcalinizar, sin azúcares y sin conservantes químicos.', 1, 11, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(7, 27, 'Bombones Rellenos de Frutas Andinas (Caja x6)', 'bombones-frutas-andinas', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$7.50 <small style=\"font-size:0.9rem; color:#666;\">(120g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Exclusiva caja de 6 bombones artesanales con concha de chocolate 70% y corazones fluidos de reducción natural de maracuyá, uvilla y mora de páramo.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Bombones+Rellenos+de+Frutas+Andinas+%28Caja+x6%29+%28%247.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$7.50 <small style=\"font-size:0.9rem; color:#666;\">(120g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Exclusiva caja de 6 bombones artesanales con concha de chocolate 70% y corazones fluidos de reducción natural de maracuyá, uvilla y mora de páramo.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Bombones+Rellenos+de+Frutas+Andinas+%28Caja+x6%29+%28%247.50%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>Una obra de arte de la bombonería ambateña. Frutas frescas cosechadas en los valles de Tungurahua convertidas en un centro untuoso que estalla en boca.</p>\n        <h4>Sabores incluidos:</h4>\n        <ul>\n            <li>2x Bombón Maracuyá Silvestre</li>\n            <li>2x Bombón Uvilla Andina (Golden Berry)</li>\n            <li>2x Bombón Mora de Castilla</li>\n        </ul>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Bombones Rellenos de Frutas Andinas (Caja x6) - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Bombones Rellenos de Frutas Andinas (Caja x6) - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 7, 'chocolate, artesanal, ambato, cacao, bombones rellenos de frutas andinas (caja x6)', 'Exclusiva caja de 6 bombones artesanales con concha de chocolate 70% y corazones fluidos de reducción natural de maracuyá, uvilla y mora de páramo.', 1, 45, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(8, 27, 'Nibs de Cacao Caramelizados con Panela', 'nibs-cacao-caramelizados', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.00 <small style=\"font-size:0.9rem; color:#666;\">(150g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Trozos crujientes de grano de cacao tostado ligeramente glaseados con miel de panela orgánica. El topping perfecto para bowls, yogur y ensaladas.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Nibs+de+Cacao+Caramelizados+con+Panela+%28%244.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div>', '<div class=\"producto-tarjeta-joomla\">\n        <div class=\"precio-badge\" style=\"font-size:1.4rem; font-weight:bold; color:#C19A3D; margin-bottom:10px;\">$4.00 <small style=\"font-size:0.9rem; color:#666;\">(150g)</small></div>\n        <p class=\"lead\" style=\"color:#4A3528;\">Trozos crujientes de grano de cacao tostado ligeramente glaseados con miel de panela orgánica. El topping perfecto para bowls, yogur y ensaladas.</p>\n        <div style=\"margin: 15px 0;\">\n            <a href=\"https://wa.me/593962660236?text=Hola%2C+deseo+pedir+Nibs+de+Cacao+Caramelizados+con+Panela+%28%244.00%29\" target=\"_blank\" class=\"btn\" style=\"background:#C19A3D; color:#FFF; padding:10px 22px; border-radius:6px; font-weight:bold; text-decoration:none; display:inline-block;\">Pedir por WhatsApp</a>\n        </div>\n    </div><hr style=\"border:0; border-top:1px solid #E0D3C1; margin:25px 0;\"><p>Snack crujiente 100% saludable y libre de gluten. Mantiene la textura natural del grano con un toque dulce caramelo que fascina a grandes y chicos.</p>\n        <h4>Presentación:</h4>\n        <p>Bolsa transparente hermética de 150 gramos.</p>', 1, 8, '2026-11-14 00:25:58', 723, '', '2026-11-14 00:25:58', 0, 0, NULL, '2026-11-14 00:25:58', NULL, '{\"image_intro\":\"images/productos/imagen_producto_default.avif\",\"image_intro_alt\":\"Nibs de Cacao Caramelizados con Panela - Chocolate Artesanal de Ambato\",\"image_intro_caption\":\"\",\"float_intro\":\"\",\"image_fulltext\":\"images/productos/imagen_producto_default.avif\",\"image_fulltext_alt\":\"Nibs de Cacao Caramelizados con Panela - Chocolate Artesanal de Ambato\",\"image_fulltext_caption\":\"\",\"float_fulltext\":\"\"}', '{}', '{}', 1, 8, 'chocolate, artesanal, ambato, cacao, nibs de cacao caramelizados con panela', 'Trozos crujientes de grano de cacao tostado ligeramente glaseados con miel de panela orgánica. El topping perfecto para bowls, yogur y ensaladas.', 1, 17, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(9, 102, 'asdasd', 'asdasd', '<p>asfsdadfdasfafdf</p>', '', -2, 2, '2026-11-14 00:27:21', 723, '', '2026-11-14 00:27:21', 723, 0, NULL, '2026-11-14 00:27:21', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"imgclass_intro\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"imgclass_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"helix_ultimate_image\":\"\",\"helix_ultimate_image_alt_txt\":\"\",\"helix_ultimate_article_format\":\"standard\",\"helix_ultimate_audio\":\"\",\"helix_ultimate_gallery\":\"\",\"helix_ultimate_video\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_contentitem_tag_map`
--

CREATE TABLE `lgi49_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_content_frontpage`
--

CREATE TABLE `lgi49_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_content_rating`
--

CREATE TABLE `lgi49_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_content_types`
--

CREATE TABLE `lgi49_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_content_types`
--

INSERT INTO `lgi49_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_user_id\":\"created_by\",\"core_created_by_alias\":\"created_by_alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"tags\",\"targetTable\":\"#__tags\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(14, 'Module', 'com_modules.module', '{\"special\":{\"dbtable\":\"#__modules\",\"key\":\"id\",\"type\":\"Module\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\"}}', '', '{}', '', '{\"formFile\":\"administrator\\/components\\/com_modules\\/forms\\/module.xml\", \"hideFields\":[\"checked_out\", \"checked_out_time\", \"publish_up\", \"publish_down\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"checked_out\", \"targetTable\":\"#__users\", \"targetColumn\":\"id\", \"displayColumn\":\"name\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_extensions`
--

CREATE TABLE `lgi49_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_extensions`
--

INSERT INTO `lgi49_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_subcat_image\":\"0\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"files\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_subcat_image\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_subcat_image\":\"0\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":0,\"blog_class_leading\":\"\",\"num_intro_articles\":6,\"blog_class\":\"\",\"num_columns\":3,\"multi_column_order\":\"0\",\"num_links\":0,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}', '{\"updatesource\":\"default\",\"customurl\":\"\",\"autoupdate_status\":0,\"autoupdate\":0,\"minimum_stability\":\"4\",\"update_token\":\"7tFyKC9QowMxQmSrSAguwWRul1yg7j1HUb0KlqHo\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'com_guidedtours', 'component', 'com_guidedtours', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_joomla', 'library', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'lib_phpass', 'library', 'phpass', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.5.1\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_banners', 'module', 'mod_banners', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_custom', 'module', 'mod_custom', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_feed', 'module', 'mod_feed', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_footer', 'module', 'mod_footer', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_login', 'module', 'mod_login', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_menu', 'module', 'mod_menu', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_random_image', 'module', 'mod_random_image', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_related_items', 'module', 'mod_related_items', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_stats', 'module', 'mod_stats', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_languages', 'module', 'mod_languages', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_finder', 'module', 'mod_finder', '', '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'mod_articles', 'module', 'mod_articles', '', '', 0, 1, 0, 0, 1, '{\"name\":\"mod_articles\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_custom', 'module', 'mod_custom', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_feed', 'module', 'mod_feed', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_latest', 'module', 'mod_latest', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_logged', 'module', 'mod_logged', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_login', 'module', 'mod_login', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_menu', 'module', 'mod_menu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_popular', 'module', 'mod_popular', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_frontend', 'module', 'mod_frontend', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_messages', 'module', 'mod_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_user', 'module', 'mod_user', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_title', 'module', 'mod_title', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `lgi49_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(77, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_version', 'module', 'mod_version', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(80, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'mod_submenu', 'module', 'mod_submenu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(86, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(87, 0, 'mod_guidedtours', 'module', 'mod_guidedtours', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(88, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', '', 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_api-authentication_basic', 'plugin', 'basic', '', 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(90, 0, 'plg_api-authentication_token', 'plugin', 'token', '', 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(91, 0, 'plg_authentication_cookie', 'plugin', 'cookie', '', 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_authentication_joomla', 'plugin', 'joomla', '', 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_authentication_ldap', 'plugin', 'ldap', '', 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(94, 0, 'plg_behaviour_compat6', 'plugin', 'compat6', '', 'behaviour', 0, 0, 1, 0, 1, '{\"name\":\"plg_behaviour_compat6\",\"type\":\"plugin\",\"creationDate\":\"2025-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_COMPAT6_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat6\",\"filename\":\"compat6\"}', '{\"classes_aliases\":\"0\",\"legacy_classes\":\"1\"}', '', NULL, NULL, 1, 0, NULL),
(95, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(96, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(97, 0, 'plg_captcha_powcaptcha', 'plugin', 'powcaptcha', '', 'captcha', 0, 1, 1, 0, 1, '{\"name\":\"plg_captcha_powcaptcha\",\"type\":\"plugin\",\"creationDate\":\"2025-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.1.0\",\"description\":\"PLG_CAPTCHA_POWCAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Captcha\\\\POWCaptcha\",\"filename\":\"powcaptcha\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(98, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(99, 0, 'plg_content_contact', 'plugin', 'contact', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(100, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(101, 0, 'plg_content_fields', 'plugin', 'fields', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(102, 0, 'plg_content_finder', 'plugin', 'finder', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(103, 0, 'plg_content_joomla', 'plugin', 'joomla', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(104, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(105, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(106, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(107, 0, 'plg_content_vote', 'plugin', 'vote', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(108, 0, 'plg_editors-xtd_article', 'plugin', 'article', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(109, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(110, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(111, 0, 'plg_editors-xtd_image', 'plugin', 'image', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(112, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(113, 0, 'plg_editors-xtd_module', 'plugin', 'module', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(114, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(115, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(116, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(117, 0, 'plg_editors_none', 'plugin', 'none', '', 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(118, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"8.9.1\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"readmore\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"readmore\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"readmore\",\"|\",\"lineheight\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\",\"language\",\"abbr\",\"abbr_remove\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"1\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"1\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"1\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550px\",\"html_width\":\"100%\"}', '', NULL, NULL, 3, 0, NULL),
(119, 0, 'plg_extension_finder', 'plugin', 'finder', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(120, 0, 'plg_extension_joomla', 'plugin', 'joomla', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(121, 0, 'plg_extension_joomlaupdate', 'plugin', 'joomlaupdate', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"1.0.0\",\"description\":\"PLG_EXTENSION_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 3, 0, NULL),
(122, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', '', 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(123, 0, 'plg_fields_calendar', 'plugin', 'calendar', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(124, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(125, 0, 'plg_fields_color', 'plugin', 'color', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(126, 0, 'plg_fields_editor', 'plugin', 'editor', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 4, 0, NULL),
(127, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(128, 0, 'plg_fields_integer', 'plugin', 'integer', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(129, 0, 'plg_fields_list', 'plugin', 'list', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(130, 0, 'plg_fields_media', 'plugin', 'media', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(131, 0, 'plg_fields_note', 'plugin', 'note', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_note\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Note\",\"filename\":\"note\"}', '{\"class\":\"alert alert-info\",\"heading\":\"h4\"}', '', NULL, NULL, 9, 0, NULL),
(132, 0, 'plg_fields_number', 'plugin', 'number', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_number\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.0.0\",\"description\":\"PLG_FIELDS_NUMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Number\",\"filename\":\"number\"}', '{\"min\":\"1.0\",\"max\":\"100.0\",\"step\":\"0.1\",\"currency\":\"0\",\"symbol\":\"\",\"position\":\"0\",\"decimals\":\"2\"}', '', NULL, NULL, 10, 0, NULL),
(133, 0, 'plg_fields_radio', 'plugin', 'radio', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}', '', '', NULL, NULL, 11, 0, NULL),
(134, 0, 'plg_fields_sql', 'plugin', 'sql', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}', '', '', NULL, NULL, 12, 0, NULL),
(135, 0, 'plg_fields_subform', 'plugin', 'subform', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}', '', '', NULL, NULL, 13, 0, NULL),
(136, 0, 'plg_fields_text', 'plugin', 'text', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}', '', '', NULL, NULL, 14, 0, NULL),
(137, 0, 'plg_fields_textarea', 'plugin', 'textarea', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}', '{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 15, 0, NULL),
(138, 0, 'plg_fields_url', 'plugin', 'url', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}', '', '', NULL, NULL, 16, 0, NULL),
(139, 0, 'plg_fields_user', 'plugin', 'user', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}', '', '', NULL, NULL, 17, 0, NULL),
(140, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 18, 0, NULL),
(141, 0, 'plg_filesystem_local', 'plugin', 'local', '', 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(142, 0, 'plg_finder_categories', 'plugin', 'categories', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(143, 0, 'plg_finder_contacts', 'plugin', 'contacts', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(144, 0, 'plg_finder_content', 'plugin', 'content', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(145, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(146, 0, 'plg_finder_tags', 'plugin', 'tags', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(147, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(148, 0, 'plg_installer_override', 'plugin', 'override', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(149, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(150, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(151, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(152, 0, 'plg_media-action_crop', 'plugin', 'crop', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(153, 0, 'plg_media-action_resize', 'plugin', 'resize', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(154, 0, 'plg_media-action_rotate', 'plugin', 'rotate', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(155, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `lgi49_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(156, 0, 'plg_privacy_consents', 'plugin', 'consents', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(157, 0, 'plg_privacy_contact', 'plugin', 'contact', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(158, 0, 'plg_privacy_content', 'plugin', 'content', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(159, 0, 'plg_privacy_message', 'plugin', 'message', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(160, 0, 'plg_privacy_user', 'plugin', 'user', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(161, 0, 'plg_quickicon_autoupdate', 'plugin', 'autoupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_autoupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_QUICKICON_AUTOUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Autoupdate\",\"filename\":\"autoupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(162, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(163, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 3, 0, NULL),
(164, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 4, 0, NULL),
(165, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 5, 0, NULL),
(166, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(167, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 7, 0, NULL),
(168, 0, 'plg_quickicon_eos', 'plugin', 'eos', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}', '', '', NULL, NULL, 8, 0, NULL),
(169, 0, 'plg_sampledata_blog', 'plugin', 'blog', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(170, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(171, 0, 'plg_schemaorg_article', 'plugin', 'article', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(172, 0, 'plg_schemaorg_blogposting', 'plugin', 'blogposting', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(173, 0, 'plg_schemaorg_book', 'plugin', 'book', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(174, 0, 'plg_schemaorg_event', 'plugin', 'event', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(175, 0, 'plg_schemaorg_jobposting', 'plugin', 'jobposting', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(176, 0, 'plg_schemaorg_organization', 'plugin', 'organization', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(177, 0, 'plg_schemaorg_person', 'plugin', 'person', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(178, 0, 'plg_schemaorg_recipe', 'plugin', 'recipe', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(179, 0, 'plg_schemaorg_custom', 'plugin', 'custom', '', 'schemaorg', 0, 1, 1, 0, 1, '{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(180, 0, 'plg_system_accessibility', 'plugin', 'accessibility', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(181, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(182, 0, 'plg_system_cache', 'plugin', 'cache', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(183, 0, 'plg_system_debug', 'plugin', 'debug', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(184, 0, 'plg_system_fields', 'plugin', 'fields', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(185, 0, 'plg_system_highlight', 'plugin', 'highlight', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(186, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(187, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(188, 0, 'plg_system_languagecode', 'plugin', 'languagecode', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(189, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(190, 0, 'plg_system_log', 'plugin', 'log', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(191, 0, 'plg_system_logout', 'plugin', 'logout', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(192, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(193, 0, 'plg_system_redirect', 'plugin', 'redirect', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL),
(194, 0, 'plg_system_remember', 'plugin', 'remember', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(195, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(196, 0, 'plg_system_schemaorg', 'plugin', 'schemaorg', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(197, 0, 'plg_system_sef', 'plugin', 'sef', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}', '{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}', '', NULL, NULL, 19, 0, NULL),
(198, 0, 'plg_system_shortcut', 'plugin', 'shortcut', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}', '{}', '', NULL, NULL, 21, 0, NULL),
(199, 0, 'plg_system_skipto', 'plugin', 'skipto', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 22, 0, NULL),
(200, 0, 'plg_system_stats', 'plugin', 'stats', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1794614572,\"unique_id\":\"3b756183e3ad2f25d99cd753b02e481a4235db72\",\"interval\":12}', '', NULL, NULL, 23, 0, NULL),
(201, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 24, 0, NULL),
(202, 0, 'plg_system_webauthn', 'plugin', 'webauthn', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 26, 0, NULL),
(203, 0, 'plg_task_check_files', 'plugin', 'checkfiles', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(204, 0, 'plg_task_deleteactionlogs', 'plugin', 'deleteactionlogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(205, 0, 'plg_task_globalcheckin', 'plugin', 'globalcheckin', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(206, 0, 'plg_task_requests', 'plugin', 'requests', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(207, 0, 'plg_task_privacyconsent', 'plugin', 'privacyconsent', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(208, 0, 'plg_task_rotatelogs', 'plugin', 'rotatelogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(209, 0, 'plg_task_sessiongc', 'plugin', 'sessiongc', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(210, 0, 'plg_task_site_status', 'plugin', 'sitestatus', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(211, 0, 'plg_task_updatenotification', 'plugin', 'updatenotification', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(212, 0, 'plg_multifactorauth_totp', 'plugin', 'totp', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(213, 0, 'plg_multifactorauth_yubikey', 'plugin', 'yubikey', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(214, 0, 'plg_multifactorauth_webauthn', 'plugin', 'webauthn', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}', '', '', NULL, NULL, 3, 0, NULL),
(215, 0, 'plg_multifactorauth_email', 'plugin', 'email', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}', '', '', NULL, NULL, 4, 0, NULL),
(216, 0, 'plg_multifactorauth_fixed', 'plugin', 'fixed', '', 'multifactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}', '', '', NULL, NULL, 5, 0, NULL),
(217, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(218, 0, 'plg_user_joomla', 'plugin', 'joomla', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(219, 0, 'plg_user_profile', 'plugin', 'profile', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(220, 0, 'plg_user_terms', 'plugin', 'terms', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(221, 0, 'plg_user_token', 'plugin', 'token', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(222, 0, 'plg_webservices_banners', 'plugin', 'banners', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(223, 0, 'plg_webservices_config', 'plugin', 'config', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(224, 0, 'plg_webservices_contact', 'plugin', 'contact', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(225, 0, 'plg_webservices_content', 'plugin', 'content', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(226, 0, 'plg_webservices_installer', 'plugin', 'installer', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(227, 0, 'plg_webservices_joomlaupdate', 'plugin', 'joomlaupdate', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2025-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.4.0\",\"description\":\"PLG_WEBSERVICES_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(228, 0, 'plg_webservices_languages', 'plugin', 'languages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(229, 0, 'plg_webservices_media', 'plugin', 'media', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(230, 0, 'plg_webservices_menus', 'plugin', 'menus', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(231, 0, 'plg_webservices_messages', 'plugin', 'messages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(232, 0, 'plg_webservices_modules', 'plugin', 'modules', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(233, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(234, 0, 'plg_webservices_plugins', 'plugin', 'plugins', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(235, 0, 'plg_webservices_privacy', 'plugin', 'privacy', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(236, 0, 'plg_webservices_redirect', 'plugin', 'redirect', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(237, 0, 'plg_webservices_tags', 'plugin', 'tags', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(238, 0, 'plg_webservices_templates', 'plugin', 'templates', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(239, 0, 'plg_webservices_users', 'plugin', 'users', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(240, 0, 'plg_workflow_featuring', 'plugin', 'featuring', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL);
INSERT INTO `lgi49_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(241, 0, 'plg_workflow_notification', 'plugin', 'notification', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(242, 0, 'plg_workflow_publishing', 'plugin', 'publishing', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(243, 0, 'plg_system_guidedtours', 'plugin', 'guidedtours', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(244, 0, 'atum', 'template', 'atum', '', '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(245, 0, 'cassiopeia', 'template', 'cassiopeia', '', '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}', '', NULL, NULL, 0, 0, NULL),
(246, 0, 'cassiopeia_extended', 'template', 'cassiopeia_extended', '', '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia_extended\",\"type\":\"template\",\"creationDate\":\"2025-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2025 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_EXTENDED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":false,\"parent\":\"cassiopeia\",\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}', '', NULL, NULL, 0, 0, NULL),
(247, 0, 'files_joomla', 'file', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2026-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.2.0\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(248, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2026-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.2.0.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(249, 248, 'English (en-GB)', 'language', 'en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.2.0\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(250, 248, 'English (en-GB)', 'language', 'en-GB', '', '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.2.0\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(251, 248, 'English (en-GB)', 'language', 'en-GB', '', '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2026-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"6.2.0\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(252, 0, 'System - Helix Ultimate Framework', 'plugin', 'helixultimate', '', 'system', 0, 1, 1, 0, 0, '{\"name\":\"System - Helix Ultimate Framework\",\"type\":\"plugin\",\"creationDate\":\"Feb 2018\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2025 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.2.11\",\"description\":\"Helix Ultimate Framework - Joomla Template Framework by JoomShaper\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"helixultimate\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(254, 0, 'shaper_helixultimate', 'template', 'shaper_helixultimate', '', '', 0, 1, 1, 0, 0, '{\"name\":\"shaper_helixultimate\",\"type\":\"template\",\"creationDate\":\"Feb 2018\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2025 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.2.11\",\"description\":\"Helix Ultimate - Starter Template of Helix Ultimate Framework for Joomla 4, Joomla 5 and Joomla 6 Only.\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"templateDetails\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(255, 0, 'SP Page Builder', 'component', 'com_sppagebuilder', 'https://www.joomshaper.com/updates/changelogs/com-sp-page-builder-pro-next.xml', '', 1, 1, 0, 0, 0, '{\"name\":\"SP Page Builder\",\"type\":\"component\",\"creationDate\":\"Sep 2014\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright @ 2010 - 2026 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"https:\\/\\/www.joomshaper.com\",\"version\":\"6.10.0\",\"description\":\"\",\"group\":\"\",\"changelogurl\":\"https:\\/\\/www.joomshaper.com\\/updates\\/changelogs\\/com-sp-page-builder-pro-next.xml\",\"filename\":\"sppagebuilder\"}', '{\"sppb_color_variables\":[]}', '', NULL, NULL, 0, 0, NULL),
(256, 0, 'SP Page Builder', 'module', 'mod_sppagebuilder', '', '', 0, 1, 0, 0, 0, '{\"name\":\"SP Page Builder\",\"type\":\"module\",\"creationDate\":\"Oct 2016\",\"author\":\"JoomShaper\",\"copyright\":\"Copyright (C) 2010 - 2024 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"6.10.0\",\"description\":\"Module to display content from SP Page Builder\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"mod_sppagebuilder\"}', '{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_fields`
--

CREATE TABLE `lgi49_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` mediumtext NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_fields`
--

INSERT INTO `lgi49_fields` (`id`, `asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `only_use_in_subform`, `checked_out`, `checked_out_time`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`) VALUES
(1, 0, 'com_content.article', 1, 'Precio del Producto', 'precio_producto', 'Precio ($ USD)', '$4.50', 'text', '', 'Precio de venta al público', 1, 0, 0, NULL, NULL, 1, '{\"hint\":\"\",\"class\":\"\",\"showon\":\"\"}', '{}', '*', '2026-11-14 01:47:41', 1, '2026-11-14 01:47:41', 1, 1),
(2, 0, 'com_content.article', 1, 'Presentación / Gramaje', 'presentacion_cacao', 'Presentación / Gramaje', '100g', 'text', '', 'Gramaje neto y porcentaje de cacao', 1, 0, 0, NULL, NULL, 2, '{\"hint\":\"\",\"class\":\"\",\"showon\":\"\"}', '{}', '*', '2026-11-14 01:47:41', 1, '2026-11-14 01:47:41', 1, 1),
(3, 0, 'com_content.article', 1, 'Origen del Grano de Cacao', 'origen_grano', 'Origen del Cacao', 'Cacao Fino de Aroma - Ambato / Tungurahua', 'text', '', 'Procedencia y método de tostado', 1, 0, 0, NULL, NULL, 3, '{\"hint\":\"\",\"class\":\"\",\"showon\":\"\"}', '{}', '*', '2026-11-14 01:47:41', 1, '2026-11-14 01:47:41', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_fields_categories`
--

CREATE TABLE `lgi49_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_fields_categories`
--

INSERT INTO `lgi49_fields_categories` (`field_id`, `category_id`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_fields_groups`
--

CREATE TABLE `lgi49_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_fields_groups`
--

INSERT INTO `lgi49_fields_groups` (`id`, `asset_id`, `context`, `title`, `note`, `description`, `state`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`, `created`, `created_by`, `modified`, `modified_by`, `access`) VALUES
(1, 0, 'com_content.article', 'Ficha del Producto', '', 'Campos técnicos y comerciales del catálogo de chocolate', 1, NULL, NULL, 1, '{}', '*', '2026-11-14 01:47:41', 1, '2026-11-14 01:47:41', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_fields_values`
--

CREATE TABLE `lgi49_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_fields_values`
--

INSERT INTO `lgi49_fields_values` (`field_id`, `item_id`, `value`) VALUES
(1, '1', '$4.50'),
(2, '1', 'Tableta 100g (70% Cacao)'),
(3, '1', 'Fino de Aroma - Ambato / Tungurahua'),
(1, '2', '$5.00'),
(2, '2', 'Tableta 100g (60% Cacao con Naranja y Jengibre)'),
(3, '2', 'Fino de Aroma & Cítricos Andinos'),
(1, '3', '$6.00'),
(2, '3', 'Bolsa Kraft 250g (Granos 100% Cacao)'),
(3, '3', 'Cacao Nacional - Tostado en Paila Ambateña'),
(1, '4', '$4.00'),
(2, '4', 'Pasta 200g (100% Cacao puro de taza)'),
(3, '4', 'Receta Tradicional Ambateña desde 1952'),
(1, '5', '$5.50'),
(2, '5', 'Tableta 100g (65% Cacao con Almendras y Sal)'),
(3, '5', 'Fino de Aroma & Almendras Tostadas'),
(1, '6', '$4.80'),
(2, '6', 'Doypack 250g (Cacao Puro Desgrasado)'),
(3, '6', 'Prensado Mecánico en Frío'),
(1, '7', '$7.50'),
(2, '7', 'Caja x6 Bombones Artesanales (120g)'),
(3, '7', 'Relleno de Maracuyá, Uvilla y Mora de Tungurahua'),
(1, '8', '$4.00'),
(2, '8', 'Bolsa 150g (Nibs de Cacao con Panela)'),
(3, '8', 'Cacao Fino & Panela Orgánica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_filters`
--

CREATE TABLE `lgi49_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_links`
--

CREATE TABLE `lgi49_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_links`
--

INSERT INTO `lgi49_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=article&id=9', 'index.php?option=com_content&view=article&id=9:asdasd&catid=2', 'asdasd', ' asfsdadfdasfafdf ', '2026-11-14 00:27:21', 'c2df7b25b60bc985d0fd7f09dcc6351e', 1, 0, 1, '*', '2026-11-14 00:27:21', NULL, '2026-11-14 00:27:21', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a31383a22206173667364616466646173666166646620223b693a333b613a32353a7b733a323a226964223b693a393b733a353a22616c696173223b733a363a22617364617364223b733a373a2273756d6d617279223b733a32333a223c703e617366736461646664617366616664663c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3231363a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22696d67636c6173735f696e74726f223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22696d67636c6173735f66756c6c74657874223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3732333b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d31312d31342030303a32373a3231223b733a31313a226d6f6469666965645f6279223b693a3732333b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38383a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a31373a2273686f775f7375626361745f696d616765223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b733a32393a2268656c69785f756c74696d6174655f61727469636c655f666f726d6174223b733a383a227374616e64617264223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a383a22393a617364617364223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31333a2261646d696e6973747261646f72223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d31312d31342030303a32373a3231223b693a31303b4e3b693a31313b733a36313a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d393a6173646173642663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032362d31312d31342030303a32373a3231223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a2261646d696e6973747261646f72223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a373b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a363a22617364617364223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d39223b7d),
(2, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:pasta-tradicional-chocolate-taza&catid=8', 'Pasta Tradicional de Chocolate de Taza (100% Cacao)', ' ← Volver al Catálogo de Especialidades ✦ TRADICIÓN DESDE 1952 • CACAO PURO 100% Pasta Tradicional de Chocolate de Taza La clásica pasta pura sin azúcar para preparar el tradicional chocolate caliente con espuma espesa de molinillo de madera, tal como se sirve en los hogares de Ambato desde 1952. Precio Oficial de Fábrica $4.00 (Pasta 200g) ● En Stock • Envíos a todo el Ecuador - + 🛒 Agregar al Carrito Pedir por WhatsApp 🚚 Envíos: Cobertura a todo el Ecuador 🌱 Pureza: 100% Licor de Cacao sin químicos 📍 Origen: Hecho en Ambato desde 1952 Atributos de Alta Chocolatería 🍫 100% Cacao Puro Sin azúcar añadida, libre de grasas hidrogenadas 📍 Origen Tungurahua Granos seleccionados y tostados en Ambato 🔥 Paila Tradicional Tostado a leña y molienda en piedra volcánica ☕ Rendimiento Rinde de 8 a 10 tazas con espuma dorada El Ritual de Preparación Tradicional Tres pasos ancestrales para despertar todo el aroma y la espuma dorada del cacao ambateño en casa. 1 Hervir y Especiar Hervir 1 litro de leche entera o vegetal con canela en rama y dos clavos de olor. 2 Rallar y Fundir Rallar 50g de pasta tradicional e incorporar a fuego medio hasta disolución total. 3 Batir con Molinillo Batir con molinillo de madera hasta coronar con abundante espuma sedosa y servir. ', '2026-11-21 05:48:45', '356c35c602fa2e034a4ac2439a5e0e28', 1, 1, 1, '*', '2026-11-14 00:25:58', NULL, '2026-11-14 00:25:58', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313331353a2220e2869020566f6c76657220616c20436174c3a16c6f676f20646520457370656369616c69646164657320e29ca62054524144494349c3934e204445534445203139353220e280a220434143414f205055524f203130302520506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a61204c6120636cc3a17369636120706173746120707572612073696e20617ac3ba636172207061726120707265706172617220656c20747261646963696f6e616c2063686f636f6c6174652063616c69656e746520636f6e20657370756d6120657370657361206465206d6f6c696e696c6c6f206465206d61646572612c2074616c20636f6d6f20736520736972766520656e206c6f7320686f676172657320646520416d6261746f20646573646520313935322e2050726563696f204f66696369616c2064652046c3a162726963612024342e30302028506173746120323030672920e2978f20456e2053746f636b20e280a220456e76c3ad6f73206120746f646f20656c2045637561646f72202d202b20f09f9b92204167726567617220616c204361727269746f20506564697220706f7220576861747341707020f09f9a9a20456e76c3ad6f733a20436f62657274757261206120746f646f20656c2045637561646f7220f09f8cb120507572657a613a2031303025204c69636f7220646520436163616f2073696e207175c3ad6d69636f7320f09f938d204f726967656e3a20486563686f20656e20416d6261746f206465736465203139353220417472696275746f7320646520416c74612043686f636f6c61746572c3ad6120f09f8dab203130302520436163616f205075726f2053696e20617ac3ba6361722061c3b161646964612c206c696272652064652067726173617320686964726f67656e6164617320f09f938d204f726967656e2054756e67757261687561204772616e6f732073656c656363696f6e61646f73207920746f737461646f7320656e20416d6261746f20f09f94a5205061696c6120547261646963696f6e616c20546f737461646f2061206c65c3b1612079206d6f6c69656e646120656e2070696564726120766f6c63c3a16e69636120e298952052656e64696d69656e746f2052696e6465206465203820612031302074617a617320636f6e20657370756d6120646f7261646120456c2052697475616c20646520507265706172616369c3b36e20547261646963696f6e616c2054726573207061736f7320616e6365737472616c657320706172612064657370657274617220746f646f20656c2061726f6d612079206c6120657370756d6120646f726164612064656c20636163616f20616d62617465c3b16f20656e20636173612e2031204865727669722079204573706563696172204865727669722031206c6974726f206465206c6563686520656e74657261206f207665676574616c20636f6e2063616e656c6120656e2072616d61207920646f7320636c61766f73206465206f6c6f722e20322052616c6c617220792046756e6469722052616c6c61722035306720646520706173746120747261646963696f6e616c206520696e636f72706f726172206120667565676f206d6564696f206861737461206469736f6c756369c3b36e20746f74616c2e203320426174697220636f6e204d6f6c696e696c6c6f20426174697220636f6e206d6f6c696e696c6c6f206465206d616465726120686173746120636f726f6e617220636f6e206162756e64616e746520657370756d61207365646f73612079207365727669722e20223b693a333b613a32373a7b733a323a226964223b693a343b733a353a22616c696173223b733a33323a22706173746120747261646963696f6e616c2063686f636f6c6174652074617a61223b733a373a2273756d6d617279223b733a393935393a223c212d2d204865726f2053686f77636173653a203220436f6c756d6e61732070657266656374616d656e746520657175696c69627261646173202d2d3e0d0a3c64697620636c6173733d2270726f647563742d6865726f2d73686f7763617365223e3c212d2d20436f6c756d6e6120497a717569657264613a2047616c6572c3ad61206520496d6167656e2064652050726f647563746f202d2d3e0d0a3c64697620636c6173733d2270726f647563742d67616c6c6572792d63617264223e3c696d67207372633d22696d616765732f70726f647563746f732f696d6167656e5f70726f647563746f5f64656661756c742e617669662220616c743d22506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29223e3c2f6469763e0d0a3c212d2d20436f6c756d6e6120446572656368613a20496e666f726d616369c3b36e20456469746f7269616c207920436f6d707261202d2d3e0d0a3c64697620636c6173733d2270726f647563742d73756d6d6172792d636f6c223e3c212d2d205265746f726e6f20616c20436174c3a16c6f676f202d2d3e0d0a3c646976207374796c653d226d617267696e2d626f74746f6d3a20313670783b223e3c6120687265663d22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f63617465676f72792f657370656369616c6964616465732d636163616f2220636c6173733d2262746e2d766f6c7665722d636174616c6f676f223e20e2869020566f6c76657220616c20436174c3a16c6f676f20646520457370656369616c696461646573203c2f613e3c2f6469763e0d0a3c212d2d2043656a6120792054c3ad74756c6f205072696e636970616c202d2d3e0d0a3c64697620636c6173733d2270726f647563746f2d65796562726f7722207374796c653d22636f6c6f723a20234331394133443b20666f6e742d66616d696c793a20274d6f6e74736572726174272c2073616e732d73657269663b20666f6e742d73697a653a20302e383572656d3b20666f6e742d7765696768743a20626f6c643b206c65747465722d73706163696e673a203270783b20746578742d7472616e73666f726d3a207570706572636173653b206d617267696e2d626f74746f6d3a203870783b223ee29ca62054524144494349c3934e204445534445203139353220e280a220434143414f205055524f20313030253c2f6469763e0d0a3c683120636c6173733d2270726f647563746f2d746974756c6f2d646574616c6c6522207374796c653d22666f6e742d66616d696c793a2027506c61796661697220446973706c6179272c2047656f726769612c2073657269663b20666f6e742d73697a653a20322e3572656d3b20636f6c6f723a20233342323331343b20666f6e742d7765696768743a20626f6c643b206c696e652d6865696768743a20312e323b206d617267696e2d626f74746f6d3a20313670783b223e506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a613c2f68313e0d0a3c7020636c6173733d226c65616422207374796c653d22636f6c6f723a20233441333532383b20666f6e742d73697a653a20312e3172656d3b206c696e652d6865696768743a20312e373b206d617267696e2d626f74746f6d3a20323470783b223e4c6120636cc3a17369636120706173746120707572612073696e20617ac3ba636172207061726120707265706172617220656c20747261646963696f6e616c2063686f636f6c6174652063616c69656e746520636f6e20657370756d6120657370657361206465206d6f6c696e696c6c6f206465206d61646572612c2074616c20636f6d6f20736520736972766520656e206c6f7320686f676172657320646520416d6261746f20646573646520313935322e3c2f703e0d0a3c212d2d2043616a6120646520436f6d70726120646520416c746120436f6e7665727369c3b36e202d2d3e0d0a3c64697620636c6173733d2263616a612d636f6d7072612d646574616c6c6522207374796c653d226261636b67726f756e643a20234641463545453b20626f726465723a20312e35707820736f6c69642072676261283139332c203135342c2036312c20302e3335293b20626f726465722d7261646975733a20313670783b2070616464696e673a20323670783b20626f782d736861646f773a20302031307078203330707820726762612835392c2033352c2032302c20302e3036293b223e0d0a3c646976207374796c653d22646973706c61793a20666c65783b206a7573746966792d636f6e74656e743a2073706163652d6265747765656e3b20616c69676e2d6974656d733a2063656e7465723b20666c65782d777261703a20777261703b206d617267696e2d626f74746f6d3a20323070783b206761703a20313070783b223e0d0a3c6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20302e383272656d3b20636f6c6f723a20233843363233393b20666f6e742d7765696768743a20626f6c643b20746578742d7472616e73666f726d3a207570706572636173653b206c65747465722d73706163696e673a20312e3570783b223e50726563696f204f66696369616c2064652046c3a162726963613c2f6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20322e3472656d3b20666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d66616d696c793a2027506c61796661697220446973706c6179272c2073657269663b206c696e652d6865696768743a20313b223e24342e3030203c7370616e207374796c653d22666f6e742d73697a653a203172656d3b20636f6c6f723a20233643344133333b20666f6e742d7765696768743a203530303b20666f6e742d66616d696c793a20274d6f6e74736572726174272c2073616e732d73657269663b223e2850617374612032303067293c2f7370616e3e3c2f6469763e0d0a3c2f6469763e0d0a3c646976207374796c653d22646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b206261636b67726f756e643a20726762612833372c203231312c203130322c20302e3132293b20636f6c6f723a20233145383234433b2070616464696e673a2037707820313670783b20626f726465722d7261646975733a20353070783b20666f6e742d73697a653a20302e383872656d3b20666f6e742d7765696768743a20626f6c643b223e3c7370616e207374796c653d22666f6e742d73697a653a20312e3172656d3b206c696e652d6865696768743a20303b223ee2978f3c2f7370616e3e20456e2053746f636b20e280a220456e76c3ad6f73206120746f646f20656c2045637561646f723c2f6469763e0d0a3c2f6469763e0d0a3c212d2d20537465707065722064652043616e74696461642c204167726567617220616c204361727269746f2079205768617473417070202d2d3e0d0a3c646976207374796c653d22646973706c61793a20666c65783b206761703a20313470783b20616c69676e2d6974656d733a2063656e7465723b20666c65782d777261703a20777261703b206d617267696e2d626f74746f6d3a20313870783b223e0d0a3c64697620636c6173733d22636f6e74726f6c2d63616e74696461642d6361726422207374796c653d226865696768743a20343870783b20626f726465723a2032707820736f6c696420234331394133443b20626f726465722d7261646975733a203870783b20646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206261636b67726f756e643a20234646464646463b223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d2262746e2d71747922206f6e636c69636b3d2277696e646f772e63616d626961725174794361726428746869732c202d31292220617269612d6c6162656c3d224469736d696e75697222207374796c653d2277696474683a20343070783b206865696768743a20313030253b20626f726465723a206e6f6e653b206261636b67726f756e643a207472616e73706172656e743b20666f6e742d73697a653a20312e3272656d3b20666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20637572736f723a20706f696e7465723b223e2d3c2f627574746f6e3e203c696e70757420747970653d22746578742220636c6173733d22696e7075742d7174792d63617264222076616c75653d22312220726561646f6e6c793d22726561646f6e6c792220617269612d6c6162656c3d2243616e746964616422207374796c653d2277696474683a20343570783b206865696768743a20313030253b20626f726465723a206e6f6e653b20746578742d616c69676e3a2063656e7465723b20666f6e742d73697a653a20312e3172656d3b20666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b206261636b67726f756e643a207472616e73706172656e743b223e203c627574746f6e20747970653d22627574746f6e2220636c6173733d2262746e2d71747922206f6e636c69636b3d2277696e646f772e63616d626961725174794361726428746869732c2031292220617269612d6c6162656c3d2241756d656e74617222207374796c653d2277696474683a20343070783b206865696768743a20313030253b20626f726465723a206e6f6e653b206261636b67726f756e643a207472616e73706172656e743b20666f6e742d73697a653a20312e3272656d3b20666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20637572736f723a20706f696e7465723b223e2b3c2f627574746f6e3e3c2f6469763e0d0a3c627574746f6e20747970653d22627574746f6e2220636c6173733d2262746e2d636f6d707261722d6361726422206f6e636c69636b3d2277696e646f772e61677265676172416c4361727269746f4469726563746f2827506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29272c20342e30302c20272f6a6f6f6d6c612f696d616765732f70726f647563746f732f696d6167656e5f70726f647563746f5f64656661756c742e61766966272c20746869732922207374796c653d226865696768743a20343870783b206261636b67726f756e643a20233843363233393b20636f6c6f723a20234646464646463b20626f726465723a206e6f6e653b20626f726465722d7261646975733a203870783b20666f6e742d7765696768743a20626f6c643b20666f6e742d73697a653a203172656d3b2070616464696e673a203020323470783b20637572736f723a20706f696e7465723b20646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b207472616e736974696f6e3a206261636b67726f756e6420302e327320656173653b223e203c7370616e207374796c653d22666f6e742d73697a653a20312e3272656d3b223ef09f9b923c2f7370616e3e204167726567617220616c204361727269746f203c2f627574746f6e3e203c6120687265663d2268747470733a2f2f77612e6d652f3539333939343835313736383f746578743d486f6c612c253230646573656f2532306f7264656e61722532306c612532305061737461253230547261646963696f6e616c253230646525323043686f636f6c617465253230646525323054617a612532302824342e30302922207461726765743d225f626c616e6b222072656c3d226e6f6f70656e657222207374796c653d226865696768743a20343870783b206261636b67726f756e643a20233235443336363b20636f6c6f723a20234646464646463b20746578742d6465636f726174696f6e3a206e6f6e653b20626f726465722d7261646975733a203870783b20666f6e742d7765696768743a20626f6c643b20666f6e742d73697a653a20302e393572656d3b2070616464696e673a203020323070783b20646973706c61793a20696e6c696e652d666c65783b20616c69676e2d6974656d733a2063656e7465723b206761703a203870783b20626f782d73697a696e673a20626f726465722d626f783b223e203c696d67207372633d2268747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f362f36622f57686174734170702e7376672220616c743d2222207374796c653d2277696474683a20323070783b206865696768743a20323070783b223e20506564697220706f72205768617473417070203c2f613e3c2f6469763e0d0a3c212d2d2053656c6c6f7320646520436f6e6669616e7a61202d2d3e0d0a3c646976207374796c653d22646973706c61793a20666c65783b206761703a20323070783b20666c65782d777261703a20777261703b20626f726465722d746f703a2031707820736f6c69642072676261283139332c203135342c2036312c20302e3235293b2070616464696e672d746f703a20313470783b20666f6e742d73697a653a20302e383872656d3b20636f6c6f723a20233643344133333b223e0d0a3c6469763ef09f9a9a203c7374726f6e673e456e76c3ad6f733a3c2f7374726f6e673e20436f62657274757261206120746f646f20656c2045637561646f723c2f6469763e0d0a3c6469763ef09f8cb1203c7374726f6e673e507572657a613a3c2f7374726f6e673e2031303025204c69636f7220646520436163616f2073696e207175c3ad6d69636f733c2f6469763e0d0a3c6469763ef09f938d203c7374726f6e673e4f726967656e3a3c2f7374726f6e673e20486563686f20656e20416d6261746f20646573646520313935323c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d205365636369c3b36e20646520417472696275746f73206120416e63686f20436f6d706c65746f20283420436f6c756d6e617320457175696c6962726164617329202d2d3e0d0a3c64697620636c6173733d2270726f647563742d617474726962757465732d66756c6c7769647468223e0d0a3c6833207374796c653d22666f6e742d66616d696c793a2027506c61796661697220446973706c6179272c2047656f726769612c2073657269663b20666f6e742d73697a653a20312e383572656d3b20636f6c6f723a20233342323331343b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a20323470783b223e417472696275746f7320646520416c74612043686f636f6c61746572c3ad613c2f68333e0d0a3c64697620636c6173733d2270726f647563742d617474726962757465732d67726964223e0d0a3c646976207374796c653d226261636b67726f756e643a20234646464646463b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e3232293b20626f726465722d7261646975733a20313470783b2070616464696e673a203234707820323070783b20746578742d616c69676e3a2063656e7465723b20626f782d736861646f773a203020347078203135707820726762612835392c2033352c2032302c20302e3034293b223e0d0a3c646976207374796c653d22666f6e742d73697a653a20312e3872656d3b206d617267696e2d626f74746f6d3a20313070783b223ef09f8dab3c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e303572656d3b206d617267696e2d626f74746f6d3a203670783b223e3130302520436163616f205075726f3c2f6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20302e383872656d3b20636f6c6f723a20233643344133333b206c696e652d6865696768743a20312e353b223e53696e20617ac3ba6361722061c3b161646964612c206c696272652064652067726173617320686964726f67656e616461733c2f6469763e0d0a3c2f6469763e0d0a3c646976207374796c653d226261636b67726f756e643a20234646464646463b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e3232293b20626f726465722d7261646975733a20313470783b2070616464696e673a203234707820323070783b20746578742d616c69676e3a2063656e7465723b20626f782d736861646f773a203020347078203135707820726762612835392c2033352c2032302c20302e3034293b223e0d0a3c646976207374796c653d22666f6e742d73697a653a20312e3872656d3b206d617267696e2d626f74746f6d3a20313070783b223ef09f938d3c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e303572656d3b206d617267696e2d626f74746f6d3a203670783b223e4f726967656e2054756e677572616875613c2f6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20302e383872656d3b20636f6c6f723a20233643344133333b206c696e652d6865696768743a20312e353b223e4772616e6f732073656c656363696f6e61646f73207920746f737461646f7320656e20416d6261746f3c2f6469763e0d0a3c2f6469763e0d0a3c646976207374796c653d226261636b67726f756e643a20234646464646463b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e3232293b20626f726465722d7261646975733a20313470783b2070616464696e673a203234707820323070783b20746578742d616c69676e3a2063656e7465723b20626f782d736861646f773a203020347078203135707820726762612835392c2033352c2032302c20302e3034293b223e0d0a3c646976207374796c653d22666f6e742d73697a653a20312e3872656d3b206d617267696e2d626f74746f6d3a20313070783b223ef09f94a53c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e303572656d3b206d617267696e2d626f74746f6d3a203670783b223e5061696c6120547261646963696f6e616c3c2f6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20302e383872656d3b20636f6c6f723a20233643344133333b206c696e652d6865696768743a20312e353b223e546f737461646f2061206c65c3b1612079206d6f6c69656e646120656e2070696564726120766f6c63c3a16e6963613c2f6469763e0d0a3c2f6469763e0d0a3c646976207374796c653d226261636b67726f756e643a20234646464646463b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e3232293b20626f726465722d7261646975733a20313470783b2070616464696e673a203234707820323070783b20746578742d616c69676e3a2063656e7465723b20626f782d736861646f773a203020347078203135707820726762612835392c2033352c2032302c20302e3034293b223e0d0a3c646976207374796c653d22666f6e742d73697a653a20312e3872656d3b206d617267696e2d626f74746f6d3a20313070783b223ee298953c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e303572656d3b206d617267696e2d626f74746f6d3a203670783b223e52656e64696d69656e746f3c2f6469763e0d0a3c646976207374796c653d22666f6e742d73697a653a20302e383872656d3b20636f6c6f723a20233643344133333b206c696e652d6865696768743a20312e353b223e52696e6465206465203820612031302074617a617320636f6e20657370756d6120646f726164613c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d205365636369c3b36e2064656c2052697475616c206120416e63686f20436f6d706c65746f20283320436f6c756d6e617320457175696c6962726164617329202d2d3e0d0a3c64697620636c6173733d2270726f647563742d72697475616c2d66756c6c7769647468223e0d0a3c6833207374796c653d22666f6e742d66616d696c793a2027506c61796661697220446973706c6179272c2047656f726769612c2073657269663b20666f6e742d73697a653a20312e383572656d3b20636f6c6f723a20233342323331343b20666f6e742d7765696768743a20626f6c643b20746578742d616c69676e3a2063656e7465723b206d617267696e2d626f74746f6d3a20313070783b223e456c2052697475616c20646520507265706172616369c3b36e20547261646963696f6e616c3c2f68333e0d0a3c70207374796c653d22746578742d616c69676e3a2063656e7465723b20636f6c6f723a20233643344133333b20666f6e742d73697a653a20312e303572656d3b206d61782d77696474683a2036353070783b206d617267696e3a2030206175746f2033307078206175746f3b223e54726573207061736f7320616e6365737472616c657320706172612064657370657274617220746f646f20656c2061726f6d612079206c6120657370756d6120646f726164612064656c20636163616f20616d62617465c3b16f20656e20636173612e3c2f703e0d0a3c64697620636c6173733d2270726f647563742d72697475616c2d67726964223e0d0a3c646976207374796c653d226261636b67726f756e643a20234641463545453b20626f726465722d7261646975733a20313470783b2070616464696e673a203238707820323470783b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e32293b223e0d0a3c646976207374796c653d2277696474683a20333670783b206865696768743a20333670783b20626f726465722d7261646975733a203530253b206261636b67726f756e643a20234331394133443b20636f6c6f723a20234646464646463b20666f6e742d7765696768743a20626f6c643b20646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206a7573746966792d636f6e74656e743a2063656e7465723b206d617267696e2d626f74746f6d3a20313470783b20666f6e742d73697a653a20312e3172656d3b223e313c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e313572656d3b206d617267696e2d626f74746f6d3a203870783b223e48657276697220792045737065636961723c2f6469763e0d0a3c70207374796c653d22636f6c6f723a20233535353535353b20666f6e742d73697a653a20302e393572656d3b206c696e652d6865696768743a20312e363b206d617267696e3a20303b223e4865727669722031206c6974726f206465206c6563686520656e74657261206f207665676574616c20636f6e2063616e656c6120656e2072616d61207920646f7320636c61766f73206465206f6c6f722e3c2f703e0d0a3c2f6469763e0d0a3c646976207374796c653d226261636b67726f756e643a20234641463545453b20626f726465722d7261646975733a20313470783b2070616464696e673a203238707820323470783b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e32293b223e0d0a3c646976207374796c653d2277696474683a20333670783b206865696768743a20333670783b20626f726465722d7261646975733a203530253b206261636b67726f756e643a20234331394133443b20636f6c6f723a20234646464646463b20666f6e742d7765696768743a20626f6c643b20646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206a7573746966792d636f6e74656e743a2063656e7465723b206d617267696e2d626f74746f6d3a20313470783b20666f6e742d73697a653a20312e3172656d3b223e323c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e313572656d3b206d617267696e2d626f74746f6d3a203870783b223e52616c6c617220792046756e6469723c2f6469763e0d0a3c70207374796c653d22636f6c6f723a20233535353535353b20666f6e742d73697a653a20302e393572656d3b206c696e652d6865696768743a20312e363b206d617267696e3a20303b223e52616c6c61722035306720646520706173746120747261646963696f6e616c206520696e636f72706f726172206120667565676f206d6564696f206861737461206469736f6c756369c3b36e20746f74616c2e3c2f703e0d0a3c2f6469763e0d0a3c646976207374796c653d226261636b67726f756e643a20234641463545453b20626f726465722d7261646975733a20313470783b2070616464696e673a203238707820323470783b20626f726465723a2031707820736f6c69642072676261283139332c203135342c2036312c20302e32293b223e0d0a3c646976207374796c653d2277696474683a20333670783b206865696768743a20333670783b20626f726465722d7261646975733a203530253b206261636b67726f756e643a20234331394133443b20636f6c6f723a20234646464646463b20666f6e742d7765696768743a20626f6c643b20646973706c61793a20666c65783b20616c69676e2d6974656d733a2063656e7465723b206a7573746966792d636f6e74656e743a2063656e7465723b206d617267696e2d626f74746f6d3a20313470783b20666f6e742d73697a653a20312e3172656d3b223e333c2f6469763e0d0a3c646976207374796c653d22666f6e742d7765696768743a20626f6c643b20636f6c6f723a20233342323331343b20666f6e742d73697a653a20312e313572656d3b206d617267696e2d626f74746f6d3a203870783b223e426174697220636f6e204d6f6c696e696c6c6f3c2f6469763e0d0a3c70207374796c653d22636f6c6f723a20233535353535353b20666f6e742d73697a653a20302e393572656d3b206c696e652d6865696768743a20312e363b206d617267696e3a20303b223e426174697220636f6e206d6f6c696e696c6c6f206465206d616465726120686173746120636f726f6e617220636f6e206162756e64616e746520657370756d61207365646f73612079207365727669722e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3437363a227b22696d6167655f696e74726f223a22696d616765735c2f70726f647563746f735c2f696d6167656e5f70726f647563746f5f64656661756c742e61766966222c22696d6167655f696e74726f5f616c74223a22506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29202d2043686f636f6c617465204172746573616e616c20646520416d6261746f222c22696d67636c6173735f696e74726f223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22696d616765735c2f70726f647563746f735c2f696d6167656e5f70726f647563746f5f64656661756c742e61766966222c22696d6167655f66756c6c746578745f616c74223a22506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29202d2043686f636f6c617465204172746573616e616c20646520416d6261746f222c22696d67636c6173735f66756c6c74657874223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a3732333b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032362d31312d32312030353a34383a3435223b733a31313a226d6f6469666965645f6279223b693a3732333b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38383a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a31373a2273686f775f7375626361745f696d616765223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a303b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a363b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a333b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a303b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b733a32393a2268656c69785f756c74696d6174655f61727469636c655f666f726d6174223b733a383a227374616e64617264223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a38383a2263686f636f6c6174652c206172746573616e616c2c20616d6261746f2c20636163616f2c20706173746120747261646963696f6e616c2064652063686f636f6c6174652064652074617a6120283130302520636163616f29223b733a383a226d65746164657363223b733a3135333a224c6120617574c3a96e7469636120706173746120616d62617465c3b161207061726120707265706172617220656c20747261646963696f6e616c2063686f636f6c6174652063616c69656e746520636f6e20657370756d61206465206d6f6c696e696c6c6f2e2053696e20617ac3ba6361722061c3b161646964612c20736f6c6f20636163616f207075726f20636f6e63656e747261646f2e223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a333b733a383a226f72646572696e67223b693a343b733a383a2263617465676f7279223b733a32333a22457370656369616c69646164657320646520436163616f223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a33343a22343a70617374612d747261646963696f6e616c2d63686f636f6c6174652d74617a61223b733a373a22636174736c7567223b733a32323a22383a657370656369616c6964616465732d636163616f223b733a363a22617574686f72223b733a31333a2261646d696e6973747261646f72223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a34353a22696d616765732f70726f647563746f732f696d6167656e5f70726f647563746f5f64656661756c742e61766966223b733a383a22696d616765416c74223b733a38333a22506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29202d2043686f636f6c617465204172746573616e616c20646520416d6261746f223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032362d31312d31342030303a32353a3538223b693a31303b4e3b693a31313b733a38373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a70617374612d747261646963696f6e616c2d63686f636f6c6174652d74617a612663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032362d31312d31342030303a32353a3538223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a2261646d696e6973747261646f72223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a32333a22457370656369616c69646164657320646520436163616f223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31303b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a35313a22506173746120547261646963696f6e616c2064652043686f636f6c6174652064652054617a6120283130302520436163616f29223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_links_terms`
--

CREATE TABLE `lgi49_finder_links_terms` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_links_terms`
--

INSERT INTO `lgi49_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0.17),
(1, 2, 1.04004),
(2, 2, 1.04004),
(1, 3, 1.48),
(1, 4, 0.7),
(2, 5, 0.07),
(2, 6, 0.14),
(2, 7, 0.14),
(2, 8, 1.5),
(2, 9, 0.84),
(2, 10, 0.07),
(2, 11, 0.18669),
(2, 12, 0.07),
(2, 13, 0.17),
(2, 14, 0.28),
(2, 15, 0.14),
(2, 16, 0.07),
(2, 17, 0.23345),
(2, 18, 0.42),
(2, 19, 0.32669),
(2, 20, 0.18662),
(2, 21, 0.18669),
(2, 22, 0.63996),
(2, 23, 1.32),
(2, 24, 0.72),
(2, 25, 0.42),
(2, 26, 0.72),
(2, 27, 1.04),
(2, 28, 0.88673),
(2, 29, 0.46662),
(2, 30, 2.69973),
(2, 31, 1.01327),
(2, 32, 0.28),
(2, 33, 0.32669),
(2, 34, 0.37331),
(2, 35, 5.22),
(2, 36, 0.56),
(2, 37, 0.28),
(2, 38, 0.32669),
(2, 39, 0.42),
(2, 40, 0.18669),
(2, 41, 1.08),
(2, 42, 0.87996),
(2, 43, 0.32669),
(2, 44, 2.42606),
(2, 45, 0.69993),
(2, 46, 0.46669),
(2, 47, 0.56),
(2, 48, 0.14),
(2, 49, 0.04669),
(2, 50, 0.65338),
(2, 51, 0.62651),
(2, 52, 0.65317),
(2, 53, 0.28),
(2, 54, 0.56),
(2, 55, 0.65331),
(2, 56, 0.37331),
(2, 57, 0.28),
(2, 58, 1.6),
(2, 59, 0.23331),
(2, 60, 0.28),
(2, 61, 0.32669),
(2, 62, 0.28),
(2, 63, 0.28),
(2, 64, 0.46662),
(2, 65, 0.23331),
(2, 66, 0.56),
(2, 67, 0.56),
(2, 68, 0.32669),
(2, 69, 0.46669),
(2, 70, 0.34658),
(2, 71, 0.23331),
(2, 72, 0.18669),
(2, 73, 0.23331),
(2, 74, 0.23331),
(2, 75, 0.23331),
(2, 76, 0.14),
(2, 77, 0.56),
(2, 78, 0.23331),
(2, 79, 0.37331),
(2, 80, 1.98),
(2, 81, 0.04669),
(2, 82, 0.32669),
(2, 83, 0.18669),
(2, 84, 0.56),
(2, 85, 0.23331),
(2, 86, 0.69342),
(2, 87, 2.96637),
(2, 88, 0.23331),
(2, 89, 0.28),
(2, 90, 0.14),
(2, 91, 0.28),
(2, 92, 0.51331),
(2, 93, 1.01327),
(2, 94, 0.18669),
(2, 95, 0.28),
(2, 96, 0.69342),
(2, 97, 0.37331),
(2, 98, 0.56),
(2, 99, 0.18669),
(2, 100, 0.51331),
(2, 101, 0.23331),
(2, 102, 0.28),
(2, 103, 0.09331),
(2, 104, 0.28),
(2, 105, 0.60669),
(2, 106, 0.28),
(2, 107, 0.66),
(2, 108, 0.23331),
(2, 109, 0.32004),
(2, 110, 0.23331),
(2, 111, 0.14),
(2, 112, 1.49352),
(2, 113, 0.23331),
(2, 114, 0.56007),
(2, 115, 0.32669),
(2, 116, 0.37331),
(2, 117, 0.23331),
(2, 118, 7.03968),
(2, 119, 0.42),
(2, 120, 0.46669),
(2, 121, 0.32669),
(2, 122, 0.42),
(2, 123, 0.28),
(2, 124, 0.37331),
(2, 125, 0.32683),
(2, 132, 0.37331),
(2, 133, 0.51331),
(2, 134, 0.23331),
(2, 135, 0.18669),
(2, 136, 0.14),
(2, 137, 0.42),
(2, 138, 0.23331),
(2, 139, 0.18669);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_logging`
--

CREATE TABLE `lgi49_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_taxonomy`
--

CREATE TABLE `lgi49_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_taxonomy`
--

INSERT INTO `lgi49_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 19, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 4, 1, 'type', 'Type', 'type', 1, 1, '*'),
(3, 2, 2, 3, 2, 'type/article', 'Article', 'article', 1, 1, '*'),
(4, 1, 5, 8, 1, 'author', 'Author', 'author', 1, 1, '*'),
(5, 4, 6, 7, 2, 'author/administrador', 'administrador', 'administrador', 1, 1, '*'),
(6, 1, 9, 14, 1, 'category', 'Category', 'category', 1, 1, '*'),
(7, 6, 10, 11, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*'),
(8, 1, 15, 18, 1, 'language', 'Language', 'language', 1, 1, '*'),
(9, 8, 16, 17, 2, 'language/4086f6336014c75439f87cbda42d9c51', '*', '4086f6336014c75439f87cbda42d9c51', 1, 1, '*'),
(10, 6, 12, 13, 2, 'category/especialidades-de-cacao', 'Especialidades de Cacao', 'especialidades-de-cacao', 1, 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_taxonomy_map`
--

CREATE TABLE `lgi49_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_taxonomy_map`
--

INSERT INTO `lgi49_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(2, 3),
(2, 5),
(2, 9),
(2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_terms`
--

CREATE TABLE `lgi49_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_terms`
--

INSERT INTO `lgi49_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '9', '9', 0, 0, 0.1, '', 1, '*'),
(2, 'administrador', 'administrador', 0, 0, 0.8667, 'A3523636', 3, '*'),
(3, 'asdasd', 'asdasd', 0, 0, 0.4, 'A2323', 1, '*'),
(4, 'asfsdadfdasfafdf', 'asfsdadfdasfafdf', 0, 0, 1, 'A2123132131', 1, '*'),
(5, '+', '+', 0, 0, 0.1, '', 2, '*'),
(6, '1', '1', 0, 0, 0.1, '', 2, '*'),
(7, '10', '10', 0, 0, 0.2, '', 2, '*'),
(8, '100', '100', 0, 0, 0.3, '', 2, '*'),
(9, '1952', '1952', 0, 0, 0.4, '', 2, '*'),
(10, '2', '2', 0, 0, 0.1, '', 2, '*'),
(11, '200g', '200g', 0, 0, 0.2667, 'G000', 2, '*'),
(12, '3', '3', 0, 0, 0.1, '', 2, '*'),
(13, '4', '4', 0, 0, 0.1, '', 2, '*'),
(14, '4.00', '4.00', 0, 0, 0.4, '', 2, '*'),
(15, '50g', '50g', 0, 0, 0.2, 'G000', 2, '*'),
(16, '8', '8', 0, 0, 0.1, '', 2, '*'),
(17, 'a', 'a', 0, 0, 0.0667, 'A000', 2, '*'),
(18, 'abundante', 'abundante', 0, 0, 0.6, 'A15353', 2, '*'),
(19, 'agregar', 'agregar', 0, 0, 0.4667, 'A2626', 2, '*'),
(20, 'al', 'al', 0, 0, 0.1333, 'A400', 2, '*'),
(21, 'alta', 'alta', 0, 0, 0.2667, 'A430', 2, '*'),
(22, 'ambateña', 'ambateña', 0, 0, 0.5333, 'A513', 2, '*'),
(23, 'ambato', 'ambato', 0, 0, 0.4, 'A513', 2, '*'),
(24, 'artesanal', 'artesanal', 0, 0, 0.6, 'A63254', 2, '*'),
(25, 'atributos', 'atributos', 0, 0, 0.6, 'A36132', 2, '*'),
(26, 'auténtica', 'auténtica', 0, 0, 0.6, 'A3532', 2, '*'),
(27, 'azúcar', 'azúcar', 0, 0, 0.4, 'A260', 2, '*'),
(28, 'añadida', 'añadida', 0, 0, 0.4667, 'A300', 2, '*'),
(29, 'batir', 'batir', 0, 0, 0.3333, 'B360', 2, '*'),
(30, 'cacao', 'cacao', 0, 0, 0.3333, 'C000', 2, '*'),
(31, 'caliente', 'caliente', 0, 0, 0.5333, 'C453', 2, '*'),
(32, 'canela', 'canela', 0, 0, 0.4, 'C540', 2, '*'),
(33, 'carrito', 'carrito', 0, 0, 0.4667, 'C630', 2, '*'),
(34, 'catálogo', 'catálogo', 0, 0, 0.5333, 'C342', 2, '*'),
(35, 'chocolate', 'chocolate', 0, 0, 0.6, 'C430', 2, '*'),
(36, 'chocolatería', 'chocolatería', 0, 0, 0.8, 'C436', 2, '*'),
(37, 'clavos', 'clavos', 0, 0, 0.4, 'C412', 2, '*'),
(38, 'clásica', 'clásica', 0, 0, 0.4667, 'C420', 2, '*'),
(39, 'cobertura', 'cobertura', 0, 0, 0.6, 'C1636', 2, '*'),
(40, 'como', 'como', 0, 0, 0.2667, 'C500', 2, '*'),
(41, 'con', 'con', 0, 0, 0.2, 'C500', 2, '*'),
(42, 'concentrado', 'concentrado', 0, 0, 0.7333, 'C525363', 2, '*'),
(43, 'coronar', 'coronar', 0, 0, 0.4667, 'C656', 2, '*'),
(44, 'de', 'de', 0, 0, 0.1333, 'D000', 2, '*'),
(45, 'desde', 'desde', 0, 0, 0.3333, 'D230', 2, '*'),
(46, 'disolución', 'disolución', 0, 0, 0.6667, 'D2425', 2, '*'),
(47, 'dorada', 'dorada', 0, 0, 0.4, 'D630', 2, '*'),
(48, 'dos', 'dos', 0, 0, 0.2, 'D200', 2, '*'),
(49, 'e', 'e', 0, 0, 0.0667, 'E000', 2, '*'),
(50, 'ecuador', 'ecuador', 0, 0, 0.4667, 'E236', 2, '*'),
(51, 'el', 'el', 0, 0, 0.1333, 'E400', 2, '*'),
(52, 'en', 'en', 0, 0, 0.1333, 'E500', 2, '*'),
(53, 'entera', 'entera', 0, 0, 0.4, 'E536', 2, '*'),
(54, 'envíos', 'envíos', 0, 0, 0.4, 'E512', 2, '*'),
(55, 'especialidades', 'especialidades', 0, 0, 0.9333, 'E212432', 2, '*'),
(56, 'especiar', 'especiar', 0, 0, 0.5333, 'E2126', 2, '*'),
(57, 'espesa', 'espesa', 0, 0, 0.4, 'E212', 2, '*'),
(58, 'espuma', 'espuma', 0, 0, 0.4, 'E215', 2, '*'),
(59, 'fuego', 'fuego', 0, 0, 0.3333, 'F200', 2, '*'),
(60, 'fundir', 'fundir', 0, 0, 0.4, 'F536', 2, '*'),
(61, 'fábrica', 'fábrica', 0, 0, 0.4667, 'F620', 2, '*'),
(62, 'granos', 'granos', 0, 0, 0.4, 'G652', 2, '*'),
(63, 'grasas', 'grasas', 0, 0, 0.4, 'G620', 2, '*'),
(64, 'hasta', 'hasta', 0, 0, 0.3333, 'H230', 2, '*'),
(65, 'hecho', 'hecho', 0, 0, 0.3333, 'H200', 2, '*'),
(66, 'hervir', 'hervir', 0, 0, 0.4, 'H616', 2, '*'),
(67, 'hidrogenadas', 'hidrogenadas', 0, 0, 0.8, 'H362532', 2, '*'),
(68, 'hogares', 'hogares', 0, 0, 0.4667, 'H262', 2, '*'),
(69, 'incorporar', 'incorporar', 0, 0, 0.6667, 'I52616', 2, '*'),
(70, 'la', 'la', 0, 0, 0.1333, 'L000', 2, '*'),
(71, 'leche', 'leche', 0, 0, 0.3333, 'L200', 2, '*'),
(72, 'leña', 'leña', 0, 0, 0.2667, 'L000', 2, '*'),
(73, 'libre', 'libre', 0, 0, 0.3333, 'L160', 2, '*'),
(74, 'licor', 'licor', 0, 0, 0.3333, 'L260', 2, '*'),
(75, 'litro', 'litro', 0, 0, 0.3333, 'L360', 2, '*'),
(76, 'los', 'los', 0, 0, 0.2, 'L200', 2, '*'),
(77, 'madera', 'madera', 0, 0, 0.4, 'M360', 2, '*'),
(78, 'medio', 'medio', 0, 0, 0.3333, 'M300', 2, '*'),
(79, 'molienda', 'molienda', 0, 0, 0.5333, 'M453', 2, '*'),
(80, 'molinillo', 'molinillo', 0, 0, 0.6, 'M454', 2, '*'),
(81, 'o', 'o', 0, 0, 0.0667, 'O000', 2, '*'),
(82, 'oficial', 'oficial', 0, 0, 0.4667, 'O124', 2, '*'),
(83, 'olor', 'olor', 0, 0, 0.2667, 'O460', 2, '*'),
(84, 'origen', 'origen', 0, 0, 0.4, 'O625', 2, '*'),
(85, 'paila', 'paila', 0, 0, 0.3333, 'P400', 2, '*'),
(86, 'para', 'para', 0, 0, 0.2667, 'P600', 2, '*'),
(87, 'pasta', 'pasta', 0, 0, 0.3333, 'P230', 2, '*'),
(88, 'pedir', 'pedir', 0, 0, 0.3333, 'P360', 2, '*'),
(89, 'piedra', 'piedra', 0, 0, 0.4, 'P360', 2, '*'),
(90, 'por', 'por', 0, 0, 0.2, 'P600', 2, '*'),
(91, 'precio', 'precio', 0, 0, 0.4, 'P620', 2, '*'),
(92, 'preparación', 'preparación', 0, 0, 0.7333, 'P61625', 2, '*'),
(93, 'preparar', 'preparar', 0, 0, 0.5333, 'P616', 2, '*'),
(94, 'pura', 'pura', 0, 0, 0.2667, 'P600', 2, '*'),
(95, 'pureza', 'pureza', 0, 0, 0.4, 'P620', 2, '*'),
(96, 'puro', 'puro', 0, 0, 0.2667, 'P600', 2, '*'),
(97, 'químicos', 'químicos', 0, 0, 0.5333, 'Q520', 2, '*'),
(98, 'rallar', 'rallar', 0, 0, 0.4, 'R460', 2, '*'),
(99, 'rama', 'rama', 0, 0, 0.2667, 'R500', 2, '*'),
(100, 'rendimiento', 'rendimiento', 0, 0, 0.7333, 'R5353', 2, '*'),
(101, 'rinde', 'rinde', 0, 0, 0.3333, 'R530', 2, '*'),
(102, 'ritual', 'ritual', 0, 0, 0.4, 'R340', 2, '*'),
(103, 'se', 'se', 0, 0, 0.1333, 'S000', 2, '*'),
(104, 'sedosa', 'sedosa', 0, 0, 0.4, 'S320', 2, '*'),
(105, 'seleccionados', 'seleccionados', 0, 0, 0.8667, 'S42532', 2, '*'),
(106, 'servir', 'servir', 0, 0, 0.4, 'S616', 2, '*'),
(107, 'sin', 'sin', 0, 0, 0.2, 'S500', 2, '*'),
(108, 'sirve', 'sirve', 0, 0, 0.3333, 'S610', 2, '*'),
(109, 'solo', 'solo', 0, 0, 0.2667, 'S400', 2, '*'),
(110, 'stock', 'stock', 0, 0, 0.3333, 'S320', 2, '*'),
(111, 'tal', 'tal', 0, 0, 0.2, 'T400', 2, '*'),
(112, 'taza', 'taza', 0, 0, 0.2667, 'T200', 2, '*'),
(113, 'tazas', 'tazas', 0, 0, 0.3333, 'T200', 2, '*'),
(114, 'todo', 'todo', 0, 0, 0.2667, 'T000', 2, '*'),
(115, 'tostado', 'tostado', 0, 0, 0.4667, 'T230', 2, '*'),
(116, 'tostados', 'tostados', 0, 0, 0.5333, 'T232', 2, '*'),
(117, 'total', 'total', 0, 0, 0.3333, 'T400', 2, '*'),
(118, 'tradicional', 'tradicional', 0, 0, 0.7333, 'T63254', 2, '*'),
(119, 'tradición', 'tradición', 0, 0, 0.6, 'T6325', 2, '*'),
(120, 'tungurahua', 'tungurahua', 0, 0, 0.6667, 'T526', 2, '*'),
(121, 'vegetal', 'vegetal', 0, 0, 0.4667, 'V234', 2, '*'),
(122, 'volcánica', 'volcánica', 0, 0, 0.6, 'V4252', 2, '*'),
(123, 'volver', 'volver', 0, 0, 0.4, 'V416', 2, '*'),
(124, 'whatsapp', 'whatsapp', 0, 0, 0.5333, 'W321', 2, '*'),
(125, 'y', 'y', 0, 0, 0.0667, 'Y000', 2, '*'),
(132, 'ambateño', 'ambateño', 0, 0, 0.5333, 'A513', 1, '*'),
(133, 'ancestrales', 'ancestrales', 0, 0, 0.7333, 'A523642', 1, '*'),
(134, 'aroma', 'aroma', 0, 0, 0.3333, 'A650', 1, '*'),
(135, 'casa', 'casa', 0, 0, 0.2667, 'C000', 1, '*'),
(136, 'del', 'del', 0, 0, 0.2, 'D400', 1, '*'),
(137, 'despertar', 'despertar', 0, 0, 0.6, 'D21636', 1, '*'),
(138, 'pasos', 'pasos', 0, 0, 0.3333, 'P200', 1, '*'),
(139, 'tres', 'tres', 0, 0, 0.2667, 'T620', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_terms_common`
--

CREATE TABLE `lgi49_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_terms_common`
--

INSERT INTO `lgi49_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_tokens`
--

CREATE TABLE `lgi49_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_tokens_aggregate`
--

CREATE TABLE `lgi49_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `total_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_finder_types`
--

CREATE TABLE `lgi49_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_finder_types`
--

INSERT INTO `lgi49_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_guidedtours`
--

CREATE TABLE `lgi49_guidedtours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_guidedtours`
--

INSERT INTO `lgi49_guidedtours` (`id`, `title`, `uid`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`, `autostart`) VALUES
(1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE', 'joomla-guidedtours', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION', 1, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE', 'joomla-guidedtoursteps', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION', 2, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE', 'joomla-articles', 'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION', 3, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_content&view=articles', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE', 'joomla-categories', 'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION', 4, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(5, 'COM_GUIDEDTOURS_TOUR_MENUS_TITLE', 'joomla-menus', 'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION', 5, '[\"com_menus\"]', 'administrator/index.php?option=com_menus&view=menus', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(6, 'COM_GUIDEDTOURS_TOUR_TAGS_TITLE', 'joomla-tags', 'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION', 6, '[\"com_tags\"]', 'administrator/index.php?option=com_tags&view=tags', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(7, 'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE', 'joomla-banners', 'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION', 7, '[\"com_banners\"]', 'administrator/index.php?option=com_banners&view=banners', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE', 'joomla-contacts', 'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION', 8, '[\"com_contact\"]', 'administrator/index.php?option=com_contact&view=contacts', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE', 'joomla-newsfeeds', 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION', 9, '[\"com_newsfeeds\"]', 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE', 'joomla-smartsearch', 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION', 10, '[\"com_finder\"]', 'administrator/index.php?option=com_finder&view=filters', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(11, 'COM_GUIDEDTOURS_TOUR_USERS_TITLE', 'joomla-users', 'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION', 11, '[\"com_users\"]', 'administrator/index.php?option=com_users&view=users', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 0),
(12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE', 'joomla-welcome', 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION', 12, '[\"com_cpanel\"]', 'administrator/index.php', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, 1, '*', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_guidedtour_steps`
--

CREATE TABLE `lgi49_guidedtour_steps` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_guidedtour_steps`
--

INSERT INTO `lgi49_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`, `params`) VALUES
(1, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION', 1, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tours', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(2, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION', 2, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(3, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION', 3, 'top', '#jform_url', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(4, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION', 4, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(5, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION', 5, 'top', 'joomla-field-fancy-select .choices', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(6, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION', 6, 'bottom', '#jform_autostart0', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(7, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION', 7, 'top', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(8, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION', 8, 'bottom', '', 0, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(9, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION', 9, 'top', '#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn', 2, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(10, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION', 10, 'bottom', '.button-new', 2, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(11, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION', 11, 'bottom', '#jform_title', 2, 2, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(12, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION', 12, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(13, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION', 13, 'bottom', '#jform_published', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(14, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION', 14, 'top', '#jform_position', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(15, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION', 15, 'top', '#jform_target', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(16, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION', 16, 'top', '#jform_type', 2, 3, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(17, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION', 17, 'bottom', '#save-group-children-save .button-save', 2, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(18, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION', 18, 'bottom', '', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(19, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION', 19, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_content&view=articles', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(20, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION', 20, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(21, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION', 21, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(22, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION', 22, 'bottom', '#jform_articletext,#jform_articletext_ifr', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(23, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION', 23, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(24, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION', 24, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(25, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION', 25, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(26, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION', 26, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(27, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION', 27, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(28, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION', 28, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(29, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION', 29, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(30, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION', 30, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(31, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION', 31, 'bottom', '', 0, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(32, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION', 32, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(33, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION', 33, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(34, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION', 34, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(35, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION', 35, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(36, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION', 36, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(37, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION', 37, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(38, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION', 38, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(39, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION', 39, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(40, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION', 40, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(41, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION', 41, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(42, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION', 42, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(43, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION', 43, 'bottom', '', 0, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(44, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION', 44, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_menus&view=menus', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(45, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION', 45, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(46, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION', 46, 'top', '#jform_menutype', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(47, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION', 47, 'top', '#jform_menudescription', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(48, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION', 48, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(49, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION', 49, 'bottom', '', 0, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(50, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION', 50, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_tags&view=tags', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(51, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION', 51, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(52, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION', 52, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(53, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION', 53, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(54, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION', 54, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(55, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION', 55, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(56, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION', 56, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(57, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION', 57, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(58, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION', 58, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(59, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION', 59, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(60, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION', 60, 'bottom', '', 0, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(61, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION', 61, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_banners&view=banners', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(62, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION', 62, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(63, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION', 63, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(64, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION', 64, 'bottom', '.col-lg-9', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(65, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION', 65, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(66, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION', 66, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(67, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION', 67, 'bottom', '#jform_sticky1', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(68, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION', 68, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(69, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION', 69, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(70, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION', 70, 'bottom', '', 0, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(71, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION', 71, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_contact&view=contacts', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(72, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION', 72, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(73, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION', 73, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(74, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION', 74, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(75, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION', 75, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(76, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION', 76, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(77, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION', 77, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(78, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION', 78, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(79, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION', 79, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(80, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION', 80, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(81, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION', 81, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(82, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION', 82, 'bottom', '', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(83, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION', 83, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(84, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION', 84, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(85, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION', 85, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(86, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION', 86, 'bottom', '#jform_link', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(87, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION', 87, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(88, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION', 88, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(89, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION', 89, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(90, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION', 90, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(91, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION', 91, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(92, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION', 92, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(93, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION', 93, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(94, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION', 94, 'bottom', '', 0, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(95, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION', 95, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_finder&view=filters', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(96, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION', 96, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(97, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION', 97, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(98, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION', 98, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(99, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION', 99, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(100, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION', 100, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(101, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION', 101, 'bottom', '', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(102, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION', 102, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(103, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION', 103, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(104, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION', 104, 'bottom', '#jform_username', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(105, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION', 105, 'bottom', '#jform_password', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(106, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION', 106, 'bottom', '#jform_password2', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(107, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION', 107, 'bottom', '#jform_email', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(108, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION', 108, 'top', '#jform_sendEmail0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(109, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION', 109, 'top', '#jform_block0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(110, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION', 110, 'top', '#jform_requireReset0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(111, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION', 111, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(112, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION', 112, 'bottom', '', 0, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(113, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION', 113, 'right', '#sidebarmenu', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(114, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION', 114, 'center', '', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(115, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION', 115, 'left', '.quickicons-for-update_quickicon .card', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(116, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION', 116, 'bottom', '#header', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL),
(117, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION', 117, 'right', '#sidebarmenu nav > ul:first-of-type > li:last-child', 0, 1, '', '2026-11-13 23:36:37', 723, '2026-11-13 23:36:37', 723, NULL, NULL, '*', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_history`
--

CREATE TABLE `lgi49_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep',
  `is_current` tinyint(4) NOT NULL DEFAULT 0,
  `is_legacy` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_history`
--

INSERT INTO `lgi49_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`, `is_current`, `is_legacy`) VALUES
(1, 'com_content.article.9', '', '2026-11-14 00:27:21', 723, 1851, '90b64eecb87b429dd21f355fa0c406a71f9b2a5c', '{\"id\":9,\"title\":\"asdasd\",\"alias\":\"asdasd\",\"note\":\"\",\"catid\":2,\"state\":1,\"created\":\"2026-11-14 00:27:21\",\"created_by\":723,\"created_by_alias\":\"\",\"publish_up\":\"2026-11-14 00:27:21\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"language\":\"*\",\"featured\":0,\"schema\":{\"extendJed\":\"\"},\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"helix_ultimate_image\\\":\\\"\\\",\\\"helix_ultimate_image_alt_txt\\\":\\\"\\\",\\\"helix_ultimate_article_format\\\":\\\"standard\\\",\\\"helix_ultimate_audio\\\":\\\"\\\",\\\"helix_ultimate_gallery\\\":\\\"\\\",\\\"helix_ultimate_video\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"imgclass_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"imgclass_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":102,\"introtext\":\"<p>asfsdadfdasfafdf<\\/p>\",\"fulltext\":\"\",\"ordering\":0}', 0, 1, 0),
(2, 'com_content.article.4', '', '2026-11-21 05:18:21', 723, 13597, '3216999f9f84807456151e9e45850e416ffe59fe', '{\"id\":4,\"title\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\",\"alias\":\"pasta-tradicional-chocolate-taza\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-11-14 00:25:58\",\"created_by\":723,\"created_by_alias\":\"\",\"publish_up\":\"2026-11-14 00:25:58\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"chocolate, artesanal, ambato, cacao, pasta tradicional de chocolate de taza (100% cacao)\",\"metadesc\":\"La aut\\u00e9ntica pasta ambate\\u00f1a para preparar el tradicional chocolate caliente con espuma de molinillo. Sin az\\u00facar a\\u00f1adida, solo cacao puro concentrado.\",\"access\":1,\"language\":\"*\",\"featured\":0,\"schema\":{\"extendJed\":\"\"},\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"helix_ultimate_image\\\":\\\"\\\",\\\"helix_ultimate_image_alt_txt\\\":\\\"\\\",\\\"helix_ultimate_article_format\\\":\\\"standard\\\",\\\"helix_ultimate_audio\\\":\\\"\\\",\\\"helix_ultimate_gallery\\\":\\\"\\\",\\\"helix_ultimate_video\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/productos\\\\\\/imagen_producto_default.avif\\\",\\\"image_intro_alt\\\":\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\\\",\\\"imgclass_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/productos\\\\\\/imagen_producto_default.avif\\\",\\\"image_fulltext_alt\\\":\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\\\",\\\"imgclass_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"com_fields\":{\"precio_producto\":\"$4.00\",\"presentacion_cacao\":\"Pasta 200g (100% Cacao puro de taza)\",\"origen_grano\":\"Receta Tradicional Ambate\\u00f1a desde 1952\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":106,\"introtext\":\"<!-- Retorno al Cat\\u00e1logo -->\\r\\n<div style=\\\"margin-bottom: 20px;\\\"><a href=\\\"index.php\\/component\\/content\\/category\\/especialidades-cacao\\\" class=\\\"btn-volver-catalogo\\\"> \\u2190 Volver al Cat\\u00e1logo de Especialidades <\\/a><\\/div>\\r\\n<!-- Ceja y T\\u00edtulo Principal -->\\r\\n<div class=\\\"producto-eyebrow\\\" style=\\\"color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.85rem; font-weight: bold; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 10px;\\\">\\u2726 TRADICI\\u00d3N DESDE 1952 \\u2022 CACAO PURO 100%<\\/div>\\r\\n<h1 class=\\\"producto-titulo-detalle\\\" style=\\\"font-family: \'Playfair Display\', Georgia, serif; font-size: 2.6rem; color: #3B2314; font-weight: bold; line-height: 1.2; margin-bottom: 16px;\\\">Pasta Tradicional de Chocolate de Taza<\\/h1>\\r\\n<p class=\\\"lead\\\" style=\\\"color: #4A3528; font-size: 1.15rem; line-height: 1.7; margin-bottom: 24px;\\\">La cl\\u00e1sica pasta pura sin az\\u00facar para preparar el tradicional chocolate caliente con espuma espesa de molinillo de madera, tal como se sirve en los hogares de Ambato desde 1952.<\\/p>\\r\\n<!-- Caja de Compra de Alta Conversi\\u00f3n -->\\r\\n<div class=\\\"caja-compra-detalle\\\" style=\\\"background: #FAF5EE; border: 1.5px solid rgba(193, 154, 61, 0.35); border-radius: 16px; padding: 26px; margin: 26px 0; box-shadow: 0 10px 30px rgba(59, 35, 20, 0.06);\\\">\\r\\n<div style=\\\"display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; margin-bottom: 20px; gap: 10px;\\\">\\r\\n<div>\\r\\n<div style=\\\"font-size: 0.82rem; color: #8C6239; font-weight: bold; text-transform: uppercase; letter-spacing: 1.5px;\\\">Precio Oficial de F\\u00e1brica<\\/div>\\r\\n<div style=\\\"font-size: 2.4rem; font-weight: bold; color: #3B2314; font-family: \'Playfair Display\', serif; line-height: 1;\\\">$4.00 <span style=\\\"font-size: 1rem; color: #6C4A33; font-weight: 500; font-family: \'Montserrat\', sans-serif;\\\">(Pasta 200g)<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"display: inline-flex; align-items: center; gap: 8px; background: rgba(37, 211, 102, 0.12); color: #1E824C; padding: 7px 16px; border-radius: 50px; font-size: 0.88rem; font-weight: bold;\\\"><span style=\\\"font-size: 1.1rem; line-height: 0;\\\">\\u25cf<\\/span> En Stock \\u2022 Env\\u00edos a todo el Ecuador<\\/div>\\r\\n<\\/div>\\r\\n<!-- Stepper de Cantidad, Agregar al Carrito y WhatsApp -->\\r\\n<div style=\\\"display: flex; gap: 14px; align-items: center; flex-wrap: wrap; margin-bottom: 18px;\\\">\\r\\n<div class=\\\"control-cantidad-card\\\" style=\\\"height: 48px; border: 2px solid #C19A3D; border-radius: 8px; display: inline-flex; align-items: center; background: #FFFFFF;\\\"><button type=\\\"button\\\" class=\\\"btn-qty\\\" onclick=\\\"window.cambiarQtyCard(this, -1)\\\" aria-label=\\\"Disminuir\\\" style=\\\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\\\">-<\\/button> <input type=\\\"text\\\" class=\\\"input-qty-card\\\" value=\\\"1\\\" readonly=\\\"readonly\\\" aria-label=\\\"Cantidad\\\" style=\\\"width: 45px; height: 100%; border: none; text-align: center; font-size: 1.1rem; font-weight: bold; color: #3B2314; background: transparent;\\\"> <button type=\\\"button\\\" class=\\\"btn-qty\\\" onclick=\\\"window.cambiarQtyCard(this, 1)\\\" aria-label=\\\"Aumentar\\\" style=\\\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\\\">+<\\/button><\\/div>\\r\\n<button type=\\\"button\\\" class=\\\"btn-dorado-agregar\\\" data-id=\\\"4\\\" data-name=\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\\\" data-price=\\\"4.00\\\" data-img=\\\"images\\/productos\\/imagen_producto_default.avif\\\" data-presentation=\\\"Pasta 200g (100% Cacao Puro)\\\" onclick=\\\"window.agregarAlCarritoDesdeCard(this)\\\" style=\\\"flex: 1; min-width: 210px; height: 48px; background-color: #C19A3D; color: #FFFFFF; border: none; border-radius: 8px; font-weight: bold; font-size: 1.05rem; cursor: pointer; display: inline-flex; align-items: center; justify-content: center; gap: 8px; box-shadow: 0 4px 14px rgba(193, 154, 61, 0.4); transition: all 0.25s ease;\\\"> <span>\\ud83d\\uded2<\\/span> Agregar al Carrito <\\/button> <a href=\\\"https:\\/\\/wa.me\\/593994851768?text=Hola,%20deseo%20ordenar%20la%20Pasta%20Tradicional%20de%20Chocolate%20de%20Taza%20($4.00)\\\" target=\\\"_blank\\\" style=\\\"background: #25D366; color: #FFFFFF; height: 48px; padding: 0 24px; border-radius: 8px; font-weight: bold; text-decoration: none; display: inline-flex; align-items: center; gap: 8px; font-size: 0.98rem; box-shadow: 0 4px 14px rgba(37, 211, 102, 0.35); transition: all 0.25s ease;\\\" rel=\\\"noopener\\\"> <svg width=\\\"20\\\" height=\\\"20\\\" viewBox=\\\"0 0 32 32\\\" fill=\\\"currentColor\\\">\\r\\n        <path d=\\\"M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-0.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z\\\"><\\/path>\\r\\n      <\\/svg> <span>Pedir por WhatsApp<\\/span> <\\/a><\\/div>\\r\\n<!-- Micro-garant\\u00edas de compra -->\\r\\n<div style=\\\"display: flex; gap: 20px; flex-wrap: wrap; font-size: 0.88rem; color: #5A3825; padding-top: 16px; border-top: 1px solid rgba(193, 154, 61, 0.22);\\\">\\r\\n<div>\\ud83d\\ude9a <strong>Env\\u00edos:<\\/strong> Cobertura a todo el Ecuador<\\/div>\\r\\n<div>\\ud83c\\udf31 <strong>Pureza:<\\/strong> 100% Licor de Cacao sin qu\\u00edmicos<\\/div>\\r\\n<div>\\ud83d\\udccd <strong>Origen:<\\/strong> Hecho en Ambato desde 1952<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- Ficha de Atributos Gourmet (4 columnas) -->\\r\\n<div style=\\\"margin: 35px 0;\\\">\\r\\n<h3 style=\\\"font-family: \'Playfair Display\', serif; font-size: 1.6rem; color: #3B2314; margin-bottom: 18px;\\\">Atributos de Alta Chocolater\\u00eda<\\/h3>\\r\\n<div style=\\\"display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 16px;\\\">\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193,154,61,0.25); border-radius: 12px; padding: 18px; text-align: center; box-shadow: 0 4px 12px rgba(59,35,20,0.04);\\\">\\r\\n<div style=\\\"color: #C19A3D; font-size: 1.4rem; margin-bottom: 6px;\\\">\\ud83c\\udf6b<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 0.95rem; margin-bottom: 4px;\\\">100% Cacao Puro<\\/div>\\r\\n<div style=\\\"font-size: 0.85rem; color: #6C4A33;\\\">Sin az\\u00facar a\\u00f1adida, libre de grasas hidrogenadas<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193,154,61,0.25); border-radius: 12px; padding: 18px; text-align: center; box-shadow: 0 4px 12px rgba(59,35,20,0.04);\\\">\\r\\n<div style=\\\"color: #C19A3D; font-size: 1.4rem; margin-bottom: 6px;\\\">\\ud83d\\udccd<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 0.95rem; margin-bottom: 4px;\\\">Origen Tungurahua<\\/div>\\r\\n<div style=\\\"font-size: 0.85rem; color: #6C4A33;\\\">Granos seleccionados y tostados en Ambato<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193,154,61,0.25); border-radius: 12px; padding: 18px; text-align: center; box-shadow: 0 4px 12px rgba(59,35,20,0.04);\\\">\\r\\n<div style=\\\"color: #C19A3D; font-size: 1.4rem; margin-bottom: 6px;\\\">\\ud83d\\udd25<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 0.95rem; margin-bottom: 4px;\\\">Paila Tradicional<\\/div>\\r\\n<div style=\\\"font-size: 0.85rem; color: #6C4A33;\\\">Tostado a le\\u00f1a y molienda en piedra volc\\u00e1nica<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193,154,61,0.25); border-radius: 12px; padding: 18px; text-align: center; box-shadow: 0 4px 12px rgba(59,35,20,0.04);\\\">\\r\\n<div style=\\\"color: #C19A3D; font-size: 1.4rem; margin-bottom: 6px;\\\">\\u2615<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 0.95rem; margin-bottom: 4px;\\\">Rendimiento<\\/div>\\r\\n<div style=\\\"font-size: 0.85rem; color: #6C4A33;\\\">Rinde de 8 a 10 tazas con espuma dorada<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- Ritual de Preparaci\\u00f3n Tradicional en 3 Pasos -->\\r\\n<div style=\\\"background: #FAF6F0; border-radius: 16px; padding: 30px; margin: 35px 0; border: 1px solid rgba(193,154,61,0.25);\\\">\\r\\n<h3 style=\\\"font-family: \'Playfair Display\', serif; font-size: 1.5rem; color: #3B2314; margin-bottom: 20px; text-align: center;\\\">El Ritual de Preparaci\\u00f3n Tradicional<\\/h3>\\r\\n<div style=\\\"display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 20px;\\\">\\r\\n<div style=\\\"display: flex; gap: 14px; align-items: flex-start;\\\">\\r\\n<div style=\\\"background: #C19A3D; color: #FFFFFF; font-weight: bold; width: 34px; height: 34px; min-width: 34px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 1rem;\\\">1<\\/div>\\r\\n<div><strong style=\\\"color: #3B2314; display: block; margin-bottom: 4px;\\\">Hervir y Especiar<\\/strong>\\r\\n<p style=\\\"color: #5A3825; font-size: 0.92rem; margin: 0; line-height: 1.5;\\\">Hervir 1 litro de leche entera o vegetal con canela en rama y dos clavos de olor.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"display: flex; gap: 14px; align-items: flex-start;\\\">\\r\\n<div style=\\\"background: #C19A3D; color: #FFFFFF; font-weight: bold; width: 34px; height: 34px; min-width: 34px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 1rem;\\\">2<\\/div>\\r\\n<div><strong style=\\\"color: #3B2314; display: block; margin-bottom: 4px;\\\">Rallar y Fundir<\\/strong>\\r\\n<p style=\\\"color: #5A3825; font-size: 0.92rem; margin: 0; line-height: 1.5;\\\">Rallar 50g de pasta tradicional e incorporar a fuego medio hasta disoluci\\u00f3n total.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"display: flex; gap: 14px; align-items: flex-start;\\\">\\r\\n<div style=\\\"background: #C19A3D; color: #FFFFFF; font-weight: bold; width: 34px; height: 34px; min-width: 34px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 1rem;\\\">3<\\/div>\\r\\n<div><strong style=\\\"color: #3B2314; display: block; margin-bottom: 4px;\\\">Batir con Molinillo<\\/strong>\\r\\n<p style=\\\"color: #5A3825; font-size: 0.92rem; margin: 0; line-height: 1.5;\\\">Batir con molinillo de madera hasta coronar con abundante espuma sedosa y servir.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":4}', 0, 0, 0),
(3, 'com_content.article.4', '', '2026-11-21 05:48:45', 723, 13131, '0bdf1edfd2068ace143dcc4d8814bea29120c9b6', '{\"id\":4,\"title\":\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\",\"alias\":\"pasta-tradicional-chocolate-taza\",\"note\":\"\",\"catid\":8,\"state\":1,\"created\":\"2026-11-14 00:25:58\",\"created_by\":723,\"created_by_alias\":\"\",\"publish_up\":\"2026-11-14 00:25:58\",\"publish_down\":null,\"featured_up\":\"\",\"featured_down\":\"\",\"metakey\":\"chocolate, artesanal, ambato, cacao, pasta tradicional de chocolate de taza (100% cacao)\",\"metadesc\":\"La aut\\u00e9ntica pasta ambate\\u00f1a para preparar el tradicional chocolate caliente con espuma de molinillo. Sin az\\u00facar a\\u00f1adida, solo cacao puro concentrado.\",\"access\":1,\"language\":\"*\",\"featured\":0,\"schema\":{\"extendJed\":\"\"},\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"helix_ultimate_image\\\":\\\"\\\",\\\"helix_ultimate_image_alt_txt\\\":\\\"\\\",\\\"helix_ultimate_article_format\\\":\\\"standard\\\",\\\"helix_ultimate_audio\\\":\\\"\\\",\\\"helix_ultimate_gallery\\\":\\\"\\\",\\\"helix_ultimate_video\\\":\\\"\\\"}\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/productos\\\\\\/imagen_producto_default.avif\\\",\\\"image_intro_alt\\\":\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\\\",\\\"imgclass_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/productos\\\\\\/imagen_producto_default.avif\\\",\\\"image_fulltext_alt\\\":\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao) - Chocolate Artesanal de Ambato\\\",\\\"imgclass_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"transition\":\"\",\"com_fields\":{\"precio_producto\":\"$4.00\",\"presentacion_cacao\":\"Pasta 200g (100% Cacao puro de taza)\",\"origen_grano\":\"Receta Tradicional Ambate\\u00f1a desde 1952\"},\"tags\":{},\"typeAlias\":\"com_content.article\",\"asset_id\":106,\"introtext\":\"<!-- Hero Showcase: 2 Columnas perfectamente equilibradas -->\\r\\n<div class=\\\"product-hero-showcase\\\"><!-- Columna Izquierda: Galer\\u00eda e Imagen de Producto -->\\r\\n<div class=\\\"product-gallery-card\\\"><img src=\\\"images\\/productos\\/imagen_producto_default.avif\\\" alt=\\\"Pasta Tradicional de Chocolate de Taza (100% Cacao)\\\"><\\/div>\\r\\n<!-- Columna Derecha: Informaci\\u00f3n Editorial y Compra -->\\r\\n<div class=\\\"product-summary-col\\\"><!-- Retorno al Cat\\u00e1logo -->\\r\\n<div style=\\\"margin-bottom: 16px;\\\"><a href=\\\"index.php\\/component\\/content\\/category\\/especialidades-cacao\\\" class=\\\"btn-volver-catalogo\\\"> \\u2190 Volver al Cat\\u00e1logo de Especialidades <\\/a><\\/div>\\r\\n<!-- Ceja y T\\u00edtulo Principal -->\\r\\n<div class=\\\"producto-eyebrow\\\" style=\\\"color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.85rem; font-weight: bold; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 8px;\\\">\\u2726 TRADICI\\u00d3N DESDE 1952 \\u2022 CACAO PURO 100%<\\/div>\\r\\n<h1 class=\\\"producto-titulo-detalle\\\" style=\\\"font-family: \'Playfair Display\', Georgia, serif; font-size: 2.5rem; color: #3B2314; font-weight: bold; line-height: 1.2; margin-bottom: 16px;\\\">Pasta Tradicional de Chocolate de Taza<\\/h1>\\r\\n<p class=\\\"lead\\\" style=\\\"color: #4A3528; font-size: 1.1rem; line-height: 1.7; margin-bottom: 24px;\\\">La cl\\u00e1sica pasta pura sin az\\u00facar para preparar el tradicional chocolate caliente con espuma espesa de molinillo de madera, tal como se sirve en los hogares de Ambato desde 1952.<\\/p>\\r\\n<!-- Caja de Compra de Alta Conversi\\u00f3n -->\\r\\n<div class=\\\"caja-compra-detalle\\\" style=\\\"background: #FAF5EE; border: 1.5px solid rgba(193, 154, 61, 0.35); border-radius: 16px; padding: 26px; box-shadow: 0 10px 30px rgba(59, 35, 20, 0.06);\\\">\\r\\n<div style=\\\"display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap; margin-bottom: 20px; gap: 10px;\\\">\\r\\n<div>\\r\\n<div style=\\\"font-size: 0.82rem; color: #8C6239; font-weight: bold; text-transform: uppercase; letter-spacing: 1.5px;\\\">Precio Oficial de F\\u00e1brica<\\/div>\\r\\n<div style=\\\"font-size: 2.4rem; font-weight: bold; color: #3B2314; font-family: \'Playfair Display\', serif; line-height: 1;\\\">$4.00 <span style=\\\"font-size: 1rem; color: #6C4A33; font-weight: 500; font-family: \'Montserrat\', sans-serif;\\\">(Pasta 200g)<\\/span><\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"display: inline-flex; align-items: center; gap: 8px; background: rgba(37, 211, 102, 0.12); color: #1E824C; padding: 7px 16px; border-radius: 50px; font-size: 0.88rem; font-weight: bold;\\\"><span style=\\\"font-size: 1.1rem; line-height: 0;\\\">\\u25cf<\\/span> En Stock \\u2022 Env\\u00edos a todo el Ecuador<\\/div>\\r\\n<\\/div>\\r\\n<!-- Stepper de Cantidad, Agregar al Carrito y WhatsApp -->\\r\\n<div style=\\\"display: flex; gap: 14px; align-items: center; flex-wrap: wrap; margin-bottom: 18px;\\\">\\r\\n<div class=\\\"control-cantidad-card\\\" style=\\\"height: 48px; border: 2px solid #C19A3D; border-radius: 8px; display: inline-flex; align-items: center; background: #FFFFFF;\\\"><button type=\\\"button\\\" class=\\\"btn-qty\\\" onclick=\\\"window.cambiarQtyCard(this, -1)\\\" aria-label=\\\"Disminuir\\\" style=\\\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\\\">-<\\/button> <input type=\\\"text\\\" class=\\\"input-qty-card\\\" value=\\\"1\\\" readonly=\\\"readonly\\\" aria-label=\\\"Cantidad\\\" style=\\\"width: 45px; height: 100%; border: none; text-align: center; font-size: 1.1rem; font-weight: bold; color: #3B2314; background: transparent;\\\"> <button type=\\\"button\\\" class=\\\"btn-qty\\\" onclick=\\\"window.cambiarQtyCard(this, 1)\\\" aria-label=\\\"Aumentar\\\" style=\\\"width: 40px; height: 100%; border: none; background: transparent; font-size: 1.2rem; font-weight: bold; color: #3B2314; cursor: pointer;\\\">+<\\/button><\\/div>\\r\\n<button type=\\\"button\\\" class=\\\"btn-comprar-card\\\" onclick=\\\"window.agregarAlCarritoDirecto(\'Pasta Tradicional de Chocolate de Taza (100% Cacao)\', 4.00, \'\\/joomla\\/images\\/productos\\/imagen_producto_default.avif\', this)\\\" style=\\\"height: 48px; background: #8C6239; color: #FFFFFF; border: none; border-radius: 8px; font-weight: bold; font-size: 1rem; padding: 0 24px; cursor: pointer; display: inline-flex; align-items: center; gap: 8px; transition: background 0.2s ease;\\\"> <span style=\\\"font-size: 1.2rem;\\\">\\ud83d\\uded2<\\/span> Agregar al Carrito <\\/button> <a href=\\\"https:\\/\\/wa.me\\/593994851768?text=Hola,%20deseo%20ordenar%20la%20Pasta%20Tradicional%20de%20Chocolate%20de%20Taza%20($4.00)\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\" style=\\\"height: 48px; background: #25D366; color: #FFFFFF; text-decoration: none; border-radius: 8px; font-weight: bold; font-size: 0.95rem; padding: 0 20px; display: inline-flex; align-items: center; gap: 8px; box-sizing: border-box;\\\"> <img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/6\\/6b\\/WhatsApp.svg\\\" alt=\\\"\\\" style=\\\"width: 20px; height: 20px;\\\"> Pedir por WhatsApp <\\/a><\\/div>\\r\\n<!-- Sellos de Confianza -->\\r\\n<div style=\\\"display: flex; gap: 20px; flex-wrap: wrap; border-top: 1px solid rgba(193, 154, 61, 0.25); padding-top: 14px; font-size: 0.88rem; color: #6C4A33;\\\">\\r\\n<div>\\ud83d\\ude9a <strong>Env\\u00edos:<\\/strong> Cobertura a todo el Ecuador<\\/div>\\r\\n<div>\\ud83c\\udf31 <strong>Pureza:<\\/strong> 100% Licor de Cacao sin qu\\u00edmicos<\\/div>\\r\\n<div>\\ud83d\\udccd <strong>Origen:<\\/strong> Hecho en Ambato desde 1952<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- Secci\\u00f3n de Atributos a Ancho Completo (4 Columnas Equilibradas) -->\\r\\n<div class=\\\"product-attributes-fullwidth\\\">\\r\\n<h3 style=\\\"font-family: \'Playfair Display\', Georgia, serif; font-size: 1.85rem; color: #3B2314; font-weight: bold; text-align: center; margin-bottom: 24px;\\\">Atributos de Alta Chocolater\\u00eda<\\/h3>\\r\\n<div class=\\\"product-attributes-grid\\\">\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\\\">\\r\\n<div style=\\\"font-size: 1.8rem; margin-bottom: 10px;\\\">\\ud83c\\udf6b<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\\\">100% Cacao Puro<\\/div>\\r\\n<div style=\\\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\\\">Sin az\\u00facar a\\u00f1adida, libre de grasas hidrogenadas<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\\\">\\r\\n<div style=\\\"font-size: 1.8rem; margin-bottom: 10px;\\\">\\ud83d\\udccd<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\\\">Origen Tungurahua<\\/div>\\r\\n<div style=\\\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\\\">Granos seleccionados y tostados en Ambato<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\\\">\\r\\n<div style=\\\"font-size: 1.8rem; margin-bottom: 10px;\\\">\\ud83d\\udd25<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\\\">Paila Tradicional<\\/div>\\r\\n<div style=\\\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\\\">Tostado a le\\u00f1a y molienda en piedra volc\\u00e1nica<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FFFFFF; border: 1px solid rgba(193, 154, 61, 0.22); border-radius: 14px; padding: 24px 20px; text-align: center; box-shadow: 0 4px 15px rgba(59, 35, 20, 0.04);\\\">\\r\\n<div style=\\\"font-size: 1.8rem; margin-bottom: 10px;\\\">\\u2615<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.05rem; margin-bottom: 6px;\\\">Rendimiento<\\/div>\\r\\n<div style=\\\"font-size: 0.88rem; color: #6C4A33; line-height: 1.5;\\\">Rinde de 8 a 10 tazas con espuma dorada<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-- Secci\\u00f3n del Ritual a Ancho Completo (3 Columnas Equilibradas) -->\\r\\n<div class=\\\"product-ritual-fullwidth\\\">\\r\\n<h3 style=\\\"font-family: \'Playfair Display\', Georgia, serif; font-size: 1.85rem; color: #3B2314; font-weight: bold; text-align: center; margin-bottom: 10px;\\\">El Ritual de Preparaci\\u00f3n Tradicional<\\/h3>\\r\\n<p style=\\\"text-align: center; color: #6C4A33; font-size: 1.05rem; max-width: 650px; margin: 0 auto 30px auto;\\\">Tres pasos ancestrales para despertar todo el aroma y la espuma dorada del cacao ambate\\u00f1o en casa.<\\/p>\\r\\n<div class=\\\"product-ritual-grid\\\">\\r\\n<div style=\\\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\\\">\\r\\n<div style=\\\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\\\">1<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\\\">Hervir y Especiar<\\/div>\\r\\n<p style=\\\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\\\">Hervir 1 litro de leche entera o vegetal con canela en rama y dos clavos de olor.<\\/p>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\\\">\\r\\n<div style=\\\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\\\">2<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\\\">Rallar y Fundir<\\/div>\\r\\n<p style=\\\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\\\">Rallar 50g de pasta tradicional e incorporar a fuego medio hasta disoluci\\u00f3n total.<\\/p>\\r\\n<\\/div>\\r\\n<div style=\\\"background: #FAF5EE; border-radius: 14px; padding: 28px 24px; border: 1px solid rgba(193, 154, 61, 0.2);\\\">\\r\\n<div style=\\\"width: 36px; height: 36px; border-radius: 50%; background: #C19A3D; color: #FFFFFF; font-weight: bold; display: flex; align-items: center; justify-content: center; margin-bottom: 14px; font-size: 1.1rem;\\\">3<\\/div>\\r\\n<div style=\\\"font-weight: bold; color: #3B2314; font-size: 1.15rem; margin-bottom: 8px;\\\">Batir con Molinillo<\\/div>\\r\\n<p style=\\\"color: #555555; font-size: 0.95rem; line-height: 1.6; margin: 0;\\\">Batir con molinillo de madera hasta coronar con abundante espuma sedosa y servir.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"ordering\":4}', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_languages`
--

CREATE TABLE `lgi49_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_languages`
--

INSERT INTO `lgi49_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_mail_templates`
--

CREATE TABLE `lgi49_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_mail_templates`
--

INSERT INTO `lgi49_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"messages\",\"message\",\"date\",\"extension\",\"username\",\"ip_address\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_joomlaupdate.update.failed', 'com_joomlaupdate', '', 'COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_SUBJECT', 'COM_JOOMLAUPDATE_UPDATE_FAILED_MAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_joomlaupdate.update.success', 'com_joomlaupdate', '', 'COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_SUBJECT', 'COM_JOOMLAUPDATE_UPDATE_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"oldversion\",\"sitename\",\"url\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_content_joomla.newarticle', 'plg_content_joomla', '', 'PLG_CONTENT_JOOMLA_NEW_ARTICLE_SUBJECT', 'PLG_CONTENT_JOOMLA_NEW_ARTICLE_BODY', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"title\",\"url\"]}'),
('plg_multifactorauth_email.mail', 'plg_multifactorauth_email', '', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY', '', '', '{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder', 'plg_task_privacyconsent', '', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail', 'plg_task_updatenotification', '', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_menu`
--

CREATE TABLE `lgi49_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_menu`
--

INSERT INTO `lgi49_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, NULL, 0, 0, '', 0, '', 1, 10, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, 0, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, 0, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, 0, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, 0, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, 0, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, 0, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, 0, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, 0, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, 0, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, 0, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, 0, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, 0, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, 0, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, 0, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'Contacts/Contact Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, 0, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'Contacts/Contact Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, 0, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Smart-Search-Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, 0, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Smart-Search-Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, 0, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Smart-Search-Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, 0, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Smart-Search-Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, 0, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Inicio', 'inicio', '', 'home', 'index.php?option=com_sppagebuilder&view=page&id=1', 'component', 1, 1, 1, 255, 723, '2026-11-21 23:10:42', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"blog_class_leading\":\"\",\"blog_class\":\"\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_links\":\"0\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 2, 3, 1, '*', 0, NULL, NULL),
(109, 'main', 'COM_SPPAGEBUILDER', 'com-sppagebuilder', '', 'com-sppagebuilder', 'index.php?option=com_sppagebuilder&view=editor', 'component', 1, 1, 1, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 43, 56, 0, '', 1, NULL, NULL),
(110, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_PAGES', 'com-sppagebuilder-admin-menu-pages', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-pages', 'index.php?option=com_sppagebuilder&view=editor&tmpl=component', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1, NULL, NULL),
(111, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_DYNAMIC_CONTENT', 'com-sppagebuilder-admin-menu-dynamic-content', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-dynamic-content', 'index.php?option=com_sppagebuilder&view=editor&tmpl=component#/dynamic-content', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1, NULL, NULL),
(112, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_MEDIA', 'com-sppagebuilder-admin-menu-media', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-media', 'index.php?option=com_sppagebuilder&view=editor&tmpl=component#/media-manager', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1, NULL, NULL),
(113, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_CATEGORIES', 'com-sppagebuilder-admin-menu-categories', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-categories', 'index.php?option=com_categories&extension=com_sppagebuilder', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1, NULL, NULL),
(114, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_EASYSTOE', 'com-sppagebuilder-admin-menu-easystoe', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-easystoe', 'index.php?option=com_sppagebuilder&view=editor&tmpl=component#/editor/storefront', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1, NULL, NULL),
(115, 'main', 'COM_SPPAGEBUILDER_ADMIN_MENU_SETTINGS', 'com-sppagebuilder-admin-menu-settings', '', 'com-sppagebuilder/com-sppagebuilder-admin-menu-settings', 'index.php?option=com_sppagebuilder&view=editor&tmpl=component#/settings', 'component', 1, 109, 2, 255, 0, NULL, 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1, NULL, NULL),
(116, 'mainmenu', 'Productos', 'menu-productos', '', 'Banners/Categories/menu-productos', '/joomla/#productos', 'url', 1, 1, 1, 0, 0, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 4, 5, 0, '*', 0, NULL, NULL),
(117, 'mainmenu', 'Historia', 'menu-historia', '', 'Banners/Clients/menu-historia', '/joomla/#historia', 'url', 1, 1, 1, 0, 0, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 6, 7, 0, '*', 0, NULL, NULL),
(118, 'mainmenu', 'Contacto', 'menu-contacto', '', 'Banners/Tracks/menu-contacto', '/joomla/#contacto', 'url', 1, 1, 1, 0, 0, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 8, 9, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_menu_types`
--

CREATE TABLE `lgi49_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_menu_types`
--

INSERT INTO `lgi49_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`, `ordering`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_messages`
--

CREATE TABLE `lgi49_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_messages_cfg`
--

CREATE TABLE `lgi49_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_modules`
--

CREATE TABLE `lgi49_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_modules`
--

INSERT INTO `lgi49_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'sidebar-right', 0, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 6, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'sidebar-right', 0, NULL, NULL, NULL, 0, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, NULL, NULL, NULL, 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', 0, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', 0, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 1, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 3, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 5, 'cpanel', 0, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', 0, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', 0, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', 0, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', 0, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', 0, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', 0, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', 0, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', 0, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', 0, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', 0, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', 0, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 96, 'Guided Tours', '', '', 1, 'status', 0, NULL, NULL, NULL, 1, 'mod_guidedtours', 1, 1, '', 1, '*'),
(110, 101, 'SP Page Builder', '', '', 1, '', 0, NULL, NULL, NULL, 0, 'mod_sppagebuilder', 1, 1, '', 0, '*'),
(111, 103, 'Botón Flotante WhatsApp Pedidos', '', '<div id=\"whatsapp-flotante-wrapper\"><a href=\"https://wa.me/593994851768?text=Hola,%20vengo%20desde%20su%20página%20web%20y%20deseo%20hacer%20un%20pedido%20de%20chocolate%20artesanal.\" class=\"btn-whatsapp-flotante\" target=\"_blank\" rel=\"noopener noreferrer\" aria-label=\"Pedir por WhatsApp\" title=\"Pedir por WhatsApp\"><img src=\"images/whatsapp_ico.png\" alt=\"Pedir por WhatsApp\" class=\"icono-wa-img\"></a></div>', 1, 'debug', NULL, NULL, '2026-11-14 00:49:56', NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":1,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(112, 0, 'Carrito de Compras y Pedidos', '', '<!-- COMPONENTE FLOTANTE Y DRAWER DEL CARRITO DE COMPRAS -->\n<div id=\"cart-app-wrapper\">\n  <!-- Botón Flotante del Carrito (Mobile & Desktop Scroll) -->\n  <button id=\"floating-cart-pill\" type=\"button\" onclick=\"window.AmbatoCart.open()\" aria-label=\"Ver Carrito de Compras\">\n    <svg width=\"20\" height=\"20\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n      <circle cx=\"9\" cy=\"21\" r=\"1\"></circle>\n      <circle cx=\"20\" cy=\"21\" r=\"1\"></circle>\n      <path d=\"M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6\"></path>\n    </svg>\n    <span id=\"floating-cart-text\">Carrito</span>\n    <span class=\"cart-count-badge\" id=\"floating-cart-count\">0</span>\n  </button>\n\n  <!-- Overlay / Fondo Oscuro -->\n  <div id=\"cart-drawer-backdrop\" onclick=\"window.AmbatoCart.close()\"></div>\n\n  <!-- Panel Lateral / Drawer Deslizante -->\n  <div id=\"cart-drawer-panel\" role=\"dialog\" aria-modal=\"true\" aria-labelledby=\"cart-title\">\n    <div class=\"cart-drawer-header\">\n      <div>\n        <h3 id=\"cart-title\">🛒 Tu Carrito de Compras</h3>\n        <small style=\"color: #6C4A33; font-weight: 500;\">Chocolate Artesanal de Ambato</small>\n      </div>\n      <button type=\"button\" class=\"cart-drawer-close\" onclick=\"window.AmbatoCart.close()\" aria-label=\"Cerrar Carrito\">&times;</button>\n    </div>\n\n    <!-- Lista de Artículos -->\n    <div class=\"cart-drawer-items\" id=\"cart-items-container\">\n      <!-- Se inyecta dinámicamente -->\n    </div>\n\n    <!-- Pie del Carrito con Totales y Checkout -->\n    <div class=\"cart-drawer-footer\" id=\"cart-footer-container\">\n      <div class=\"cart-summary-line\">\n        <span>Subtotal:</span>\n        <strong id=\"cart-subtotal\">$0.00</strong>\n      </div>\n      <div class=\"cart-summary-line\" style=\"font-size: 0.88rem; color: #2E7D32;\">\n        <span>🚚 Envío:</span>\n        <span>A coordinar / Ambato & Nacional</span>\n      </div>\n      <div class=\"cart-total-line\">\n        <span>TOTAL:</span>\n        <span class=\"cart-total-amount\" id=\"cart-total\">$0.00</span>\n      </div>\n\n      <!-- Formulario de Pedido Rápido -->\n      <div class=\"cart-checkout-form\">\n        <div style=\"font-weight: 700; font-size: 0.9rem; color: #3B2314; margin-bottom: 8px;\">\n          Datos para Entrega y Facturación:\n        </div>\n        <input type=\"text\" id=\"cart-customer-name\" class=\"cart-input\" placeholder=\"Tu Nombre y Apellido *\" required>\n        <input type=\"tel\" id=\"cart-customer-phone\" class=\"cart-input\" placeholder=\"Teléfono / WhatsApp *\" required>\n        <input type=\"text\" id=\"cart-customer-address\" class=\"cart-input\" placeholder=\"Ciudad y Dirección de Entrega *\" required>\n        <input type=\"text\" id=\"cart-customer-notes\" class=\"cart-input\" placeholder=\"Notas (Ej: Para regalo, piso, referencia)\" style=\"margin-bottom: 0;\">\n      </div>\n\n      <!-- Botón de Envío por WhatsApp -->\n      <button type=\"button\" class=\"btn-dorado-agregar\" onclick=\"window.AmbatoCart.checkoutWhatsApp()\" style=\"font-size: 1.05rem; padding: 14px; display: flex; align-items: center; justify-content: center; gap: 10px; background-color: #25D366 !important; border-color: #25D366 !important; margin-bottom: 10px;\">\n        <svg width=\"22\" height=\"22\" viewBox=\"0 0 32 32\" fill=\"currentColor\">\n          <path d=\"M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-0.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z\"/>\n        </svg>\n        <span>Finalizar Pedido por WhatsApp</span>\n      </button>\n\n      <div style=\"display: flex; justify-content: space-between; align-items: center; margin-top: 8px;\">\n        <button type=\"button\" onclick=\"window.AmbatoCart.clear()\" style=\"background:transparent; border:none; color:#8C2E2E; font-size:0.85rem; cursor:pointer; text-decoration:underline; padding:0;\">\n          Vaciar carrito\n        </button>\n        <button type=\"button\" onclick=\"window.AmbatoCart.close()\" style=\"background:transparent; border:none; color:#5A3825; font-size:0.85rem; cursor:pointer; text-decoration:underline; padding:0;\">\n          Continuar explorando\n        </button>\n      </div>\n    </div>\n  </div>\n\n  <!-- Toast Notification -->\n  <div id=\"cart-toast\" role=\"status\" aria-live=\"polite\">\n    <span style=\"font-size: 1.3rem;\">✓</span>\n    <span id=\"cart-toast-msg\">Producto agregado al carrito</span>\n  </div>\n</div>\n\n<script>\n(function() {\n  const STORAGE_KEY = \'chocolate_ambato_cart\';\n  const WA_NUMBER = \'593962660236\';\n\n  const AmbatoCart = {\n    items: [],\n\n    init: function() {\n      try {\n        const stored = localStorage.getItem(STORAGE_KEY);\n        this.items = stored ? JSON.parse(stored) : [];\n      } catch (e) {\n        this.items = [];\n      }\n      this.updateUI();\n      this.injectHeaderCartButton();\n    },\n\n    save: function() {\n      try {\n        localStorage.setItem(STORAGE_KEY, JSON.stringify(this.items));\n      } catch (e) {}\n      this.updateUI();\n    },\n\n    addItem: function(product, qty) {\n      qty = parseInt(qty) || 1;\n      const existing = this.items.find(i => i.id == product.id);\n      if (existing) {\n        existing.qty += qty;\n      } else {\n        this.items.push({\n          id: product.id,\n          name: product.name,\n          price: parseFloat(product.price),\n          img: product.img || \'images/productos/imagen_producto_default.avif\',\n          presentation: product.presentation || \'\',\n          qty: qty\n        });\n      }\n      this.save();\n      this.showToast(`✓ Agregado: ${qty}x ${product.name}`);\n    },\n\n    updateQty: function(id, delta) {\n      const item = this.items.find(i => i.id == id);\n      if (!item) return;\n      item.qty += delta;\n      if (item.qty <= 0) {\n        this.items = this.items.filter(i => i.id != id);\n      }\n      this.save();\n    },\n\n    removeItem: function(id) {\n      this.items = this.items.filter(i => i.id != id);\n      this.save();\n    },\n\n    clear: function() {\n      if (this.items.length === 0) return;\n      if (confirm(\'¿Deseas vaciar todos los productos del carrito?\')) {\n        this.items = [];\n        this.save();\n      }\n    },\n\n    open: function() {\n      const panel = document.getElementById(\'cart-drawer-panel\');\n      const backdrop = document.getElementById(\'cart-drawer-backdrop\');\n      if (panel) panel.classList.add(\'active\');\n      if (backdrop) backdrop.classList.add(\'active\');\n      document.body.style.overflow = \'hidden\';\n    },\n\n    close: function() {\n      const panel = document.getElementById(\'cart-drawer-panel\');\n      const backdrop = document.getElementById(\'cart-drawer-backdrop\');\n      if (panel) panel.classList.remove(\'active\');\n      if (backdrop) backdrop.classList.remove(\'active\');\n      document.body.style.overflow = \'\';\n    },\n\n    showToast: function(msg) {\n      const toast = document.getElementById(\'cart-toast\');\n      const toastMsg = document.getElementById(\'cart-toast-msg\');\n      if (toast && toastMsg) {\n        toastMsg.innerText = msg;\n        toast.classList.add(\'show\');\n        clearTimeout(this._toastTimer);\n        this._toastTimer = setTimeout(() => {\n          toast.classList.remove(\'show\');\n        }, 3200);\n      }\n    },\n\n    updateUI: function() {\n      const totalCount = this.items.reduce((sum, item) => sum + item.qty, 0);\n      const subtotal = this.items.reduce((sum, item) => sum + (item.price * item.qty), 0);\n\n      // Actualizar contadores flotantes y cabecera\n      const floatingCount = document.getElementById(\'floating-cart-count\');\n      const floatingText = document.getElementById(\'floating-cart-text\');\n      if (floatingCount) floatingCount.innerText = totalCount;\n      if (floatingText) {\n        floatingText.innerText = totalCount > 0 ? `$${subtotal.toFixed(2)}` : \'Carrito\';\n      }\n\n      const headerBadges = document.querySelectorAll(\'.header-cart-badge\');\n      headerBadges.forEach(b => b.innerText = totalCount);\n\n      // Renderizar elementos del Drawer\n      const container = document.getElementById(\'cart-items-container\');\n      const footer = document.getElementById(\'cart-footer-container\');\n\n      if (!container) return;\n\n      if (this.items.length === 0) {\n        container.innerHTML = `\n          <div style=\"text-align: center; padding: 50px 15px; color: #6C4A33;\">\n            <div style=\"font-size: 3.5rem; margin-bottom: 15px;\">🍫</div>\n            <h4 style=\"font-family:\'Playfair Display\',serif; color:#3B2314; margin-bottom:10px;\">Tu carrito está vacío</h4>\n            <p style=\"font-size: 0.95rem; line-height: 1.6; max-width: 280px; margin: 0 auto 25px auto;\">\n              Explora nuestra noble selección de chocolates artesanales y agrega tus favoritos.\n            </p>\n            <button type=\"button\" class=\"btn-dorado-outline\" onclick=\"window.AmbatoCart.close(); window.location.hash=\'productos\';\" style=\"padding: 10px 24px; font-size: 0.95rem;\">\n              Ver Especialidades\n            </button>\n          </div>\n        `;\n        if (footer) footer.style.display = \'none\';\n        return;\n      }\n\n      if (footer) footer.style.display = \'block\';\n\n      let html = \'\';\n      this.items.forEach(item => {\n        const itemTotal = (item.price * item.qty).toFixed(2);\n        html += `\n          <div class=\"cart-item-row\">\n            <img src=\"${item.img}\" alt=\"${item.name}\" class=\"cart-item-img\">\n            <div class=\"cart-item-info\">\n              <div class=\"cart-item-title\">${item.name}</div>\n              <div class=\"cart-item-meta\">${item.presentation} • $${item.price.toFixed(2)} c/u</div>\n              <div style=\"display: flex; align-items: center; justify-content: space-between; margin-top: 4px;\">\n                <div class=\"cart-qty-ctrl\">\n                  <button type=\"button\" class=\"cart-qty-btn\" onclick=\"window.AmbatoCart.updateQty(\'${item.id}\', -1)\">-</button>\n                  <span class=\"cart-qty-val\">${item.qty}</span>\n                  <button type=\"button\" class=\"cart-qty-btn\" onclick=\"window.AmbatoCart.updateQty(\'${item.id}\', 1)\">+</button>\n                </div>\n                <div class=\"cart-item-price\">$${itemTotal}</div>\n              </div>\n            </div>\n            <button type=\"button\" class=\"cart-item-remove\" onclick=\"window.AmbatoCart.removeItem(\'${item.id}\')\" title=\"Eliminar producto\" aria-label=\"Eliminar producto\">\n              <svg width=\"18\" height=\"18\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\">\n                <polyline points=\"3 6 5 6 21 6\"></polyline>\n                <path d=\"M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2\"></path>\n              </svg>\n            </button>\n          </div>\n        `;\n      });\n\n      container.innerHTML = html;\n\n      const subtotalEl = document.getElementById(\'cart-subtotal\');\n      const totalEl = document.getElementById(\'cart-total\');\n      if (subtotalEl) subtotalEl.innerText = `$${subtotal.toFixed(2)}`;\n      if (totalEl) totalEl.innerText = `$${subtotal.toFixed(2)}`;\n    },\n\n    checkoutWhatsApp: function() {\n      if (this.items.length === 0) {\n        alert(\'Tu carrito está vacío.\');\n        return;\n      }\n\n      const name = (document.getElementById(\'cart-customer-name\')?.value || \'\').trim();\n      const phone = (document.getElementById(\'cart-customer-phone\')?.value || \'\').trim();\n      const address = (document.getElementById(\'cart-customer-address\')?.value || \'\').trim();\n      const notes = (document.getElementById(\'cart-customer-notes\')?.value || \'\').trim();\n\n      if (!name) {\n        alert(\'Por favor, ingresa tu Nombre y Apellido para el pedido.\');\n        document.getElementById(\'cart-customer-name\')?.focus();\n        return;\n      }\n      if (!phone) {\n        alert(\'Por favor, ingresa tu número de Teléfono / WhatsApp.\');\n        document.getElementById(\'cart-customer-phone\')?.focus();\n        return;\n      }\n      if (!address) {\n        alert(\'Por favor, ingresa tu Ciudad y Dirección de Entrega.\');\n        document.getElementById(\'cart-customer-address\')?.focus();\n        return;\n      }\n\n      const subtotal = this.items.reduce((sum, item) => sum + (item.price * item.qty), 0);\n\n      // Armar mensaje estructurado de WhatsApp\n      let msg = `🍫 *NUEVO PEDIDO - CHOCOLATE AMBATEÑO*\\n`;\n      msg += `-----------------------------------------\\n`;\n      msg += `👤 *Cliente:* ${name}\\n`;\n      msg += `📱 *Teléfono:* ${phone}\\n`;\n      msg += `📍 *Ciudad / Dirección:* ${address}\\n`;\n      if (notes) {\n        msg += `📝 *Notas:* ${notes}\\n`;\n      }\n      msg += `-----------------------------------------\\n`;\n      msg += `📦 *DETALLE DE PRODUCTOS:*\\n`;\n\n      this.items.forEach(item => {\n        const itemTotal = (item.price * item.qty).toFixed(2);\n        msg += `• ${item.qty}x ${item.name} (${item.presentation}) - $${itemTotal}\\n`;\n      });\n\n      msg += `-----------------------------------------\\n`;\n      msg += `💰 *TOTAL A PAGAR:* $${subtotal.toFixed(2)} USD\\n`;\n      msg += `-----------------------------------------\\n`;\n      msg += `_Pedido realizado desde la web oficial de Chocolate Artesanal de Ambato._`;\n\n      const url = `https://wa.me/${WA_NUMBER}?text=${encodeURIComponent(msg)}`;\n      window.open(url, \'_blank\');\n    },\n\n    injectHeaderCartButton: function() {\n      // Inyectar en el Header de Helix Ultimate si aún no existe\n      if (document.getElementById(\'header-cart-btn\')) return;\n\n      const menuWrapper = document.querySelector(\'#sp-menu .sp-column\') || document.querySelector(\'#sp-menu\');\n      if (menuWrapper) {\n        const btn = document.createElement(\'button\');\n        btn.id = \'header-cart-btn\';\n        btn.type = \'button\';\n        btn.className = \'btn-header-cart\';\n        btn.onclick = () => this.open();\n        btn.innerHTML = `\n          <svg width=\"18\" height=\"18\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\">\n            <circle cx=\"9\" cy=\"21\" r=\"1\"></circle>\n            <circle cx=\"20\" cy=\"21\" r=\"1\"></circle>\n            <path d=\"M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6\"></path>\n          </svg>\n          <span class=\"d-none d-sm-inline\">Carrito</span>\n          <span class=\"cart-count-badge header-cart-badge\">0</span>\n        `;\n        // Insertar antes del offcanvas toggler o al final\n        const toggler = document.getElementById(\'offcanvas-toggler\');\n        if (toggler) {\n          menuWrapper.insertBefore(btn, toggler);\n        } else {\n          menuWrapper.appendChild(btn);\n        }\n      }\n    }\n  };\n\n  // Exponer globalmente\n  window.AmbatoCart = AmbatoCart;\n\n  // Funciones globales para las tarjetas de producto\n  window.cambiarQtyCard = function(btn, delta) {\n    const parent = btn.closest(\'.control-cantidad-card\');\n    if (!parent) return;\n    const input = parent.querySelector(\'.input-qty-card\');\n    if (!input) return;\n    let val = parseInt(input.value) || 1;\n    val += delta;\n    if (val < 1) val = 1;\n    if (val > 99) val = 99;\n    input.value = val;\n  };\n\n  window.agregarAlCarritoDesdeCard = function(btn) {\n    const card = btn.closest(\'.tarjeta-producto-box\') || btn.closest(\'.producto-tarjeta-joomla\');\n    const input = card ? card.querySelector(\'.input-qty-card\') : null;\n    const qty = input ? parseInt(input.value) || 1 : 1;\n\n    const product = {\n      id: btn.getAttribute(\'data-id\'),\n      name: btn.getAttribute(\'data-name\'),\n      price: btn.getAttribute(\'data-price\'),\n      img: btn.getAttribute(\'data-img\'),\n      presentation: btn.getAttribute(\'data-presentation\')\n    };\n\n    window.AmbatoCart.addItem(product, qty);\n    if (input) input.value = 1; // resetear a 1\n  };\n\n  if (document.readyState === \'loading\') {\n    document.addEventListener(\'DOMContentLoaded\', () => AmbatoCart.init());\n  } else {\n    AmbatoCart.init();\n  }\n})();\n</script>', 2, 'debug', NULL, NULL, NULL, NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":1}', 0, '*'),
(113, 0, 'Carrusel - últimos productos', 'Módulo de cinco productos recientes usado en la portada.', '', 3, 'sppagebuilder', NULL, NULL, NULL, NULL, 1, 'mod_articles_latest', 1, 0, '{\"catid\":[8],\"count\":100,\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"default\",\"moduleclass_sfx\":\" productos-recientes\",\"cache\":0,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":0,\"header_tag\":\"h3\",\"style\":\"none\"}', 0, '*'),
(114, 104, 'Pie de Página Institucional', '', '<div id=\"contacto\" class=\"footer-global-monumental\" style=\"color: #F5EBDD;\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-4 col-md-6 mb-4\">\r\n<div style=\"margin-bottom: 20px;\"><img src=\"images/Logo Vectorizado-08.png\" alt=\"El Ambateño Chocolate\" style=\"max-height: 65px; width: auto; filter: brightness(0) invert(0.96); opacity: 0.95;\"></div>\r\n<p style=\"color: #E2D0BE; line-height: 1.75; font-size: 0.98rem; margin-bottom: 16px;\">Tradición chocolatera artesanal desde 1952. Llevamos el auténtico aroma, pureza y calidez del cacao ecuatoriano a cada rincón del país.</p>\r\n<div style=\"color: #C19A3D; font-size: 0.92rem; font-weight: 600;\">Ambato • Tungurahua • Ecuador</div>\r\n</div>\r\n<div class=\"col-lg-4 col-md-6 mb-4\">\r\n<h4 style=\"font-family: \'Playfair Display\', Georgia, serif; color: #FFFFFF; font-size: 1.35rem; margin-bottom: 20px; border-bottom: 2px solid #C19A3D; display: inline-block; padding-bottom: 6px;\">Contáctanos</h4>\r\n<p style=\"color: #E2D0BE; margin-bottom: 10px; font-size: 0.95rem;\">📍 <strong>Ubicación:</strong> Ambato, Provincia de Tungurahua, Ecuador</p>\r\n<p style=\"color: #E2D0BE; margin-bottom: 10px; font-size: 0.95rem;\">📞 <strong>Teléfono:</strong> <a href=\"tel:+593994851768\" style=\"color: #C19A3D; text-decoration: none; font-weight: 600;\">+593 99 485 1768</a></p>\r\n<p style=\"color: #E2D0BE; margin-bottom: 10px; font-size: 0.95rem;\">💬 <strong>WhatsApp:</strong> <a href=\"https://wa.me/593994851768\" target=\"_blank\" style=\"color: #C19A3D; text-decoration: none; font-weight: 600;\" rel=\"noopener\">+593 99 485 1768</a></p>\r\n<p style=\"color: #E2D0BE; margin-bottom: 10px; font-size: 0.95rem;\">🚚 <strong>Envíos:</strong> Cobertura a nivel nacional (Quito, Guayaquil, Cuenca y todo el Ecuador)</p>\r\n</div>\r\n<div class=\"col-lg-4 col-md-12 mb-4\">\r\n<h4 style=\"font-family: \'Playfair Display\', Georgia, serif; color: #FFFFFF; font-size: 1.35rem; margin-bottom: 20px; border-bottom: 2px solid #C19A3D; display: inline-block; padding-bottom: 6px;\">Horario de Atención</h4>\r\n<p style=\"color: #E2D0BE; margin-bottom: 10px; font-size: 0.95rem;\"><strong>Lunes a Sábado:</strong> 08:30 – 18:00</p>\r\n<p style=\"color: #E2D0BE; margin-bottom: 22px; font-size: 0.95rem;\"><strong>Domingos:</strong> Pedidos y atención directa por WhatsApp</p>\r\n<div><a href=\"https://wa.me/593994851768?text=Hola,%20deseo%20realizar%20un%20pedido%20de%20Chocolate%20Artesanal%20de%20Ambato.\" target=\"_blank\" rel=\"noopener\" style=\"display: inline-block; background-color: #C19A3D; color: #1C100A; font-weight: bold; padding: 12px 24px; border-radius: 8px; text-decoration: none; font-size: 0.95rem; transition: all 0.3s ease;\">💬 Escríbenos a WhatsApp</a></div>\r\n</div>\r\n</div>\r\n<div style=\"border-top: 1px solid rgba(245, 235, 221, 0.12); margin-top: 35px; padding-top: 25px; text-align: center; color: #A69280; font-size: 0.88rem;\">© 2026 Chocolate Artesanal de Ambato. Todos los derechos reservados. Elaborado con pasión y cacao fino de aroma.</div>\r\n</div>', 1, 'footer1', 0, NULL, NULL, NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":0,\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_modules_menu`
--

CREATE TABLE `lgi49_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_modules_menu`
--

INSERT INTO `lgi49_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_newsfeeds`
--

CREATE TABLE `lgi49_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_overrider`
--

CREATE TABLE `lgi49_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_postinstall_messages`
--

CREATE TABLE `lgi49_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_postinstall_messages`
--

INSERT INTO `lgi49_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 247, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(2, 247, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(3, 247, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1),
(4, 247, 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION', 'com_users', 1, 'action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_condition', '4.2.0', 1),
(5, 247, 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_TITLE', 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_DESCRIPTION', 'COM_JOOMLAUPDATE_POSTINSTALL_MSG_AUTOMATED_UPDATES_ACTION', 'com_joomlaupdate', 1, 'action', 'admin://components/com_joomlaupdate/postinstall/autoupdate.php', 'com_joomlaupdate_postinstall_autoupdate_action', 'admin://components/com_joomlaupdate/postinstall/autoupdate.php', 'com_joomlaupdate_postinstall_autoupdate_condition', '5.4.0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_privacy_consents`
--

CREATE TABLE `lgi49_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_privacy_requests`
--

CREATE TABLE `lgi49_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_redirect_links`
--

CREATE TABLE `lgi49_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_scheduler_logs`
--

CREATE TABLE `lgi49_scheduler_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `taskname` varchar(255) NOT NULL DEFAULT '',
  `tasktype` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `duration` decimal(5,3) NOT NULL,
  `jobid` int(10) UNSIGNED NOT NULL,
  `taskid` int(10) UNSIGNED NOT NULL,
  `exitcode` int(11) NOT NULL,
  `lastdate` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `nextdate` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_scheduler_logs`
--

INSERT INTO `lgi49_scheduler_logs` (`id`, `taskname`, `tasktype`, `duration`, `jobid`, `taskid`, `exitcode`, `lastdate`, `nextdate`) VALUES
(1, 'Session GC', 'Session Data Purge', 0.002, 2, 1, 0, '2026-11-14 23:10:27', '2026-11-15 23:10:27'),
(2, 'Update Notification', 'Joomla! Update Notification', 1.635, 3, 1, 0, '2026-11-14 23:15:28', '2026-11-15 23:15:28'),
(3, 'Session GC', 'Session Data Purge', 0.002, 2, 2, 0, '2026-11-21 03:18:19', '2026-11-22 03:18:19'),
(4, 'Update Notification', 'Joomla! Update Notification', 1.950, 3, 2, 0, '2026-11-21 03:22:58', '2026-11-22 03:22:58'),
(5, 'Session GC', 'Session Data Purge', 0.003, 2, 3, 0, '2026-11-22 04:43:40', '2026-11-23 04:43:41'),
(6, 'Update Notification', 'Joomla! Update Notification', 1.650, 3, 3, 0, '2026-11-22 04:43:46', '2026-11-23 04:43:46'),
(7, 'Session GC', 'Session Data Purge', 0.002, 2, 4, 0, '2026-11-26 02:10:19', '2026-11-27 02:10:19'),
(8, 'Update Notification', 'Joomla! Update Notification', 1.582, 3, 4, 0, '2026-11-26 02:11:56', '2026-11-27 02:11:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_scheduler_tasks`
--

CREATE TABLE `lgi49_scheduler_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_scheduler_tasks`
--

INSERT INTO `lgi49_scheduler_tasks` (`id`, `asset_id`, `title`, `type`, `execution_rules`, `cron_rules`, `state`, `last_exit_code`, `last_execution`, `next_execution`, `times_executed`, `times_failed`, `locked`, `priority`, `ordering`, `cli_exclusive`, `params`, `note`, `created`, `created_by`, `checked_out`, `checked_out_time`) VALUES
(1, 97, 'Rotate Logs', 'rotation.logs', '{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"13\",\"exec-time\":\"23:00\"}', '{\"type\":\"interval\",\"exp\":\"P30D\"}', 1, 0, NULL, '2026-12-13 23:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}', NULL, '2026-11-13 23:36:37', 723, NULL, NULL),
(2, 98, 'Session GC', 'session.gc', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"23:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, '2026-11-26 02:10:19', '2026-11-27 02:10:19', 4, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}', NULL, '2026-11-13 23:36:37', 723, NULL, NULL),
(3, 99, 'Update Notification', 'update.notification', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"23:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, '2026-11-26 02:11:56', '2026-11-27 02:11:56', 4, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}', NULL, '2026-11-13 23:36:37', 723, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_schemaorg`
--

CREATE TABLE `lgi49_schemaorg` (
  `id` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_schemas`
--

CREATE TABLE `lgi49_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_schemas`
--

INSERT INTO `lgi49_schemas` (`extension_id`, `version_id`) VALUES
(247, '6.2.0-2026-09-15'),
(255, '6.10.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_session`
--

CREATE TABLE `lgi49_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_session`
--

INSERT INTO `lgi49_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x316d7265613435347667676f69717167387662716a7337616465, 0, 1, 1795664258, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjY7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzk1NjY0MDM3O3M6NDoibGFzdCI7aToxNzk1NjY0MjI5O3M6Mzoibm93IjtpOjE3OTU2NjQyNTg7fXM6NToidG9rZW4iO3M6MzI6IjU4NWQ3ZmQxZTZmM2NiZDYxMjA3ODVjOTM1ZWMxNGI1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x66303374386968376761766f6f6f6b6a75766b6c347371316635, 0, 1, 1795664876, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzk1NjYzNzU2O3M6NDoibGFzdCI7aToxNzk1NjY0NzQ5O3M6Mzoibm93IjtpOjE3OTU2NjQ4NzU7fXM6NToidG9rZW4iO3M6MzI6ImJiNGNmMmY0MGRiODhmMTRkZTZiMzNjZGE0NDQ5NDBjIjtzOjc6ImNvdW50ZXIiO2k6MTc7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
(0x70693635376d39647061657366626572736d326a6f736e6e6f30, 0, 1, 1795663560, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjQ7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzk1NjYzMjY3O3M6NDoibGFzdCI7aToxNzk1NjYzNTQ1O3M6Mzoibm93IjtpOjE3OTU2NjM1NTk7fXM6NToidG9rZW4iO3M6MzI6IjJlMzAyYTcwYmVjNThjYWMxZjhjMzg2MTcwNmIwZGEyIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x73676261626f7432636a34626530646a333861716f6f6b6c3330, 0, 1, 1795664487, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjQ7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzk1NjY0Mzk2O3M6NDoibGFzdCI7aToxNzk1NjY0NDIxO3M6Mzoibm93IjtpOjE3OTU2NjQ0ODc7fXM6NToidG9rZW4iO3M6MzI6ImI5NDAzMTYzNmUxYWQ2Y2VkZDQ1ZTRmY2YzNzlhNjVmIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, ''),
(0x75323662723837677232666e30666c6564696b33673070303773, 0, 1, 1795664957, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjQ0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTc5NTY1OTAxODtzOjQ6Imxhc3QiO2k6MTc5NTY2NDg3NDtzOjM6Im5vdyI7aToxNzk1NjY0OTU3O31zOjU6InRva2VuIjtzOjMyOiIzYzg1N2VhY2Q4ODMyOGFlYTJiM2MzZDc2ZDFhOGZiNCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
(0x75647262686d72396c666a366135676c7631376a746576687131, 0, 1, 1795663851, 'joomla|s:700:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzk1NjYzODUxO3M6NDoibGFzdCI7aToxNzk1NjYzODUxO3M6Mzoibm93IjtpOjE3OTU2NjM4NTE7fXM6NToidG9rZW4iO3M6MzI6ImFhMmNlMWY4ODNiYjk3YzlkMjg5Njk4ZjEwNWRkYTFmIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_spmedia`
--

CREATE TABLE `lgi49_spmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `alt` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(2048) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `media_attr` varchar(5120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '{}',
  `extension` varchar(100) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder`
--

CREATE TABLE `lgi49_sppagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` longtext NOT NULL,
  `content` longtext DEFAULT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(3) NOT NULL DEFAULT 1,
  `catid` int(10) NOT NULL DEFAULT 0,
  `access` int(10) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL DEFAULT 0,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `attribs` varchar(5120) NOT NULL DEFAULT '[]',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_image` varchar(255) NOT NULL DEFAULT '',
  `og_description` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `hits` bigint(20) NOT NULL DEFAULT 0,
  `css` longtext NOT NULL,
  `version` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_sppagebuilder`
--

INSERT INTO `lgi49_sppagebuilder` (`id`, `asset_id`, `title`, `text`, `content`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `attribs`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`, `version`) VALUES
(1, 105, 'Inicio', '[{\"id\":\"1700000000000\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000000\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0},\"columns\":[{\"id\":\"1700000000001\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000001\",\"cssClassName\":\"col-md-12\"},\"addons\":[{\"id\":\"1700000000002\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000002\",\"title\":\"\",\"text\":\"<div id=\\\"inicio\\\" class=\\\"seccion-hero\\\" style=\\\"background-color: #F3E4D0; padding: 70px 0 80px 0; border-radius: 16px; margin-bottom: 45px; position: relative; overflow: hidden; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"row align-items-center\\\">\\n      <div class=\\\"col-lg-7 col-md-12 mb-4 mb-lg-0\\\">\\n        <div style=\\\"display: inline-block; background: rgba(184, 101, 73, 0.15); color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; padding: 6px 16px; border-radius: 50px; margin-bottom: 20px; border: 1px solid rgba(184, 101, 73, 0.3);\\\">\\n          TRADICIÓN CHOCOLATERA DESDE 1952\\n        </div>\\n        <h1 class=\\\"hero-titulo\\\" style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 3.4rem; font-weight: 700; color: #4A2E26; line-height: 1.15; margin-bottom: 22px;\\\">\\n          Chocolate Artesanal de Ambato\\n        </h1>\\n        <p class=\\\"hero-subtitulo\\\" style=\\\"font-family: \'DM Sans\', sans-serif; font-size: 1.25rem; color: #4A2E26; margin-bottom: 35px; line-height: 1.65; max-width: 600px;\\\">\\n          Elaborado con noble cacao ecuatoriano fino de aroma y el calor de nuestra serranía. Puro, aromático y 100% natural.\\n        </p>\\n        <div class=\\\"hero-botones\\\" style=\\\"display: flex; gap: 16px; flex-wrap: wrap;\\\">\\n          <a href=\\\"#productos\\\" class=\\\"btn-cafe\\\" style=\\\"background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;\\\">\\n            Ver productos\\n          </a>\\n          <a href=\\\"#historia\\\" class=\\\"btn-dorado-outline\\\" style=\\\"border: 2px solid #B86549; color: #4A2E26; padding: 12px 32px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;\\\">\\n            Nuestra historia\\n          </a>\\n        </div>\\n      </div>\\n      <div class=\\\"col-lg-5 col-md-12 text-center\\\">\\n        <div class=\\\"hero-imagen-wrapper\\\" style=\\\"position: relative;\\\">\\n          <picture>\\n            <source srcset=\\\"images/hero_chocolate_taza.webp\\\" type=\\\"image/webp\\\">\\n            <img \\n              src=\\\"images/hero_chocolate_taza.jpg\\\" \\n              alt=\\\"Taza humeante de chocolate artesanal ambateño con espuma de molinillo\\\" \\n              class=\\\"hero-imagen img-fluid\\\" \\n              style=\\\"width: 100%; border-radius: 16px; box-shadow: 0 18px 40px rgba(74, 46, 38, 0.22); border: 3px solid rgba(255, 255, 255, 0.7); object-fit: cover; max-height: 420px;\\\"\\n            />\\n          </picture>\\n        </div>\\n      </div>\\n    </div>\\n  </div>\\n</div>\"}}]}]},{\"id\":\"1700000000010\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000010\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0},\"columns\":[{\"id\":\"1700000000011\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000011\",\"cssClassName\":\"col-md-12\"},\"addons\":[{\"id\":\"1700000000012\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000012\",\"title\":\"\",\"text\":\"<section id=\\\"productos\\\" class=\\\"ambato-products-intro\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"ambato-products-heading\\\">\\n      <span>Selección exclusiva</span>\\n      <h2>Nuestras especialidades de cacao</h2>\\n      <p>Descubre las novedades y los sabores artesanales elaborados con cacao fino de aroma ecuatoriano y recetas familiares desde 1952.</p>\\n    </div>\\n  </div>\\n</section>\"}},{\"id\":\"1700000000013\",\"name\":\"module\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000013\",\"title\":\"\",\"heading_selector\":\"h3\",\"module_type\":\"module\",\"id\":113,\"class\":\"ambato-products-module\"}}]}]},{\"id\":\"1700000000020\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000020\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0},\"columns\":[{\"id\":\"1700000000021\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000021\",\"cssClassName\":\"col-md-12\"},\"addons\":[{\"id\":\"1700000000022\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000022\",\"title\":\"\",\"text\":\"<div id=\\\"historia\\\" class=\\\"seccion-historia\\\" style=\\\"background-color: #FAF5EE; padding: 80px 0 90px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"row align-items-center\\\">\\n      <div class=\\\"col-lg-6 col-md-12 mb-4 mb-lg-0 text-center\\\">\\n        <picture>\\n          <source srcset=\\\"images/historia_paila_artesanal.webp\\\" type=\\\"image/webp\\\">\\n          <img \\n            src=\\\"images/historia_paila_artesanal.jpg\\\" \\n            alt=\\\"Producción artesanal de chocolate en paila de cobre tradicional en Ambato\\\" \\n            class=\\\"img-fluid historia-imagen\\\" \\n            style=\\\"width: 100%; border-radius: 16px; box-shadow: 0 16px 36px rgba(74, 46, 38, 0.18); border: 2px solid rgba(184, 101, 73, 0.3); object-fit: cover; max-height: 440px;\\\"\\n          />\\n        </picture>\\n      </div>\\n      <div class=\\\"col-lg-6 col-md-12\\\">\\n        <div class=\\\"historia-texto\\\" style=\\\"padding-left: 20px;\\\">\\n          <div style=\\\"color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 12px;\\\">\\n            Herencia y Pasión\\n          </div>\\n          <h2 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.6rem; color: #4A2E26; margin-bottom: 22px; line-height: 1.2;\\\">\\n            Desde 1952 en el corazón de Ambato\\n          </h2>\\n          <p style=\\\"font-size: 1.12rem; line-height: 1.8; color: #4A2E26; margin-bottom: 20px;\\\">\\n            Lo que comenzó como una receta entrañable en los fogones familiares de Ambato se convirtió en la esencia que acompaña las mañanas de los hogares ecuatorianos. Durante más de siete décadas hemos preservado el tostado lento a leña y la molienda tradicional en piedra.\\n          </p>\\n          <p style=\\\"font-size: 1.05rem; line-height: 1.7; color: #4A2E26; margin-bottom: 30px;\\\">\\n            Cada tableta encierra el respeto por nuestros agricultores locales y el orgullo de ofrecer un chocolate auténtico, libre de grasas añadidas y con el inconfundible aroma del cacao nacional de nuestra serranía.\\n          </p>\\n          <a href=\\\"#contacto\\\" class=\\\"btn-cafe\\\" style=\\\"background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block;\\\">\\n            Conoce más y Contáctanos\\n          </a>\\n        </div>\\n      </div>\\n    </div>\\n  </div>\\n</div>\"}}]}]},{\"id\":\"1700000000030\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000030\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0},\"columns\":[{\"id\":\"1700000000031\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000031\",\"cssClassName\":\"col-md-12\"},\"addons\":[{\"id\":\"1700000000032\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000032\",\"title\":\"\",\"text\":\"<div id=\\\"beneficios\\\" class=\\\"seccion-beneficios\\\" style=\\\"background-color: #F3E4D0; padding: 75px 0 85px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"text-center mb-5\\\">\\n      <div style=\\\"color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 10px;\\\">\\n        Nuestros Valores\\n      </div>\\n      <h2 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.4rem; color: #4A2E26;\\\">\\n        ¿Por qué elegir nuestro chocolate?\\n      </h2>\\n    </div>\\n    <div class=\\\"row\\\">\\n      <!-- Beneficio 1: 100% Artesanal -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z\\\"></path>\\n            </svg>\\n          </div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">100% Artesanal</h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Procesos ancestrales en paila de cobre que conservan intactas las notas organolépticas del grano puro.</p>\\n        </div>\\n      </div>\\n\\n      <!-- Beneficio 2: Beneficios Naturales -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z\\\"></path>\\n            </svg>\\n          </div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">Beneficios Naturales</h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Rico en antioxidantes, magnesio y teobromina que aportan energía saludable sin conservantes químicos.</p>\\n        </div>\\n      </div>\\n\\n      <!-- Beneficio 3: Comercio Justo -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2\\\"></path>\\n              <circle cx=\\\"9\\\" cy=\\\"7\\\" r=\\\"4\\\"></circle>\\n              <path d=\\\"M23 21v-2a4 4 0 0 0-3-3.87\\\"></path>\\n              <path d=\\\"M16 3.13a4 4 0 0 1 0 7.75\\\"></path>\\n            </svg>\\n          </div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">Comercio Justo</h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Trato directo y pago digno a familias productoras de cacao fino de aroma en el campo ecuatoriano.</p>\\n        </div>\\n      </div>\\n    </div>\\n  </div>\\n</div>\"}}]}]},{\"id\":\"1700000000040\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000040\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0},\"columns\":[{\"id\":\"1700000000041\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000041\",\"cssClassName\":\"col-md-12\"},\"addons\":[{\"id\":\"1700000000042\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000042\",\"title\":\"\",\"text\":\"<div id=\\\"contacto\\\" class=\\\"seccion-contacto\\\" style=\\\"background-color: #4A2E26; color: #F3E4D0; padding: 70px 30px 40px 30px; border-radius: 16px; border: 1px solid rgba(184, 101, 73, 0.3);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"row\\\">\\n      <div class=\\\"col-lg-4 col-md-6 mb-4\\\">\\n        <div style=\\\"margin-bottom: 20px;\\\">\\n          <img src=\\\"images/logo_chocolate_el_ambateno.png\\\" alt=\\\"Chocolate El Ambateño\\\" style=\\\"max-height: 78px; padding: 4px; border-radius: 6px;\\\" />\\n        </div>\\n        <p style=\\\"color: #E2D0BE; line-height: 1.7; font-size: 0.98rem;\\\">\\n          Tradición chocolatera artesanal desde 1952. Llevamos el auténtico aroma, pureza y calidez del cacao ecuatoriano a cada rincón del país.\\n        </p>\\n      </div>\\n\\n      <div class=\\\"col-lg-4 col-md-6 mb-4\\\">\\n        <h4 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 18px; border-bottom: 2px solid #B86549; display: inline-block; padding-bottom: 6px;\\\">\\n          Contáctanos\\n        </h4>\\n        <p style=\\\"color: #E2D0BE; margin-bottom: 10px;\\\">\\n          <strong>📍 Ubicación:</strong> Ambato, Provincia de Tungurahua, Ecuador\\n        </p>\\n        <p style=\\\"color: #E2D0BE; margin-bottom: 10px;\\\">\\n          <strong>📞 Teléfono:</strong> <a href=\\\"tel:+593994851768\\\" style=\\\"color: #B86549; text-decoration: none; font-weight: 600;\\\">+593 99 485 1768</a>\\n        </p>\\n        <p style=\\\"color: #E2D0BE; margin-bottom: 10px;\\\">\\n          <strong>💬 WhatsApp:</strong> <a href=\\\"https://wa.me/593994851768\\\" target=\\\"_blank\\\" style=\\\"color: #B86549; text-decoration: none; font-weight: 600;\\\">+593 99 485 1768</a>\\n        </p>\\n        <p style=\\\"color: #E2D0BE;\\\">\\n          <strong>🚚 Envíos:</strong> Cobertura a nivel nacional (Quito, Guayaquil, Cuenca y todo el Ecuador)\\n        </p>\\n      </div>\\n\\n      <div class=\\\"col-lg-4 col-md-12 mb-4\\\">\\n        <h4 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 18px; border-bottom: 2px solid #B86549; display: inline-block; padding-bottom: 6px;\\\">\\n          Horario de Atención\\n        </h4>\\n        <p style=\\\"color: #E2D0BE; margin-bottom: 8px;\\\">\\n          <strong>Lunes a Sábado:</strong> 08:30 - 18:00\\n        </p>\\n        <p style=\\\"color: #E2D0BE; margin-bottom: 22px;\\\">\\n          <strong>Domingos:</strong> Pedidos y atención directa por WhatsApp\\n        </p>\\n        <a href=\\\"https://wa.me/593994851768?text=Hola%2C+deseo+realizar+una+consulta+o+pedido+de+Chocolate+Artesanal+de+Ambato.\\\" target=\\\"_blank\\\" class=\\\"btn-dorado-agregar\\\" style=\\\"max-width: 260px; font-size: 1rem;\\\">\\n          Escríbenos a WhatsApp\\n        </a>\\n      </div>\\n    </div>\\n\\n    <div class=\\\"footer-bottom\\\" style=\\\"margin-top: 40px; padding-top: 24px; border-top: 1px solid rgba(245, 235, 221, 0.2); text-align: center; color: rgba(245, 235, 221, 0.75); font-size: 0.92rem;\\\">\\n      <p style=\\\"margin: 0;\\\">© 2026 Chocolate Artesanal de Ambato. Todos los derechos reservados. Elaborado con pasión y cacao fino de aroma.</p>\\n    </div>\\n  </div>\\n</div>\"}}]}]}]', '[{\"id\":\"1700000000000\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000000\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0,\"background_type\":\"none\",\"fit_columns\":{\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true}},\"columns\":[{\"id\":\"1700000000001\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000001\",\"cssClassName\":\"col-md-12\",\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}},\"addons\":[{\"id\":\"1700000000002\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000002\",\"title\":\"\",\"text\":\"<div id=\\\"inicio\\\" class=\\\"seccion-hero\\\" style=\\\"background-color: #F3E4D0; padding: 70px 0 80px 0; border-radius: 16px; margin-bottom: 45px; position: relative; overflow: hidden; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"row align-items-center\\\">\\n      <div class=\\\"col-lg-7 col-md-12 mb-4 mb-lg-0\\\">\\n        <div style=\\\"display: inline-block; background: rgba(184, 101, 73, 0.15); color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; padding: 6px 16px; border-radius: 50px; margin-bottom: 20px; border: 1px solid rgba(184, 101, 73, 0.3);\\\">\\n          TRADICI\\u00d3N CHOCOLATERA DESDE 1952\\n        <\\/div>\\n        <h1 class=\\\"hero-titulo\\\" style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 3.4rem; font-weight: 700; color: #4A2E26; line-height: 1.15; margin-bottom: 22px;\\\">\\n          Chocolate Artesanal de Ambato\\n        <\\/h1>\\n        <p class=\\\"hero-subtitulo\\\" style=\\\"font-family: \'DM Sans\', sans-serif; font-size: 1.25rem; color: #4A2E26; margin-bottom: 35px; line-height: 1.65; max-width: 600px;\\\">\\n          Elaborado con noble cacao ecuatoriano fino de aroma y el calor de nuestra serran\\u00eda. Puro, arom\\u00e1tico y 100% natural.\\n        <\\/p>\\n        <div class=\\\"hero-botones\\\" style=\\\"display: flex; gap: 16px; flex-wrap: wrap;\\\">\\n          <a href=\\\"#productos\\\" class=\\\"btn-cafe\\\" style=\\\"background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;\\\">\\n            Ver productos\\n          <\\/a>\\n          <a href=\\\"#historia\\\" class=\\\"btn-dorado-outline\\\" style=\\\"border: 2px solid #B86549; color: #4A2E26; padding: 12px 32px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block; font-size: 1.05rem;\\\">\\n            Nuestra historia\\n          <\\/a>\\n        <\\/div>\\n      <\\/div>\\n      <div class=\\\"col-lg-5 col-md-12 text-center\\\">\\n        <div class=\\\"hero-imagen-wrapper\\\" style=\\\"position: relative;\\\">\\n          <picture>\\n            <source srcset=\\\"images\\/hero_chocolate_taza.webp\\\" type=\\\"image\\/webp\\\">\\n            <img \\n              src=\\\"images\\/hero_chocolate_taza.jpg\\\" \\n              alt=\\\"Taza humeante de chocolate artesanal ambate\\u00f1o con espuma de molinillo\\\" \\n              class=\\\"hero-imagen img-fluid\\\" \\n              style=\\\"width: 100%; border-radius: 16px; box-shadow: 0 18px 40px rgba(74, 46, 38, 0.22); border: 3px solid rgba(255, 255, 255, 0.7); object-fit: cover; max-height: 420px;\\\"\\n            \\/>\\n          <\\/picture>\\n        <\\/div>\\n      <\\/div>\\n    <\\/div>\\n  <\\/div>\\n<\\/div>\",\"text_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":false,\"italic\":false,\"underline\":false,\"weight\":\"\",\"type\":\"google\"},\"title_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":\"\",\"italic\":\"\",\"underline\":\"\",\"weight\":\"\",\"type\":\"google\"}}}],\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}]},{\"id\":\"1700000000010\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000010\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0,\"background_type\":\"none\",\"fit_columns\":{\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true}},\"columns\":[{\"id\":\"1700000000011\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000011\",\"cssClassName\":\"col-md-12\",\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}},\"addons\":[{\"id\":\"1700000000012\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000012\",\"title\":\"\",\"text\":\"<section id=\\\"productos\\\" class=\\\"ambato-products-intro\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"ambato-products-heading\\\">\\n      <span>Selecci\\u00f3n exclusiva<\\/span>\\n      <h2>Nuestras especialidades de cacao<\\/h2>\\n      <p>Descubre las novedades y los sabores artesanales elaborados con cacao fino de aroma ecuatoriano y recetas familiares desde 1952.<\\/p>\\n    <\\/div>\\n  <\\/div>\\n<\\/section>\",\"text_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":false,\"italic\":false,\"underline\":false,\"weight\":\"\",\"type\":\"google\"},\"title_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":\"\",\"italic\":\"\",\"underline\":\"\",\"weight\":\"\",\"type\":\"google\"}}},{\"id\":\"1700000000013\",\"name\":\"module\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000013\",\"title\":\"\",\"heading_selector\":\"h3\",\"module_type\":\"module\",\"id\":113,\"class\":\"ambato-products-module\",\"title_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":\"\",\"italic\":\"\",\"underline\":\"\",\"weight\":\"\",\"type\":\"google\"}}}],\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}]},{\"id\":\"1700000000020\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000020\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0,\"background_type\":\"none\",\"fit_columns\":{\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true}},\"columns\":[{\"id\":\"1700000000021\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000021\",\"cssClassName\":\"col-md-12\",\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}},\"addons\":[{\"id\":\"1700000000022\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000022\",\"title\":\"\",\"text\":\"<div id=\\\"historia\\\" class=\\\"seccion-historia\\\" style=\\\"background-color: #FAF5EE; padding: 80px 0 90px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"row align-items-center\\\">\\n      <div class=\\\"col-lg-6 col-md-12 mb-4 mb-lg-0 text-center\\\">\\n        <picture>\\n          <source srcset=\\\"images\\/historia_paila_artesanal.webp\\\" type=\\\"image\\/webp\\\">\\n          <img \\n            src=\\\"images\\/historia_paila_artesanal.jpg\\\" \\n            alt=\\\"Producci\\u00f3n artesanal de chocolate en paila de cobre tradicional en Ambato\\\" \\n            class=\\\"img-fluid historia-imagen\\\" \\n            style=\\\"width: 100%; border-radius: 16px; box-shadow: 0 16px 36px rgba(74, 46, 38, 0.18); border: 2px solid rgba(184, 101, 73, 0.3); object-fit: cover; max-height: 440px;\\\"\\n          \\/>\\n        <\\/picture>\\n      <\\/div>\\n      <div class=\\\"col-lg-6 col-md-12\\\">\\n        <div class=\\\"historia-texto\\\" style=\\\"padding-left: 20px;\\\">\\n          <div style=\\\"color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 12px;\\\">\\n            Herencia y Pasi\\u00f3n\\n          <\\/div>\\n          <h2 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.6rem; color: #4A2E26; margin-bottom: 22px; line-height: 1.2;\\\">\\n            Desde 1952 en el coraz\\u00f3n de Ambato\\n          <\\/h2>\\n          <p style=\\\"font-size: 1.12rem; line-height: 1.8; color: #4A2E26; margin-bottom: 20px;\\\">\\n            Lo que comenz\\u00f3 como una receta entra\\u00f1able en los fogones familiares de Ambato se convirti\\u00f3 en la esencia que acompa\\u00f1a las ma\\u00f1anas de los hogares ecuatorianos. Durante m\\u00e1s de siete d\\u00e9cadas hemos preservado el tostado lento a le\\u00f1a y la molienda tradicional en piedra.\\n          <\\/p>\\n          <p style=\\\"font-size: 1.05rem; line-height: 1.7; color: #4A2E26; margin-bottom: 30px;\\\">\\n            Cada tableta encierra el respeto por nuestros agricultores locales y el orgullo de ofrecer un chocolate aut\\u00e9ntico, libre de grasas a\\u00f1adidas y con el inconfundible aroma del cacao nacional de nuestra serran\\u00eda.\\n          <\\/p>\\n          <a href=\\\"#contacto\\\" class=\\\"btn-cafe\\\" style=\\\"background-color: #4A2E26; color: #F3E4D0; padding: 14px 34px; border-radius: 8px; font-weight: 600; text-decoration: none; display: inline-block;\\\">\\n            Conoce m\\u00e1s y Cont\\u00e1ctanos\\n          <\\/a>\\n        <\\/div>\\n      <\\/div>\\n    <\\/div>\\n  <\\/div>\\n<\\/div>\",\"text_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":false,\"italic\":false,\"underline\":false,\"weight\":\"\",\"type\":\"google\"},\"title_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":\"\",\"italic\":\"\",\"underline\":\"\",\"weight\":\"\",\"type\":\"google\"}}}],\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}]},{\"id\":\"1700000000030\",\"layout\":\"12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000030\",\"title\":\"\",\"cssClassName\":\"\",\"fullscreen\":0,\"background_type\":\"none\",\"fit_columns\":{\"xl\":true,\"lg\":true,\"md\":true,\"sm\":true,\"xs\":true}},\"columns\":[{\"id\":\"1700000000031\",\"class_name\":\"col-md-12\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000031\",\"cssClassName\":\"col-md-12\",\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}},\"addons\":[{\"id\":\"1700000000032\",\"name\":\"text_block\",\"visibility\":true,\"settings\":{\"dynamicId\":\"1700000000032\",\"title\":\"\",\"text\":\"<div id=\\\"beneficios\\\" class=\\\"seccion-beneficios\\\" style=\\\"background-color: #F3E4D0; padding: 75px 0 85px 0; border-radius: 16px; margin-bottom: 45px; border: 1px solid rgba(184, 101, 73, 0.2);\\\">\\n  <div class=\\\"container\\\">\\n    <div class=\\\"text-center mb-5\\\">\\n      <div style=\\\"color: #B86549; font-family: \'DM Sans\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 10px;\\\">\\n        Nuestros Valores\\n      <\\/div>\\n      <h2 style=\\\"font-family: \'DM Serif Display\', Georgia, serif; font-size: 2.4rem; color: #4A2E26;\\\">\\n        \\u00bfPor qu\\u00e9 elegir nuestro chocolate?\\n      <\\/h2>\\n    <\\/div>\\n    <div class=\\\"row\\\">\\n      <!-- Beneficio 1: 100% Artesanal -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z\\\"><\\/path>\\n            <\\/svg>\\n          <\\/div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">100% Artesanal<\\/h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Procesos ancestrales en paila de cobre que conservan intactas las notas organol\\u00e9pticas del grano puro.<\\/p>\\n        <\\/div>\\n      <\\/div>\\n\\n      <!-- Beneficio 2: Beneficios Naturales -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z\\\"><\\/path>\\n            <\\/svg>\\n          <\\/div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">Beneficios Naturales<\\/h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Rico en antioxidantes, magnesio y teobromina que aportan energ\\u00eda saludable sin conservantes qu\\u00edmicos.<\\/p>\\n        <\\/div>\\n      <\\/div>\\n\\n      <!-- Beneficio 3: Comercio Justo -->\\n      <div class=\\\"col-lg-4 col-md-4 mb-4\\\">\\n        <div class=\\\"caja-beneficio\\\">\\n          <div class=\\\"icono-beneficio-svg\\\">\\n            <svg viewBox=\\\"0 0 24 24\\\" width=\\\"44\\\" height=\\\"44\\\" fill=\\\"none\\\" stroke=\\\"currentColor\\\" stroke-width=\\\"2\\\" stroke-linecap=\\\"round\\\" stroke-linejoin=\\\"round\\\">\\n              <path d=\\\"M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2\\\"><\\/path>\\n              <circle cx=\\\"9\\\" cy=\\\"7\\\" r=\\\"4\\\"><\\/circle>\\n              <path d=\\\"M23 21v-2a4 4 0 0 0-3-3.87\\\"><\\/path>\\n              <path d=\\\"M16 3.13a4 4 0 0 1 0 7.75\\\"><\\/path>\\n            <\\/svg>\\n          <\\/div>\\n          <h4 style=\\\"font-family: \'DM Serif Display\', serif; font-size: 1.35rem; color: #4A2E26; margin-bottom: 12px;\\\">Comercio Justo<\\/h4>\\n          <p style=\\\"color: #4A2E26; font-size: 0.98rem; line-height: 1.6;\\\">Trato directo y pago digno a familias productoras de cacao fino de aroma en el campo ecuatoriano.<\\/p>\\n        <\\/div>\\n      <\\/div>\\n    <\\/div>\\n  <\\/div>\\n<\\/div>\",\"text_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":false,\"italic\":false,\"underline\":false,\"weight\":\"\",\"type\":\"google\"},\"title_typography\":{\"font\":\"\",\"size\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"line_height\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"letter_spacing\":{\"xl\":{\"value\":\"\",\"unit\":\"px\"},\"lg\":{\"value\":\"\",\"unit\":\"px\"},\"md\":{\"value\":\"\",\"unit\":\"px\"},\"sm\":{\"value\":\"\",\"unit\":\"px\"},\"xs\":{\"value\":\"\",\"unit\":\"px\"}},\"uppercase\":\"\",\"italic\":\"\",\"underline\":\"\",\"weight\":\"\",\"type\":\"google\"}}}],\"width\":{\"xl\":\"100%\",\"lg\":\"100%\",\"md\":\"100%\",\"sm\":\"100%\",\"xs\":\"100%\"}}]}]', 'com_sppagebuilder', 'page', 0, 1, 1, 0, 1, 1, '2026-11-14 00:54:10', 723, '2026-11-21 04:51:35', 723, 0, NULL, '{\"meta_description\":\"\",\"meta_keywords\":\"\",\"robots\":\"\",\"seo_spacer\":\"\",\"author\":\"\",\"og_type\":\"\",\"schema\":{\"schemaType\":\"None\"}}', '', '', '', '*', 476, '', '6.10.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_addonlist`
--

CREATE TABLE `lgi49_sppagebuilder_addonlist` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ordering` int(5) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_favorite` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_addons`
--

CREATE TABLE `lgi49_sppagebuilder_addons` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `code` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_assets`
--

CREATE TABLE `lgi49_sppagebuilder_assets` (
  `id` bigint(20) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `assets` text NOT NULL,
  `css_path` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_collections`
--

CREATE TABLE `lgi49_sppagebuilder_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_collection_fields`
--

CREATE TABLE `lgi49_sppagebuilder_collection_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT 'title, alias, text, rich-text, image, video, datetime, link, number, switch, color, option, file, checkbox, reference, multi-reference, divider, and more',
  `description` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `max_length` int(10) UNSIGNED DEFAULT NULL,
  `min_length` int(10) UNSIGNED DEFAULT NULL,
  `default_value` text DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `reference_collection_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_textarea` tinyint(4) NOT NULL DEFAULT 0,
  `is_single_location` tinyint(4) NOT NULL DEFAULT 0,
  `is_disabled` tinyint(4) NOT NULL DEFAULT 0,
  `show_time` tinyint(4) NOT NULL DEFAULT 0,
  `file_extensions` varchar(300) DEFAULT NULL COMMENT 'Comma separated extensions for file type',
  `number_format` varchar(100) DEFAULT NULL COMMENT 'Available values: decimal, integer. NULL for allow both.',
  `allow_negative` tinyint(4) NOT NULL DEFAULT 0,
  `number_unit` varchar(100) DEFAULT NULL COMMENT 'Available values: percent, degree. NULL for no unit.',
  `number_step` decimal(13,2) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_collection_imports`
--

CREATE TABLE `lgi49_sppagebuilder_collection_imports` (
  `id` bigint(20) NOT NULL,
  `data` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_collection_items`
--

CREATE TABLE `lgi49_sppagebuilder_collection_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '*',
  `created` datetime NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_collection_item_values`
--

CREATE TABLE `lgi49_sppagebuilder_collection_item_values` (
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `value` text DEFAULT NULL,
  `reference_item_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'The reference item id from the #__sppagebuilder_collection_items table.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_colors`
--

CREATE TABLE `lgi49_sppagebuilder_colors` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `colors` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_comments`
--

CREATE TABLE `lgi49_sppagebuilder_comments` (
  `id` bigint(20) NOT NULL,
  `source_type` varchar(50) NOT NULL DEFAULT 'article',
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `content` text NOT NULL,
  `replies` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_fonts`
--

CREATE TABLE `lgi49_sppagebuilder_fonts` (
  `id` bigint(20) NOT NULL,
  `family_name` varchar(100) NOT NULL DEFAULT '',
  `data` text DEFAULT NULL,
  `type` enum('google','local') DEFAULT 'google',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_image_shapes`
--

CREATE TABLE `lgi49_sppagebuilder_image_shapes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `shape` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_integrations`
--

CREATE TABLE `lgi49_sppagebuilder_integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL DEFAULT '',
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_languages`
--

CREATE TABLE `lgi49_sppagebuilder_languages` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` varchar(255) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_likes`
--

CREATE TABLE `lgi49_sppagebuilder_likes` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_presets`
--

CREATE TABLE `lgi49_sppagebuilder_presets` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `addon_name` varchar(255) NOT NULL DEFAULT '',
  `preset` mediumtext NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_sections`
--

CREATE TABLE `lgi49_sppagebuilder_sections` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `section` mediumtext NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_typography`
--

CREATE TABLE `lgi49_sppagebuilder_typography` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `typography` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_sppagebuilder_versions`
--

CREATE TABLE `lgi49_sppagebuilder_versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  `css` longtext NOT NULL,
  `attribs` varchar(5120) NOT NULL DEFAULT '[]',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_image` varchar(255) NOT NULL DEFAULT '',
  `og_description` varchar(255) NOT NULL DEFAULT '',
  `note` text DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_tags`
--

CREATE TABLE `lgi49_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_tags`
--

INSERT INTO `lgi49_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 723, '2026-11-13 23:36:36', '', 723, '2026-11-13 23:36:36', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_template_overrides`
--

CREATE TABLE `lgi49_template_overrides` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_template_styles`
--

CREATE TABLE `lgi49_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_template_styles`
--

INSERT INTO `lgi49_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'cassiopeia_extended', 0, '0', 'Cassiopeia Extended - Default', 0, 'cassiopeia', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":\"0\",\"backTop\":\"0\",\"colorSettings\":\"0\",\"headerbg\":\"rgb(193, 205, 207)\",\"headercolor\":\"rgb(23, 23, 23)\",\"bodybg\":\"rgb(254, 254, 254)\",\"bodycolor\":\"rgb(23, 23, 23)\",\"linkcolor\":\"rgb(29, 121, 137)\",\"linkcolorh\":\"rgb(14, 59, 67)\",\"btnbg\":\"rgb(206, 60, 55)\",\"btnbgh\":\"rgb(131, 35, 32)\",\"btncolor\":\"rgb(254, 254, 254)\",\"btncolorh\":\"rgb(254, 254, 254)\",\"footerbg\":\"rgb(29, 121, 137)\",\"footercolor\":\"rgb(254, 254, 254)\",\"fontSettings\":\"0\",\"bodysize\":\"1\",\"h1size\":\"2\",\"h2size\":\"1.7\",\"h3size\":\"1.5\"}');
INSERT INTO `lgi49_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(13, 'shaper_helixultimate', 0, '1', 'shaper_helixultimate - Default', 0, '', '{\"logo_type\":\"image\",\"logo_image\":\"images\\/1000140684-removebg-preview.png\",\"logo_height\":\"52px\",\"logo_height_sm\":\"44px\",\"logo_height_xs\":\"38px\",\"retina_logo\":\"\",\"mobile_logo\":\"images\\/logo_chocolate_ambateno.svg\",\"sticky_logo\":\"\",\"mobile_sticky_logo\":\"\",\"sticky_logo_height\":\"\",\"logo_alt\":\"\",\"logo_custom_link\":\"\",\"logo_text\":\"\",\"logo_slogan\":\"\",\"favicon\":\"\",\"predefined_header\":\"1\",\"header_style\":\"style-1\",\"header_height\":\"60px\",\"header_height_sm\":\"\",\"header_height_xs\":\"50px\",\"enable_search\":\"1\",\"sticky_header\":\"1\",\"sticky_offset\":\"\",\"loader_type\":\"circle\",\"container_max_width\":\"\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_position\":\"0 0\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"\\u00a9 {year} Your Company. Designed By JoomShaper\",\"goto_top\":\"1\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"default\",\"facebook\":\"https:\\/\\/facebook.com\\/chocolateambateno\",\"twitter\":\"\",\"pinterest\":\"\",\"linkedin\":\"\",\"dribbble\":\"\",\"instagram\":\"https:\\/\\/instagram.com\\/chocolateambateno\",\"tiktok\":\"\",\"behance\":\"\",\"youtube\":\"\",\"flickr\":\"\",\"whatsapp\":\"593962660236\",\"vk\":\"\",\"custom\":\"\",\"contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_load_pos\":\"default\",\"contact_phone\":\"+593 96 266 0236\",\"contact_mobile\":\"+593 96 266 0236\",\"contact_email\":\"contacto@chocolateambateno.ec\",\"contact_time\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_content\":\"Coming soon content\",\"comingsoon_date\":\"2025-01-01 00:00:00\",\"comingsoon_logo\":\"\",\"comingsoon_bg_image\":\"\",\"error_logo\":\"\",\"error_bg\":\"\",\"presets-data\":\"{\\\"preset1\\\":{\\\"label\\\":\\\"Preset 1\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#0345BF\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#0345BF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#0345BF\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_text_active_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0345BF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\",\\\"preset\\\":\\\"preset1\\\"}},\\\"preset2\\\":{\\\"label\\\":\\\"Preset 2\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#ec430f\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset2\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ec430f\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ec430f\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_text_active_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ec430f\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset3\\\":{\\\"label\\\":\\\"Preset 3\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#0fa89d\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"bg_color\\\":\\\"#ffffff\\\",\\\"link_color\\\":\\\"#2C5F2D\\\",\\\"link_hover_color\\\":\\\"#fff\\\",\\\"header_bg_color\\\":\\\"#ffffff\\\",\\\"topbar_bg_color\\\":\\\"#03a83a\\\",\\\"topbar_text_color\\\":\\\"#ffffff\\\",\\\"logo_text_color\\\":\\\"#2C5F2D\\\",\\\"menu_text_color\\\":\\\"#03a83a\\\",\\\"menu_text_hover_color\\\":\\\"#030000\\\",\\\"menu_text_active_color\\\":\\\"#063803\\\",\\\"menu_dropdown_bg_color\\\":\\\"#2C5F2D\\\",\\\"menu_dropdown_text_color\\\":\\\"#2C5F2D\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#2C5F2D\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#2C5F2D\\\",\\\"footer_bg_color\\\":\\\"#2C5F2D\\\",\\\"footer_text_color\\\":\\\"#2C5F2D\\\",\\\"footer_link_color\\\":\\\"#2C5F2D\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset4\\\":{\\\"label\\\":\\\"Preset 4\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#4943ac\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset4\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#4943ac\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#4943ac\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_text_active_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#4943ac\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset5\\\":{\\\"label\\\":\\\"Preset 5\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#00aeef\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset5\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#00aeef\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#00aeef\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_text_active_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#00aeef\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset6\\\":{\\\"label\\\":\\\"Preset 6\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#f68e13\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset6\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#f68e13\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#f68e13\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_text_active_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#f68e13\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset7\\\":{\\\"label\\\":\\\"Preset 7\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#2ba84a\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset7\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#2ba84a\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#2ba84a\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_text_active_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#2ba84a\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset8\\\":{\\\"label\\\":\\\"Preset 8\\\",\\\"description\\\":\\\"\\\",\\\"default\\\":\\\"#ed145b\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset8\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ed145b\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ed145b\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_text_active_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ed145b\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}}}\",\"preset\":\"{\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_text_active_color\\\":\\\"#ec430f\\\",\\\"menu_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"logo_text_color\\\":\\\"#ec430f\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"link_color\\\":\\\"#ec430f\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset2\\\"}\",\"topbar_bg_color\":\"#3b2314\",\"topbar_text_color\":\"#f5ebdd\",\"header_bg_color\":\"#f5ebdd\",\"logo_text_color\":\"#2b2b2b\",\"menu_text_color\":\"#3b2314\",\"menu_text_hover_color\":\"#c19a3d\",\"menu_text_active_color\":\"#c19a3d\",\"menu_dropdown_bg_color\":\"#ffffff\",\"menu_dropdown_text_color\":\"#252525\",\"menu_dropdown_text_hover_color\":\"#0345bf\",\"menu_dropdown_text_active_color\":\"#0345bf\",\"offcanvas_menu_icon_color\":\"#000000\",\"offcanvas_menu_bg_color\":\"#ffffff\",\"offcanvas_menu_items_and_items_color\":\"#252525\",\"offcanvas_menu_active_menu_item_color\":\"#252525\",\"text_color\":\"#252525\",\"bg_color\":\"#ffffff\",\"link_color\":\"#0345bf\",\"link_hover_color\":\"#044cd0\",\"footer_bg_color\":\"#171717\",\"footer_text_color\":\"#ffffff\",\"footer_link_color\":\"#a2a2a2\",\"footer_link_hover_color\":\"#ffffff\",\"name\":\"\",\"custom_class\":\"\",\"padding\":\"\",\"margin\":\"\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"hide_on_ex_large_desktop\\\":0,\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"background_image\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"name\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"hide_mobile\\\":1,\\\"hide_large_mobile\\\":1,\\\"hide_tablet\\\":0,\\\"hide_small_desktop\\\":0,\\\"hide_desktop\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":12,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"title\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"4+4+4\\\",\\\"settings\\\":{\\\"name\\\":\\\"Main Body\\\",\\\"background_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":4,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"left\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":4,\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"column_type\\\":1}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":4,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"right\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3+3+3+3\\\",\\\"settings\\\":{\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"hide_on_ex_large_desktop\\\":0,\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"background_position\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"name\\\":\\\"Bottom\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":3,\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom1\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":3,\\\"column_type\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom3\\\",\\\"custom_class\\\":\\\"\\\",\\\"xxl_col\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0,\\\"hide_on_ex_large_desktop\\\":0,\\\"grid_size\\\":3}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom4\\\",\\\"custom_class\\\":\\\"\\\",\\\"xxl_col\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0,\\\"hide_on_ex_large_desktop\\\":0,\\\"grid_size\\\":3}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"6+6\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Footer\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"column_type\\\":0,\\\"grid_size\\\":6,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"footer2\\\",\\\"column_type\\\":0,\\\"grid_size\\\":6}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"dropdown_width\":\"\",\"menu_animation\":\"menu-animation-fade-up\",\"offcanvas_position\":\"right\",\"offcanvas_style\":\"1-LeftAlign\",\"offcanvas_menu\":\"mainmenu\",\"offcanvas_max_level\":\"0\",\"offcanvas_arrow_position\":\"right\",\"hu-webfont-size-field\":\"\",\"hu-webfont-size-field-sm\":\"\",\"hu-webfont-size-field-xs\":\"\",\"hu-font-letter-spacing-input\":\"\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Helvetica\\\",\\\"fontSize\\\":\\\"36px\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"enable_navigation_font\":\"1\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"image_thumbnail_size\":\"600X340\",\"image_small_size\":\"100X100\",\"image_medium_size\":\"300X300\",\"image_large_size\":\"600X600\",\"image_crop_quality\":\"100\",\"blog_list_image\":\"thumbnail\",\"leading_blog_list_image\":\"large\",\"blog_list_type\":\"default\",\"blog_details_image\":\"default\",\"social_share\":\"1\",\"social_share_lists\":[\"facebook\",\"twitter\",\"linkedin\"],\"og_fb_id\":\"\",\"og_twitter_site\":\"\",\"reading_timeline_bg\":\"#0345bf\",\"reading_timeline_height\":\"5px\",\"reading_timeline_position\":\"top\",\"related_article_title\":\"Related Articles\",\"related_article_column\":\"3\",\"related_article_limit\":\"3\",\"related_article_view_type\":\"thumb\",\"comment\":\"disabled\",\"comment_disqus_subdomain\":\"\",\"comment_intensedebate_acc\":\"\",\"comment_facebook_app_id\":\"\",\"comment_facebook_width\":\"100\",\"comment_facebook_number\":\"10\",\"before_head\":\"\",\"after_body\":\"\",\"before_body\":\"\",\"custom_css\":\"\\/* ==========================================================================\\r\\n   ALTA CHOCOLATER\\u00cdA DE AMBATO - REDISE\\u00d1O EDITORIAL Y FLUIDO\\r\\n   Demolici\\u00f3n de cajas flotantes y transformaci\\u00f3n a dise\\u00f1o de lujo\\r\\n   ========================================================================== *\\/\\r\\n\\r\\n\\/* 0. SUPRESI\\u00d3N TOTAL DEL TOP BAR OSCURO: UNA \\u00daNICA CABECERA ELEGANTE *\\/\\r\\n#sp-top-bar,\\r\\n.container-topbar,\\r\\n#sp-top1,\\r\\n#sp-top2 {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   CABECERA DE ALTA GAMA ESTILO PACCARI (FIX MALA PR\\u00c1CTICA)\\r\\n   ========================================================================== *\\/\\r\\n\\r\\n\\/* 1. Fondo oscuro integrado de cacao y cristal con desenfoque *\\/\\r\\n#sp-header {\\r\\n  background: rgba(20, 10, 5, 0.94) !important;\\r\\n  backdrop-filter: blur(12px) !important;\\r\\n  -webkit-backdrop-filter: blur(12px) !important;\\r\\n  border-bottom: 1px solid rgba(193, 154, 61, 0.25) !important;\\r\\n  box-shadow: 0 4px 25px rgba(0, 0, 0, 0.45) !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n}\\r\\n\\r\\n\\/* 2. CORRECCI\\u00d3N DE MALA PR\\u00c1CTICA: Ocultar men\\u00fa hamburguesa en Desktop *\\/\\r\\n@media (min-width: 992px) {\\r\\n  #offcanvas-toggler,\\r\\n  .burger-icon,\\r\\n  a.burger-icon,\\r\\n  .offcanvas-toggler-right,\\r\\n  .offcanvas-toggler-left,\\r\\n  #sp-header .burger-icon,\\r\\n  #sp-header [class*=\\\"offcanvas\\\"] {\\r\\n    display: none !important;\\r\\n    visibility: hidden !important;\\r\\n    opacity: 0 !important;\\r\\n    pointer-events: none !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n\\/* Mostrar men\\u00fa hamburguesa exclusivamente en m\\u00f3viles y tabletas *\\/\\r\\n@media (max-width: 991px) {\\r\\n  #offcanvas-toggler,\\r\\n  .burger-icon,\\r\\n  a.burger-icon,\\r\\n  .offcanvas-toggler-right {\\r\\n    display: inline-flex !important;\\r\\n    align-items: center !important;\\r\\n    justify-content: center !important;\\r\\n    color: #F5EBDD !important;\\r\\n  }\\r\\n  .burger-icon > span {\\r\\n    background-color: #F5EBDD !important;\\r\\n  }\\r\\n  #sp-menu .sp-megamenu-parent {\\r\\n    display: none !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n\\/* 3. Logo en Cabecera Oscura: Contraste y nitidez marfil puro *\\/\\r\\n#sp-header img,\\r\\n#sp-header .logo-image img,\\r\\n#sp-header img.sp-default-logo,\\r\\n#sp-header a.logo img,\\r\\n#sp-header a[href*=\\\"joomla\\\"] img {\\r\\n  filter: brightness(0) invert(0.96) !important;\\r\\n  max-height: 48px !important;\\r\\n  width: auto !important;\\r\\n  transition: transform 0.3s ease !important;\\r\\n}\\r\\n\\r\\n#sp-header img:hover,\\r\\n#sp-header .logo-image img:hover,\\r\\n#sp-header img.sp-default-logo:hover,\\r\\n#sp-header a.logo img:hover {\\r\\n  transform: scale(1.02) !important;\\r\\n}\\r\\n\\r\\n\\/* 4. Enlaces de Navegaci\\u00f3n de Lujo Estilo Paccari *\\/\\r\\n#sp-menu .sp-megamenu-parent > li > a {\\r\\n  color: #F5EBDD !important;\\r\\n  font-family: \'DM Sans\', -apple-system, BlinkMacSystemFont, sans-serif !important;\\r\\n  font-size: 0.95rem !important;\\r\\n  font-weight: 600 !important;\\r\\n  letter-spacing: 0.5px !important;\\r\\n  padding: 10px 18px !important;\\r\\n  transition: all 0.25s ease !important;\\r\\n  position: relative !important;\\r\\n}\\r\\n\\r\\n#sp-menu .sp-megamenu-parent > li.active > a,\\r\\n#sp-menu .sp-megamenu-parent > li:hover > a {\\r\\n  color: #C19A3D !important;\\r\\n}\\r\\n\\r\\n#sp-menu .sp-megamenu-parent > li > a::after {\\r\\n  content: \'\' !important;\\r\\n  position: absolute !important;\\r\\n  bottom: 0px !important;\\r\\n  left: 18px !important;\\r\\n  right: 18px !important;\\r\\n  height: 2px !important;\\r\\n  background: #C19A3D !important;\\r\\n  transform: scaleX(0) !important;\\r\\n  transition: transform 0.25s ease !important;\\r\\n}\\r\\n\\r\\n#sp-menu .sp-megamenu-parent > li.active > a::after,\\r\\n#sp-menu .sp-megamenu-parent > li:hover > a::after {\\r\\n  transform: scaleX(1) !important;\\r\\n}\\r\\n\\r\\n\\/* 5. Carrito Minimalista Estilo Paccari: Solo \\u00edcono sin cuadro ni texto *\\/\\r\\n#sp-header .btn-header-cart,\\r\\n.btn-header-cart,\\r\\n#sp-header button[onclick*=\\\"abrirCarrito\\\"],\\r\\n#sp-header button[onclick*=\\\"AmbatoCart\\\"],\\r\\n#sp-header .btn-carrito-header,\\r\\n#btn-carrito-header,\\r\\n#sp-header [class*=\\\"carrito\\\"] {\\r\\n  background: transparent !important;\\r\\n  background-color: transparent !important;\\r\\n  border: none !important;\\r\\n  box-shadow: none !important;\\r\\n  padding: 6px 8px !important;\\r\\n  margin: 0 0 0 12px !important;\\r\\n  position: relative !important;\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  cursor: pointer !important;\\r\\n  outline: none !important;\\r\\n  color: #F5EBDD !important;\\r\\n  transition: transform 0.25s ease !important;\\r\\n}\\r\\n\\r\\n#sp-header .btn-header-cart:hover,\\r\\n.btn-header-cart:hover,\\r\\n#sp-header button[onclick*=\\\"abrirCarrito\\\"]:hover,\\r\\n#sp-header button[onclick*=\\\"AmbatoCart\\\"]:hover,\\r\\n#sp-header .btn-carrito-header:hover,\\r\\n#sp-header [class*=\\\"carrito\\\"]:hover {\\r\\n  background: transparent !important;\\r\\n  background-color: transparent !important;\\r\\n  border: none !important;\\r\\n  box-shadow: none !important;\\r\\n  transform: scale(1.15) !important;\\r\\n}\\r\\n\\r\\n\\/* Ocultar texto \\\"Carrito\\\" - solo \\u00edcono *\\/\\r\\n#sp-header .btn-header-cart span#floating-cart-text,\\r\\n#sp-header .btn-header-cart span:not(.cart-count-badge),\\r\\n#sp-header [class*=\\\"carrito\\\"] span:not(.cart-count-badge),\\r\\n#sp-header .btn-header-cart font,\\r\\n#sp-header .texto-carrito {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n\\/* \\u00cdcono SVG del carrito en blanco\\/dorado *\\/\\r\\n#sp-header .btn-header-cart svg,\\r\\n#sp-header [class*=\\\"carrito\\\"] svg {\\r\\n  width: 24px !important;\\r\\n  height: 24px !important;\\r\\n  stroke: #F5EBDD !important;\\r\\n  stroke-width: 2 !important;\\r\\n  fill: none !important;\\r\\n  display: block !important;\\r\\n  transition: stroke 0.25s ease !important;\\r\\n}\\r\\n\\r\\n#sp-header .btn-header-cart:hover svg,\\r\\n#sp-header [class*=\\\"carrito\\\"]:hover svg {\\r\\n  stroke: #C19A3D !important;\\r\\n}\\r\\n\\r\\n\\/* Badge flotante contador del carrito sobre el \\u00edcono *\\/\\r\\n#sp-header .btn-header-cart .cart-count-badge,\\r\\n#sp-header .cart-count-badge {\\r\\n  position: absolute !important;\\r\\n  top: -4px !important;\\r\\n  right: -6px !important;\\r\\n  background-color: #C19A3D !important;\\r\\n  color: #1C100A !important;\\r\\n  font-size: 11px !important;\\r\\n  font-weight: 800 !important;\\r\\n  min-width: 18px !important;\\r\\n  height: 18px !important;\\r\\n  border-radius: 50% !important;\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  line-height: 1 !important;\\r\\n  padding: 0 !important;\\r\\n  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.45) !important;\\r\\n}\\r\\n\\r\\n\\/* 6. Buscador de Productos en Cabecera Estilo Paccari *\\/\\r\\n#sp-header .sp-module-search,\\r\\n#sp-header .sp-search-wrapper,\\r\\n#sp-header .search,\\r\\n#sp-header [class*=\\\"search\\\"] {\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n}\\r\\n\\r\\n#sp-header a.search-icon,\\r\\n#sp-header .search-toggler,\\r\\n#sp-header [class*=\\\"search-icon\\\"],\\r\\n#sp-header .sp-search-icon {\\r\\n  color: #F5EBDD !important;\\r\\n  font-size: 19px !important;\\r\\n  cursor: pointer !important;\\r\\n  background: transparent !important;\\r\\n  border: none !important;\\r\\n  padding: 6px 10px !important;\\r\\n  transition: color 0.25s ease, transform 0.25s ease !important;\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n}\\r\\n\\r\\n#sp-header a.search-icon:hover,\\r\\n#sp-header .search-toggler:hover,\\r\\n#sp-header [class*=\\\"search-icon\\\"]:hover,\\r\\n#sp-header .sp-search-icon:hover {\\r\\n  color: #C19A3D !important;\\r\\n  transform: scale(1.1) !important;\\r\\n}\\r\\n\\r\\n#sp-header .search input.inputbox,\\r\\n#sp-header .sp-search-input,\\r\\n#sp-header input[type=\\\"search\\\"],\\r\\n#sp-header input[name=\\\"searchword\\\"],\\r\\n#sp-header input[name=\\\"q\\\"] {\\r\\n  background: rgba(255, 255, 255, 0.08) !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.4) !important;\\r\\n  color: #F5EBDD !important;\\r\\n  border-radius: 50px !important;\\r\\n  padding: 7px 16px 7px 36px !important;\\r\\n  font-size: 0.88rem !important;\\r\\n  font-family: \'DM Sans\', sans-serif !important;\\r\\n  outline: none !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n  width: 170px !important;\\r\\n}\\r\\n\\r\\n#sp-header .search input.inputbox:focus,\\r\\n#sp-header .sp-search-input:focus,\\r\\n#sp-header input[type=\\\"search\\\"]:focus,\\r\\n#sp-header input[name=\\\"searchword\\\"]:focus,\\r\\n#sp-header input[name=\\\"q\\\"]:focus {\\r\\n  background: rgba(255, 255, 255, 0.15) !important;\\r\\n  border-color: #C19A3D !important;\\r\\n  width: 220px !important;\\r\\n  box-shadow: 0 0 12px rgba(193, 154, 61, 0.3) !important;\\r\\n}\\r\\n\\r\\n#sp-header input::placeholder {\\r\\n  color: rgba(245, 235, 221, 0.6) !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   HOMEPAGE FULL-WIDTH RESET ESTRUCTURAL: CERO DESFASE LATERAL\\r\\n   ========================================================================== *\\/\\r\\nbody.itemid-101,\\r\\nbody.itemid-101 #sp-main-body,\\r\\nbody.itemid-101 #sp-main-body > .container,\\r\\nbody.itemid-101 #sp-main-body .container,\\r\\nbody.itemid-101 #sp-main-body .container-inner,\\r\\nbody.itemid-101 #sp-main-body > .row,\\r\\nbody.itemid-101 #sp-main-body .row,\\r\\nbody.itemid-101 #sp-component,\\r\\nbody.itemid-101 #sp-component > .sp-column,\\r\\nbody.itemid-101 .sp-column,\\r\\nbody.itemid-101 #sp-page-builder,\\r\\nbody.itemid-101 .sp-page-builder {\\r\\n  width: 100% !important;\\r\\n  max-width: 100% !important;\\r\\n  margin-left: 0 !important;\\r\\n  margin-right: 0 !important;\\r\\n  padding-left: 0 !important;\\r\\n  padding-right: 0 !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n\\/* 1. RESET ESTRUCTURAL Y DISOLUCI\\u00d3N TOTAL DE CAJAS *\\/\\r\\n.seccion-hero,\\r\\n.seccion-historia,\\r\\n.seccion-beneficios,\\r\\n.seccion-contacto {\\r\\n  border-radius: 0 !important;\\r\\n  border: none !important;\\r\\n  box-shadow: none !important;\\r\\n  margin-left: 0 !important;\\r\\n  margin-right: 0 !important;\\r\\n  margin-bottom: 0 !important;\\r\\n}\\r\\n\\r\\n\\/* 2. HERO MONUMENTAL: CENTRADO TOTAL HORIZONTAL Y VERTICAL *\\/\\r\\n#inicio,\\r\\n#inicio.seccion-hero,\\r\\n.seccion-hero,\\r\\n#sp-page-builder .sppb-section:first-child,\\r\\nsection#inicio {\\r\\n  border: none !important;\\r\\n  border-radius: 0 !important;\\r\\n  box-shadow: none !important;\\r\\n  margin: 0 !important;\\r\\n  position: static !important;\\r\\n  left: auto !important;\\r\\n  right: auto !important;\\r\\n  width: 100% !important;\\r\\n  box-sizing: border-box !important;\\r\\n  background-image: linear-gradient(180deg, rgba(15, 8, 4, 0.55) 0%, rgba(25, 12, 6, 0.65) 50%, rgba(15, 8, 4, 0.80) 100%), url(\'\\/joomla\\/images\\/hero_chocolate_taza.webp\') !important;\\r\\n  background-size: cover !important;\\r\\n  background-position: center center !important;\\r\\n  background-repeat: no-repeat !important;\\r\\n  min-height: calc(100vh - 75px) !important;\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  padding: 0 20px !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#inicio .sppb-section,\\r\\n#inicio .sppb-row-container,\\r\\n#inicio > .container,\\r\\n#inicio .container,\\r\\n#inicio .sppb-container {\\r\\n  max-width: 960px !important;\\r\\n  width: 100% !important;\\r\\n  margin: auto !important;\\r\\n  padding: 0 !important;\\r\\n  background: transparent !important;\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n}\\r\\n\\r\\n#inicio .sppb-row,\\r\\n#inicio .row {\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n#inicio [class*=\\\"col-\\\"]:first-child,\\r\\n#inicio .sppb-col-md-6:first-child,\\r\\n#inicio .sppb-column,\\r\\n#inicio .sppb-column-addons {\\r\\n  width: 100% !important;\\r\\n  max-width: 900px !important;\\r\\n  flex: 0 0 100% !important;\\r\\n  text-align: center !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 !important;\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n}\\r\\n\\r\\n#inicio .sppb-addon-wrapper,\\r\\n#inicio .sppb-addon {\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 !important;\\r\\n  text-align: center !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n#inicio [class*=\\\"col-\\\"]:last-child:not(:first-child),\\r\\n#inicio .sppb-col-md-6:last-child:not(:first-child),\\r\\n#inicio .sppb-addon-single-image,\\r\\n#inicio img[src*=\\\"cacao\\\"],\\r\\n#inicio img[src*=\\\"hero\\\"] {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n#inicio span,\\r\\n#inicio .hero-eyebrow,\\r\\n#inicio [class*=\\\"subtitle\\\"],\\r\\n#inicio p:first-child {\\r\\n  font-family: \'DM Sans\', -apple-system, sans-serif !important;\\r\\n  font-size: 0.95rem !important;\\r\\n  letter-spacing: 3px !important;\\r\\n  text-transform: uppercase !important;\\r\\n  color: #C19A3D !important;\\r\\n  margin-bottom: 16px !important;\\r\\n  display: block !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-shadow: 0 2px 10px rgba(0, 0, 0, 0.6) !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#inicio h1,\\r\\n#inicio h2,\\r\\n#inicio .hero-title,\\r\\n#inicio .sppb-addon-title {\\r\\n  font-family: \'Playfair Display\', Georgia, serif !important;\\r\\n  font-size: 4rem !important;\\r\\n  line-height: 1.15 !important;\\r\\n  color: #FAF6F0 !important;\\r\\n  margin-bottom: 24px !important;\\r\\n  text-shadow: 0 4px 18px rgba(0, 0, 0, 0.7) !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#inicio p,\\r\\n#inicio .hero-desc,\\r\\n#inicio [class*=\\\"content\\\"] > p {\\r\\n  font-family: \'DM Sans\', sans-serif !important;\\r\\n  font-size: 1.25rem !important;\\r\\n  line-height: 1.8 !important;\\r\\n  color: #F5EBDD !important;\\r\\n  max-width: 720px !important;\\r\\n  margin: 0 auto 36px auto !important;\\r\\n  text-shadow: 0 2px 8px rgba(0, 0, 0, 0.6) !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#inicio [class*=\\\"button-group\\\"],\\r\\n#inicio .hero-botones-grupo,\\r\\n#inicio .sppb-addon-button-group {\\r\\n  display: flex !important;\\r\\n  justify-content: center !important;\\r\\n  align-items: center !important;\\r\\n  gap: 16px !important;\\r\\n  margin: 0 auto !important;\\r\\n  width: 100% !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#inicio a[href*=\\\"#productos\\\"],\\r\\n#inicio .hero-btn-productos,\\r\\n#inicio .sppb-btn-primary {\\r\\n  background-color: #F3E4D0 !important;\\r\\n  background: #F3E4D0 !important;\\r\\n  color: #1C100A !important;\\r\\n  font-family: \'Montserrat\', sans-serif !important;\\r\\n  font-size: 1rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  padding: 15px 34px !important;\\r\\n  border-radius: 8px !important;\\r\\n  border: 1px solid #F3E4D0 !important;\\r\\n  text-decoration: none !important;\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  gap: 8px !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.35) !important;\\r\\n  margin: 0 8px !important;\\r\\n}\\r\\n\\r\\n#inicio a[href*=\\\"#productos\\\"]:hover,\\r\\n#inicio .hero-btn-productos:hover,\\r\\n#inicio .sppb-btn-primary:hover {\\r\\n  background-color: #FFFFFF !important;\\r\\n  background: #FFFFFF !important;\\r\\n  border-color: #FFFFFF !important;\\r\\n  color: #140A05 !important;\\r\\n  transform: translateY(-3px) !important;\\r\\n  box-shadow: 0 14px 32px rgba(0, 0, 0, 0.45) !important;\\r\\n}\\r\\n\\r\\n#inicio a[href*=\\\"#historia\\\"],\\r\\n#inicio .hero-btn-historia,\\r\\n#inicio .sppb-btn-default {\\r\\n  background-color: rgba(255, 255, 255, 0.15) !important;\\r\\n  color: #FFFFFF !important;\\r\\n  border: 2px solid rgba(255, 255, 255, 0.85) !important;\\r\\n  backdrop-filter: blur(8px) !important;\\r\\n  font-family: \'Montserrat\', sans-serif !important;\\r\\n  font-size: 1rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  padding: 13px 32px !important;\\r\\n  border-radius: 8px !important;\\r\\n  text-decoration: none !important;\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  gap: 8px !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n  margin: 0 8px !important;\\r\\n}\\r\\n\\r\\n#inicio a[href*=\\\"#historia\\\"]:hover,\\r\\n#inicio .hero-btn-historia:hover,\\r\\n#inicio .sppb-btn-default:hover {\\r\\n  background-color: #FFFFFF !important;\\r\\n  color: #1C100A !important;\\r\\n  border-color: #FFFFFF !important;\\r\\n  transform: translateY(-3px) !important;\\r\\n  box-shadow: 0 10px 28px rgba(255, 255, 255, 0.35) !important;\\r\\n}\\r\\n\\r\\n\\/* 3. HISTORIA TOTALMENTE ABIERTA (FULL-BLEED) *\\/\\r\\n#historia,\\r\\n#historia.seccion-historia,\\r\\n.seccion-historia {\\r\\n  border: none !important;\\r\\n  border-radius: 0 !important;\\r\\n  box-shadow: none !important;\\r\\n  margin: 0 !important;\\r\\n  position: static !important;\\r\\n  left: auto !important;\\r\\n  right: auto !important;\\r\\n  width: 100% !important;\\r\\n  box-sizing: border-box !important;\\r\\n  background: #FAF6F0 !important;\\r\\n  padding: 95px 0 105px 0 !important;\\r\\n}\\r\\n\\r\\n.historia-quote {\\r\\n  font-family: \'Playfair Display\', Georgia, serif;\\r\\n  font-style: italic;\\r\\n  font-size: 1.25rem;\\r\\n  color: #C19A3D;\\r\\n  margin-top: 15px;\\r\\n}\\r\\n\\r\\n\\/* 4. BENEFICIOS *\\/\\r\\n.seccion-beneficios,\\r\\n#section-id-1700000000014,\\r\\nsection#section-id-1700000000014 {\\r\\n  border: none !important;\\r\\n  border-radius: 0 !important;\\r\\n  box-shadow: none !important;\\r\\n  margin: 0 !important;\\r\\n  position: static !important;\\r\\n  left: auto !important;\\r\\n  right: auto !important;\\r\\n  width: 100% !important;\\r\\n  box-sizing: border-box !important;\\r\\n  background: #FFFFFF !important;\\r\\n  padding: 90px 0 100px 0 !important;\\r\\n}\\r\\n\\r\\n.caja-beneficio,\\r\\n.pilar-beneficio {\\r\\n  background: #FAF6F0 !important;\\r\\n  border-radius: 16px !important;\\r\\n  padding: 40px 28px !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.18) !important;\\r\\n  box-shadow: 0 10px 30px rgba(59, 35, 20, 0.05) !important;\\r\\n  transition: all 0.35s ease !important;\\r\\n  height: 100% !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n.caja-beneficio:hover,\\r\\n.pilar-beneficio:hover {\\r\\n  transform: translateY(-10px) !important;\\r\\n  box-shadow: 0 22px 45px rgba(59, 35, 20, 0.14) !important;\\r\\n  border-color: #C19A3D !important;\\r\\n}\\r\\n\\r\\n.caja-beneficio h4,\\r\\n.pilar-beneficio h4 {\\r\\n  font-family: \'Playfair Display\', Georgia, serif !important;\\r\\n  font-size: 1.55rem !important;\\r\\n  color: #3B2314 !important;\\r\\n  margin-top: 20px !important;\\r\\n  margin-bottom: 14px !important;\\r\\n}\\r\\n\\r\\n.caja-beneficio p,\\r\\n.pilar-beneficio p {\\r\\n  color: #555555 !important;\\r\\n  font-size: 1rem !important;\\r\\n  line-height: 1.7 !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   5. CARRUSEL DE PRODUCTOS DE LUJO ESTILO PACCARI (CENTRADO TOTAL Y SIM\\u00c9TRICO)\\r\\n   ========================================================================== *\\/\\r\\n\\r\\n#section-id-1700000000010,\\r\\nsection#section-id-1700000000010 {\\r\\n  border: none !important;\\r\\n  border-radius: 0 !important;\\r\\n  box-shadow: none !important;\\r\\n  margin: 0 auto !important;\\r\\n  position: static !important;\\r\\n  left: auto !important;\\r\\n  right: auto !important;\\r\\n  width: 100% !important;\\r\\n  max-width: 100% !important;\\r\\n  box-sizing: border-box !important;\\r\\n  background: #FFFFFF !important;\\r\\n  padding: 70px 0 85px 0 !important;\\r\\n  overflow: hidden !important;\\r\\n  display: block !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n#section-id-1700000000010 .sppb-row-container,\\r\\n#section-id-1700000000010 .sppb-container,\\r\\n#section-id-1700000000010 > .container,\\r\\n#section-id-1700000000010 .container,\\r\\n#section-id-1700000000010 .sppb-row,\\r\\n#section-id-1700000000010 .row,\\r\\n#section-id-1700000000010 [class*=\\\"sppb-col-\\\"],\\r\\n#section-id-1700000000010 [class*=\\\"col-\\\"],\\r\\n#section-id-1700000000010 .sppb-column,\\r\\n#section-id-1700000000010 .sppb-column-addons,\\r\\n#section-id-1700000000010 .sppb-addon-wrapper,\\r\\n#section-id-1700000000010 .sppb-addon,\\r\\n#section-id-1700000000010 .sppb-addon-content {\\r\\n  width: 100% !important;\\r\\n  max-width: 100% !important;\\r\\n  margin-left: auto !important;\\r\\n  margin-right: auto !important;\\r\\n  padding-left: 0 !important;\\r\\n  padding-right: 0 !important;\\r\\n  display: block !important;\\r\\n  float: none !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n\\/* Encabezado *\\/\\r\\n#productos,\\r\\n.ambato-products-intro {\\r\\n  background: transparent !important;\\r\\n  padding: 0 0 35px 0 !important;\\r\\n  margin: 0 auto !important;\\r\\n  width: 100% !important;\\r\\n  border: none !important;\\r\\n  box-shadow: none !important;\\r\\n  display: block !important;\\r\\n}\\r\\n\\r\\n.ambato-products-heading {\\r\\n  text-align: center !important;\\r\\n  max-width: 820px !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 20px !important;\\r\\n  box-sizing: border-box !important;\\r\\n  display: block !important;\\r\\n}\\r\\n\\r\\n.ambato-products-heading span {\\r\\n  display: block !important;\\r\\n  font-family: \'DM Sans\', -apple-system, sans-serif !important;\\r\\n  font-size: 0.82rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  letter-spacing: 2px !important;\\r\\n  text-transform: uppercase !important;\\r\\n  color: #C19A3D !important;\\r\\n  margin-bottom: 12px !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n.ambato-products-heading h2 {\\r\\n  font-family: \'Playfair Display\', Georgia, serif !important;\\r\\n  font-size: 2.6rem !important;\\r\\n  color: #1C100A !important;\\r\\n  margin-bottom: 14px !important;\\r\\n  font-weight: 700 !important;\\r\\n  line-height: 1.2 !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n.ambato-products-heading p {\\r\\n  font-family: \'DM Sans\', sans-serif !important;\\r\\n  font-size: 1.05rem !important;\\r\\n  color: #65564F !important;\\r\\n  line-height: 1.6 !important;\\r\\n  margin: 0 auto !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n\\/* M\\u00f3dulo del carrusel perfectamente centrado *\\/\\r\\n.ambato-products-module,\\r\\n.ambato-featured-products {\\r\\n  background: transparent !important;\\r\\n  padding: 0 20px !important;\\r\\n  margin: 0 auto !important;\\r\\n  width: 100% !important;\\r\\n  max-width: 1360px !important;\\r\\n  border: none !important;\\r\\n  box-shadow: none !important;\\r\\n  display: block !important;\\r\\n  text-align: center !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n.ambato-carousel-controls {\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: space-between !important;\\r\\n  width: 100% !important;\\r\\n  max-width: 1320px !important;\\r\\n  margin: 0 auto 20px auto !important;\\r\\n  padding: 0 !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n.ambato-carousel-hint {\\r\\n  font-family: \'DM Sans\', sans-serif !important;\\r\\n  font-size: 0.8rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-transform: uppercase !important;\\r\\n  letter-spacing: 1.2px !important;\\r\\n  color: #8C6239 !important;\\r\\n}\\r\\n\\r\\n.ambato-carousel-arrows {\\r\\n  display: flex !important;\\r\\n  gap: 10px !important;\\r\\n}\\r\\n\\r\\n.ambato-carousel-arrows button {\\r\\n  width: 42px !important;\\r\\n  height: 42px !important;\\r\\n  border-radius: 50% !important;\\r\\n  border: 1.5px solid #1C100A !important;\\r\\n  background: #FFFFFF !important;\\r\\n  color: #1C100A !important;\\r\\n  font-size: 1.4rem !important;\\r\\n  line-height: 1 !important;\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  cursor: pointer !important;\\r\\n  transition: all 0.25s ease !important;\\r\\n  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06) !important;\\r\\n  padding: 0 !important;\\r\\n}\\r\\n\\r\\n.ambato-carousel-arrows button:hover {\\r\\n  background: #1C100A !important;\\r\\n  color: #FFFFFF !important;\\r\\n  transform: scale(1.08) !important;\\r\\n}\\r\\n\\r\\n\\/* Pista del carrusel: centrado matem\\u00e1tico absoluto sin scroll horizontal residual *\\/\\r\\n.ambato-product-track {\\r\\n  display: flex !important;\\r\\n  width: 100% !important;\\r\\n  max-width: 1320px !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 10px 0 30px 0 !important;\\r\\n  box-sizing: border-box !important;\\r\\n  gap: 20px !important;\\r\\n  justify-content: center !important;\\r\\n  align-items: stretch !important;\\r\\n  overflow-x: auto !important;\\r\\n  scroll-behavior: smooth !important;\\r\\n  scroll-snap-type: x mandatory !important;\\r\\n  scrollbar-width: thin !important;\\r\\n  scrollbar-color: rgba(193, 154, 61, 0.35) transparent !important;\\r\\n}\\r\\n\\r\\n.ambato-product-track::-webkit-scrollbar {\\r\\n  height: 5px !important;\\r\\n}\\r\\n\\r\\n.ambato-product-track::-webkit-scrollbar-thumb {\\r\\n  background: rgba(193, 154, 61, 0.35) !important;\\r\\n  border-radius: 3px !important;\\r\\n}\\r\\n\\r\\n\\/* Tarjetas *\\/\\r\\n.ambato-product-card,\\r\\n.caja-producto {\\r\\n  flex: 0 0 calc((100% - 4 * 20px) \\/ 5) !important;\\r\\n  max-width: calc((100% - 4 * 20px) \\/ 5) !important;\\r\\n  width: calc((100% - 4 * 20px) \\/ 5) !important;\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  text-align: center !important;\\r\\n  background: #FFFFFF !important;\\r\\n  border: none !important;\\r\\n  border-radius: 0 !important;\\r\\n  box-shadow: none !important;\\r\\n  padding: 12px 8px 20px 8px !important;\\r\\n  scroll-snap-align: start !important;\\r\\n  transition: transform 0.3s ease !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card:hover,\\r\\n.caja-producto:hover {\\r\\n  transform: translateY(-4px) !important;\\r\\n  box-shadow: none !important;\\r\\n  border: none !important;\\r\\n}\\r\\n\\r\\n.ambato-product-image {\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  width: 100% !important;\\r\\n  height: 185px !important;\\r\\n  max-height: 185px !important;\\r\\n  background: #FBF8F5 !important;\\r\\n  border-radius: 8px !important;\\r\\n  margin-bottom: 15px !important;\\r\\n  overflow: hidden !important;\\r\\n  padding: 14px !important;\\r\\n  box-sizing: border-box !important;\\r\\n  text-decoration: none !important;\\r\\n  transition: background 0.3s ease !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card:hover .ambato-product-image {\\r\\n  background: #F6EFE7 !important;\\r\\n}\\r\\n\\r\\n.ambato-product-image img {\\r\\n  max-width: 100% !important;\\r\\n  max-height: 100% !important;\\r\\n  height: auto !important;\\r\\n  width: auto !important;\\r\\n  object-fit: contain !important;\\r\\n  transition: transform 0.4s ease !important;\\r\\n  display: block !important;\\r\\n  margin: auto !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card:hover .ambato-product-image img {\\r\\n  transform: scale(1.06) !important;\\r\\n}\\r\\n\\r\\n.ambato-product-info {\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  align-items: center !important;\\r\\n  text-align: center !important;\\r\\n  width: 100% !important;\\r\\n  padding: 0 !important;\\r\\n  flex: 1 !important;\\r\\n}\\r\\n\\r\\n.ambato-product-info h3 {\\r\\n  font-family: \'DM Sans\', -apple-system, BlinkMacSystemFont, sans-serif !important;\\r\\n  font-size: 0.85rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-transform: uppercase !important;\\r\\n  letter-spacing: 0.5px !important;\\r\\n  line-height: 1.35 !important;\\r\\n  margin: 0 0 8px 0 !important;\\r\\n  min-height: 42px !important;\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  text-align: center !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n.ambato-product-info h3 a {\\r\\n  color: #1C100A !important;\\r\\n  text-decoration: none !important;\\r\\n  transition: color 0.2s ease !important;\\r\\n}\\r\\n\\r\\n.ambato-product-info h3 a:hover {\\r\\n  color: #C19A3D !important;\\r\\n}\\r\\n\\r\\n.ambato-product-info p {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card-footer {\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  width: 100% !important;\\r\\n  margin: 0 0 14px 0 !important;\\r\\n  padding: 0 !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card-footer strong {\\r\\n  font-family: \'DM Sans\', sans-serif !important;\\r\\n  font-size: 1.1rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  color: #1C100A !important;\\r\\n  letter-spacing: 0.3px !important;\\r\\n}\\r\\n\\r\\n.ambato-product-card-footer a {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n.ambato-add-to-cart,\\r\\n.ambato-product-card button.btn-dorado-agregar {\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  gap: 7px !important;\\r\\n  width: 100% !important;\\r\\n  min-height: 40px !important;\\r\\n  padding: 9px 12px !important;\\r\\n  background: transparent !important;\\r\\n  background-color: transparent !important;\\r\\n  color: #1C100A !important;\\r\\n  border: 1.5px solid #1C100A !important;\\r\\n  border-radius: 4px !important;\\r\\n  font-family: \'DM Sans\', -apple-system, sans-serif !important;\\r\\n  font-size: 0.8rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-transform: uppercase !important;\\r\\n  letter-spacing: 0.6px !important;\\r\\n  cursor: pointer !important;\\r\\n  transition: all 0.25s ease !important;\\r\\n  margin-top: auto !important;\\r\\n  box-shadow: none !important;\\r\\n}\\r\\n\\r\\n.ambato-add-to-cart:hover,\\r\\n.ambato-product-card button.btn-dorado-agregar:hover {\\r\\n  background: #1C100A !important;\\r\\n  background-color: #1C100A !important;\\r\\n  color: #FFFFFF !important;\\r\\n  border-color: #1C100A !important;\\r\\n  box-shadow: 0 4px 14px rgba(28, 16, 10, 0.2) !important;\\r\\n}\\r\\n\\r\\n.ambato-add-to-cart span[aria-hidden=\\\"true\\\"],\\r\\n.ambato-product-card button.btn-dorado-agregar span[aria-hidden=\\\"true\\\"] {\\r\\n  font-size: 0.95rem !important;\\r\\n}\\r\\n\\r\\n@media (max-width: 1199px) {\\r\\n  .ambato-product-track {\\r\\n    justify-content: flex-start !important;\\r\\n    gap: 16px !important;\\r\\n  }\\r\\n  .ambato-product-card,\\r\\n  .caja-producto {\\r\\n    flex: 0 0 calc((100% - 3 * 16px) \\/ 4) !important;\\r\\n    max-width: calc((100% - 3 * 16px) \\/ 4) !important;\\r\\n    width: calc((100% - 3 * 16px) \\/ 4) !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n@media (max-width: 991px) {\\r\\n  .ambato-product-card,\\r\\n  .caja-producto {\\r\\n    flex: 0 0 calc((100% - 2 * 16px) \\/ 3) !important;\\r\\n    max-width: calc((100% - 2 * 16px) \\/ 3) !important;\\r\\n    width: calc((100% - 2 * 16px) \\/ 3) !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n@media (max-width: 600px) {\\r\\n  .ambato-product-card,\\r\\n  .caja-producto {\\r\\n    flex: 0 0 240px !important;\\r\\n    max-width: 240px !important;\\r\\n    width: 240px !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n\\/* Bot\\u00f3n inferior centrado *\\/\\r\\n.ambato-catalog-cta {\\r\\n  margin: 35px auto 0 auto !important;\\r\\n  text-align: center !important;\\r\\n  width: 100% !important;\\r\\n  display: block !important;\\r\\n}\\r\\n\\r\\n.ambato-catalog-cta .btn-cafe,\\r\\n.ambato-catalog-cta a {\\r\\n  display: inline-flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  padding: 14px 44px !important;\\r\\n  background: transparent !important;\\r\\n  background-color: transparent !important;\\r\\n  color: #1C100A !important;\\r\\n  border: 2px solid #1C100A !important;\\r\\n  border-radius: 50px !important;\\r\\n  font-family: \'DM Sans\', -apple-system, sans-serif !important;\\r\\n  font-size: 0.92rem !important;\\r\\n  font-weight: 700 !important;\\r\\n  text-transform: uppercase !important;\\r\\n  letter-spacing: 1px !important;\\r\\n  text-decoration: none !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n  box-shadow: none !important;\\r\\n}\\r\\n\\r\\n.ambato-catalog-cta .btn-cafe:hover,\\r\\n.ambato-catalog-cta a:hover {\\r\\n  background: #1C100A !important;\\r\\n  background-color: #1C100A !important;\\r\\n  color: #FFFFFF !important;\\r\\n  transform: translateY(-2px) !important;\\r\\n  box-shadow: 0 8px 22px rgba(28, 16, 10, 0.2) !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   REDISE\\u00d1O INTEGRAL DE LA P\\u00c1GINA DE CAT\\u00c1LOGO (BLOG DE ESPECIALIDADES)\\r\\n   ========================================================================== *\\/\\r\\nbody.com-content.view-category #sp-main-body,\\r\\nbody.com-content.view-category #sp-component {\\r\\n  background: transparent !important;\\r\\n  padding-top: 10px !important;\\r\\n  padding-bottom: 50px !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .page-header {\\r\\n  background: linear-gradient(135deg, #F5EBDD 0%, #EFE1CE 100%) !important;\\r\\n  padding: 50px 30px !important;\\r\\n  border-radius: 14px !important;\\r\\n  text-align: center !important;\\r\\n  margin-bottom: 45px !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.25) !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .page-header h1 {\\r\\n  font-family: \'Playfair Display\', Georgia, serif !important;\\r\\n  font-size: 2.8rem !important;\\r\\n  color: #3B2314 !important;\\r\\n  margin-bottom: 12px !important;\\r\\n}\\r\\n\\r\\nbody.com-content.view-category .com-content-category-blog__items,\\r\\nbody.com-content.view-category .com-content-category-blog .row,\\r\\nbody.com-content.view-category .com-content-category-blog [class*=\\\"col-\\\"],\\r\\nbody.com-content.view-category .com-content-category-blog .article-list,\\r\\nbody.com-content.view-category .com-content-category-blog .article-list > .row {\\r\\n  display: contents !important;\\r\\n}\\r\\n\\r\\nbody.com-content.view-category .com-content-category-blog {\\r\\n  display: grid !important;\\r\\n  grid-template-columns: repeat(3, minmax(0, 1fr)) !important;\\r\\n  gap: 24px !important;\\r\\n  max-width: 1240px !important;\\r\\n  margin: 0 auto 72px !important;\\r\\n  padding: 22px 22px 0 !important;\\r\\n}\\r\\n\\r\\n@media (max-width: 991px) {\\r\\n  body.com-content.view-category .com-content-category-blog {\\r\\n    grid-template-columns: repeat(2, minmax(0, 1fr)) !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n@media (max-width: 600px) {\\r\\n  body.com-content.view-category .com-content-category-blog {\\r\\n    grid-template-columns: 1fr !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n.com-content-category-blog__item,\\r\\n.com-content-category-blog .blog-item,\\r\\n.com-content-category-blog .article-list .article {\\r\\n  background: #FFFFFF !important;\\r\\n  border-radius: 16px !important;\\r\\n  padding: 24px !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.22) !important;\\r\\n  box-shadow: 0 10px 26px rgba(59, 35, 20, 0.06) !important;\\r\\n  transition: all 0.35s ease !important;\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  justify-content: space-between !important;\\r\\n  box-sizing: border-box !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog__item:hover,\\r\\n.com-content-category-blog .blog-item:hover,\\r\\n.com-content-category-blog .article-list .article:hover {\\r\\n  transform: translateY(-8px) !important;\\r\\n  box-shadow: 0 18px 38px rgba(59, 35, 20, 0.15) !important;\\r\\n  border-color: #C19A3D !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .article-header h2 {\\r\\n  font-size: 1.35rem !important;\\r\\n  min-height: 48px !important;\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .article-header h2 a {\\r\\n  color: #3B2314 !important;\\r\\n  text-decoration: none !important;\\r\\n  transition: color 0.2s ease;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .article-header h2 a:hover {\\r\\n  color: #C19A3D !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .article-intro-image img {\\r\\n  border-radius: 12px !important;\\r\\n  max-height: 220px !important;\\r\\n  object-fit: cover !important;\\r\\n  width: 100% !important;\\r\\n  margin-bottom: 15px !important;\\r\\n}\\r\\n\\r\\n.com-content-category-blog .product-hero-showcase,\\r\\n.com-content-category-blog .product-attributes-fullwidth,\\r\\n.com-content-category-blog .product-ritual-fullwidth,\\r\\n.com-content-category-blog .caja-compra-detalle,\\r\\n.com-content-category-blog .btn-volver-catalogo {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n.pagination__wrapper .pagination,\\r\\n.pagination {\\r\\n  display: flex !important;\\r\\n  justify-content: center !important;\\r\\n  gap: 8px !important;\\r\\n  margin: 45px 0 !important;\\r\\n}\\r\\n\\r\\n.pagination__wrapper .page-item .page-link,\\r\\n.pagination .page-item .page-link {\\r\\n  border-radius: 50% !important;\\r\\n  width: 44px !important;\\r\\n  height: 44px !important;\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  font-weight: 700 !important;\\r\\n  font-size: 0.95rem !important;\\r\\n  color: #3B2314 !important;\\r\\n  background-color: #FFFFFF !important;\\r\\n  border: 1.5px solid rgba(193, 154, 61, 0.35) !important;\\r\\n  transition: all 0.25s ease !important;\\r\\n}\\r\\n\\r\\n.pagination__wrapper .page-item.active .page-link,\\r\\n.pagination .page-item.active .page-link {\\r\\n  background-color: #C19A3D !important;\\r\\n  border-color: #C19A3D !important;\\r\\n  color: #FFFFFF !important;\\r\\n  box-shadow: 0 4px 14px rgba(193, 154, 61, 0.4) !important;\\r\\n}\\r\\n\\r\\n.pagination__wrapper .page-item .page-link:hover,\\r\\n.pagination .page-item .page-link:hover {\\r\\n  background-color: #3B2314 !important;\\r\\n  border-color: #3B2314 !important;\\r\\n  color: #F5EBDD !important;\\r\\n  transform: translateY(-2px) !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   UNIFICACI\\u00d3N DEL FOOTER MONUMENTAL (SINGLE SOURCE OF TRUTH)\\r\\n   ========================================================================== *\\/\\r\\n#sp-footer,\\r\\nbody.itemid-101 #sp-footer {\\r\\n  display: block !important;\\r\\n  background-color: #1C100A !important;\\r\\n  color: #F5EBDD !important;\\r\\n  padding: 65px 0 40px 0 !important;\\r\\n  margin: 0 !important;\\r\\n  border: none !important;\\r\\n  width: 100% !important;\\r\\n  box-sizing: border-box !important;\\r\\n  overflow: hidden !important;\\r\\n}\\r\\n\\r\\n#sp-footer .container,\\r\\nbody.itemid-101 #sp-footer .container,\\r\\n#sp-footer .container-inner,\\r\\nbody.itemid-101 #sp-footer .container-inner {\\r\\n  max-width: 1240px !important;\\r\\n  width: 100% !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 24px !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n#sp-footer .row,\\r\\nbody.itemid-101 #sp-footer .row {\\r\\n  margin-left: 0 !important;\\r\\n  margin-right: 0 !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n#sp-footer #sp-footer1,\\r\\nbody.itemid-101 #sp-footer #sp-footer1 {\\r\\n  width: 100% !important;\\r\\n  flex: 0 0 100% !important;\\r\\n  max-width: 100% !important;\\r\\n  padding: 0 !important;\\r\\n  margin: 0 !important;\\r\\n}\\r\\n\\r\\n#sp-footer #sp-footer2,\\r\\nbody.itemid-101 #sp-footer #sp-footer2 {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n#sp-footer .sp-column,\\r\\nbody.itemid-101 #sp-footer .sp-column {\\r\\n  padding: 0 !important;\\r\\n  margin: 0 !important;\\r\\n  width: 100% !important;\\r\\n}\\r\\n\\r\\n#sp-page-builder .seccion-contacto {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n.footer-global-monumental {\\r\\n  background: transparent !important;\\r\\n  margin: 0 !important;\\r\\n  position: static !important;\\r\\n  left: auto !important;\\r\\n  right: auto !important;\\r\\n  width: 100% !important;\\r\\n  padding: 0 !important;\\r\\n  box-sizing: border-box !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   FICHA DE PRODUCTO DE LUJO (COM_CONTENT VIEW-ARTICLE)\\r\\n   ========================================================================== *\\/\\r\\nbody.com-content.view-article #sp-main-body,\\r\\nbody.com-content.view-article #sp-component {\\r\\n  background: transparent !important;\\r\\n  padding-top: 15px !important;\\r\\n  padding-bottom: 50px !important;\\r\\n}\\r\\n\\r\\nbody.com-content.view-article .article-details {\\r\\n  display: block !important;\\r\\n  max-width: 1200px !important;\\r\\n  margin: 0 auto !important;\\r\\n  padding: 0 20px !important;\\r\\n}\\r\\n\\r\\nbody.com-content.view-article:has(.product-hero-showcase) .article-header,\\r\\nbody.com-content.view-article:has(.product-hero-showcase) .page-header,\\r\\nbody.com-content.view-article:has(.product-hero-showcase) .article-full-image,\\r\\nbody.com-content.view-article:has(.product-hero-showcase) .item-image,\\r\\nbody.com-content.view-article .article-info,\\r\\nbody.com-content.view-article .fields-container,\\r\\nbody.com-content.view-article .article-social-share {\\r\\n  display: none !important;\\r\\n}\\r\\n\\r\\n.product-hero-showcase {\\r\\n  display: grid !important;\\r\\n  grid-template-columns: 1fr 1fr !important;\\r\\n  gap: 48px !important;\\r\\n  align-items: start !important;\\r\\n  margin-top: 20px !important;\\r\\n  margin-bottom: 50px !important;\\r\\n}\\r\\n\\r\\n@media (max-width: 991px) {\\r\\n  .product-hero-showcase {\\r\\n    grid-template-columns: 1fr !important;\\r\\n    gap: 30px !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n.product-gallery-card {\\r\\n  position: sticky !important;\\r\\n  top: 110px !important;\\r\\n  background: #FFFFFF !important;\\r\\n  border-radius: 20px !important;\\r\\n  padding: 24px !important;\\r\\n  box-shadow: 0 12px 32px rgba(59, 35, 20, 0.08) !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.25) !important;\\r\\n  text-align: center !important;\\r\\n}\\r\\n\\r\\n.product-gallery-card img {\\r\\n  width: 100% !important;\\r\\n  max-height: 440px !important;\\r\\n  object-fit: contain !important;\\r\\n  border-radius: 12px !important;\\r\\n  display: block !important;\\r\\n  margin: 0 auto !important;\\r\\n}\\r\\n\\r\\n.product-summary-col {\\r\\n  display: flex !important;\\r\\n  flex-direction: column !important;\\r\\n  justify-content: flex-start !important;\\r\\n}\\r\\n\\r\\n.product-attributes-fullwidth {\\r\\n  width: 100% !important;\\r\\n  margin: 50px 0 !important;\\r\\n  padding-top: 35px !important;\\r\\n  border-top: 1px solid rgba(193, 154, 61, 0.22) !important;\\r\\n}\\r\\n\\r\\n.product-attributes-grid {\\r\\n  display: grid !important;\\r\\n  grid-template-columns: repeat(4, 1fr) !important;\\r\\n  gap: 20px !important;\\r\\n  margin-top: 25px !important;\\r\\n}\\r\\n\\r\\n@media (max-width: 991px) {\\r\\n  .product-attributes-grid {\\r\\n    grid-template-columns: repeat(2, 1fr) !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n@media (max-width: 575px) {\\r\\n  .product-attributes-grid {\\r\\n    grid-template-columns: 1fr !important;\\r\\n  }\\r\\n}\\r\\n\\r\\n.product-ritual-fullwidth {\\r\\n  width: 100% !important;\\r\\n  margin: 40px 0 60px 0 !important;\\r\\n  background: #FFFFFF !important;\\r\\n  border-radius: 20px !important;\\r\\n  padding: 40px 36px !important;\\r\\n  box-shadow: 0 10px 30px rgba(59, 35, 20, 0.06) !important;\\r\\n  border: 1px solid rgba(193, 154, 61, 0.22) !important;\\r\\n}\\r\\n\\r\\n.product-ritual-grid {\\r\\n  display: grid !important;\\r\\n  grid-template-columns: repeat(3, 1fr) !important;\\r\\n  gap: 24px !important;\\r\\n  margin-top: 25px !important;\\r\\n}\\r\\n\\r\\n@media (max-width: 850px) {\\r\\n  .product-ritual-grid {\\r\\n    grid-template-columns: 1fr !important;\\r\\n    gap: 20px !important;\\r\\n  }\\r\\n}\\r\\n\\r\\nbody.com-content.view-article .pagenavigation {\\r\\n  margin-top: 40px !important;\\r\\n}\\r\\n\\r\\n\\/* ==========================================================================\\r\\n   BOT\\u00d3N FLOTANTE OFICIAL DE WHATSAPP\\r\\n   ========================================================================== *\\/\\r\\n.boton-flotante-whatsapp,\\r\\n#mod-custom111 {\\r\\n  position: fixed !important;\\r\\n  bottom: 25px !important;\\r\\n  right: 25px !important;\\r\\n  z-index: 999999 !important;\\r\\n  display: block !important;\\r\\n  width: 60px !important;\\r\\n  height: 60px !important;\\r\\n  margin: 0 !important;\\r\\n  padding: 0 !important;\\r\\n  border: none !important;\\r\\n  background: transparent !important;\\r\\n}\\r\\n\\r\\n.boton-flotante-whatsapp a {\\r\\n  display: flex !important;\\r\\n  align-items: center !important;\\r\\n  justify-content: center !important;\\r\\n  width: 60px !important;\\r\\n  height: 60px !important;\\r\\n  border-radius: 50% !important;\\r\\n  background: transparent !important;\\r\\n  text-decoration: none !important;\\r\\n  transition: transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275) !important;\\r\\n  padding: 0 !important;\\r\\n  margin: 0 !important;\\r\\n  border: none !important;\\r\\n}\\r\\n\\r\\n.boton-flotante-whatsapp a:hover {\\r\\n  transform: scale(1.12) !important;\\r\\n}\\r\\n\\r\\n.boton-flotante-whatsapp img,\\r\\n.boton-flotante-whatsapp .icono-wa-img,\\r\\n#mod-custom111 img {\\r\\n  width: 60px !important;\\r\\n  height: 60px !important;\\r\\n  max-width: 60px !important;\\r\\n  max-height: 60px !important;\\r\\n  object-fit: contain !important;\\r\\n  display: block !important;\\r\\n  margin: 0 !important;\\r\\n  filter: drop-shadow(0 6px 16px rgba(74, 46, 38, 0.35)) !important;\\r\\n  transition: all 0.3s ease !important;\\r\\n}\\r\\n\\r\\n.boton-flotante-whatsapp a:hover img {\\r\\n  filter: drop-shadow(0 8px 22px rgba(74, 46, 38, 0.5)) !important;\\r\\n}\\r\\n\\r\\n\\/* Scroll to top button offset para que no tape WhatsApp *\\/\\r\\n#sp-scroll-up,\\r\\n.sp-scroll-up {\\r\\n  bottom: 95px !important;\\r\\n  right: 32px !important;\\r\\n  z-index: 999990 !important;\\r\\n}\",\"custom_js\":\"\",\"exclude_css\":\"\",\"exclude_js\":\"\",\"scssoption\":\"1\",\"enable_fontawesome\":\"1\",\"gfont_api\":\"\",\"ga_code\":\"\",\"ga_tracking_method\":\"\",\"id\":\"13\",\"template\":\"shaper_helixultimate\",\"client_id\":\"0\",\"home\":\"1\",\"title\":\"shaper_helixultimate - Default\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_tuf_metadata`
--

CREATE TABLE `lgi49_tuf_metadata` (
  `id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';

--
-- Volcado de datos para la tabla `lgi49_tuf_metadata`
--

INSERT INTO `lgi49_tuf_metadata` (`id`, `update_site_id`, `root`, `targets`, `snapshot`, `timestamp`, `mirrors`) VALUES
(1, 1, '{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":16,\"expires\":\"2027-09-17T18:55:11Z\",\"keys\":{\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"250f8d293c49817a83909dead96ad82b62f7ac16844cf589f8d2f0e0b15cab21\"}},\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"159a4195cbafce2bb959f09ab2b36a2127b8967f94d389f65f1e7892fccfe8b8\"}},\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"042b66e1431a1f5c2c15b4a16ea60f23f466851b58e9ff057dbfc2a5e0d821d1\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cb6702338830ef1c9e76a022fed27172d475bbaace754d8141ebc96dad8b15f\"}},\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"546cdff30cc1ad6dd5f3d1e173672d94bd61a9507199af064142f70cde8de4e3\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ea764b0b475b3c396627ac6689cbd8f54a5f93e87b6f5e3eb44a7ccafb542ff3\"}},\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"45e416d24d13a60ace5ab028827d5cfc8ba177bb9466bf2acd8efa6e3547911a\"}},\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"1cbfa7dcac9659e5a8a946ec999bd28f53b451e38ce5827980bed2686098cf19\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"390d45fce58e41fec922092b138eaf719ed2036c8722bd694a6832ab6ca18409\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"192ad7343e7d431533d9577fd957b6f924680177db4dc6c0e146dad6810a90a4\",\"a599a27a3ec4d520059c591338759dc401006b1c4cb1db85a286e667253d28b6\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"ba3914be50eea8ecf6d5e7a8d3564dbbad99415d9cc229b9ee081ed86f69f803\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\",\"273e94e5477e306ad6de75be1524860e219e265ff9a57c81ababd0691e45706c\",\"00e432b504508246e2bd536dd6c13e55e8b3256f0be9f767fae26da6c2a28663\",\"179d107f20a2354ac5bd9a1f32a2df1763c0059617f0c132bebeb4816a1a8637\",\"a1a4b7fdbeedfdeff12d7776de098a2f8de8d2ab7bfe10062a281b3819b078c1\",\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"45cabce9321e0091f9a88a862d250c35f6efede25c7c6eab6cbf738d176c366308bb24cedc80812244259a0d56fd796b2ebd13f98d6aba5c8220df4f136a8504\"}]}', '{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":121,\"expires\":\"2027-02-24T15:46:11Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.4.10-Stable-Update_Package.zip\":{\"length\":32022582,\"hashes\":{\"sha512\":\"40ac7cc602e170c9443fe9b8aa6f798900ff8bd58bb0c0c7ef6fe915cf03f1c1088f1ca1a8c9c8c617969aeda25e6f27b5fb5cce55328e20344fdb4954aa1207\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.10 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-10/Joomla_5.4.10-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.10/Joomla_5.4.10-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/joomla-5-4-10-bugfix-release.html\",\"title\":\"Joomla! 5.4.10 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.10\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.10\"}},\"Joomla_5.4.11-Stable-Update_Package.zip\":{\"length\":32444434,\"hashes\":{\"sha512\":\"8e235baa6399168b623034b2d30b2f40be57372e7e4d9de69dd61f45f7a889ed03664377d09b91f8902b77158d9e2564578d8895c78966dad1881e548c0bd9d7\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.4.11 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-4-11/Joomla_5.4.11-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.4.11/Joomla_5.4.11-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.4.11/Joomla_5.4.11-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/joomla-6-2-1-security-bugfix-release.html\",\"title\":\"Joomla! 5.4.11 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.4.11\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.4.11\"}},\"Joomla_6.2.0-Stable-Update_Package.zip\":{\"length\":32555797,\"hashes\":{\"sha512\":\"add35ea23140a8d095e1858a3b6744011bed193b173ff02edcf526feea3a85b6653866b3e3d8baf83bd01d1f87d5f4608de23741799e1e1925f0c3124d1125fd\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-2-0/Joomla_6.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.2.0/Joomla_6.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/joomla-6-2-is-here.html\",\"title\":\"Joomla! 6.2.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.0\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.0\"}},\"Joomla_6.2.1-Stable-Update_Package.zip\":{\"length\":33090368,\"hashes\":{\"sha512\":\"0b912d0f280a19f3b78f3ee1251813751e413a5e2ca6aeb3fcd249c447977cb488b432f8789f5ec5517707f094da05d062dd14d93b36d98b456fe6ee2fb7f958\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla6/6-2-1/Joomla_6.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.1/Joomla_6.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/6.2.1/Joomla_6.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/joomla-6-2-1-security-bugfix-release.html\",\"title\":\"Joomla! 6.2.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.1\"}},\"Joomla_6.2.1-rc1-Release_Candidate-Update_Package.zip\":{\"length\":32999751,\"hashes\":{\"sha512\":\"d4ae4176a8ee22df8be5dcd5702002c164cce9a6f5f46721ba895dc862d548c9c2fd238af33889a7200e080796e6d468cf1a7c0eb4edf48381d0e7d6edf62e68\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 6.2.1-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/6.2.1-rc1/Joomla_6.2.1-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/6.2.1-rc1\",\"title\":\"Joomla! 6.2.1-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 6.2.1-rc1\",\"php_minimum\":\"8.3.0\",\"channel\":\"6.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"12.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(6\\\\.[0-4])|^(5\\\\.4)\"},\"type\":\"file\",\"version\":\"6.2.1-rc1\"}}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"ba08540456adb1c72f707728929e438c9470d00c495c071237037bbea4a815241435678d28968184dc05e7b32584a407e6a4ee03eb1d789382fb1445d72aa807\"},{\"keyid\":\"284c8164fd395e9178dc66929787f0650cda6acff0fd769ef697203d7553c481\",\"sig\":\"53b652f56b7000a1e619f41591ea0c43faaafbf2d022cb47280ff75a3059af7ca6a3a97e111bd6ff88eb03392cbf53852278fe922e6bb24624cf156c42171f07\"}]}', '{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":137,\"expires\":\"2027-06-22T15:48:26Z\",\"meta\":{\"targets.json\":{\"length\":7445,\"hashes\":{\"sha512\":\"5b42d22799a93c3aeb8cd087123cfcb1f9bf90f9fd1590c54b2aa186eca7c58754d4d43a479f3c84259d05cdac2a0f7ba4362a49fc25e36d2a21bcc610dde429\"},\"version\":121}}},\"signatures\":[{\"keyid\":\"c9fe1ff72da60a30ea5e612fa2ef4ca329fb46d9e1965b811bf9f2de44ffdf18\",\"sig\":\"8eea53f3420210808e49914d4aa1f8c7dd07ebc9bf4dc493942e425a24515c72959926df257b554b854ecd16c66b8f2f2b682de41f66306bddc29f1ea6c77f0f\"}]}', '{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":1326,\"expires\":\"2026-11-28T01:28:09Z\",\"meta\":{\"snapshot.json\":{\"length\":533,\"hashes\":{\"sha512\":\"8538c18c9c8ea1af08aeea67383ce2357dd5bb0552c1de44c5dfef9d53708166ad9ffd8327bf5fcf10c63ff5b971689b1d998cb714f6081ac0beab1283c0d2b0\"},\"version\":137}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"f984d761c8f5c8df520c26dfb8b97e3aff712323c33c6ea93efe6bade1d4e8f59447acaac4f7dde74d99648d9ac0c5b2deb6b1b14796e3ce6dbdbeed6f422b0b\"}]}', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_ucm_base`
--

CREATE TABLE `lgi49_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_ucm_content`
--

CREATE TABLE `lgi49_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) UNSIGNED DEFAULT NULL,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_updates`
--

CREATE TABLE `lgi49_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  `security` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `lgi49_updates`
--

INSERT INTO `lgi49_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`, `security`) VALUES
(225, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '6.2.1.1', '', 'https://update.joomla.org/language/details6/af-ZA_details.xml', '', '', '', NULL),
(226, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '6.2.1.1', '', 'https://update.joomla.org/language/details6/ar-AA_details.xml', '', '', '', NULL),
(227, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '6.1.4.1', '', 'https://update.joomla.org/language/details6/eu-ES_details.xml', '', '', '', NULL),
(228, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '6.1.4.1', '', 'https://update.joomla.org/language/details6/be-BY_details.xml', '', '', '', NULL),
(229, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/bg-BG_details.xml', '', '', '', NULL),
(230, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ca-ES_details.xml', '', '', '', NULL),
(231, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '6.0.1.4', '', 'https://update.joomla.org/language/details6/zh-CN_details.xml', '', '', '', NULL),
(232, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/zh-TW_details.xml', '', '', '', NULL),
(233, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '6.0.3.2', '', 'https://update.joomla.org/language/details6/hr-HR_details.xml', '', '', '', NULL),
(234, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '6.2.1.1', '', 'https://update.joomla.org/language/details6/cs-CZ_details.xml', '', '', '', NULL),
(235, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/da-DK_details.xml', '', '', '', NULL),
(236, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/nl-NL_details.xml', '', '', '', NULL),
(237, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/en-AU_details.xml', '', '', '', NULL),
(238, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/en-CA_details.xml', '', '', '', NULL),
(239, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/en-NZ_details.xml', '', '', '', NULL),
(240, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/en-US_details.xml', '', '', '', NULL),
(241, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '6.1.4.1', '', 'https://update.joomla.org/language/details6/et-EE_details.xml', '', '', '', NULL),
(242, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/fi-FI_details.xml', '', '', '', NULL),
(243, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/nl-BE_details.xml', '', '', '', NULL),
(244, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/fr-FR_details.xml', '', '', '', NULL),
(245, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '6.1.4.2', '', 'https://update.joomla.org/language/details6/fr-CA_details.xml', '', '', '', NULL),
(246, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ka-GE_details.xml', '', '', '', NULL),
(247, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/de-DE_details.xml', '', '', '', NULL),
(248, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/de-AT_details.xml', '', '', '', NULL),
(249, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/de-LI_details.xml', '', '', '', NULL),
(250, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/de-LU_details.xml', '', '', '', NULL),
(251, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/de-CH_details.xml', '', '', '', NULL),
(252, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/el-GR_details.xml', '', '', '', NULL),
(253, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '6.1.4.3', '', 'https://update.joomla.org/language/details6/he-IL_details.xml', '', '', '', NULL),
(254, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/hu-HU_details.xml', '', '', '', NULL),
(255, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '6.1.2.1', '', 'https://update.joomla.org/language/details6/ga-IE_details.xml', '', '', '', NULL),
(256, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/it-IT_details.xml', '', '', '', NULL),
(257, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ja-JP_details.xml', '', '', '', NULL),
(258, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '6.2.0.2', '', 'https://update.joomla.org/language/details6/kk-KZ_details.xml', '', '', '', NULL),
(259, 2, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '6.0.4.1', '', 'https://update.joomla.org/language/details6/lo-LA_details.xml', '', '', '', NULL),
(260, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/lv-LV_details.xml', '', '', '', NULL),
(261, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '6.1.3.2', '', 'https://update.joomla.org/language/details6/lt-LT_details.xml', '', '', '', NULL),
(262, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ms-MY_details.xml', '', '', '', NULL),
(263, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '6.1.4.1', '', 'https://update.joomla.org/language/details6/nb-NO_details.xml', '', '', '', NULL),
(264, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/fa-IR_details.xml', '', '', '', NULL),
(265, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/pl-PL_details.xml', '', '', '', NULL),
(266, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '6.0.3.1', '', 'https://update.joomla.org/language/details6/pt-BR_details.xml', '', '', '', NULL),
(267, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '6.1.0.1', '', 'https://update.joomla.org/language/details6/pt-PT_details.xml', '', '', '', NULL),
(268, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '6.0.0.1', '', 'https://update.joomla.org/language/details6/ro-RO_details.xml', '', '', '', NULL),
(269, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ru-RU_details.xml', '', '', '', NULL),
(270, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/sr-RS_details.xml', '', '', '', NULL),
(271, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/sr-YU_details.xml', '', '', '', NULL),
(272, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '6.2.1.1', '', 'https://update.joomla.org/language/details6/sk-SK_details.xml', '', '', '', NULL),
(273, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/sl-SI_details.xml', '', '', '', NULL),
(274, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/es-ES_details.xml', '', '', '', NULL),
(275, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '6.2.0.4', '', 'https://update.joomla.org/language/details6/sv-SE_details.xml', '', '', '', NULL),
(276, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/ta-IN_details.xml', '', '', '', NULL),
(277, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '6.0.0.2', '', 'https://update.joomla.org/language/details6/th-TH_details.xml', '', '', '', NULL),
(278, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/tr-TR_details.xml', '', '', '', NULL),
(279, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '6.2.0.1', '', 'https://update.joomla.org/language/details6/uk-UA_details.xml', '', '', '', NULL),
(280, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '6.2.0.2', '', 'https://update.joomla.org/language/details6/cy-GB_details.xml', '', '', '', NULL),
(281, 1, 247, 'Joomla! 6.2.1', 'Joomla! 6.2.1 Release', 'joomla', 'file', '', 0, '6.2.1', '', 'https://update.joomla.org/cms/', 'https://www.joomla.org/announcements/release-news/joomla-6-2-1-security-bugfix-release.html', NULL, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_update_sites`
--

CREATE TABLE `lgi49_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `lgi49_update_sites`
--

INSERT INTO `lgi49_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'tuf', 'https://update.joomla.org/cms/', 1, 1795659117, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_6.xml', 1, 1795293107, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1795293107, '', NULL, NULL),
(9, 'System - Helix Ultimate Framework', 'extension', 'https://www.joomshaper.com/updates/plg-system-helixultimate.xml', 1, 1795293108, '', NULL, NULL),
(10, 'shaper_helixultimate', 'extension', 'https://www.joomshaper.com/updates/shaper-helixultimate.xml', 1, 1795293108, '', NULL, NULL),
(11, 'SP Page Builder', 'extension', 'https://www.joomshaper.com/updates/com-sp-page-builder-lite-next.xml', 1, 1795293108, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_update_sites_extensions`
--

CREATE TABLE `lgi49_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `lgi49_update_sites_extensions`
--

INSERT INTO `lgi49_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 247),
(2, 248),
(3, 24),
(9, 252),
(10, 254),
(11, 255);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_usergroups`
--

CREATE TABLE `lgi49_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_usergroups`
--

INSERT INTO `lgi49_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_users`
--

CREATE TABLE `lgi49_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_users`
--

INSERT INTO `lgi49_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(723, 'administrador', 'administrador', 'juanperzezss@gmail.com', '$2y$10$9Xf1036EbJMar7Q7YsHWs.Yzkp7u868oSdBcC2l3y2B2f2Yqtb9aS', 0, 1, '2026-11-13 23:36:38', '2026-11-21 23:09:49', '0', '', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_user_keys`
--

CREATE TABLE `lgi49_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_user_mfa`
--

CREATE TABLE `lgi49_user_mfa` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_user_notes`
--

CREATE TABLE `lgi49_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_user_profiles`
--

CREATE TABLE `lgi49_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Volcado de datos para la tabla `lgi49_user_profiles`
--

INSERT INTO `lgi49_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(723, 'guidedtour.id.12', '{\"state\":\"delayed\",\"time\":{\"date\":\"2026-11-21 20:34:57.404871\",\"timezone_type\":3,\"timezone\":\"UTC\"}}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_user_usergroup_map`
--

CREATE TABLE `lgi49_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_user_usergroup_map`
--

INSERT INTO `lgi49_user_usergroup_map` (`user_id`, `group_id`) VALUES
(723, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_viewlevels`
--

CREATE TABLE `lgi49_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_viewlevels`
--

INSERT INTO `lgi49_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_webauthn_credentials`
--

CREATE TABLE `lgi49_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_workflows`
--

CREATE TABLE `lgi49_workflows` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_workflows`
--

INSERT INTO `lgi49_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2026-11-13 23:36:36', 723, '2026-11-13 23:36:36', 723, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_workflow_associations`
--

CREATE TABLE `lgi49_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_workflow_associations`
--

INSERT INTO `lgi49_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(3, 1, 'com_content.article'),
(4, 1, 'com_content.article'),
(5, 1, 'com_content.article'),
(6, 1, 'com_content.article'),
(7, 1, 'com_content.article'),
(8, 1, 'com_content.article'),
(9, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_workflow_stages`
--

CREATE TABLE `lgi49_workflow_stages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `position` text DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_workflow_stages`
--

INSERT INTO `lgi49_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `position`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lgi49_workflow_transitions`
--

CREATE TABLE `lgi49_workflow_transitions` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lgi49_workflow_transitions`
--

INSERT INTO `lgi49_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lgi49_action_logs`
--
ALTER TABLE `lgi49_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indices de la tabla `lgi49_action_logs_extensions`
--
ALTER TABLE `lgi49_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_action_logs_users`
--
ALTER TABLE `lgi49_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indices de la tabla `lgi49_action_log_config`
--
ALTER TABLE `lgi49_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_assets`
--
ALTER TABLE `lgi49_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `lgi49_associations`
--
ALTER TABLE `lgi49_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `lgi49_banners`
--
ALTER TABLE `lgi49_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_banner_clients`
--
ALTER TABLE `lgi49_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `lgi49_banner_tracks`
--
ALTER TABLE `lgi49_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `lgi49_categories`
--
ALTER TABLE `lgi49_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_contact_details`
--
ALTER TABLE `lgi49_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_content`
--
ALTER TABLE `lgi49_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `lgi49_contentitem_tag_map`
--
ALTER TABLE `lgi49_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `lgi49_content_frontpage`
--
ALTER TABLE `lgi49_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `lgi49_content_rating`
--
ALTER TABLE `lgi49_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `lgi49_content_types`
--
ALTER TABLE `lgi49_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `lgi49_extensions`
--
ALTER TABLE `lgi49_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `lgi49_fields`
--
ALTER TABLE `lgi49_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_fields_categories`
--
ALTER TABLE `lgi49_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `lgi49_fields_groups`
--
ALTER TABLE `lgi49_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_fields_values`
--
ALTER TABLE `lgi49_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `lgi49_finder_filters`
--
ALTER TABLE `lgi49_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `lgi49_finder_links`
--
ALTER TABLE `lgi49_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `lgi49_finder_links_terms`
--
ALTER TABLE `lgi49_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `lgi49_finder_logging`
--
ALTER TABLE `lgi49_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indices de la tabla `lgi49_finder_taxonomy`
--
ALTER TABLE `lgi49_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `lgi49_finder_taxonomy_map`
--
ALTER TABLE `lgi49_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `lgi49_finder_terms`
--
ALTER TABLE `lgi49_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_finder_terms_common`
--
ALTER TABLE `lgi49_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `lgi49_finder_tokens`
--
ALTER TABLE `lgi49_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_finder_tokens_aggregate`
--
ALTER TABLE `lgi49_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `lgi49_finder_types`
--
ALTER TABLE `lgi49_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `lgi49_guidedtours`
--
ALTER TABLE `lgi49_guidedtours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_uid` (`uid`(191));

--
-- Indices de la tabla `lgi49_guidedtour_steps`
--
ALTER TABLE `lgi49_guidedtour_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tour` (`tour_id`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_history`
--
ALTER TABLE `lgi49_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `lgi49_languages`
--
ALTER TABLE `lgi49_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `lgi49_mail_templates`
--
ALTER TABLE `lgi49_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indices de la tabla `lgi49_menu`
--
ALTER TABLE `lgi49_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_menu_types`
--
ALTER TABLE `lgi49_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `lgi49_messages`
--
ALTER TABLE `lgi49_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `lgi49_messages_cfg`
--
ALTER TABLE `lgi49_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `lgi49_modules`
--
ALTER TABLE `lgi49_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_modules_menu`
--
ALTER TABLE `lgi49_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `lgi49_newsfeeds`
--
ALTER TABLE `lgi49_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_overrider`
--
ALTER TABLE `lgi49_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_postinstall_messages`
--
ALTER TABLE `lgi49_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `lgi49_privacy_consents`
--
ALTER TABLE `lgi49_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `lgi49_privacy_requests`
--
ALTER TABLE `lgi49_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_redirect_links`
--
ALTER TABLE `lgi49_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indices de la tabla `lgi49_scheduler_logs`
--
ALTER TABLE `lgi49_scheduler_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_taskname` (`taskname`),
  ADD KEY `idx_tasktype` (`tasktype`),
  ADD KEY `idx_lastdate` (`lastdate`),
  ADD KEY `idx_nextdate` (`nextdate`);

--
-- Indices de la tabla `lgi49_scheduler_tasks`
--
ALTER TABLE `lgi49_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indices de la tabla `lgi49_schemaorg`
--
ALTER TABLE `lgi49_schemaorg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_schemas`
--
ALTER TABLE `lgi49_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `lgi49_session`
--
ALTER TABLE `lgi49_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indices de la tabla `lgi49_spmedia`
--
ALTER TABLE `lgi49_spmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder`
--
ALTER TABLE `lgi49_sppagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_addonlist`
--
ALTER TABLE `lgi49_sppagebuilder_addonlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_addons`
--
ALTER TABLE `lgi49_sppagebuilder_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_assets`
--
ALTER TABLE `lgi49_sppagebuilder_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_collections`
--
ALTER TABLE `lgi49_sppagebuilder_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_collection_fields`
--
ALTER TABLE `lgi49_sppagebuilder_collection_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_collection_id` (`collection_id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_collection_imports`
--
ALTER TABLE `lgi49_sppagebuilder_collection_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_collection_items`
--
ALTER TABLE `lgi49_sppagebuilder_collection_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_collection_id` (`collection_id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_collection_item_values`
--
ALTER TABLE `lgi49_sppagebuilder_collection_item_values`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `reference_item_id` (`reference_item_id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_colors`
--
ALTER TABLE `lgi49_sppagebuilder_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_comments`
--
ALTER TABLE `lgi49_sppagebuilder_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_fonts`
--
ALTER TABLE `lgi49_sppagebuilder_fonts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `family_name` (`family_name`,`type`);

--
-- Indices de la tabla `lgi49_sppagebuilder_image_shapes`
--
ALTER TABLE `lgi49_sppagebuilder_image_shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_integrations`
--
ALTER TABLE `lgi49_sppagebuilder_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_languages`
--
ALTER TABLE `lgi49_sppagebuilder_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_likes`
--
ALTER TABLE `lgi49_sppagebuilder_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comment_id` (`comment_id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_presets`
--
ALTER TABLE `lgi49_sppagebuilder_presets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_sections`
--
ALTER TABLE `lgi49_sppagebuilder_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_typography`
--
ALTER TABLE `lgi49_sppagebuilder_typography`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_sppagebuilder_versions`
--
ALTER TABLE `lgi49_sppagebuilder_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_page_id` (`page_id`),
  ADD KEY `idx_page_created` (`page_id`,`created_on`),
  ADD KEY `idx_active` (`active`);

--
-- Indices de la tabla `lgi49_tags`
--
ALTER TABLE `lgi49_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `lgi49_template_overrides`
--
ALTER TABLE `lgi49_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indices de la tabla `lgi49_template_styles`
--
ALTER TABLE `lgi49_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indices de la tabla `lgi49_tuf_metadata`
--
ALTER TABLE `lgi49_tuf_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lgi49_ucm_base`
--
ALTER TABLE `lgi49_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `lgi49_ucm_content`
--
ALTER TABLE `lgi49_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `lgi49_updates`
--
ALTER TABLE `lgi49_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `lgi49_update_sites`
--
ALTER TABLE `lgi49_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `lgi49_update_sites_extensions`
--
ALTER TABLE `lgi49_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `lgi49_usergroups`
--
ALTER TABLE `lgi49_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `lgi49_users`
--
ALTER TABLE `lgi49_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `lgi49_user_keys`
--
ALTER TABLE `lgi49_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `lgi49_user_mfa`
--
ALTER TABLE `lgi49_user_mfa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `lgi49_user_notes`
--
ALTER TABLE `lgi49_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `lgi49_user_profiles`
--
ALTER TABLE `lgi49_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `lgi49_user_usergroup_map`
--
ALTER TABLE `lgi49_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `lgi49_viewlevels`
--
ALTER TABLE `lgi49_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indices de la tabla `lgi49_webauthn_credentials`
--
ALTER TABLE `lgi49_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indices de la tabla `lgi49_workflows`
--
ALTER TABLE `lgi49_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indices de la tabla `lgi49_workflow_associations`
--
ALTER TABLE `lgi49_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indices de la tabla `lgi49_workflow_stages`
--
ALTER TABLE `lgi49_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indices de la tabla `lgi49_workflow_transitions`
--
ALTER TABLE `lgi49_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lgi49_action_logs`
--
ALTER TABLE `lgi49_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `lgi49_action_logs_extensions`
--
ALTER TABLE `lgi49_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `lgi49_action_log_config`
--
ALTER TABLE `lgi49_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `lgi49_assets`
--
ALTER TABLE `lgi49_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `lgi49_banners`
--
ALTER TABLE `lgi49_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_banner_clients`
--
ALTER TABLE `lgi49_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_categories`
--
ALTER TABLE `lgi49_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lgi49_contact_details`
--
ALTER TABLE `lgi49_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_content`
--
ALTER TABLE `lgi49_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lgi49_content_types`
--
ALTER TABLE `lgi49_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `lgi49_extensions`
--
ALTER TABLE `lgi49_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT de la tabla `lgi49_fields`
--
ALTER TABLE `lgi49_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lgi49_fields_groups`
--
ALTER TABLE `lgi49_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_finder_filters`
--
ALTER TABLE `lgi49_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_finder_links`
--
ALTER TABLE `lgi49_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `lgi49_finder_taxonomy`
--
ALTER TABLE `lgi49_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `lgi49_finder_terms`
--
ALTER TABLE `lgi49_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `lgi49_finder_types`
--
ALTER TABLE `lgi49_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lgi49_guidedtours`
--
ALTER TABLE `lgi49_guidedtours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `lgi49_guidedtour_steps`
--
ALTER TABLE `lgi49_guidedtour_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `lgi49_history`
--
ALTER TABLE `lgi49_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lgi49_languages`
--
ALTER TABLE `lgi49_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_menu`
--
ALTER TABLE `lgi49_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `lgi49_menu_types`
--
ALTER TABLE `lgi49_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_messages`
--
ALTER TABLE `lgi49_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_modules`
--
ALTER TABLE `lgi49_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `lgi49_newsfeeds`
--
ALTER TABLE `lgi49_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_overrider`
--
ALTER TABLE `lgi49_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `lgi49_postinstall_messages`
--
ALTER TABLE `lgi49_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lgi49_privacy_consents`
--
ALTER TABLE `lgi49_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_privacy_requests`
--
ALTER TABLE `lgi49_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_redirect_links`
--
ALTER TABLE `lgi49_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_scheduler_logs`
--
ALTER TABLE `lgi49_scheduler_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lgi49_scheduler_tasks`
--
ALTER TABLE `lgi49_scheduler_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lgi49_schemaorg`
--
ALTER TABLE `lgi49_schemaorg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_spmedia`
--
ALTER TABLE `lgi49_spmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder`
--
ALTER TABLE `lgi49_sppagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_addonlist`
--
ALTER TABLE `lgi49_sppagebuilder_addonlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_addons`
--
ALTER TABLE `lgi49_sppagebuilder_addons`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_assets`
--
ALTER TABLE `lgi49_sppagebuilder_assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_collections`
--
ALTER TABLE `lgi49_sppagebuilder_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_collection_fields`
--
ALTER TABLE `lgi49_sppagebuilder_collection_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_collection_imports`
--
ALTER TABLE `lgi49_sppagebuilder_collection_imports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_collection_items`
--
ALTER TABLE `lgi49_sppagebuilder_collection_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_colors`
--
ALTER TABLE `lgi49_sppagebuilder_colors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_comments`
--
ALTER TABLE `lgi49_sppagebuilder_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_fonts`
--
ALTER TABLE `lgi49_sppagebuilder_fonts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_image_shapes`
--
ALTER TABLE `lgi49_sppagebuilder_image_shapes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_integrations`
--
ALTER TABLE `lgi49_sppagebuilder_integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_languages`
--
ALTER TABLE `lgi49_sppagebuilder_languages`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_likes`
--
ALTER TABLE `lgi49_sppagebuilder_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_presets`
--
ALTER TABLE `lgi49_sppagebuilder_presets`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_sections`
--
ALTER TABLE `lgi49_sppagebuilder_sections`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_typography`
--
ALTER TABLE `lgi49_sppagebuilder_typography`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_sppagebuilder_versions`
--
ALTER TABLE `lgi49_sppagebuilder_versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_tags`
--
ALTER TABLE `lgi49_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_template_overrides`
--
ALTER TABLE `lgi49_template_overrides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_template_styles`
--
ALTER TABLE `lgi49_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lgi49_tuf_metadata`
--
ALTER TABLE `lgi49_tuf_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_ucm_content`
--
ALTER TABLE `lgi49_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_updates`
--
ALTER TABLE `lgi49_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT de la tabla `lgi49_update_sites`
--
ALTER TABLE `lgi49_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `lgi49_usergroups`
--
ALTER TABLE `lgi49_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `lgi49_users`
--
ALTER TABLE `lgi49_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=724;

--
-- AUTO_INCREMENT de la tabla `lgi49_user_keys`
--
ALTER TABLE `lgi49_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_user_mfa`
--
ALTER TABLE `lgi49_user_mfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_user_notes`
--
ALTER TABLE `lgi49_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lgi49_viewlevels`
--
ALTER TABLE `lgi49_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `lgi49_workflows`
--
ALTER TABLE `lgi49_workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_workflow_stages`
--
ALTER TABLE `lgi49_workflow_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lgi49_workflow_transitions`
--
ALTER TABLE `lgi49_workflow_transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lgi49_sppagebuilder_collection_fields`
--
ALTER TABLE `lgi49_sppagebuilder_collection_fields`
  ADD CONSTRAINT `lgi49_sppagebuilder_collection_fields_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `lgi49_sppagebuilder_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lgi49_sppagebuilder_collection_items`
--
ALTER TABLE `lgi49_sppagebuilder_collection_items`
  ADD CONSTRAINT `lgi49_sppagebuilder_collection_items_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `lgi49_sppagebuilder_collections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lgi49_sppagebuilder_collection_item_values`
--
ALTER TABLE `lgi49_sppagebuilder_collection_item_values`
  ADD CONSTRAINT `lgi49_sppagebuilder_collection_item_values_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `lgi49_sppagebuilder_collection_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lgi49_sppagebuilder_collection_item_values_ibfk_2` FOREIGN KEY (`field_id`) REFERENCES `lgi49_sppagebuilder_collection_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lgi49_sppagebuilder_collection_item_values_ibfk_3` FOREIGN KEY (`reference_item_id`) REFERENCES `lgi49_sppagebuilder_collection_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lgi49_sppagebuilder_likes`
--
ALTER TABLE `lgi49_sppagebuilder_likes`
  ADD CONSTRAINT `lgi49_sppagebuilder_likes_ibfk_1` FOREIGN KEY (`comment_id`) REFERENCES `lgi49_sppagebuilder_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `lgi49_sppagebuilder_versions`
--
ALTER TABLE `lgi49_sppagebuilder_versions`
  ADD CONSTRAINT `lgi49_sppagebuilder_versions_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `lgi49_sppagebuilder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
