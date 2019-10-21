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
  `token` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'cara','9h9cXiJ0muuivZIDUtvUyfY+DrrtbfYjsJyDb/y+wus=','caraTokenPogU'),(2,'vasya','emObBfCDlAMOi9gfQR60QCWw3x0YCdYYmT8QYkoCCs4=',NULL),(3,'asd','aIeH2P8UTFAsf1z/qv4sxYjYYHn53ogwTCawy5nOkcY=',NULL),(4,'zopa','ui1F8QI3bjRS1sWyumwhQRpS48eMYmjzo/hK9mTB57U=',NULL),(5,'roflan','9bJNH519lkJBl52qJqMQKwDvlARKOR50hxPQ1B3RXRk=',NULL),(6,'pepega','jTQhN5TqnBnd/WbEQ60y/WwlKlfYggJwQXM1j4Zx7JA=',NULL),(7,'fefe','h8zyLJrkTtWuKndBfgtv5RZq2dP8TWHTd9WABOuoQR0=',NULL),(8,'rara','4BWnqRXrzDRXPFR3wyRK5wYjGuklUE4qa+D1Q6tr0QY=',NULL),(9,'af','UDEmh40X/Na9598yD/brfCeKHELzABSgOxfz3QwCPB0=',NULL),(10,'ff','Bam/Ij/t+AqdDaX3P1wZGmZb9KCko+YI8vnn1f8jlZw=',NULL),(11,'gg','y9PPubn1G7v78IdZ4kP1s1Gcv27MIZ7pX+fGZ+MsCo0=',NULL),(12,'ggg','Vpx/C0HOlklgKgIYzQLtCwo9kxMDKUUcx4K339p5znE=',NULL),(13,'fff','8oS9w8HJ4kpJTihcs4fGlRDyjeUcFbuTF52cfyhwU5g=',NULL),(14,'veronica','A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=',NULL),(15,'fefefe','zV1GGZLIgPR6EBCErwxqQi8g4T7qkBXOxEEZA2I7SKU=',NULL),(16,'frea','rCPDJtbJqM7LJ65B3+8wFb5WdGFJumw9hwzSlb7LngU=',NULL),(17,'trtrtr','5RU0C4KUvwbOKvRWo6UwNpz+eaK/OMNIbxAGsNA83PU=',NULL),(18,'trtr','+QAGAIo6ExY8l0vS66hccrJMejkaOu+ggJfqY1/jGfE=',NULL),(19,'frfrfr','zruXFzLjgHa6h7BIryAlKVQkW5h2tJr7LfWlje29NKc=',NULL),(20,'frfrfrfr','+I97PANxwMws4Rs5y8xZeSdAsd3zCss/E4Rr7IaUVV0=',NULL),(21,'frfrfrfrfr','rgno1dhQ8h7b8MEVKwiTGaIaboluIO3PtOuMhggnSZg=',NULL),(22,'ytytyt','96AiQk9VndkpZV/L83XfPIFkqQlD/jmDtv7dDWUaUgY=',NULL),(23,'vavavava','J45CgU26N9/z1bilkCeXxfqc2TNV9wuFbJmK/l+eRtk=',NULL),(24,'trololo','A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ=',NULL),(25,'ffffffff','mYNGGbPBYCSLacf0K6ho+UWg6gTNMc8vYNxLyPfRO4o=',NULL),(26,'fafafafafafafafafafafaf','8ppEi3gHRb8uEGZ/RsRCsQLnXnakah//lpZBhmIlq1Y=',NULL),(27,'trtrtrtrtrtrt','47mKTaMaEn1L3m5DAz9muidMqw636xxw7EFAK/YnPdg=',NULL),(28,'tttttttrrrrr','eBe7gS6CFovUj+HqZ4MHjUK+N+jbm9qv2sXEWASspk8=',NULL),(29,'ghghgh','oiI08Wkgb3tLlclbQA+qGTAH4T510z5Rv1Z59zzqh3k=',NULL),(30,'treeeeee','Bam/Ij/t+AqdDaX3P1wZGmZb9KCko+YI8vnn1f8jlZw=',NULL),(31,'ffffffffffff','Bam/Ij/t+AqdDaX3P1wZGmZb9KCko+YI8vnn1f8jlZw=',NULL),(32,'ccccccc','NVsbv8lnJc3Oj0onCP2jEKgObRMxWuxOXu0qdf6AMs4=',NULL),(33,'trtrtrtrtrt','5RU0C4KUvwbOKvRWo6UwNpz+eaK/OMNIbxAGsNA83PU=',NULL),(34,'vfvfvfv','TJRIXgwhrmxBzh3+e2v6zupato5AokdvUCCOUm9QYIA=',NULL),(35,'fff1f','8oS9w8HJ4kpJTihcs4fGlRDyjeUcFbuTF52cfyhwU5g=',NULL),(36,'try','HiYs19EQgS9XJgVabmcrks3kNki3at/1GhJEH7335mc=',NULL),(37,'tere','Cq7EYxEKqtP4/P4kvWTJG5Wwgr1ff9NusU0DkNfdx/I=',NULL),(38,'hehe','Dr4uyoAM972dnZ+fSq+8DHeuFV9Du77KacslaiTH+bs=',NULL),(39,'gfgf','pYOFq2eK/e29L3xhulbFmcUVctUKcIQ/0QKURh4suW8=',NULL),(40,'nhnh','nrtSbsNM67EF0xkz2juzrK8mtEJ/7oj9HynNcXE1N4k=',NULL),(41,'fdfd','Qn4XD3b4H3dC6doQDXE0aqYxrLP5mAoaQWgIg8BlRDE=',NULL),(42,'asddsa','BRK5rYJFWSKHbSIYRwWwri1Gis4V6WnVOmo6Z6aEZkA=',NULL),(43,'jyjy','Jj6k53+YA8ijSIE7om3fKOj0PHyOPp7aEWDYY2dmBT8=',NULL),(44,'yryryr','+jkh7zWtw1G/WeB3p6ER/vOpt+DYY0W1+FGhetD8ECc=',NULL),(45,'gggggg','XncGGpuVWsA9mldKimjYpYAFlJ+k/dPZ4429JjAo/+g=',NULL),(46,'bbb','PnRLncOTibrwxaBmBYm4QC89u0m4mz518sk1WFKjxnc=',NULL),(47,'gggggggg','1f5GsSBMt7szm5KbF3fgTSxyNZFdelDWuqE04g28gMY=',NULL),(48,'yqyqyqy','LhefGjK/xYAIPSrKyjIvBfqrMlUTAWbwPbMDmQTdYy8=',NULL),(49,'nnnnnnnnnnnnn','CJq/KaYi+j1cHaJyBpcognZU0DnjtbyrSHe6X8q6GSU=',NULL),(50,'hhhhhhhf','cA7gUtC7yU3VZq/onTU2nSljZy8x7dYqSIrE8XMfHPc=',NULL),(51,'bvbvb','bSn0+z5HDSCgI0rhvQkRQfYARv85WwRayBE5hwByoQY=',NULL),(52,'nnng','2xXnc9H3kkI9c7TL/SmowoQxlUzPFFDpqGk+L7vfPME=',NULL),(53,'zxczxc','oOwGMBvxgUlwpw+J0dNzr9/5o20bpmdfwC+Kl19O+us=',NULL),(54,'asdddd','Nn3vQroPiYx9Lgn2Gt8rYuaW3R4mgrzaCmWQ7EanJvA=',NULL),(55,'bbbbbw','0JeAtqvDoNK3JnJJIHMoDYAYWtq8zs7DDcNORC+c7Cg=',NULL),(56,'bbwbwbw','486WLnDEOXliBb5niAvvLWgQ+veUDQecr/ngxeHyDSQ=',NULL),(57,'nnbnbnbnbnb','p847bNanyTzjFiTO2y0y+AqZ2SYDfO+2wb+lzjTp+JU=',NULL),(58,'bvbxz','Pa1g89GOnGp0+2KPlDDNiqjhVe4kurcTTAzaWBU/XEo=',NULL),(59,'hhyhyhyhyhy','8y8+Z/U1bHrdkxgdT3KiRxvM0lTwhhaysQpRIAS9rlw=',NULL),(60,'vvavavavava','fYLQRFXzkmeQfBKfaI4x/Jzmf6vTS+d1IIl03GVg7sg=',NULL),(61,'bbgbgbgbg','wqUwwDN0Do0h26Wn50JGXmYrX5+3Cj+K/gKkD/ZBh+w=',NULL),(62,'gagagagagag','DgpNuM9MjmDBYou1P95pHx8GBNAOl9pJ3sa8qfR1H9I=',NULL),(63,'nnnnnnngngngn','E24P5w7MlXxf2T2fMoBed0IMh+uXYBD5LlPxkYGBNmc=',NULL),(64,'asddqdqqdqd','6KBl+itRg4lJxF/rBoMPi7VZ8/8lWL6PL+VXpBc6HHI=',NULL),(65,'fhhfhffhhf','lsU6CqPAoWEwVcg3vy6ou0hLxhXDFVi9n7Rc+/6g02w=',NULL),(66,'fhhfhffhfhsh','SZemRQTMox8j94TCx3Ib8xH0pQbyLtXvzRINIvHkyyA=',NULL),(67,'bbbbbbbbbbbf','aWtRSPmatE95YUHFH7FGpQaBHOOWEG6gcX0Ou+z1qO4=',NULL),(68,'nbnbnbnbnx','hhlh0U4A1O9XtAY8WGBBneul3DD3imo46BsY6eS3Pqk=',NULL),(69,'lgjjjjjjjjjj','NxZZ7xFDs4iKh6pafCuHxnbXoFPMlkDHyzLvRFNtAgo=',NULL),(70,'nnnnnnnnnnnnhnnd','Ng7OcPWW3bYhjSH5Io8eZPwYpzXXjyavPOq7PuNq/2E=',NULL),(71,'jgjgjgjghf','hk2jHQ6nwAPiE7exHwpXRTDOHmTWBpBs5d9QyTSHNEE=','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiZm9vYmFyIiwiaWF0IjoxNTcxMTM0NjA5LCJleHAiOjE1NzEyMjEwMDl9._nLoGlKQh_nlVnj8bM2mOQfSghcNZqHoR95ULLkPasc');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(40) DEFAULT NULL,
  `isReady` varchar(20) DEFAULT 'currently cooking',
  `cooking_time` int(50) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (123,'cara','done',4),(124,'cara','done',1),(125,'cara','done',9),(126,'cara','done',4),(128,'asd','done',2),(129,'asd','done',7),(130,'asd','done',16),(131,'asd','done',19),(132,'cara','done',3),(133,'cara','done',11),(134,'veronica','done',2),(135,'cara','done',5),(136,'cara','done',21),(137,'cara','done',5),(138,'cara','done',5),(139,'cara','done',5),(140,'cara','done',5),(141,'cara','done',10),(142,'cara','done',14),(143,'cara','done',5),(144,'cara','done',13),(145,'cara','done',15),(146,'cara','done',8),(147,'cara','done',63),(148,'cara','done',6),(149,'cara','done',55),(150,'cara','done',30),(151,'cara','done',24),(152,'cara','done',10),(153,'cara','done',15);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
INSERT INTO `pizza_menu` VALUES (1,'Carbonara',2,'pizza-icon.png'),(2,'Frutti di Mare',4,'pizza-icon.png'),(3,'Crudo',1,'pizza-icon.png'),(4,'Marinara',3,'pizza-icon.png'),(5,'Quatro Formaggi',5,'pizza-icon.png');
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

-- Dump completed on 2019-10-21 22:43:09
