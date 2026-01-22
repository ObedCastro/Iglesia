-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para elmesonicea
CREATE DATABASE IF NOT EXISTS `elmesonicea` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `elmesonicea`;

-- Volcando estructura para tabla elmesonicea.declaraciones_de_fe
CREATE TABLE IF NOT EXISTS `declaraciones_de_fe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(5) COLLATE utf8mb4_general_ci DEFAULT '0',
  `titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `versiculo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `activo` int NOT NULL DEFAULT '0',
  `fecha_creacion` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.declaraciones_de_fe: ~3 rows (aproximadamente)
INSERT INTO `declaraciones_de_fe` (`id`, `numero`, `titulo`, `descripcion`, `versiculo`, `activo`, `fecha_creacion`) VALUES
	(1, '9', 'Primera declaración de fe', 'Descripción de primera declaración de fe', 'Versículo 12:37', 1, '2026-01-21 22:13:32');

-- Volcando estructura para tabla elmesonicea.frases_dinamicas
CREATE TABLE IF NOT EXISTS `frases_dinamicas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frase_estatica` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `frases_dinamicas` json NOT NULL,
  `activo` int DEFAULT '0',
  `fecha_creacion` timestamp NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.frases_dinamicas: ~1 rows (aproximadamente)
INSERT INTO `frases_dinamicas` (`id`, `frase_estatica`, `frases_dinamicas`, `activo`, `fecha_creacion`) VALUES
	(1, 'Fuimos creados para2', '["Primera frase", "Segunda frase", "Tercera frase"]', 1, '2026-01-21 16:03:10');

-- Volcando estructura para tabla elmesonicea.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `f_principal` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `f_superior` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `f_inferior` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `img_fondo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activo` int DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.sliders: ~3 rows (aproximadamente)
INSERT INTO `sliders` (`id`, `f_principal`, `f_superior`, `f_inferior`, `img_fondo`, `activo`, `fecha_creacion`) VALUES
	(1, 'Frase principal edit', 'Frase superior editada 3', 'Frase inferior editada', 'perfil_01.jpg', 1, '2026-01-20 14:35:04'),
	(2, 'FRASE PRINCIPAL', 'FRASE SUPERIOR MÁS PEQUEÑA', 'FRASE INFERIOR TAMBIÉN PEQUEÑA', 'perfil_02.jpg', 1, '2026-01-20 14:39:57'),
	(19, 'adsgsdfh', 'sdfhsdfh', 'adfhafdhafdh', '6970fc408ab01_Captura de pantalla 2023-08-31 113413.png', 0, '2026-01-21 16:13:08');

-- Volcando estructura para tabla elmesonicea.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cargo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `usuario` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla elmesonicea.usuarios: ~1 rows (aproximadamente)
INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `foto`, `cargo`, `usuario`, `password`, `fecha_registro`) VALUES
	(1, 'Obed Castro', 'albcast26@gmail.com', 'obed-1768857401.jpg', 'Administrador de TI', 'obed', 'd76d056e81cc92df39f8cb3e1a3a3250', '2026-01-19 17:33:24');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
