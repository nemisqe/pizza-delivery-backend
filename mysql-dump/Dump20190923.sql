-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pizza_delivery_db
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(40) NOT NULL,
  `password` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'cara','9h9cXiJ0muuivZIDUtvUyfY+DrrtbfYjsJyDb/y+wus='),(2,'vasya','emObBfCDlAMOi9gfQR60QCWw3x0YCdYYmT8QYkoCCs4='),(3,'asd','aIeH2P8UTFAsf1z/qv4sxYjYYHn53ogwTCawy5nOkcY='),(4,'zopa','ui1F8QI3bjRS1sWyumwhQRpS48eMYmjzo/hK9mTB57U='),(5,'roflan','9bJNH519lkJBl52qJqMQKwDvlARKOR50hxPQ1B3RXRk='),(6,'pepega','jTQhN5TqnBnd/WbEQ60y/WwlKlfYggJwQXM1j4Zx7JA='),(7,'fefe','h8zyLJrkTtWuKndBfgtv5RZq2dP8TWHTd9WABOuoQR0='),(8,'rara','4BWnqRXrzDRXPFR3wyRK5wYjGuklUE4qa+D1Q6tr0QY='),(9,'af','UDEmh40X/Na9598yD/brfCeKHELzABSgOxfz3QwCPB0='),(10,'ff','Bam/Ij/t+AqdDaX3P1wZGmZb9KCko+YI8vnn1f8jlZw='),(11,'gg','y9PPubn1G7v78IdZ4kP1s1Gcv27MIZ7pX+fGZ+MsCo0='),(12,'ggg','Vpx/C0HOlklgKgIYzQLtCwo9kxMDKUUcx4K339p5znE='),(13,'fff','8oS9w8HJ4kpJTihcs4fGlRDyjeUcFbuTF52cfyhwU5g=');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza_menu`
--

DROP TABLE IF EXISTS `pizza_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pizza_name` varchar(40) NOT NULL,
  `cooking_time` int(11) NOT NULL,
  `pizza_pictures` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza_menu`
--

LOCK TABLES `pizza_menu` WRITE;
/*!40000 ALTER TABLE `pizza_menu` DISABLE KEYS */;
INSERT INTO `pizza_menu` VALUES (1,'Carbonara',12,'pizza-icon.png'),(2,'Frutti di Mare',15,'pizza-icon.png'),(3,'Crudo',9,'pizza-icon.png'),(4,'Marinara',6,'pizza-icon.png'),(5,'Quatro Formaggi',11,'pizza-icon.png');
/*!40000 ALTER TABLE `pizza_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-23 18:24:04
