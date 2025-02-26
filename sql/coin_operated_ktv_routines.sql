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
-- Temporary view structure for view `vw_order`
--

DROP TABLE IF EXISTS `vw_order`;
/*!50001 DROP VIEW IF EXISTS `vw_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_order` AS SELECT 
 1 AS `order_id`,
 1 AS `member_name`,
 1 AS `product_name`,
 1 AS `price`,
 1 AS `qty`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_song_type_play_count`
--

DROP TABLE IF EXISTS `vw_song_type_play_count`;
/*!50001 DROP VIEW IF EXISTS `vw_song_type_play_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_song_type_play_count` AS SELECT 
 1 AS `song_type_name`,
 1 AS `sum_play_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_song`
--

DROP TABLE IF EXISTS `vw_song`;
/*!50001 DROP VIEW IF EXISTS `vw_song`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_song` AS SELECT 
 1 AS `song_type_id`,
 1 AS `song_type_name`,
 1 AS `singer_id`,
 1 AS `singer_name`,
 1 AS `singer_gender`,
 1 AS `song_id`,
 1 AS `song_name`,
 1 AS `word_length`,
 1 AS `media_path`,
 1 AS `play_count`,
 1 AS `product_id`,
 1 AS `product_name`,
 1 AS `product_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_order`
--

/*!50001 DROP VIEW IF EXISTS `vw_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_order` AS select `order_detail`.`order_id` AS `order_id`,`member`.`name` AS `member_name`,`order_detail`.`product_name` AS `product_name`,`order_detail`.`price` AS `price`,`order_detail`.`qty` AS `qty`,`orders`.`created_at` AS `created_at` from (((`orders` join `order_detail` on((`orders`.`id` = `order_detail`.`order_id`))) join `member` on((`orders`.`member_id` = `member`.`id`))) join `product` on((`order_detail`.`product_id` = `product`.`id`))) where ((`orders`.`is_deleted` = 0) and (`order_detail`.`is_deleted` = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_song_type_play_count`
--

/*!50001 DROP VIEW IF EXISTS `vw_song_type_play_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_song_type_play_count` AS select `song_type`.`name` AS `song_type_name`,sum(`song`.`play_count`) AS `sum_play_count` from (`song` join `song_type` on((`song`.`song_type_id` = `song_type`.`id`))) where ((`song`.`is_deleted` = 0) and (`song_type`.`is_deleted` = 0)) group by `song_type`.`name` order by sum(`song`.`play_count`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_song`
--

/*!50001 DROP VIEW IF EXISTS `vw_song`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_song` AS select `song`.`song_type_id` AS `song_type_id`,`song_type`.`name` AS `song_type_name`,`song_singer`.`singer_id` AS `singer_id`,`singer`.`name` AS `singer_name`,`singer`.`gender` AS `singer_gender`,`song_singer`.`song_id` AS `song_id`,`song`.`name` AS `song_name`,`song`.`word_length` AS `word_length`,`song`.`media_path` AS `media_path`,`song`.`play_count` AS `play_count`,`song`.`product_id` AS `product_id`,`product`.`name` AS `product_name`,`product`.`price` AS `product_price` from ((((`song` join `song_singer` on((`song`.`id` = `song_singer`.`song_id`))) join `singer` on((`song_singer`.`singer_id` = `singer`.`id`))) join `product` on((`song`.`product_id` = `product`.`id`))) join `song_type` on((`song`.`song_type_id` = `song_type`.`id`))) where (`song`.`is_deleted` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 16:28:23
