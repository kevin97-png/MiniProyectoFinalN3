-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 06-10-2023 a las 17:41:41
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bio` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `psswrd` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` longblob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `name`, `bio`, `email`, `phone`, `psswrd`, `photo`) VALUES
(1, 'Kevin Mitnick', 'Es un ex pirata informático estadounidense , que desde la década de 2000 se ha convertido en consultor de seguridad informática .', 'admin@admin', 2147483647, '$2y$10$KjV4xQKoy84FfhB2DnrBVukoT9tKd9Fdt4J9kQsc0XOLEyj51Q3gW', 0x2e2e2f61636374696f6e732f696d672f4b6576696e5f4d69746e69636b5f323030382e6a706567),
(2, 'Julian Assange', 'Es un programador, periodista y activista de Internet australiano conocido por ser el fundador, editor y portavoz del sitio web WikiLeaks.', 'test@test', 2123456764, '$2y$10$XQbuDXOGmO382cBvu4VCLOh.kxZnFsFKA5hV/j4uCnWzkZmE3Ka3G', 0x2e2e2f61636374696f6e732f696d672f4a756c69616e20417373616e67652e6a706567);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
