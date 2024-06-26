-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.36 - MySQL Community Server - GPL
-- SO del servidor:              Linux
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para gg-games
DROP DATABASE IF EXISTS `gg-games`;
CREATE DATABASE IF NOT EXISTS `gg-games` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gg-games`;

-- Volcando estructura para tabla gg-games.contact_descriptions
DROP TABLE IF EXISTS `contact_descriptions`;
CREATE TABLE IF NOT EXISTS `contact_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.contact_descriptions: ~3 rows (aproximadamente)
DELETE FROM `contact_descriptions`;
INSERT INTO `contact_descriptions` (`id`, `description`, `active`, `default`, `order`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(2, 'Trabajo', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(3, 'Principal', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28');

-- Volcando estructura para tabla gg-games.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.countries: ~5 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`, `active`, `default`, `order`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Argentina', 1, 1, 0, 0, '2023-09-28', 0, '2023-09-28');

-- Volcando estructura para tabla gg-games.email_descriptions
DROP TABLE IF EXISTS `email_descriptions`;
CREATE TABLE IF NOT EXISTS `email_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.email_descriptions: ~2 rows (aproximadamente)
DELETE FROM `email_descriptions`;
INSERT INTO `email_descriptions` (`id`, `description`, `active`, `default`, `order`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(3, 'Trabajo', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28');

-- Volcando estructura para tabla gg-games.gamers
DROP TABLE IF EXISTS `gamers`;
CREATE TABLE IF NOT EXISTS `gamers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_users` int NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creation_date` date DEFAULT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.gamers: ~4 rows (aproximadamente)
DELETE FROM `gamers`;
INSERT INTO `gamers` (`id`, `name`, `id_users`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Administrador', 0, 'Sistema', '2023-09-28', 'Sistema', '2023-09-28'),
	(2, 'Colaborador', 0, 'Sistema', '2023-09-28', 'Sistema', '2023-09-28'),
	(3, 'Donante', 0, 'Sistema', '2023-09-28', 'Sistema', '2023-09-28'),
	(4, 'Solicitante', 0, 'Sistema', '2023-09-28', 'Sistema', '2023-09-28');

-- Volcando estructura para tabla gg-games.localities
DROP TABLE IF EXISTS `localities`;
CREATE TABLE IF NOT EXISTS `localities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_provinces` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.localities: ~0 rows (aproximadamente)
DELETE FROM `localities`;

-- Volcando estructura para tabla gg-games.phone_descriptions
DROP TABLE IF EXISTS `phone_descriptions`;
CREATE TABLE IF NOT EXISTS `phone_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.phone_descriptions: ~4 rows (aproximadamente)
DELETE FROM `phone_descriptions`;
INSERT INTO `phone_descriptions` (`id`, `description`, `active`, `default`, `order`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(2, 'Trabajo', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(3, 'Casa', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(4, 'Movil', 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28');

-- Volcando estructura para tabla gg-games.provinces
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_countries` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.provinces: ~24 rows (aproximadamente)
DELETE FROM `provinces`;
INSERT INTO `provinces` (`id`, `name`, `id_countries`, `active`, `default`, `order`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'Ciudad Autónoma de Buenos Aires', 0, 1, 1, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(2, 'Buenos Aires', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(3, 'Catamarca', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(4, 'Córdoba', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(5, 'Corrientes', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(6, 'Entre Ríos', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(7, 'Jujuy', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(8, 'Mendoza', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(9, 'La Rioja', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(10, 'Salta', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(11, 'San Juan', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(12, 'San Luis', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(13, 'Santa Fe', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(14, 'Santiago del Estero', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(15, 'Tucumán', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(16, 'Chaco', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(17, 'Chubut', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(18, 'Formosa', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(19, 'Misiones', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(20, 'Neuquén', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(21, 'La Pampa', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(22, 'Río Negro', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(23, 'Santa Cruz', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28'),
	(24, 'Tierra del Fuego', 0, 1, 0, 0, 0, '2023-09-28', 0, '2023-09-28');

-- Volcando estructura para tabla gg-games.scores
DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_gamers` int NOT NULL,
  `id_estado_dispositivo` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_estado_dispositivo` (`id_estado_dispositivo`),
  KEY `fk_id_descripcion_dispositivo` (`id_gamers`) USING BTREE,
  CONSTRAINT `fk_id_descripcion_dispositivo` FOREIGN KEY (`id_gamers`) REFERENCES `countries` (`id`),
  CONSTRAINT `fk_id_estado_dispositivo` FOREIGN KEY (`id_estado_dispositivo`) REFERENCES `estados_dispositivos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.scores: ~0 rows (aproximadamente)
DELETE FROM `scores`;

-- Volcando estructura para tabla gg-games.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_gamer` int NOT NULL,
  `checked` tinyint NOT NULL DEFAULT '0',
  `active` tinyint NOT NULL DEFAULT (1),
  `created_by` int NOT NULL DEFAULT '0',
  `creation_date` date DEFAULT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `modification_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_rol` (`id_gamer`) USING BTREE,
  CONSTRAINT `fk_id_rol` FOREIGN KEY (`id_gamer`) REFERENCES `gamers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.users: ~1 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `user`, `pass`, `id_gamer`, `checked`, `active`, `created_by`, `creation_date`, `modified_by`, `modification_date`) VALUES
	(1, 'admin', '123456', 1, 1, 1, 0, '2023-09-28', 0, '2023-09-28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
