-- MySQL dump 10.13  Distrib 8.0.33
--
-- Host: 127.0.0.1    Database: django_local
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `national_pokedex`
--

DROP TABLE IF EXISTS `national_pokedex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `national_pokedex` (
  `id` smallint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(12) NOT NULL COMMENT 'Name of Pokémon',
  `created_by` varchar(30) DEFAULT NULL COMMENT 'New Creator',
  `created_at` datetime DEFAULT NULL COMMENT 'Newly created date and time',
  `updated_by` varchar(30) DEFAULT NULL COMMENT 'Last updater',
  `updated_at` datetime DEFAULT NULL COMMENT 'Last updated date and time',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Delete flag',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='National Pokédex';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `national_pokedex`
--

LOCK TABLES `national_pokedex` WRITE;
/*!40000 ALTER TABLE `national_pokedex` DISABLE KEYS */;
INSERT INTO `national_pokedex` VALUES (1,'フシギダネ','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(2,'フシギソウ','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(3,'フシギバナ','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(4,'ヒトカゲ','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(5,'リザード','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(6,'リザードン','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(7,'ゼニガメ','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(8,'カメール','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0),(9,'カメックス','オーキド博士','1996-02-27 00:00:00','オーキド博士','1996-02-27 00:00:00',0);
/*!40000 ALTER TABLE `national_pokedex` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 16:59:43
