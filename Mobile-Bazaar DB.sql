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
  `changelog_user_id` int NOT NULL,
  `changelog_message` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`changelog_id`),
  UNIQUE KEY `changelog_id_UNIQUE` (`changelog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changelog`
--

LOCK TABLES `changelog` WRITE;
/*!40000 ALTER TABLE `changelog` DISABLE KEYS */;
INSERT INTO `changelog` VALUES (84,'2023-10-21 20:34:05',1,'User logged in'),(85,'2023-10-21 20:34:37',1,'User created another user with id 0'),(86,'2023-10-21 20:35:46',1,'User logged in'),(87,'2023-10-21 20:37:00',1,'User created product with id 0'),(88,'2023-10-21 20:38:20',1,'User logged in'),(89,'2023-10-21 20:38:45',1,'User updated another user with id 16'),(90,'2023-10-21 20:39:16',1,'User created news with id 0'),(91,'2023-10-21 20:41:22',1,'User logged in'),(92,'2023-10-21 20:41:54',1,'User logged in'),(93,'2023-10-22 09:21:17',1,'User logged in'),(94,'2023-10-22 09:21:32',1,'User created another user with id 0'),(95,'2023-10-22 09:22:28',1,'User updated product with id 18'),(96,'2023-10-22 09:22:53',1,'User updated product with id 18'),(97,'2023-10-22 09:23:17',1,'User updated product with id 6'),(98,'2023-10-22 09:24:29',1,'User created another user with id 0'),(99,'2023-10-22 09:24:37',1,'User deleted another user with id 18'),(100,'2023-10-22 09:24:46',1,'User updated another user with id 17'),(101,'2023-10-22 09:57:19',1,'User logged in'),(102,'2023-10-22 09:57:34',1,'User deleted news with id 3');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (6,'2','3','4','1'),(7,'Irina','Gorozhina','0424631565','vfdvdfvdfv'),(8,'123','asdas','dasda','sdasdasd'),(9,'Irina','Gorozhina','0424631776','don\'t worry, be happy!');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'August 23, 2023','11First look at Xiaomi 1213!','Xiaomi 13T series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(2,'August 23, 2023','First look at Xiaomi 1213!','Xiaomi 13T series will be launched very soon. It will include several smartphones: 13T and 13T Pro. The other day, renders of the Xiaomi 13T Pro were published on the network, the design of which very much resembles the Redmi K60 Ultra.'),(4,'2023-10-21 20:39:16','test','I like my phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (33,8,'pending','Benedict','Cumberbatch ','','Cumberbatch@gmail.com','2023-10-22 09:28:40','Australia','Windsor','34 Bonython street','Квинсленд','0456895856',1,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (5,'Samsung 11',11,60,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','Smartphone'),(6,'Samsung 14',50,40,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','smartphone'),(7,'IPhone 13',120,5,'    Apple iPhone 12 PRO 128GB (Excellent Grade with minimal marks) in a generic box',1,'apple','Push-button'),(8,'Samsung 23',70,10,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','Smartphone'),(9,'IPhone 15',130,30,'    Apple iPhone 12 PRO 128GB (Excellent Grade with minimal marks) in a generic box',1,'apple','Push-button'),(16,'IPhone 10',10,99,'    Apple iPhone 12 PRO 128GB (Excellent Grade with minimal marks) in a generic box',1,'apple','Push-button'),(17,'Samsung 10',11,111,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','Smartphone'),(18,'Samsung 12',1,60,'The Samsung Galaxy A23 5G’s 6.6” TFT V-Cut display gives you room to see and do it all. With Full HD+ technology and a 90Hz refresh rate, the content you see every day will look smooth and sharp.',1,'samsung','smartphone');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Jane','Doe','admin','jane','$2a$10$wu4BHDi9Li38VIG7SmL0C.3DGypHh7qsxnLiLWDdZ.atJTpq1N.U2'),(2,'John','Doe','sales','john','$2a$10$jPsHpRX16ghAWqescpOq4uxB.K2pYEWfGvp9mOagyY/CDTTCcBSLq'),(16,'Nick','First','admin','nick','$2a$10$BLIXhm9MU8leJ2S97QkLIODJT2iQ7QNmaHs5/K4TTq9IBVDnmSWxu'),(17,'Irina','Gorozhina','sales','irina','$2a$10$TW9hdwksmzzJCOGK3ASrnusCt5BJ5l2YOdNeFW3VC2F4k/Vz9923e'),(19,'David','Moor','sales','david','$2a$10$atcQpLBv7sfNUz2DJi437u9k/LT9MUiwtphl6rb4xRiq3jb7TyJVq');
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

-- Dump completed on 2023-10-22 10:07:17
