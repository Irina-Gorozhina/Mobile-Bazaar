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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Roman','Lauryniuk','500732726','asda'),(2,'Roman','Lauryniuk','500732726','asda'),(3,'Roman','Lauryniuk','500732726','asda'),(4,'Roman','Lauryniuk','500732726','asd'),(5,'Roman','Lauryniuk','500732726','asd'),(6,'Irina','Gorozhina','0424631776','hghjngh'),(7,'Irina','Gorozhina','0424631776','gugkuh');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'August 23, 2023','First look at Xiaomi 1213!','Xiaomi 13T series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(2,'Semptember 12, 2023','First look at iPhonei 21!','iPhoneseries will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(3,'October 14, 2023','First look at Nokia 1090!','Nokia 1090 series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (21,6,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:06:22','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',1,40),(22,6,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:08:35','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',1,40),(23,6,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:09:02','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',1,40),(24,6,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:12:02','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',1,40),(25,6,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:12:41','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',1,40),(26,5,'pending','Roman','Lauryniuk','','romanrostislavovich@gmail.com','2023-10-17 15:15:52','Польша','Warsaw','Marcina Kasprzaka 29C, m. 240','','01-234',3,180),(27,5,'pending','ILYA','SITNIKOV c/o INGRAM MICRO','','gorozhina@gmail.com','2023-10-18 03:38:50','Australia','ROSEBERY','61 DUNNING AVENUE','New South Wales','2018',1,60);
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
  CONSTRAINT `user_products_fk` FOREIGN KEY (`last_updated_by_staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'Samsung Galaxy Z',98,600,'5G 64GB/128GB. Dual sim smartphone has the 100% money-back guarantee',1,'samsung','Smartphone'),(6,'Samsung Galaxy A54',50,1200,'Samsung Galaxy A34. 5G 6GB/128GB.  Dual Sim Smartphone. Dual sim smartphone has the 100% money-back guarantee.',1,'samsung','Smartphone'),(7,'iPhone 19',120,1100,'iPhone19 5G 64GB/128GB. Dual sim push-batton has the 100% money-back guarantee.',1,'apple','Push-button'),(8,'Samsung Galaxy B19',70,800,'5G 64GB/128GB. Dual sim \'Samsung Galaxy B19\'. 5G 64GB/128GB. Dual sim smartphone has the 100% money-back guarantee.',1,'samsung','Smartphone'),(9,'iPhone20',130,700,' iPhone20 5G 64GB/128GB. Dual sim push-batton has the 100% money-back guarantee.',1,'apple','Push-button'),(16,'iPhone21 ',10,1000,' iPhone21 5G 64GB/128GB. Dual sim push-batton has the 100% money-back guarantee.',1,'apple','Push-button');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Jane','Doe','admin','jane','$2a$10$uOcBHAH4LtkuI0qBFIbOU.pj1FdJLC8RKR5oJkgH39/d0Q7SKrxVq'),(2,'John','Doe','sales','john','$2a$10$jPsHpRX16ghAWqescpOq4uxB.K2pYEWfGvp9mOagyY/CDTTCcBSLq'),(3,'Jess','Doe','sales','jess','$2a$10$eJj65YR/bnRW1IN0FwXi7.Sk/3TiAzcUhAL9ByNvCEakZFm90IiKi'),(4,'Jack','Doe','stock','jack','$2a$10$ms9XpSw5J/UAVJJHyBgxSOSK0m3vVxg8cbOMB7PbFoFtjQLmzNFYe');
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

-- Dump completed on 2023-10-18 21:32:20
