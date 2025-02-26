CREATE DATABASE  IF NOT EXISTS `coin_operated_ktv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coin_operated_ktv`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: coin_operated_ktv
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '名稱',
  `product_id` int DEFAULT NULL COMMENT 'product.id',
  `word_length` int DEFAULT NULL COMMENT '字數',
  `play_count` int NOT NULL DEFAULT '0' COMMENT '點播次數',
  `song_type_id` int DEFAULT NULL COMMENT 'song_type.id',
  `media_path` varchar(255) NOT NULL DEFAULT '' COMMENT '視頻檔案路徑',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='歌曲';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'晴天',1,2,22,1,'',0),(2,'告白氣球',1,4,27,1,'',0),(3,'不為誰而作的歌',1,7,37,1,'',0),(4,'江南',1,2,45,1,'',0),(5,'倒帶',1,2,16,1,'',0),(6,'我知道你很難過',1,7,19,1,'',0),(7,'一吻之間',1,4,15,1,'',0),(8,'如果一切沒有發生過',1,9,6,1,'',0),(9,'珊瑚海',1,3,6,1,'',0),(10,'傷心酒店',1,4,23,2,'',0),(11,'酒後的心聲',1,5,43,2,'',0),(12,'住在心裏的人',2,6,16,1,'',0),(13,'First Love',1,2,27,4,'',0),(14,'愛是永恆',1,4,30,6,'',0),(15,'HER',2,1,40,5,'',0),(16,'Somewhere In Time',1,3,50,3,'',0),(17,'禁忌的戀曲',2,5,46,1,'media/禁忌的戀曲.mp4',0);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 16:28:22
