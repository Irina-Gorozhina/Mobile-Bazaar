-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mobile-bazaar
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `changelog` (
  `changelog_id` int NOT NULL AUTO_INCREMENT,
  `changelog_date` datetime NOT NULL,
  `changelog_user_id` int NOT NULL DEFAULT '-1',
  `changelog_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `changelog_username` varchar(45) COLLATE utf8mb3_bin NOT NULL,
  `chnagelog_staffId` int NOT NULL DEFAULT '-1',
  `changelog_productId` int NOT NULL DEFAULT '-1',
  PRIMARY KEY (`changelog_id`),
  UNIQUE KEY `changelog_id_UNIQUE` (`changelog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (84,'2023-10-21 20:34:05',2,'User logged in2','',0,-1),(85,'2023-10-21 20:34:37',1,'User created another user with id 0','',0,-1),(86,'2023-10-21 20:35:46',1,'User logged in','',0,-1),(87,'2023-10-21 20:37:00',1,'User created product with id 0','',0,-1),(88,'2023-10-21 20:38:20',1,'User logged in','',0,-1),(89,'2023-10-21 20:38:45',1,'User updated another user with id 16','',0,-1),(90,'2023-10-21 20:39:16',1,'User created news with id 0','',0,-1),(91,'2023-10-21 20:41:22',1,'User logged in','',0,-1),(92,'2023-10-21 20:41:54',1,'User logged in','',0,-1),(93,'2023-10-22 09:21:17',1,'User logged in','',0,-1),(94,'2023-10-22 09:21:32',1,'User created another user with id 0','',0,-1),(95,'2023-10-22 09:22:28',1,'User updated product with id 18','',0,-1),(96,'2023-10-22 09:22:53',1,'User updated product with id 18','',0,-1),(97,'2023-10-22 09:23:17',1,'User updated product with id 6','',0,-1),(98,'2023-10-22 09:24:29',1,'User created another user with id 0','',0,-1),(99,'2023-10-22 09:24:37',1,'User deleted another user with id 18','',0,-1),(100,'2023-10-22 09:24:46',1,'User updated another user with id 17','',0,-1),(101,'2023-10-22 09:57:19',1,'User logged in','',0,-1),(102,'2023-10-22 09:57:34',1,'User deleted news with id 3','',0,-1),(103,'2023-10-22 15:52:53',1,'User logged in','',0,-1),(104,'2023-10-23 17:45:25',1,'User logged in','',0,-1),(105,'2023-10-23 17:47:47',16,'User logged in','',0,-1),(106,'2023-10-23 17:48:02',16,'User updated another user with id 19','',0,-1),(107,'2023-10-23 17:48:11',16,'User created another user with id 0','',0,-1),(108,'2023-10-23 17:51:51',16,'User created order with id 0','',0,-1),(109,'2023-10-23 18:08:00',1,'User logged in','',0,-1),(110,'2023-10-23 18:12:47',1,'User deleted another user with id 20','',0,-1),(111,'2023-10-23 18:34:37',1,'User logged in','',0,-1),(112,'2023-10-24 08:40:56',1,'User logged in','',0,-1),(113,'2023-10-24 08:41:24',1,'User updated another user with id 2','',0,-1),(114,'2023-10-24 08:41:54',1,'User created another user with id 0','',0,-1),(115,'2023-10-24 08:43:03',1,'User created product with id 0','',0,-1),(116,'2023-10-24 08:43:48',1,'User created order with id 0','',0,-1),(117,'2023-10-24 08:44:28',1,'User created contacts with id 0','',0,-1),(118,'2023-10-24 08:47:50',1,'User logged in','',0,-1),(119,'2023-10-24 11:49:02',1,'User logged in','',0,-1),(120,'2023-10-24 11:49:10',1,'User deleted another user with id 21','',0,-1),(121,'2023-10-24 11:49:29',1,'User deleted product with id 19','',0,-1),(122,'2023-10-24 12:36:31',1,'User logged in','',0,-1),(123,'2023-10-24 12:39:16',1,'User updated product with id 18','',0,-1),(124,'2023-10-24 12:39:32',1,'User deleted product with id 18','',0,-1),(125,'2023-10-24 12:40:02',1,'User created product with id 0','',0,-1),(126,'2023-10-24 12:45:58',1,'User logged in','',0,-1),(127,'2023-10-24 12:46:54',1,'User created product with id 0','',0,-1),(128,'2023-10-24 13:32:21',1,'User logged in','',0,-1),(129,'2023-10-24 13:33:05',1,'User created another user with id 0','',0,-1),(130,'2023-10-24 13:33:15',1,'User deleted another user with id 22','',0,-1),(131,'2023-10-24 20:53:58',1,'User logged in','',0,-1),(132,'2023-10-24 20:54:36',1,'User created product with id 0','',0,-1),(133,'2023-10-24 21:13:40',1,'User logged in','',0,-1),(134,'2023-10-24 21:14:24',1,'User updated product with id 23','',0,-1),(135,'2023-10-24 21:18:18',1,'User created order with id 0','',0,-1),(136,'2023-10-24 21:19:02',1,'User updated order with id 38','',0,-1),(137,'2023-10-24 21:19:40',1,'User updated order with id 37','',0,-1),(138,'2023-10-24 21:24:46',1,'User logged in','',0,-1),(139,'2023-10-24 21:25:12',1,'User created order with id 0','',0,-1),(140,'2023-10-24 21:29:25',1,'User logged in','',0,-1),(141,'2023-10-24 21:29:54',1,'User updated order with id 39','',0,-1),(142,'2023-10-24 21:31:18',1,'User logged in','',0,-1),(143,'2023-10-24 21:31:31',1,'User deleted order with id 39','',0,-1),(144,'2023-10-24 21:33:12',1,'User logged in','',0,-1),(145,'2023-10-24 21:33:43',1,'User created order with id 0','',0,-1),(146,'2023-10-24 21:34:07',1,'User deleted order with id 39','',0,-1),(147,'2023-10-26 11:23:33',1,'User logged in','',0,-1),(148,'2023-10-26 12:33:35',1,'User logged in','',0,-1),(149,'2023-10-26 12:33:58',1,'User created product with id 0','',0,-1),(150,'2023-10-26 12:34:33',1,'User updated product with id 24','',0,-1),(151,'2023-10-27 09:51:00',1,'User logged in','',0,-1),(152,'2023-10-27 09:55:08',1,'User created order with id 0','',0,-1),(153,'2023-10-27 10:29:00',1,'User logged in','',0,-1),(154,'2023-10-27 10:29:24',1,'User updated another user with id 17','',0,-1),(155,'2023-10-27 10:30:01',1,'User updated another user with id 17','',0,-1),(156,'2023-10-27 10:42:40',1,'User updated contacts with id 11','',0,-1),(157,'2023-10-27 10:49:05',1,'User logged in','',0,-1),(158,'2023-10-27 11:07:11',1,'User logged in','',0,-1),(159,'2023-10-27 11:11:55',1,'User created news with id 0','',0,-1),(160,'2023-10-27 14:32:55',1,'User logged in','',0,-1),(161,'2023-10-27 14:35:12',1,'User logged in','',0,-1),(162,'2023-10-28 20:19:26',1,'User logged in','',0,-1),(163,'2023-10-28 20:20:05',1,'User logged in','',0,-1),(164,'2023-10-28 20:23:54',1,'User logged in','',0,-1),(165,'2023-10-28 20:26:15',1,'User logged in','',0,-1),(166,'2023-10-28 20:30:08',1,'User logged in','',0,-1),(167,'2023-10-28 20:31:29',1,'User logged in','',0,-1),(168,'2023-10-28 20:32:15',1,'User logged in','',0,-1),(169,'2023-10-28 20:35:20',1,'User logged in','',0,-1),(170,'2023-10-28 20:37:35',1,'User logged in','',0,-1),(171,'2023-10-28 20:38:23',1,'User logged in','',0,-1),(172,'2023-10-30 13:19:59',1,'User logged in','',0,-1),(173,'2023-10-30 13:30:47',19,'User logged in','',0,-1),(174,'2023-10-30 13:31:00',1,'User logged in','',0,-1),(175,'2023-10-30 13:31:36',1,'User updated another user with id 2','',0,-1),(176,'2023-10-30 13:32:04',1,'User updated another user with id 2','',0,-1),(177,'2023-10-30 13:32:47',1,'User updated order with id 34','',0,-1),(178,'2023-10-30 13:33:09',1,'User updated order with id 35','',0,-1),(179,'2023-10-30 13:33:50',1,'User updated order with id 33','',0,-1),(180,'2023-10-30 13:34:30',1,'User updated order with id 36','',0,-1),(181,'2023-10-30 13:34:55',1,'User deleted order with id 40','',0,-1),(182,'2023-10-30 13:36:39',19,'User logged in','',0,-1),(183,'2023-10-30 13:36:48',1,'User logged in','',0,-1),(184,'2023-10-30 13:37:25',1,'User deleted order with id 39','',0,-1),(185,'2023-10-30 13:43:07',1,'User logged in','',0,-1),(186,'2023-10-30 13:43:38',1,'User created order with id 0','',0,-1),(187,'2023-10-30 13:53:59',1,'User created order with id 0','',0,-1),(188,'2023-10-30 14:08:30',1,'User logged in','',0,-1),(189,'2023-10-30 14:33:20',1,'User logged in','',0,-1),(190,'2023-10-30 19:42:09',1,'User logged in','',0,-1),(191,'2023-10-30 20:23:16',1,'User updated order with id 35','',0,-1),(192,'2023-10-30 20:23:34',1,'User updated order with id 34','',0,-1),(193,'2023-10-30 20:24:03',1,'User updated order with id 36','',0,-1),(194,'2023-10-30 20:25:04',1,'User updated order with id 37','',0,-1),(195,'2023-10-31 09:42:55',1,'User logged in','',0,-1),(196,'2023-10-31 09:47:42',1,'User created another user with id 0','',0,-1),(197,'2023-10-31 09:47:57',1,'User updated another user with id 23','',0,-1),(198,'2023-10-31 09:48:28',1,'User deleted another user with id 23','',0,-1),(199,'2023-10-31 09:49:06',1,'User created product with id 0','',0,-1),(200,'2023-10-31 09:49:29',1,'User updated product with id 25','',0,-1),(201,'2023-10-31 09:58:02',1,'User logged in','',0,-1),(202,'2023-10-31 09:58:33',17,'User logged in','',0,-1),(203,'2023-10-31 09:58:46',1,'User logged in','',0,-1),(204,'2023-10-31 09:59:06',1,'User created another user with id 0','',0,-1),(205,'2023-10-31 09:59:44',17,'User logged in','',0,-1),(206,'2023-10-31 10:01:00',1,'User logged in','',0,-1),(207,'2023-10-31 10:01:09',1,'User deleted product with id 16','',0,-1),(208,'2023-10-31 10:01:36',1,'User updated order with id 34','',0,-1),(209,'2023-10-31 10:01:50',1,'User updated order with id 34','',0,-1),(210,'2023-10-31 10:18:11',19,'User logged in','',0,-1),(211,'2023-10-31 10:18:44',1,'User logged in','',0,-1),(212,'2023-10-31 10:19:11',1,'User updated another user with id 19','',0,-1),(213,'2023-10-31 10:19:54',1,'User created another user with id 0','',0,-1),(214,'2023-10-31 10:20:04',25,'User logged in','',0,-1),(215,'2023-10-31 10:20:28',25,'User logged in','',0,-1),(216,'2023-10-31 10:20:43',17,'User logged in','',0,-1),(217,'2023-10-31 10:20:52',25,'User logged in','',0,-1),(218,'2023-10-31 10:21:00',1,'User logged in','',0,-1),(219,'2023-10-31 10:21:56',1,'User created another user with id 0','',0,-1),(220,'2023-10-31 10:22:31',1,'User logged in','',0,-1),(221,'2023-10-31 10:22:38',1,'User deleted another user with id 17','',0,-1),(222,'2023-10-31 10:22:55',1,'User created another user with id 0','',0,-1),(223,'2023-10-31 10:23:14',27,'User logged in','',0,-1),(224,'2023-10-31 10:23:51',25,'User logged in','',0,-1),(225,'2023-10-31 10:28:27',25,'User logged in','',0,-1),(226,'2023-10-31 10:28:44',27,'User logged in','',0,-1),(227,'2023-10-31 10:28:54',1,'User logged in','',0,-1),(228,'2023-10-31 10:29:31',1,'User logged in','',0,-1),(229,'2023-10-31 10:29:47',1,'User deleted another user with id 19','',0,-1),(230,'2023-10-31 10:30:12',1,'User created another user with id 0','',0,-1),(231,'2023-10-31 10:30:29',28,'User logged in','',0,-1),(232,'2023-10-31 10:36:45',1,'User logged in','',0,-1),(233,'2023-10-31 10:37:22',1,'User created another user with id 0','',0,-1),(234,'2023-10-31 10:37:34',29,'User logged in','',0,-1),(235,'2023-11-02 18:12:32',1,'User logged in','',0,-1),(236,'2023-11-02 18:12:43',1,'User logged in','',0,-1),(237,'2023-11-02 18:13:35',1,'User created order with id 0','',0,-1),(238,'2023-11-02 18:17:22',1,'User logged in','',0,-1),(239,'2023-11-02 18:17:32',1,'User updated order with id 35','',0,-1),(240,'2023-11-02 18:17:57',1,'User created order with id 0','',0,-1),(241,'2023-11-02 18:19:05',1,'User logged in','',0,-1),(242,'2023-11-02 18:19:24',1,'User created order with id 0','',0,-1),(243,'2023-11-02 18:32:25',1,'User logged in','',0,-1),(244,'2023-11-02 18:32:51',1,'User created order with id 0','',0,-1),(245,'2023-11-02 18:34:13',1,'User logged in','',0,-1),(246,'2023-11-02 18:34:47',1,'User created order with id 0','',0,-1),(247,'2023-11-03 14:25:52',1,'User logged in','',0,-1),(248,'2023-11-04 20:20:37',1,'User logged in','',0,-1),(249,'2023-11-04 20:23:07',1,'User logged in','',0,-1),(250,'2023-11-04 20:23:35',1,'User created another user with id 0','',0,-1),(251,'2023-11-04 20:24:59',1,'User logged in','',0,-1),(252,'2023-11-04 20:25:16',1,'User created another user with id 0','',0,-1),(253,'2023-11-04 20:25:30',31,'User logged in','',0,-1),(254,'2023-11-04 20:31:33',1,'User logged in','',0,-1),(255,'2023-11-04 20:31:42',1,'User updated contacts with id 6','',0,-1),(256,'2023-11-04 20:44:52',-1,'User logged in','jane',0,-1),(257,'2023-11-04 20:45:03',-1,'User updated contacts with id 6','jane',0,-1),(258,'2023-11-04 20:45:38',-1,'User logged in','jane',0,-1),(259,'2023-11-04 20:45:45',-1,'User updated contacts with id 6','jane',0,-1),(260,'2023-11-04 21:03:57',-1,'User logged in','jane',0,-1),(261,'2023-11-04 21:04:32',-1,'User logged in','jane',0,-1),(262,'2023-11-06 09:35:05',-1,'User logged in','jane',0,-1),(263,'2023-11-06 09:35:19',-1,'User deleted another user with id 29','jane',0,-1),(264,'2023-11-06 09:35:24',-1,'User deleted another user with id 31','jane',0,-1),(265,'2023-11-06 09:35:44',-1,'User created another user with id 0','jane',0,-1),(266,'2023-11-06 09:37:59',-1,'User logged in','jane',0,-1),(267,'2023-11-06 09:38:40',-1,'User deleted another user with id 32','jane',0,-1),(268,'2023-11-06 09:38:42',-1,'User created another user with id 0','jane',0,-1),(269,'2023-11-06 09:39:03',-1,'User created another user with id 0','jane',0,-1),(270,'2023-11-06 09:39:15',-1,'User logged in','max',0,-1),(271,'2023-11-06 09:39:43',-1,'User updated another user with id 28','max',0,-1),(272,'2023-11-06 09:39:54',-1,'User logged in','david',0,-1),(273,'2023-11-06 09:39:59',-1,'User created another user with id 0','david',0,-1),(274,'2023-11-06 09:41:25',-1,'User logged in','max',0,-1),(275,'2023-11-06 09:42:58',-1,'User created news with id 0','max',0,-1),(276,'2023-11-06 09:43:19',-1,'User logged in','max',0,-1),(277,'2023-11-06 09:43:28',-1,'User created another user with id 0','max',0,-1),(278,'2023-11-06 09:45:52',-1,'User logged in','max',0,-1),(279,'2023-11-06 09:46:15',-1,'User updated product with id 25','max',0,-1),(280,'2023-11-06 09:47:16',-1,'User updated order with id 35','max',0,-1),(281,'2023-11-06 10:13:02',-1,'User logged in','jane',0,-1),(282,'2023-11-06 10:14:41',-1,'User logged in','jane',0,-1),(283,'2023-11-06 10:45:12',-1,'User logged in','jane',0,-1),(284,'2023-11-06 12:57:32',-1,'User logged in','jane',0,-1),(285,'2023-11-06 12:58:44',-1,'User logged in','jane',0,-1),(286,'2023-11-06 13:00:31',-1,'User logged in','jane',0,-1),(287,'2023-11-06 13:01:23',-1,'User logged in','jane',0,-1),(288,'2023-11-06 13:03:49',-1,'User logged in','jane',0,-1),(289,'2023-11-06 13:06:29',-1,'User logged in','jane',0,-1),(290,'2023-11-06 13:17:01',-1,'User logged in','jane',0,-1),(291,'2023-11-06 13:20:28',-1,'User logged in','jane',0,-1),(292,'2023-11-06 13:24:08',-1,'User logged in','jane',0,-1),(293,'2023-11-06 13:34:06',-1,'User logged in','jane',0,-1),(294,'2023-11-06 13:52:55',-1,'User logged in','jane',0,-1),(295,'2023-11-06 13:54:57',-1,'User logged in','max',0,-1),(296,'2023-11-06 13:55:48',-1,'User created another user with id 0','max',0,-1),(297,'2023-11-06 13:59:35',-1,'User logged in','jane',0,-1),(298,'2023-11-06 13:59:59',-1,'User created another user with id 0','jane',0,-1),(299,'2023-11-06 14:04:21',-1,'User logged in','jane',0,-1),(300,'2023-11-06 14:06:15',-1,'User logged in','jane',0,-1),(301,'2023-11-06 14:08:04',-1,'User logged in','jane',0,-1),(302,'2023-11-07 08:13:56',-1,'User logged in','max',0,-1),(303,'2023-11-07 08:14:30',-1,'User logged in','jane',0,-1),(304,'2023-11-07 08:15:59',-1,'User deleted another user with id 33','jane',0,-1),(305,'2023-11-07 08:16:28',-1,'User deleted another user with id 16','jane',0,-1),(306,'2023-11-07 08:17:11',-1,'User created another user with id 0','jane',0,-1),(307,'2023-11-07 08:17:21',-1,'User logged in','tom',0,-1),(308,'2023-11-07 08:37:07',-1,'User logged in','jane',0,-1),(309,'2023-11-07 10:07:17',-1,'User logged in','jane',0,-1),(310,'2023-11-07 12:21:54',-1,'User logged in','jane',0,-1),(311,'2023-11-07 12:38:24',-1,'User logged in','jane',0,-1),(312,'2023-11-07 12:40:22',-1,'User logged in','jane',0,-1),(313,'2023-11-07 12:41:43',-1,'User logged in','jane',0,-1),(314,'2023-11-07 12:44:50',-1,'User logged in','jane',0,-1),(315,'2023-11-07 12:45:33',-1,'User logged in','jane',0,-1),(316,'2023-11-07 12:49:43',-1,'User logged in','jane',0,-1),(317,'2023-11-07 12:50:22',-1,'User logged in','jane',0,-1),(318,'2023-11-07 12:52:27',-1,'User logged in','jane',0,-1),(319,'2023-11-07 12:54:50',-1,'User logged in','jane',0,-1),(320,'2023-11-07 13:06:51',-1,'User logged in','jane',0,-1),(321,'2023-11-07 13:19:41',-1,'User logged in','max',0,-1),(322,'2023-11-07 13:21:33',-1,'User updated another user with id 38','max',0,-1),(323,'2023-11-07 13:24:24',-1,'User logged in','jane',0,-1),(324,'2023-11-07 13:26:25',-1,'User updated contacts with id 6','jane',0,-1),(325,'2023-11-07 13:27:24',-1,'User updated contacts with id 6','jane',0,-1),(326,'2023-11-07 13:28:10',-1,'User updated contacts with id 8','jane',0,-1),(327,'2023-11-07 13:29:55',-1,'User updated contacts with id 16','jane',0,-1),(328,'2023-11-07 13:30:42',-1,'User logged in','jane',0,-1),(329,'2023-11-07 13:32:39',-1,'User created product with id 0','jane',0,-1),(330,'2023-11-07 17:50:18',-1,'User logged in','jane',0,-1),(331,'2023-11-07 17:59:02',-1,'User deleted product with id 26','jane',0,-1),(332,'2023-11-07 18:07:39',-1,'User logged in','jane',0,-1),(333,'2023-11-07 18:10:02',-1,'User logged in','jane',0,-1),(334,'2023-11-07 18:12:25',-1,'User logged in','jane',0,-1),(335,'2023-11-07 18:16:28',-1,'User logged in','jane',0,-1),(336,'2023-11-07 19:28:30',-1,'User logged in','jane',0,-1),(337,'2023-11-07 19:38:30',-1,'User logged in','jane',0,-1),(338,'2023-11-07 19:40:24',-1,'User logged in','jane',0,-1),(339,'2023-11-07 19:40:50',-1,'User logged in','jane',0,-1),(340,'2023-11-07 19:41:35',-1,'User logged in','jane',0,-1),(341,'2023-11-07 19:42:55',-1,'User logged in','jane',0,-1),(342,'2023-11-07 19:44:36',-1,'User logged in','jane',0,-1),(343,'2023-11-07 19:46:50',-1,'User logged in','jane',0,-1),(344,'2023-11-08 16:02:43',-1,'User logged in','jane',0,-1),(345,'2023-11-08 16:23:56',-1,'User logged in','jane',0,-1),(346,'2023-11-08 16:25:13',-1,'User logged in','jane',0,-1),(347,'2023-11-08 16:25:35',-1,'User logged in','jane',0,-1),(348,'2023-11-08 16:25:51',-1,'User logged in','max',0,-1),(349,'2023-11-08 16:29:11',-1,'User logged in','jane',0,-1),(350,'2023-11-08 16:31:36',-1,'User logged in','max',0,-1),(351,'2023-11-08 16:33:18',-1,'User logged in','jane',0,-1),(352,'2023-11-08 16:41:52',-1,'User logged in','jane',0,-1),(353,'2023-11-09 21:09:23',-1,'User logged in','jane',1,-1),(354,'2023-11-09 21:10:44',-1,'User logged in','jane',1,-1),(355,'2023-11-09 21:13:46',-1,'User logged in','jane',1,-1),(356,'2023-11-09 21:16:20',-1,'User logged in','jane',1,-1),(357,'2023-11-09 21:19:04',-1,'User logged in','jane',1,-1),(358,'2023-11-09 21:20:52',-1,'User logged in','jane',1,-1),(359,'2023-11-09 21:23:55',-1,'User logged in','jane',1,-1),(360,'2023-11-09 21:24:17',-1,'User updated product with id 5','jane',1,5),(361,'2023-11-09 21:27:07',-1,'User logged in','jane',1,-1),(362,'2023-11-09 21:28:36',-1,'User logged in','jane',1,-1),(363,'2023-11-09 21:30:14',-1,'User logged in','jane',1,-1),(364,'2023-11-09 21:30:56',-1,'User logged in','jane',1,-1);
/*!40000 ALTER TABLE `changelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contact_surname` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contact_phone` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contact_question` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `contact_id_UNIQUE` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (6,'Cat','Cat','4','ffgg'),(7,'Irina','Gorozhina','0424631565','vfdvdfvdfv'),(8,'dog','kind','dasda','sgsgsfg'),(9,'Irina','Gorozhina','0424631776','don\'t worry, be happy!'),(10,'Irina','Gorozhina','0424631776','jgkjgkgjkgghkgkhg'),(11,'cat',' big ','043256895','I love Milk'),(12,'Irina','Irina','0424631776','under pressure'),(13,'Irina','Gorozhina','0424631776','The snail crawls quietly along the slope of Fuji up to the very heights.'),(14,'Maria','Albach','0424631776','under pressure '),(15,'asda','sdasdasdasdasdasd','1231231','asdasdasda'),(16,'Mari','Sun','1234567788','jfjjkhk'),(17,'Irina','Albach','0424631776','tkiukjkhjk');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature`
--

DROP TABLE IF EXISTS `feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature` (
  `feature_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `storage` int DEFAULT NULL,
  `battery` int DEFAULT NULL,
  `rear_camera` int DEFAULT NULL,
  `front_camera` int DEFAULT NULL,
  PRIMARY KEY (`feature_id`),
  KEY `fk_product_id` (`product_id`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature`
--

LOCK TABLES `feature` WRITE;
/*!40000 ALTER TABLE `feature` DISABLE KEYS */;
INSERT INTO `feature` VALUES (1,5,0.20,64,3000,12,5),(2,6,0.30,128,4000,16,8),(3,7,0.25,256,5000,20,12),(4,8,0.35,128,3500,12,5),(5,9,0.30,64,4500,16,8),(6,17,0.25,256,3500,12,5),(7,23,0.40,128,5000,20,12),(8,24,0.35,64,3000,12,5),(9,25,0.30,256,4000,16,8),(10,5,0.20,64,3000,12,5),(11,6,0.30,128,4000,16,8),(12,7,0.25,256,5000,20,12),(13,8,0.35,128,3500,12,5),(14,9,0.30,64,4500,16,8),(15,17,0.25,256,3500,12,5),(16,23,0.40,128,5000,20,12),(17,24,0.35,64,3000,12,5),(18,25,0.30,256,4000,16,8),(19,5,0.20,64,3000,12,5),(20,6,0.30,128,4000,16,8),(21,7,0.25,256,5000,20,12),(22,8,0.35,128,3500,12,5),(23,9,0.30,64,4500,16,8),(24,17,0.25,256,3500,12,5),(25,23,0.40,128,5000,20,12),(26,24,0.35,64,3000,12,5),(27,25,0.30,256,4000,16,8);
/*!40000 ALTER TABLE `feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_date` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `news_title` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `news_description` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_id_UNIQUE` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'August 23, 2023','11First look at Xiaomi 1213!','Xiaomi 13T series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(2,'August 23, 2023','First look at Xiaomi 1213!','Xiaomi 13T series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(4,'2023-10-21 20:39:16','test','I like my phone'),(5,'2023-10-27 11:11:55','Big news','The snail crawls quietly along the slope of Fuji up to the very heights.'),(6,'2023-11-06 09:42:58','Big news','Be happy!');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `order_status` enum('pending','complete','cancelled') NOT NULL,
  `customer_first_name` varchar(60) NOT NULL,
  `customer_last_name` varchar(60) NOT NULL,
  `customer_phone` varchar(45) NOT NULL,
  `customer_email` varchar(60) NOT NULL,
  `order_datetime` datetime NOT NULL,
  `customer_country` varchar(45) NOT NULL,
  `customer_city` varchar(45) NOT NULL,
  `customer_address` varchar(45) NOT NULL,
  `customer_state` varchar(45) NOT NULL,
  `customer_post_code` varchar(45) NOT NULL,
  `count` int NOT NULL,
  `total_price` int NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `id_UNIQUE` (`order_id`),
  KEY `product_orders_fk_idx` (`product_id`),
  CONSTRAINT `product_orders_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (33,8,'pending','Maria','Albach','0424631776','albach@gmail.com','2023-10-22 09:28:40','Australia','ROSEBERY','61 DUNNING AVENUE','QLD','2018',1,10),(34,9,'pending','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-22 15:52:43','Australia','Windsor','34 Bonython street','OLD','4030',1,30),(35,5,'pending','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-23 17:41:08','Australia','Windsor','34 Bonython street','OLD','4038',1,60),(36,17,'complete','Peter','Moor','0424631776','moor@gmail.com','2023-10-23 17:51:51','Australia','Windsor','34 Bonython street','QLD','4030',1,60),(37,6,'pending','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-24 08:43:48','Australia','Windsor','34 Bonython street','Vic','5035',2,60),(38,5,'complete','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-24 21:18:18','Australia','Windsor','34 Bonython street','Квинсленд','0424631776',2,100),(40,5,'pending','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-24 21:33:43','Australia','Windsor','34 Bonython street','Квинсленд','0424631776',0,0),(41,5,'pending','Irina','Irina','','gorozhina@gmail.com','2023-10-27 09:46:37','australia','Brisbane','34 Bonython street','OLD','4030',1,60),(42,6,'pending','Vlad','Gorozhin','0424631787','vlad@example.com','2023-10-27 09:55:08','Australia','Brisbane','34 Bonython street','OLD','4030',5,250),(43,5,'pending','Cat','Big','','gorozhina@gmail.com','2023-10-27 10:44:33','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',1,60),(44,5,'pending','Maria','Albach','','albach@gmail.com','2023-10-30 13:19:04','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',1,60),(45,5,'pending','Maria','Albach','0424631776','albach@gmail.com','2023-10-30 13:43:38','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',-1,1),(46,5,'pending','Irina','Gorozhina','0424631776','gorozhina@gmail.com','2023-10-30 13:53:59','Australia','Windsor','34 Bonython street','Квинсленд','0424631776',5,45),(47,5,'pending','123','1212','','gorozhina@gmail.com','2023-11-06 18:46:19','Australia','22','2222','22','22',1,60),(48,5,'pending','Maria','Albach','','albach@gmail.com','2023-11-08 17:00:26','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',1,60),(49,5,'pending','Maria','Albach','','albach@gmail.com','2023-11-08 17:03:09','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',1,60);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_stock` int NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `product_description` varchar(600) NOT NULL,
  `last_updated_by_staff_id` int NOT NULL,
  `product_brand` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `id_UNIQUE` (`product_id`),
  KEY `user_products_fk_idx` (`last_updated_by_staff_id`),
  CONSTRAINT `fk_product_id_feature` FOREIGN KEY (`product_id`) REFERENCES `feature` (`product_id`),
  CONSTRAINT `user_products_fk` FOREIGN KEY (`last_updated_by_staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `check_product_price_non_negative` CHECK ((`product_price` >= 0)),
  CONSTRAINT `check_product_stock_non_negative` CHECK ((`product_stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'Samsung 11',12,60,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','smartphone'),(6,'Samsung 14',50,40,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','smartphone'),(7,'IPhone 13',120,5,'    Apple iPhone 12 PRO 128GB (Excellent Grade with minimal marks) in a generic box',1,'apple','Push-button'),(8,'Samsung 23',70,10,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','Smartphone'),(9,'IPhone 15',130,30,'    Apple iPhone 12 PRO 128GB (Excellent Grade with minimal marks) in a generic box',1,'apple','Push-button'),(17,'Samsung 10',11,100,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','Smartphone'),(23,'Samsung 33',2,2,'fffff',1,'samsung','smartphone'),(24,'Samsung 12',1,60,'hjkhjkhkj',1,'samsung','smartphone'),(25,'Samsung 12',2,50,'It\'s good',34,'samsung','push-button');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `staff_first_name` varchar(45) NOT NULL,
  `staff_last_name` varchar(45) NOT NULL,
  `staff_access_role` enum('admin','stock','sales') NOT NULL,
  `staff_username` varchar(45) NOT NULL,
  `staff_password` varchar(70) NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `user_id_UNIQUE` (`staff_id`),
  UNIQUE KEY `username_UNIQUE` (`staff_username`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Jane','Doe','admin','jane','$2a$10$wu4BHDi9Li38VIG7SmL0C.3DGypHh7qsxnLiLWDdZ.atJTpq1N.U2'),(2,'John','Doe','stock','john','$2a$10$asyBSBJ.qimrd.H99j117enUqwyXDK5lsvxu0zDqRhNLVtOX3x3uy'),(25,'Jasper','Rider','sales','jasper','$2a$10$9G4TdRK6W1Hxa.6kYTCjFuHmFFQSSLpfTdzoqP.DELtJ2WtiiN1zC'),(27,'Irina','Moor','sales','irina','$2a$10$/0W9pJBZ0bEBHHl4lEK14.zGLA.StcaTaTshwJZwveS94Yh2hey5a'),(28,'David','first','stock','david','$2a$10$qYi8xtdXC1p10mXCaOaj7eaF6nVftwaTO77wgt/44ydd8Z.xIhrSu'),(34,'Max','Gor','sales','max','$2a$10$M02lzAp97ADvbsCr5CKAyeUnkeFEIcp2Dp1Tun5v9y6fSpn1fsjei'),(38,'Irina','Light','sales','ira','$2a$10$Z5x1VwHXY5j5bvQJjvFshullDYjjWwQoTsnTzmP9TszKMDwrKl8pm'),(39,'Tom ','Red','admin','tom','$2a$10$iaI0tQ/7qk/i/X.nL26FK.Kw/dcHocmSoQzJj85fyOaWFnROBE1ie');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-10 10:09:41
