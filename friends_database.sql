-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: Друзья_человека
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Верблюд`
--

DROP TABLE IF EXISTS `Верблюд`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Верблюд` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Верблюд_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Верблюд`
--

LOCK TABLES `Верблюд` WRITE;
/*!40000 ALTER TABLE `Верблюд` DISABLE KEYS */;
/*!40000 ALTER TABLE `Верблюд` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ВсеЖивотные`
--

DROP TABLE IF EXISTS `ВсеЖивотные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ВсеЖивотные` (
  `id` int DEFAULT NULL,
  `имя` varchar(50) DEFAULT NULL,
  `возраст` int DEFAULT NULL,
  `порода` varchar(50) DEFAULT NULL,
  `тип` enum('домашнее','вьючное') DEFAULT NULL,
  `старый_тип` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ВсеЖивотные`
--

LOCK TABLES `ВсеЖивотные` WRITE;
/*!40000 ALTER TABLE `ВсеЖивотные` DISABLE KEYS */;
INSERT INTO `ВсеЖивотные` VALUES (1,'Барсик',2,'Кошка','домашнее','домашнее'),(2,'Шарик',3,'Собака','домашнее','домашнее'),(3,'Хомка',1,'Хомяк','домашнее','домашнее'),(4,'Магнус',4,'Лошадь','вьючное','домашнее'),(6,'Ослик',2,'Ослел','вьючное','домашнее');
/*!40000 ALTER TABLE `ВсеЖивотные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ВьючныеЖивотные`
--

DROP TABLE IF EXISTS `ВьючныеЖивотные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ВьючныеЖивотные` (
  `id` int NOT NULL DEFAULT '0',
  `животное_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ВьючныеЖивотные`
--

LOCK TABLES `ВьючныеЖивотные` WRITE;
/*!40000 ALTER TABLE `ВьючныеЖивотные` DISABLE KEYS */;
/*!40000 ALTER TABLE `ВьючныеЖивотные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Животные`
--

DROP TABLE IF EXISTS `Животные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Животные` (
  `id` int NOT NULL AUTO_INCREMENT,
  `имя` varchar(50) DEFAULT NULL,
  `возраст` int DEFAULT NULL,
  `порода` varchar(50) DEFAULT NULL,
  `тип` enum('домашнее','вьючное') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Животные`
--

LOCK TABLES `Животные` WRITE;
/*!40000 ALTER TABLE `Животные` DISABLE KEYS */;
INSERT INTO `Животные` VALUES (1,'Барсик',2,'Кошка','домашнее'),(2,'Шарик',3,'Собака','домашнее'),(3,'Хомка',1,'Хомяк','домашнее'),(4,'Магнус',4,'Лошадь','вьючное'),(6,'Ослик',2,'Ослел','вьючное');
/*!40000 ALTER TABLE `Животные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Кошка`
--

DROP TABLE IF EXISTS `Кошка`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Кошка` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Кошка_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Кошка`
--

LOCK TABLES `Кошка` WRITE;
/*!40000 ALTER TABLE `Кошка` DISABLE KEYS */;
/*!40000 ALTER TABLE `Кошка` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Лошадь`
--

DROP TABLE IF EXISTS `Лошадь`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Лошадь` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Лошадь_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Лошадь`
--

LOCK TABLES `Лошадь` WRITE;
/*!40000 ALTER TABLE `Лошадь` DISABLE KEYS */;
/*!40000 ALTER TABLE `Лошадь` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `МолодыеЖивотные`
--

DROP TABLE IF EXISTS `МолодыеЖивотные`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `МолодыеЖивотные` (
  `id` int NOT NULL DEFAULT '0',
  `имя` varchar(50) DEFAULT NULL,
  `возраст` int DEFAULT NULL,
  `порода` varchar(50) DEFAULT NULL,
  `тип` enum('домашнее','вьючное') DEFAULT NULL,
  `возраст_в_месяцах` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `МолодыеЖивотные`
--

LOCK TABLES `МолодыеЖивотные` WRITE;
/*!40000 ALTER TABLE `МолодыеЖивотные` DISABLE KEYS */;
INSERT INTO `МолодыеЖивотные` VALUES (1,'Барсик',2,'Кошка','домашнее',24),(6,'Ослик',2,'Ослел','вьючное',24);
/*!40000 ALTER TABLE `МолодыеЖивотные` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ослел`
--

DROP TABLE IF EXISTS `Ослел`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ослел` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Ослел_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ослел`
--

LOCK TABLES `Ослел` WRITE;
/*!40000 ALTER TABLE `Ослел` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ослел` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Собака`
--

DROP TABLE IF EXISTS `Собака`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Собака` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Собака_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Собака`
--

LOCK TABLES `Собака` WRITE;
/*!40000 ALTER TABLE `Собака` DISABLE KEYS */;
/*!40000 ALTER TABLE `Собака` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Хомяк`
--

DROP TABLE IF EXISTS `Хомяк`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Хомяк` (
  `id` int NOT NULL AUTO_INCREMENT,
  `животное_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `животное_id` (`животное_id`),
  CONSTRAINT `Хомяк_ibfk_1` FOREIGN KEY (`животное_id`) REFERENCES `Животные` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Хомяк`
--

LOCK TABLES `Хомяк` WRITE;
/*!40000 ALTER TABLE `Хомяк` DISABLE KEYS */;
/*!40000 ALTER TABLE `Хомяк` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-07 12:59:59
