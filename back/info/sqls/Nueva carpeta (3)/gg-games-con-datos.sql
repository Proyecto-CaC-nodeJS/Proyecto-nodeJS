-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.37 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
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
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.contact_descriptions: ~3 rows (aproximadamente)
DELETE FROM `contact_descriptions`;
INSERT INTO `contact_descriptions` (`id`, `description`, `active`, `default`, `order`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, NULL, 0, NULL),
	(2, 'Trabajo', 1, 0, 0, 0, NULL, 0, NULL),
	(3, 'Principal', 1, 0, 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.countries: ~0 rows (aproximadamente)
DELETE FROM `countries`;
INSERT INTO `countries` (`id`, `name`, `active`, `default`, `order`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'Argentina', 1, 1, 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.email_descriptions
DROP TABLE IF EXISTS `email_descriptions`;
CREATE TABLE IF NOT EXISTS `email_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.email_descriptions: ~2 rows (aproximadamente)
DELETE FROM `email_descriptions`;
INSERT INTO `email_descriptions` (`id`, `description`, `active`, `default`, `order`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, NULL, 0, NULL),
	(3, 'Trabajo', 1, 0, 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.gamers
DROP TABLE IF EXISTS `gamers`;
CREATE TABLE IF NOT EXISTS `gamers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `usersId` int NOT NULL,
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.gamers: ~4 rows (aproximadamente)
DELETE FROM `gamers`;
INSERT INTO `gamers` (`id`, `name`, `usersId`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'Administrador', 0, 0, NULL, 0, NULL),
	(2, 'Colaborador', 0, 0, NULL, 0, NULL),
	(3, 'Donante', 0, 0, NULL, 0, NULL),
	(4, 'Solicitante', 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.localities
DROP TABLE IF EXISTS `localities`;
CREATE TABLE IF NOT EXISTS `localities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provincesId` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
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
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.phone_descriptions: ~4 rows (aproximadamente)
DELETE FROM `phone_descriptions`;
INSERT INTO `phone_descriptions` (`id`, `description`, `active`, `default`, `order`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'Sin descripcion', 1, 1, 0, 0, NULL, 0, NULL),
	(2, 'Trabajo', 1, 0, 0, 0, NULL, 0, NULL),
	(3, 'Casa', 1, 0, 0, 0, NULL, 0, NULL),
	(4, 'Movil', 1, 0, 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.provinces
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `countriesId` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `default` tinyint NOT NULL DEFAULT (0),
  `order` tinyint NOT NULL DEFAULT '0',
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.provinces: ~24 rows (aproximadamente)
DELETE FROM `provinces`;
INSERT INTO `provinces` (`id`, `countriesId`, `name`, `active`, `default`, `order`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 0, 'Ciudad Autónoma de Buenos Aires', 1, 1, 0, 0, NULL, 0, NULL),
	(2, 0, 'Buenos Aires', 1, 0, 0, 0, NULL, 0, NULL),
	(3, 0, 'Catamarca', 1, 0, 0, 0, NULL, 0, NULL),
	(4, 0, 'Córdoba', 1, 0, 0, 0, NULL, 0, NULL),
	(5, 0, 'Corrientes', 1, 0, 0, 0, NULL, 0, NULL),
	(6, 0, 'Entre Ríos', 1, 0, 0, 0, NULL, 0, NULL),
	(7, 0, 'Jujuy', 1, 0, 0, 0, NULL, 0, NULL),
	(8, 0, 'Mendoza', 1, 0, 0, 0, NULL, 0, NULL),
	(9, 0, 'La Rioja', 1, 0, 0, 0, NULL, 0, NULL),
	(10, 0, 'Salta', 1, 0, 0, 0, NULL, 0, NULL),
	(11, 0, 'San Juan', 1, 0, 0, 0, NULL, 0, NULL),
	(12, 0, 'San Luis', 1, 0, 0, 0, NULL, 0, NULL),
	(13, 0, 'Santa Fe', 1, 0, 0, 0, NULL, 0, NULL),
	(14, 0, 'Santiago del Estero', 1, 0, 0, 0, NULL, 0, NULL),
	(15, 0, 'Tucumán', 1, 0, 0, 0, NULL, 0, NULL),
	(16, 0, 'Chaco', 1, 0, 0, 0, NULL, 0, NULL),
	(17, 0, 'Chubut', 1, 0, 0, 0, NULL, 0, NULL),
	(18, 0, 'Formosa', 1, 0, 0, 0, NULL, 0, NULL),
	(19, 0, 'Misiones', 1, 0, 0, 0, NULL, 0, NULL),
	(20, 0, 'Neuquén', 1, 0, 0, 0, NULL, 0, NULL),
	(21, 0, 'La Pampa', 1, 0, 0, 0, NULL, 0, NULL),
	(22, 0, 'Río Negro', 1, 0, 0, 0, NULL, 0, NULL),
	(23, 0, 'Santa Cruz', 1, 0, 0, 0, NULL, 0, NULL),
	(24, 0, 'Tierra del Fuego', 1, 0, 0, 0, NULL, 0, NULL);

-- Volcando estructura para tabla gg-games.scores
DROP TABLE IF EXISTS `scores`;
CREATE TABLE IF NOT EXISTS `scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gamerId` int NOT NULL,
  `id_estado_dispositivo` int NOT NULL,
  `active` tinyint NOT NULL DEFAULT (1),
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_estado_dispositivo` (`id_estado_dispositivo`),
  KEY `fk_id_descripcion_dispositivo` (`gamerId`) USING BTREE,
  CONSTRAINT `fk_id_descripcion_dispositivo` FOREIGN KEY (`gamerId`) REFERENCES `countries` (`id`),
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
  `createdBy` int NOT NULL DEFAULT '0',
  `createdAt` datetime DEFAULT NULL,
  `updatedBy` int NOT NULL DEFAULT '0',
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_id_rol` (`id_gamer`) USING BTREE,
  CONSTRAINT `fk_id_rol` FOREIGN KEY (`id_gamer`) REFERENCES `gamers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla gg-games.users: ~0 rows (aproximadamente)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `user`, `pass`, `id_gamer`, `checked`, `active`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
	(1, 'admin', '123456', 1, 0, 1, 0, '2023-09-28 00:00:00', 0, '2023-09-28 00:00:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
