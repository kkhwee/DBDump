-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: mobileho_village
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `user_id` int NOT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (35,'0',38,NULL,'2022-04-08 18:03:58','2022-04-08 18:03:58','2022-04-08 18:03:58','2022-04-08 18:03:58'),(36,'0',39,4000,'2022-04-08 18:38:44','2022-04-08 18:44:26','2022-04-08 18:38:44','2022-04-08 18:44:26'),(37,'0',40,0,'2022-04-08 19:51:19','2022-04-13 03:48:32','2022-04-08 19:51:19','2022-04-13 03:48:32'),(38,'0',41,0,'2022-04-08 20:42:39','2022-04-08 20:46:20','2022-04-08 20:42:39','2022-04-08 20:46:20'),(39,'0',42,0,'2022-04-11 12:37:52','2022-04-20 05:44:00','2022-04-11 12:37:52','2022-04-20 05:44:00'),(40,'0',43,0,'2022-04-11 12:40:28','2022-04-11 12:46:56','2022-04-11 12:40:28','2022-04-11 12:46:56'),(41,'0',44,0,'2022-04-11 16:18:57','2022-04-12 21:07:59','2022-04-11 16:18:57','2022-04-12 21:07:59'),(42,'0',45,NULL,'2022-04-13 04:07:30','2022-04-13 04:07:30','2022-04-13 04:07:30','2022-04-13 04:07:30'),(43,'0',46,0,'2022-04-13 14:11:17','2022-04-17 05:14:33','2022-04-13 14:11:17','2022-04-17 05:14:33'),(44,'0',47,0,'2022-04-17 05:21:21','2022-05-03 03:58:48','2022-04-17 05:21:21','2022-05-03 03:58:48'),(45,'0',48,0,'2022-05-03 05:38:54','2022-05-03 06:15:25','2022-05-03 05:38:54','2022-05-03 06:15:25'),(46,'0',49,0,'2022-05-03 06:38:37','2022-05-03 07:11:10','2022-05-03 06:38:37','2022-05-03 07:11:10'),(47,'0',50,0,'2022-05-04 13:27:13','2022-05-05 06:05:52','2022-05-04 13:27:13','2022-05-05 06:05:52'),(48,'0',51,0,'2022-05-06 08:49:43','2022-05-09 09:18:07','2022-05-06 08:49:43','2022-05-09 09:18:07'),(49,'0',52,0,'2022-05-06 08:52:17','2022-05-09 07:11:12','2022-05-06 08:52:17','2022-05-09 07:11:12');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for enable, ''1'' for disable',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `user_id` int NOT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Clothes','0','0',1,'','2021-11-02 04:31:03','2022-01-20 08:30:44','2021-11-08 07:23:23','2022-01-20 08:30:44'),(2,'Dairy','1','1',1,'','2021-11-02 04:31:03','2021-11-08 08:59:17','2021-11-08 07:23:23','2021-11-08 08:59:17'),(3,'Veggies','0','0',1,'','2021-11-08 08:30:07','2021-11-08 13:03:03','2021-11-08 08:30:07','2021-11-08 13:03:03'),(4,'dfdf1','0','1',1,'','2021-11-08 10:36:42','2021-11-08 10:38:57','2021-11-08 10:36:42','2021-11-08 10:38:57'),(5,'dd1','1','1',1,'','2021-11-08 12:56:30','2021-11-10 12:41:12','2021-11-08 12:56:30','2021-11-10 12:41:12'),(6,'aa1','0','1',1,'','2021-11-08 13:02:40','2021-11-10 12:40:37','2021-11-08 13:02:40','2021-11-10 12:40:37'),(7,'Electronics','0','0',1,NULL,'2022-01-20 08:33:17','2022-01-20 08:33:54','2022-01-20 08:33:17','2022-01-20 08:33:54'),(8,'Fruits','0','0',1,NULL,'2022-01-21 05:05:18','2022-01-21 05:05:18','2022-01-21 05:05:18','2022-01-21 05:05:18');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatroom_user`
--

DROP TABLE IF EXISTS `chatroom_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatroom_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `chatroom_id` int NOT NULL,
  `is_left` enum('0','1') NOT NULL COMMENT '''0'' for available, ''1'' for left',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `chatroom_id` (`chatroom_id`),
  CONSTRAINT `chatroom_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chatroom_user_ibfk_2` FOREIGN KEY (`chatroom_id`) REFERENCES `chatrooms` (`id`),
  CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatroom_user`
--

LOCK TABLES `chatroom_user` WRITE;
/*!40000 ALTER TABLE `chatroom_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatroom_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatrooms`
--

DROP TABLE IF EXISTS `chatrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatrooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chatroom_name` varchar(255) NOT NULL,
  `created_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for enable, ''1'' for disable',
  `chat_type` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for individual \r\n and ''1'' for group',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatrooms`
--

LOCK TABLES `chatrooms` WRITE;
/*!40000 ALTER TABLE `chatrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_types`
--

DROP TABLE IF EXISTS `coupon_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_types`
--

LOCK TABLES `coupon_types` WRITE;
/*!40000 ALTER TABLE `coupon_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `coupon_type_id` int NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_price` decimal(10,2) NOT NULL,
  `coupon_cide` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text NOT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '"1" for delete',
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '"1" for disable, "0" for enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invited_users`
--

DROP TABLE IF EXISTS `invited_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invited_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `invited_user_id` int NOT NULL,
  `status` enum('0','1','2') NOT NULL COMMENT '''0'' Pending, ''1'' for accept, ''2'' for reject',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `invited_user_id` (`invited_user_id`),
  CONSTRAINT `invited_users_ibfk_1` FOREIGN KEY (`invited_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invited_users`
--

LOCK TABLES `invited_users` WRITE;
/*!40000 ALTER TABLE `invited_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `invited_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineItems`
--

DROP TABLE IF EXISTS `lineItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineItems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `cart_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `is_checked` int DEFAULT NULL,
  `village_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineItems`
--

LOCK TABLES `lineItems` WRITE;
/*!40000 ALTER TABLE `lineItems` DISABLE KEYS */;
INSERT INTO `lineItems` VALUES (35,'0',36,2,1,1,NULL,2,1000,'2022-04-08 18:44:00','2022-04-08 18:44:11','2022-04-08 18:44:00','2022-04-08 18:44:11'),(36,'0',36,48,1,1,NULL,2,1000,'2022-04-08 18:44:01','2022-04-08 18:44:11','2022-04-08 18:44:01','2022-04-08 18:44:11'),(37,'0',36,49,2,1,NULL,2,2000,'2022-04-08 18:44:02','2022-04-08 18:44:11','2022-04-08 18:44:02','2022-04-08 18:44:11'),(42,'0',39,61,1,0,NULL,40,43543,'2022-04-17 05:17:15','2022-04-17 05:24:35','2022-04-17 05:17:15','2022-04-17 05:24:35'),(44,'0',48,13,1,0,NULL,0,11,'2022-05-06 10:34:52','2022-05-06 12:58:13','2022-05-06 10:34:52','2022-05-06 12:58:13'),(45,'0',48,26,7,0,NULL,0,3885,'2022-05-06 10:35:09','2022-05-09 04:04:41','2022-05-06 10:35:09','2022-05-09 04:04:41'),(46,'0',48,25,3,0,NULL,0,145720494,'2022-05-06 11:36:52','2022-05-09 04:01:40','2022-05-06 11:36:52','2022-05-09 04:01:40'),(47,'0',48,27,3,0,NULL,0,9696,'2022-05-06 11:44:28','2022-05-09 04:11:24','2022-05-06 11:44:28','2022-05-09 04:11:24'),(48,'0',48,1,1,0,NULL,0,800,'2022-05-06 12:00:13','2022-05-06 12:58:13','2022-05-06 12:00:13','2022-05-06 12:58:13'),(49,'0',48,16,1,0,NULL,0,100,'2022-05-06 12:37:02','2022-05-06 12:58:13','2022-05-06 12:37:02','2022-05-06 12:58:13'),(50,'0',48,4,1,0,NULL,0,11,'2022-05-06 12:38:12','2022-05-06 12:58:13','2022-05-06 12:38:12','2022-05-06 12:58:13'),(51,'0',48,28,1,NULL,NULL,0,58,'2022-05-09 05:21:07','2022-05-09 05:21:07','2022-05-09 05:21:07','2022-05-09 05:21:07');
/*!40000 ALTER TABLE `lineItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chatroom_id` int NOT NULL,
  `user_from_id` int NOT NULL COMMENT 'message from user reference form user table ',
  `user_to_id` int NOT NULL COMMENT 'message to user reference form user table',
  `message` longblob NOT NULL,
  `message_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chatroom_id` (`chatroom_id`),
  KEY `user_from_id` (`user_from_id`),
  KEY `user_to_id` (`user_to_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`chatroom_id`) REFERENCES `chatrooms` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_from_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`user_to_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messaging_reminders`
--

DROP TABLE IF EXISTS `messaging_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messaging_reminders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `messaging_reminders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messaging_reminders`
--

LOCK TABLES `messaging_reminders` WRITE;
/*!40000 ALTER TABLE `messaging_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `messaging_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_type` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `product_order_id` int NOT NULL COMMENT 'referral to order_products table',
  `notification_title` varchar(255) NOT NULL,
  `notification_description` text NOT NULL,
  `notification_time` datetime NOT NULL,
  `read_at` enum('0','1') NOT NULL COMMENT '''0'' for unread, ''1'' for read',
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_order_id` (`product_order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`product_order_id`) REFERENCES `order_products` (`id`),
  CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `store_id` int NOT NULL,
  `quantity` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_status_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_id` int DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `order_status_id` (`order_status_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`),
  CONSTRAINT `order_products_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,1,2,1,200.00,200.00,2,'2021-12-31 07:02:29','2021-12-31 07:02:29','2021-12-31 12:27:34','2021-12-31 12:27:34',NULL,'2022-04-13 03:31:22'),(2,1,13,1,200.00,200.00,4,'2021-12-31 07:02:29','2022-01-05 05:04:17','2021-12-31 12:27:34','2022-01-05 05:04:17',NULL,'2022-04-13 03:31:22'),(3,2,13,2,560.00,560.00,4,'2021-12-31 09:59:43','2021-12-31 09:59:43','2021-12-31 12:27:34','2021-12-31 12:27:34',NULL,'2022-04-13 03:31:22'),(4,3,30,1,200.00,200.00,1,'2022-01-10 10:54:52','2022-01-10 10:57:51','2022-01-10 10:54:52','2022-01-10 10:57:51',NULL,'2022-04-13 03:31:22'),(5,4,30,1,200.00,200.00,1,'2022-01-10 10:58:47','2022-01-10 10:58:47','2022-01-10 10:58:47','2022-01-10 10:58:47',NULL,'2022-04-13 03:31:22'),(6,5,30,1,200.00,200.00,1,'2022-01-10 11:00:41','2022-01-10 11:00:41','2022-01-10 11:00:41','2022-01-10 11:00:41',NULL,'2022-04-13 03:31:22'),(7,6,30,1,200.00,200.00,1,'2022-01-10 11:02:25','2022-01-10 11:02:25','2022-01-10 11:02:25','2022-01-10 11:02:25',NULL,'2022-04-13 03:31:22'),(8,8,30,1,200.00,200.00,1,'2022-01-10 11:04:45','2022-01-10 11:04:45','2022-01-10 11:04:45','2022-01-10 11:04:45',NULL,'2022-04-13 03:31:22'),(9,9,30,1,200.00,200.00,1,'2022-01-10 11:58:21','2022-01-10 11:58:21','2022-01-10 11:58:21','2022-01-10 11:58:21',NULL,'2022-04-13 03:31:22'),(10,10,30,1,200.00,200.00,1,'2022-01-10 12:24:41','2022-01-10 12:24:41','2022-01-10 12:24:41','2022-01-10 12:24:41',NULL,'2022-04-13 03:31:22'),(11,14,29,1,38479.00,38479.00,1,'2022-01-10 19:50:00','2022-01-10 19:50:00','2022-01-10 19:50:00','2022-01-10 19:50:00',NULL,'2022-04-13 03:31:22'),(12,15,36,1,350.00,350.00,1,'2022-01-11 04:57:46','2022-01-11 04:57:46','2022-01-11 04:57:46','2022-01-11 04:57:46',NULL,'2022-04-13 03:31:22'),(13,16,42,1,100.00,100.00,1,'2022-01-11 09:29:25','2022-01-11 09:29:25','2022-01-11 09:29:25','2022-01-11 09:29:25',NULL,'2022-04-13 03:31:22'),(14,17,42,1,100.00,100.00,1,'2022-01-11 09:32:29','2022-01-11 09:32:29','2022-01-11 09:32:29','2022-01-11 09:32:29',NULL,'2022-04-13 03:31:22'),(15,18,42,1,100.00,100.00,1,'2022-01-11 09:34:40','2022-01-11 09:34:40','2022-01-11 09:34:40','2022-01-11 09:34:40',NULL,'2022-04-13 03:31:22'),(16,19,42,1,100.00,100.00,1,'2022-01-11 09:43:43','2022-01-11 09:43:43','2022-01-11 09:43:43','2022-01-11 09:43:43',NULL,'2022-04-13 03:31:22'),(17,20,38,1,1000.00,1000.00,1,'2022-01-11 09:45:07','2022-01-11 09:45:07','2022-01-11 09:45:07','2022-01-11 09:45:07',NULL,'2022-04-13 03:31:22'),(18,21,43,1,15.00,15.00,1,'2022-01-11 09:54:42','2022-01-11 09:54:42','2022-01-11 09:54:42','2022-01-11 09:54:42',NULL,'2022-04-13 03:31:22'),(19,22,43,1,15.00,15.00,1,'2022-01-11 09:57:20','2022-01-11 09:57:20','2022-01-11 09:57:20','2022-01-11 09:57:20',NULL,'2022-04-13 03:31:22'),(20,23,43,1,15.00,15.00,1,'2022-01-11 09:57:53','2022-01-11 09:57:53','2022-01-11 09:57:53','2022-01-11 09:57:53',NULL,'2022-04-13 03:31:22'),(21,24,43,1,15.00,15.00,1,'2022-01-11 10:01:55','2022-01-11 10:01:55','2022-01-11 10:01:55','2022-01-11 10:01:55',NULL,'2022-04-13 03:31:22'),(22,25,43,1,15.00,15.00,1,'2022-01-11 10:02:52','2022-01-11 10:02:52','2022-01-11 10:02:52','2022-01-11 10:02:52',NULL,'2022-04-13 03:31:22'),(23,26,43,1,15.00,15.00,1,'2022-01-11 10:03:53','2022-01-11 10:03:53','2022-01-11 10:03:53','2022-01-11 10:03:53',NULL,'2022-04-13 03:31:22'),(24,27,43,1,15.00,15.00,1,'2022-01-11 10:05:08','2022-01-11 10:05:08','2022-01-11 10:05:08','2022-01-11 10:05:08',NULL,'2022-04-13 03:31:22'),(25,28,42,1,100.00,100.00,1,'2022-01-11 11:05:27','2022-01-11 11:05:27','2022-01-11 11:05:27','2022-01-11 11:05:27',NULL,'2022-04-13 03:31:22'),(26,29,42,1,100.00,100.00,1,'2022-01-11 11:07:37','2022-01-11 11:07:37','2022-01-11 11:07:37','2022-01-11 11:07:37',NULL,'2022-04-13 03:31:22'),(27,30,43,1,15.00,15.00,1,'2022-01-11 11:15:40','2022-01-11 11:15:40','2022-01-11 11:15:40','2022-01-11 11:15:40',NULL,'2022-04-13 03:31:22'),(28,31,44,1,300.00,300.00,1,'2022-01-11 11:52:49','2022-01-11 11:52:49','2022-01-11 11:52:49','2022-01-11 11:52:49',NULL,'2022-04-13 03:31:22'),(29,32,45,1,20.00,20.00,1,'2022-01-11 12:11:14','2022-01-11 12:11:14','2022-01-11 12:11:14','2022-01-11 12:11:14',NULL,'2022-04-13 03:31:22'),(30,33,43,1,15.00,15.00,1,'2022-01-11 12:50:34','2022-01-11 12:50:34','2022-01-11 12:50:34','2022-01-11 12:50:34',NULL,'2022-04-13 03:31:22'),(31,34,9,1,23423.00,23423.00,1,'2022-01-12 14:33:02','2022-01-12 14:33:02','2022-01-12 14:33:02','2022-01-12 14:33:02',NULL,'2022-04-13 03:31:22'),(32,35,9,1,23423.00,23423.00,1,'2022-01-12 14:34:03','2022-01-12 14:34:03','2022-01-12 14:34:03','2022-01-12 14:34:03',NULL,'2022-04-13 03:31:22'),(33,36,46,1,11.00,11.00,1,'2022-01-12 14:34:57','2022-01-12 14:34:57','2022-01-12 14:34:57','2022-01-12 14:34:57',NULL,'2022-04-13 03:31:22'),(34,37,46,1,11.00,11.00,1,'2022-01-12 14:35:03','2022-01-12 14:35:03','2022-01-12 14:35:03','2022-01-12 14:35:03',NULL,'2022-04-13 03:31:22'),(35,38,9,1,23423.00,23423.00,1,'2022-01-13 07:47:04','2022-01-13 07:47:04','2022-01-13 07:47:04','2022-01-13 07:47:04',NULL,'2022-04-13 03:31:22'),(36,39,47,1,1.00,1.00,1,'2022-01-14 02:15:43','2022-01-14 02:15:43','2022-01-14 02:15:43','2022-01-14 02:15:43',NULL,'2022-04-13 03:31:22'),(37,40,44,1,300.00,300.00,1,'2022-01-17 11:27:31','2022-01-17 11:27:31','2022-01-17 11:27:31','2022-01-17 11:27:31',NULL,'2022-04-13 03:31:22'),(38,41,58,1,1.00,1.00,1,'2022-01-17 15:35:57','2022-01-17 15:35:57','2022-01-17 15:35:57','2022-01-17 15:35:57',NULL,'2022-04-13 03:31:22'),(39,48,40,1,43543.00,43543.00,1,'2022-04-13 03:33:35','2022-04-13 03:33:35','2022-04-13 03:33:35','2022-04-13 03:33:35',61,'2022-04-13 03:33:35'),(40,49,40,1,43543.00,43543.00,1,'2022-04-13 03:48:28','2022-04-13 03:48:28','2022-04-13 03:48:28','2022-04-13 03:48:28',61,'2022-04-13 03:48:28'),(41,50,40,1,43543.00,43999.00,1,'2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33',61,'2022-04-17 05:14:33'),(42,50,40,1,456.00,43999.00,1,'2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33',62,'2022-04-17 05:14:33'),(43,51,42,2,20.00,20.00,1,'2022-04-17 05:25:41','2022-04-17 05:25:41','2022-04-17 05:25:41','2022-04-17 05:25:41',63,'2022-04-17 05:25:41');
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Pending','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(2,'Approved','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(3,'Dispatch','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(4,'Out of delivery','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(5,'Completed','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(6,'Cancelled','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04'),(7,'Refunded','2021-12-31 04:48:17','2021-12-31 04:48:17','2021-12-31 10:40:04','2021-12-31 10:40:04');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `village_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `order_status` int NOT NULL,
  `date_of_delivery` varchar(255) NOT NULL,
  `shipping_id` int DEFAULT NULL,
  `coupon_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT NULL,
  `coupon_type` int DEFAULT NULL,
  `shipping_price` decimal(10,2) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `address_id` int NOT NULL,
  `address` text,
  `sub_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `order_status` (`order_status`),
  KEY `user_id` (`user_id`),
  KEY `shipping_id` (`shipping_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `coupon_type` (`coupon_type`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `user_addresses` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_status`) REFERENCES `order_statuses` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`),
  CONSTRAINT `orders_ibfk_5` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  CONSTRAINT `orders_ibfk_6` FOREIGN KEY (`coupon_type`) REFERENCES `coupon_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,15,15,2,'2022-01-03',1,NULL,'2021-12-31 07:00:19','2022-01-10 10:22:33',NULL,NULL,NULL,10.00,NULL,2,'New Test Address',400.00,410.00,'2021-12-31 08:37:24','2022-01-10 10:22:33'),(2,15,9,4,'2022-01-07',1,NULL,'2021-12-31 09:57:42','2022-01-10 10:22:24',NULL,NULL,NULL,NULL,NULL,1,'Test Address',560.00,560.00,'2021-12-31 09:57:42','2022-01-10 10:22:24'),(3,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 10:54:52','2022-01-10 11:01:56',NULL,NULL,NULL,0.00,NULL,6,'Test Address',200.00,200.00,'2022-01-10 10:54:52','2022-01-10 11:01:56'),(4,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 10:58:47','2022-01-10 11:01:58',NULL,NULL,NULL,0.00,NULL,7,'Test Address',200.00,200.00,'2022-01-10 10:58:47','2022-01-10 11:01:58'),(5,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 11:00:41','2022-01-10 11:02:00',NULL,NULL,NULL,0.00,NULL,8,'Test Address',200.00,200.00,'2022-01-10 11:00:41','2022-01-10 11:02:00'),(6,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 11:02:25','2022-01-10 11:02:25',NULL,NULL,NULL,0.00,0.00,9,'test address',200.00,200.00,'2022-01-10 11:02:25','2022-01-10 11:02:25'),(8,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 11:04:45','2022-01-10 11:04:45',NULL,NULL,NULL,0.00,0.00,11,'test address',200.00,200.00,'2022-01-10 11:04:45','2022-01-10 11:04:45'),(9,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 11:58:21','2022-01-10 11:58:21',NULL,NULL,NULL,0.00,0.00,12,'test address',200.00,200.00,'2022-01-10 11:58:21','2022-01-10 11:58:21'),(10,15,9,1,'0000-00-00',NULL,NULL,'2022-01-10 12:24:41','2022-01-10 12:24:41',NULL,NULL,NULL,0.00,0.00,13,'test address',200.00,200.00,'2022-01-10 12:24:41','2022-01-10 12:24:41'),(11,14,13,1,'0000-00-00',NULL,NULL,'2022-01-10 19:30:17','2022-01-10 19:30:17',NULL,NULL,NULL,0.00,0.00,14,'test address',38479.00,38479.00,'2022-01-10 19:30:17','2022-01-10 19:30:17'),(12,14,13,1,'0000-00-00',NULL,NULL,'2022-01-10 19:35:53','2022-01-10 19:35:53',NULL,NULL,NULL,0.00,0.00,15,'test address',38479.00,38479.00,'2022-01-10 19:35:53','2022-01-10 19:35:53'),(13,14,13,1,'0000-00-00',NULL,NULL,'2022-01-10 19:36:57','2022-01-10 19:36:57',NULL,NULL,NULL,0.00,0.00,16,'test address',38479.00,38479.00,'2022-01-10 19:36:57','2022-01-10 19:36:57'),(14,14,13,1,'0000-00-00',NULL,NULL,'2022-01-10 19:50:00','2022-01-10 19:50:00',NULL,NULL,NULL,0.00,0.00,17,'test address',38479.00,38479.00,'2022-01-10 19:50:00','2022-01-10 19:50:00'),(15,15,26,1,'0000-00-00',NULL,NULL,'2022-01-11 04:57:46','2022-01-11 04:57:46',NULL,NULL,NULL,0.00,0.00,18,'26, Monu Nager, Jaipur, India',350.00,350.00,'2022-01-11 04:57:46','2022-01-11 04:57:46'),(16,26,22,1,'0000-00-00',NULL,NULL,'2022-01-11 09:29:25','2022-01-11 09:29:25',NULL,NULL,NULL,0.00,0.00,19,'test',100.00,100.00,'2022-01-11 09:29:25','2022-01-11 09:29:25'),(17,26,22,1,'0000-00-00',NULL,NULL,'2022-01-11 09:32:29','2022-01-11 09:32:29',NULL,NULL,NULL,0.00,0.00,20,'test',100.00,100.00,'2022-01-11 09:32:29','2022-01-11 09:32:29'),(18,26,22,1,'0000-00-00',NULL,NULL,'2022-01-11 09:34:40','2022-01-11 09:34:40',NULL,NULL,NULL,0.00,0.00,21,'test',100.00,100.00,'2022-01-11 09:34:40','2022-01-11 09:34:40'),(19,26,26,1,'0000-00-00',NULL,NULL,'2022-01-11 09:43:43','2022-01-11 09:43:43',NULL,NULL,NULL,0.00,0.00,22,'Test address',100.00,100.00,'2022-01-11 09:43:43','2022-01-11 09:43:43'),(20,26,26,1,'0000-00-00',NULL,NULL,'2022-01-11 09:45:07','2022-01-11 09:45:07',NULL,NULL,NULL,0.00,0.00,23,'New address',1000.00,1000.00,'2022-01-11 09:45:07','2022-01-11 09:45:07'),(21,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 09:54:42','2022-01-11 09:54:42',NULL,NULL,NULL,0.00,0.00,24,'test',15.00,15.00,'2022-01-11 09:54:42','2022-01-11 09:54:42'),(22,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 09:57:20','2022-01-11 09:57:20',NULL,NULL,NULL,0.00,0.00,25,'New Address',15.00,15.00,'2022-01-11 09:57:20','2022-01-11 09:57:20'),(23,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 09:57:53','2022-01-11 09:57:53',NULL,NULL,NULL,0.00,0.00,26,'Test',15.00,15.00,'2022-01-11 09:57:53','2022-01-11 09:57:53'),(24,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 10:01:55','2022-01-11 10:01:55',NULL,NULL,NULL,0.00,0.00,27,'Test',15.00,15.00,'2022-01-11 10:01:55','2022-01-11 10:01:55'),(25,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 10:02:52','2022-01-11 10:02:52',NULL,NULL,NULL,0.00,0.00,28,'Test111111111111',15.00,15.00,'2022-01-11 10:02:52','2022-01-11 10:02:52'),(26,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 10:03:53','2022-01-11 10:03:53',NULL,NULL,NULL,0.00,0.00,29,'Helllllllllllllllllllllllllllllll',15.00,15.00,'2022-01-11 10:03:53','2022-01-11 10:03:53'),(27,30,29,1,'0000-00-00',NULL,NULL,'2022-01-11 10:05:08','2022-01-11 10:05:08',NULL,NULL,NULL,0.00,0.00,30,'test',15.00,15.00,'2022-01-11 10:05:08','2022-01-11 10:05:08'),(28,26,27,1,'0000-00-00',NULL,NULL,'2022-01-11 11:05:27','2022-01-11 11:05:27',NULL,NULL,NULL,0.00,0.00,31,'test',100.00,100.00,'2022-01-11 11:05:27','2022-01-11 11:05:27'),(29,26,27,1,'0000-00-00',NULL,NULL,'2022-01-11 11:07:37','2022-01-11 11:07:37',NULL,NULL,NULL,0.00,0.00,32,'testii',100.00,100.00,'2022-01-11 11:07:37','2022-01-11 11:07:37'),(30,30,21,1,'0000-00-00',NULL,NULL,'2022-01-11 11:15:40','2022-01-11 11:15:40',NULL,NULL,NULL,0.00,0.00,33,'test',15.00,15.00,'2022-01-11 11:15:40','2022-01-11 11:15:40'),(31,31,33,1,'0000-00-00',NULL,NULL,'2022-01-11 11:52:49','2022-01-11 11:52:49',NULL,NULL,NULL,0.00,0.00,34,' 26, mahaveer nager, Raj, India',300.00,300.00,'2022-01-11 11:52:49','2022-01-11 11:52:49'),(32,31,33,1,'0000-00-00',NULL,NULL,'2022-01-11 12:11:14','2022-01-11 12:11:14',NULL,NULL,NULL,0.00,0.00,35,' 26, Govind Nager, Raj India',20.00,20.00,'2022-01-11 12:11:14','2022-01-11 12:11:14'),(33,30,28,1,'0000-00-00',NULL,NULL,'2022-01-11 12:50:34','2022-01-11 12:50:34',NULL,NULL,NULL,0.00,0.00,36,'test',15.00,15.00,'2022-01-11 12:50:34','2022-01-11 12:50:34'),(34,6,16,1,'0000-00-00',NULL,NULL,'2022-01-12 14:33:02','2022-01-12 14:33:02',NULL,NULL,NULL,0.00,0.00,37,'test',23423.00,23423.00,'2022-01-12 14:33:02','2022-01-12 14:33:02'),(35,6,17,1,'0000-00-00',NULL,NULL,'2022-01-12 14:34:03','2022-01-12 14:34:03',NULL,NULL,NULL,0.00,0.00,38,'compassvale',23423.00,23423.00,'2022-01-12 14:34:03','2022-01-12 14:34:03'),(36,17,10,1,'0000-00-00',NULL,NULL,'2022-01-12 14:34:57','2022-01-12 14:34:57',NULL,NULL,NULL,0.00,0.00,39,'test',11.00,11.00,'2022-01-12 14:34:57','2022-01-12 14:34:57'),(37,17,10,1,'0000-00-00',NULL,NULL,'2022-01-12 14:35:03','2022-01-12 14:35:03',NULL,NULL,NULL,0.00,0.00,40,'adddress',11.00,11.00,'2022-01-12 14:35:03','2022-01-12 14:35:03'),(38,6,17,1,'0000-00-00',NULL,NULL,'2022-01-13 07:47:04','2022-01-13 07:47:04',NULL,NULL,NULL,0.00,0.00,41,'northstar',23423.00,23423.00,'2022-01-13 07:47:04','2022-01-13 07:47:04'),(39,32,34,1,'0000-00-00',NULL,NULL,'2022-01-14 02:15:43','2022-01-14 02:15:43',NULL,NULL,NULL,0.00,0.00,42,'Northstar',1.00,1.00,'2022-01-14 02:15:43','2022-01-14 02:15:43'),(40,31,13,1,'0000-00-00',NULL,NULL,'2022-01-17 11:27:31','2022-01-17 11:27:31',NULL,NULL,NULL,0.00,0.00,43,'Hello, Test addresss',300.00,300.00,'2022-01-17 11:27:31','2022-01-17 11:27:31'),(41,35,10,1,'0000-00-00',NULL,NULL,'2022-01-17 15:35:57','2022-01-17 15:35:57',NULL,NULL,NULL,0.00,0.00,44,'jurong east',1.00,1.00,'2022-01-17 15:35:57','2022-01-17 15:35:57'),(42,NULL,39,1,'0000-00-00',NULL,NULL,'2022-04-08 18:44:18','2022-04-08 18:44:18',NULL,NULL,NULL,0.00,0.00,45,'Punjab Society',0.00,4000.00,'2022-04-08 18:44:18','2022-04-08 18:44:18'),(43,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:11:39','2022-04-13 03:11:39',NULL,NULL,NULL,0.00,0.00,46,'fghj',0.00,43543.00,'2022-04-13 03:11:39','2022-04-13 03:11:39'),(44,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:26:14','2022-04-13 03:26:14',NULL,NULL,NULL,0.00,0.00,47,'fghj',0.00,43543.00,'2022-04-13 03:26:14','2022-04-13 03:26:14'),(45,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:26:15','2022-04-13 03:26:15',NULL,NULL,NULL,0.00,0.00,48,'fghj',0.00,43543.00,'2022-04-13 03:26:15','2022-04-13 03:26:15'),(46,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:28:15','2022-04-13 03:28:15',NULL,NULL,NULL,0.00,0.00,49,'fghj',0.00,43543.00,'2022-04-13 03:28:15','2022-04-13 03:28:15'),(47,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:31:30','2022-04-13 03:31:30',NULL,NULL,NULL,0.00,0.00,50,'fghj',0.00,43543.00,'2022-04-13 03:31:30','2022-04-13 03:31:30'),(48,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:33:35','2022-04-13 03:33:35',NULL,NULL,NULL,0.00,0.00,51,'fghj',0.00,43543.00,'2022-04-13 03:33:35','2022-04-13 03:33:35'),(49,NULL,40,1,'0000-00-00',NULL,NULL,'2022-04-13 03:48:28','2022-04-13 03:48:28',NULL,NULL,NULL,0.00,0.00,52,'fghj',0.00,43543.00,'2022-04-13 03:48:28','2022-04-13 03:48:28'),(50,NULL,46,1,'0000-00-00',NULL,NULL,'2022-04-17 05:14:33','2022-04-17 05:14:33',NULL,NULL,NULL,0.00,0.00,53,'test',0.00,43999.00,'2022-04-17 05:14:33','2022-04-17 05:14:33'),(51,NULL,42,1,'0000-00-00',NULL,NULL,'2022-04-17 05:25:41','2022-04-17 05:25:41',NULL,NULL,NULL,0.00,0.00,54,'test',0.00,20.00,'2022-04-17 05:25:41','2022-04-17 05:25:41'),(52,NULL,51,1,'0000-00-00',NULL,NULL,'2022-05-06 10:48:19','2022-05-06 10:48:19',NULL,NULL,NULL,0.00,0.00,55,'Surat',0.00,566.00,'2022-05-06 10:48:19','2022-05-06 10:48:19'),(53,NULL,51,1,'0000-00-00',NULL,NULL,'2022-05-06 10:48:30','2022-05-06 10:48:30',NULL,NULL,NULL,0.00,0.00,56,'Surat',0.00,566.00,'2022-05-06 10:48:30','2022-05-06 10:48:30');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `user_id` int NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_datetime` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rewards`
--

DROP TABLE IF EXISTS `rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rewards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rewards_type` int NOT NULL,
  `rewards_amount` decimal(10,2) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rewards`
--

LOCK TABLES `rewards` WRITE;
/*!40000 ALTER TABLE `rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shipping_price` decimal(10,2) NOT NULL,
  `shipping_from_amount` decimal(10,2) NOT NULL,
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for enable, ''1'' for disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES (1,10.00,10.00,'0','2021-12-31 06:53:30','2021-12-31 06:53:30');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sms_text` text NOT NULL,
  `send_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `send_by` (`send_by`),
  CONSTRAINT `sms_ibfk_1` FOREIGN KEY (`send_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_users`
--

DROP TABLE IF EXISTS `sms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sms_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `sms_id` (`sms_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sms_users_ibfk_1` FOREIGN KEY (`sms_id`) REFERENCES `sms` (`id`),
  CONSTRAINT `sms_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_users`
--

LOCK TABLES `sms_users` WRITE;
/*!40000 ALTER TABLE `sms_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_offers`
--

DROP TABLE IF EXISTS `store_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `offer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `store_offers_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_offers`
--

LOCK TABLES `store_offers` WRITE;
/*!40000 ALTER TABLE `store_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `category_id` int NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `available_quantity` int NOT NULL,
  `store_user_id` int DEFAULT NULL,
  `image_url` text,
  `village_id` int NOT NULL,
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for enable, ''1'' for disable',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `store_name` varchar(255) DEFAULT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) DEFAULT NULL,
  `checked` int DEFAULT NULL,
  `purchase_quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `store_user_id` (`store_user_id`),
  CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`store_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `stores_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `stores_ibfk_3` FOREIGN KEY (`store_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'T Shirt',1,'Test Description',800.00,100,101,1,'',0,'0','0','2021-11-02 04:56:35','2021-11-10 13:42:27','2021-11-02 04:56:35','2021-11-10 13:42:27',NULL,NULL,NULL,NULL,NULL),(2,'Smart Watch',2,'watch description',1000.00,25,25,1,'',2,'1','0','2021-11-02 05:26:46','2021-12-30 10:23:02','2021-11-02 05:26:46','2021-12-30 10:23:02',NULL,NULL,NULL,NULL,NULL),(3,'Digital Watch111',2,'digital watch description',1100.00,50,50,1,'',2,'0','1','2021-11-02 05:26:46','2021-11-10 13:08:39','2021-11-02 05:26:46','2021-11-10 13:08:39',NULL,NULL,NULL,NULL,NULL),(4,'Shirt',1,'Shirt',11.00,12,13,1,'',0,'1','0','2021-11-02 08:47:47','2021-11-09 10:48:43','2021-11-02 08:47:47','2021-11-09 10:48:43',NULL,NULL,NULL,NULL,NULL),(5,'ww2',1,'des1',2.00,3,4,1,'',2,'0','1','2021-11-02 09:13:33','2021-11-02 09:42:46','2021-11-02 09:13:33','2021-11-02 09:42:46',NULL,NULL,NULL,NULL,NULL),(6,'Watches',1,'Watch description',344.00,43,43,1,'',6,'0','1','2021-11-02 10:15:29','2021-11-02 10:15:54','2021-11-02 10:15:29','2021-11-02 10:15:54',NULL,NULL,NULL,NULL,NULL),(7,'Cups',1,'Test',10.00,22,11,1,'',6,'0','1','2021-11-02 10:17:59','2021-11-02 10:18:02','2021-11-02 10:17:59','2021-11-02 10:18:02',NULL,NULL,NULL,NULL,NULL),(8,'Test',1,'2342',45432.00,32,23,1,'',6,'0','1','2021-11-02 10:18:18','2021-11-02 10:18:27','2021-11-02 10:18:18','2021-11-02 10:18:27',NULL,NULL,NULL,NULL,NULL),(9,'New Shirts',1,'234',23423.00,234,234,1,'',6,'0','0','2021-11-02 10:18:25','2021-11-09 11:02:51','2021-11-02 10:18:25','2021-11-09 11:02:50',NULL,NULL,NULL,NULL,NULL),(10,'dfdf',1,'ddfd',11.00,11,11,1,'',1,'0','1','2021-11-02 10:28:23','2021-11-02 10:29:07','2021-11-02 10:28:23','2021-11-02 10:29:07',NULL,NULL,NULL,NULL,NULL),(11,'dfdf',1,'11',11.00,11,11,1,'',1,'0','1','2021-11-02 10:32:05','2021-11-02 10:32:07','2021-11-02 10:32:05','2021-11-02 10:32:07',NULL,NULL,NULL,NULL,NULL),(12,'ww111',1,'ddd',111.00,111,1,1,'',1,'0','1','2021-11-02 10:34:53','2021-11-02 10:34:55','2021-11-02 10:34:53','2021-11-02 10:34:55',NULL,NULL,NULL,NULL,NULL),(13,'Shoes',1,'Shoes',11.00,11,13,1,'',0,'0','0','2021-11-09 04:56:19','2021-11-09 10:49:41','2021-11-09 04:56:19','2021-11-09 10:49:41',NULL,NULL,NULL,NULL,NULL),(14,'ddf',3,'11',11.00,1,11,1,'',0,'1','1','2021-11-09 04:58:39','2021-11-09 09:45:29','2021-11-09 04:58:39','2021-11-09 09:45:29',NULL,NULL,NULL,NULL,NULL),(15,'test store1',3,'des1',11.00,12,131,1,'',0,'0','1','2021-11-09 09:13:02','2021-11-10 12:48:38','2021-11-09 09:13:02','2021-11-10 12:48:38',NULL,NULL,NULL,NULL,NULL),(16,'Potato',3,'Test ',100.00,100,100,1,'',0,'0','0','2021-11-09 10:47:54','2021-11-09 10:47:59','2021-11-09 10:47:54','2021-11-09 10:47:59',NULL,NULL,NULL,NULL,NULL),(24,'test',3,'test product',24.00,24,85,NULL,'',0,'0','0','2022-01-03 07:24:30','2022-01-03 07:24:30','2022-01-03 07:24:30','2022-01-03 07:24:30',NULL,NULL,NULL,NULL,NULL),(25,'cloth',1,'Test',48573498.00,1,1,NULL,'',0,'0','0','2022-01-03 07:36:01','2022-01-03 07:36:01','2022-01-03 07:36:01','2022-01-03 07:36:01',NULL,NULL,NULL,NULL,NULL),(26,'test',1,'test orders',555.00,55,65,NULL,'',0,'0','0','2022-01-03 07:36:36','2022-01-03 07:36:36','2022-01-03 07:36:36','2022-01-03 07:36:36',NULL,NULL,NULL,NULL,NULL),(27,'sfasd',1,'fdsfa',3232.00,48,58,NULL,'',0,'0','0','2022-01-03 07:38:09','2022-01-03 07:38:09','2022-01-03 07:38:09','2022-01-03 07:38:09',NULL,NULL,NULL,NULL,NULL),(28,'test',1,'dfasdfas',58.00,25,25,NULL,'',0,'0','0','2022-01-03 07:42:09','2022-01-03 07:42:09','2022-01-03 07:42:09','2022-01-03 07:42:09',NULL,NULL,NULL,NULL,NULL),(29,'Watches',1,'tetst',38479.00,1,1,NULL,'',15,'0','0','2022-01-03 07:43:03','2022-01-06 06:00:40','2022-01-03 07:43:03','2022-01-06 06:00:40',NULL,NULL,NULL,NULL,NULL),(30,'Rolling Watch',1,'tets',100.00,1,1,NULL,'',15,'0','0','2022-01-03 07:43:28','2022-01-06 06:00:16','2022-01-03 07:43:28','2022-01-06 06:00:16',NULL,NULL,NULL,NULL,NULL),(31,'Digital Watch',1,'tets1',38479.00,1,1,NULL,'',15,'0','0','2022-01-03 07:44:45','2022-01-06 06:00:32','2022-01-03 07:44:45','2022-01-06 06:00:32',NULL,NULL,NULL,NULL,NULL),(32,'new test',3,'fgsdf',78.00,85,78,NULL,'',15,'0','1','2022-01-03 18:06:18','2022-01-03 18:17:48','2022-01-03 18:06:18','2022-01-03 18:17:48',NULL,NULL,NULL,NULL,NULL),(33,'Pents',1,'Test Description',140.00,90,90,NULL,'',25,'0','0','2022-01-04 06:38:54','2022-01-04 06:39:15','2022-01-04 06:38:54','2022-01-04 06:39:15',NULL,NULL,NULL,NULL,NULL),(34,'Shirts',1,'Good Shirt',900.00,10,10,NULL,'',25,'0','1','2022-01-04 06:39:41','2022-01-04 06:39:54','2022-01-04 06:39:41','2022-01-04 06:39:54',NULL,NULL,NULL,NULL,NULL),(35,'honey',1,'TEST',100.00,10,11,NULL,'',26,'0','1','2022-01-05 13:22:43','2022-01-05 13:24:25','2022-01-05 13:22:43','2022-01-05 13:24:25',NULL,NULL,NULL,NULL,NULL),(36,'T-Shirt',1,'New T-shirts ',350.00,100,100,NULL,'',15,'0','0','2022-01-06 06:11:08','2022-01-06 06:11:08','2022-01-06 06:11:08','2022-01-06 06:11:08',NULL,NULL,NULL,NULL,NULL),(37,'tomato',3,'test',100.00,10,11,NULL,'',26,'0','0','2022-01-06 08:55:54','2022-01-06 08:55:54','2022-01-06 08:55:54','2022-01-06 08:55:54',NULL,NULL,NULL,NULL,NULL),(38,'nike',1,'tet',1000.00,100,110,NULL,'',26,'0','0','2022-01-06 08:56:45','2022-01-07 04:46:31','2022-01-06 08:56:45','2022-01-07 04:46:31',NULL,NULL,NULL,NULL,NULL),(39,'test',3,'res',100.00,10,11,NULL,'',28,'0','0','2022-01-06 09:44:24','2022-01-06 09:44:24','2022-01-06 09:44:24','2022-01-06 09:44:24',NULL,NULL,NULL,NULL,NULL),(40,'Red finger',1,'tedt',100.00,11,10,NULL,'',26,'0','0','2022-01-07 04:47:20','2022-01-07 04:47:27','2022-01-07 04:47:20','2022-01-07 04:47:27',NULL,NULL,NULL,NULL,NULL),(41,'Potatoess',3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit',20.00,1,100,NULL,'',29,'0','0','2022-01-10 05:31:00','2022-01-10 05:37:21','2022-01-10 05:31:00','2022-01-10 05:37:21',NULL,NULL,NULL,NULL,NULL),(42,'jem',3,'test',100.00,20,10,NULL,'',26,'0','0','2022-01-11 09:22:44','2022-01-11 09:22:44','2022-01-11 09:22:44','2022-01-11 09:22:44',NULL,NULL,NULL,NULL,NULL),(43,'poya',3,'tesrt',15.00,1,0,NULL,'',30,'0','0','2022-01-11 09:52:08','2022-01-11 09:52:08','2022-01-11 09:52:08','2022-01-11 09:52:08',NULL,NULL,NULL,NULL,NULL),(44,'Rice',3,'Test description',300.00,10,10,NULL,'http://172.105.127.109:3001/assets/images/product/419556424515097.png',31,'0','0','2022-01-11 11:50:53','2022-01-17 04:50:07','2022-01-11 11:50:53','2022-01-17 04:50:07',NULL,NULL,NULL,NULL,NULL),(45,'Clilli',3,'Test Description',20.00,50,50,NULL,'http://172.105.127.109:3001/assets/images/product/48725462201235.png',31,'0','0','2022-01-11 12:10:39','2022-01-17 04:49:55','2022-01-11 12:10:39','2022-01-17 04:49:55',NULL,NULL,NULL,NULL,NULL),(46,'test',1,'test',11.00,100,100,NULL,'',17,'0','0','2022-01-12 14:34:19','2022-01-12 14:34:19','2022-01-12 14:34:19','2022-01-12 14:34:19',NULL,NULL,NULL,NULL,NULL),(47,'test',3,'test',1.00,1,13,NULL,'',32,'0','0','2022-01-13 07:44:58','2022-01-13 07:44:58','2022-01-13 07:44:58','2022-01-13 07:44:58',NULL,NULL,NULL,NULL,NULL),(48,'Watch',2,'watch description',1000.00,25,25,1,NULL,2,'0','0','2022-01-13 13:55:57','2022-01-13 13:55:57','2022-01-13 13:55:57','2022-01-13 13:55:57',NULL,NULL,NULL,NULL,NULL),(49,'Watch',2,'watch description',1000.00,25,25,1,NULL,2,'0','0','2022-01-13 13:57:30','2022-01-13 13:57:30','2022-01-13 13:57:30','2022-01-13 13:57:30',NULL,NULL,NULL,NULL,NULL),(50,'Watch',2,'watch description',1000.00,25,25,1,NULL,2,'0','0','2022-01-13 13:58:31','2022-01-13 13:58:31','2022-01-13 13:58:31','2022-01-13 13:58:31',NULL,NULL,NULL,NULL,NULL),(51,'Smart Watch',2,'watch description',1000.00,25,25,1,'http://172.105.127.109:3001/assets/images/product/38047882987909.png',2,'0','0','2022-01-13 13:58:39','2022-01-13 14:02:05','2022-01-13 13:58:39','2022-01-13 14:02:05',NULL,NULL,NULL,NULL,NULL),(52,'Watch',2,'watch description',1000.00,25,25,1,'http://172.105.127.109:3001/assets/images/product/38047882987909.png',2,'0','0','2022-01-13 13:59:54','2022-01-13 13:59:54','2022-01-13 13:59:54','2022-01-13 13:59:54',NULL,NULL,NULL,NULL,NULL),(53,'Lyon',3,'test',425.00,5,100,NULL,NULL,32,'0','0','2022-01-14 02:19:03','2022-01-14 02:19:03','2022-01-14 02:19:03','2022-01-14 02:19:03',NULL,NULL,NULL,NULL,NULL),(54,'tomato',3,'test tomato',4.50,100,100,NULL,NULL,34,'0','0','2022-01-14 06:18:09','2022-01-14 06:18:23','2022-01-14 06:18:09','2022-01-14 06:18:23',NULL,NULL,NULL,NULL,NULL),(55,'test product',3,'test',25.00,100,80,NULL,'http://172.105.127.109:3001/assets/images/product/932256400143622.png',15,'0','0','2022-01-15 08:30:17','2022-01-20 08:36:08','2022-01-15 08:30:17','2022-01-20 08:36:07',NULL,NULL,NULL,NULL,NULL),(56,'T-Shirt',1,'Test TEst',500.00,100,100,NULL,'http://172.105.127.109:3001/assets/images/product/526126663047297.png',31,'0','0','2022-01-17 04:49:09','2022-01-17 04:49:09','2022-01-17 04:49:09','2022-01-17 04:49:09',NULL,NULL,NULL,NULL,NULL),(57,'Test',3,'rteterterterter',200.00,20,20,NULL,'http://172.105.127.109:3001/assets/images/product/706640346942961.png',15,'0','0','2022-01-17 12:38:25','2022-01-17 12:38:25','2022-01-17 12:38:25','2022-01-17 12:38:25',NULL,NULL,NULL,NULL,NULL),(58,'Carrot',3,'fresh carrot',1.00,100,100,NULL,'http://172.105.127.109:3001/assets/images/product/789761608243195.png',35,'0','0','2022-01-17 15:33:46','2022-01-17 15:33:46','2022-01-17 15:33:46','2022-01-17 15:33:46',NULL,NULL,NULL,NULL,NULL),(59,'Round Eggplant',3,'Big Round Eggplants',1.50,100,100,NULL,'http://172.105.127.109:3001/assets/images/product/182958651817176.png',35,'0','0','2022-01-17 15:38:29','2022-01-17 15:38:29','2022-01-17 15:38:29','2022-01-17 15:38:29',NULL,NULL,NULL,NULL,NULL),(60,'Broccoli ',3,'Australia Broccoli',3.00,100,190,NULL,'http://172.105.127.109:3001/assets/images/product/26504432175817.png',35,'0','0','2022-01-17 15:39:14','2022-01-17 15:39:14','2022-01-17 15:39:14','2022-01-17 15:39:14',NULL,NULL,NULL,NULL,NULL),(61,'edfsg',1,'ewrtyr',43543.00,324532,34234,40,'',40,'0','0','2022-04-13 03:09:41','2022-04-13 03:09:41','2022-04-13 03:09:41','2022-04-13 03:09:41',NULL,NULL,43543.00,NULL,1),(62,'rtyui',1,'45678',456.00,4567,678,40,'',40,'0','0','2022-04-13 03:52:02','2022-04-13 03:52:02','2022-04-13 03:52:02','2022-04-13 03:52:02',NULL,NULL,456.00,NULL,1),(63,'testing birdnest',3,'birdnest abalone',10.00,10,10,47,'',42,'0','0','2022-04-17 05:23:04','2022-04-17 05:23:04','2022-04-17 05:23:04','2022-04-17 05:23:04',NULL,NULL,10.00,NULL,1),(64,'carrots',3,'test',1.00,1,1,50,'',43,'0','0','2022-05-04 13:29:22','2022-05-04 13:29:22','2022-05-04 13:29:22','2022-05-04 13:29:22',NULL,NULL,1.00,NULL,1);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Country_name` varchar(32) DEFAULT NULL,
  `ISO2` varchar(2) DEFAULT NULL,
  `ISO3` varchar(3) DEFAULT NULL,
  `Top Level Domain` varchar(2) DEFAULT NULL,
  `FIPS` varchar(2) DEFAULT NULL,
  `ISO Numeric` int DEFAULT NULL,
  `GeoNameID` varchar(7) DEFAULT NULL,
  `E164` int DEFAULT NULL,
  `code` varchar(19) DEFAULT NULL,
  `Continent` varchar(13) DEFAULT NULL,
  `Capital` varchar(20) DEFAULT NULL,
  `Time Zone in Capital` varchar(30) DEFAULT NULL,
  `Currency` varchar(13) DEFAULT NULL,
  `Language Codes` varchar(89) DEFAULT NULL,
  `Languages` varchar(489) DEFAULT NULL,
  `Area KM2` int DEFAULT NULL,
  `Internet Hosts` varchar(9) DEFAULT NULL,
  `Internet Users` varchar(9) DEFAULT NULL,
  `Phones (Mobile)` varchar(10) DEFAULT NULL,
  `Phones (Landline)` varchar(9) DEFAULT NULL,
  `GDP` varchar(14) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'Afghanistan','AF','AFG','af','AF',4,'1149361',93,'93','Asia','Kabul','Asia/Kabul','Afghani','fa-AF,ps,uz-AF,tk','Afghan Persian or Dari (official) 50%, Pashto (official) 35%, Turkic languages (primarily Uzbek and Turkmen) 11%, 30 minor languages (primarily Balochi and Pashai) 4%, much bilingualism, but Dari functions as the lingua franca',647500,'223','1000000','18000000','13500','20650000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(2,'Albania','AL','ALB','al','AL',8,'783754',355,'355','Europe','Tirana','Europe/Tirane','Lek','sq,el','Albanian 98.8% (official - derived from Tosk dialect), Greek 0.5%, other 0.6% (including Macedonian, Roma, Vlach, Turkish, Italian, and Serbo-Croatian), unspecified 0.1% (2011 est.)',28748,'15528','1300000','3500000','312000','12800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(3,'Algeria','DZ','DZA','dz','AG',12,'2589581',213,'213','Africa','Algiers','Africa/Algiers','Dinar','ar-DZ','Arabic (official), French (lingua franca), Berber dialects: Kabylie Berber (Tamazight), Chaouia Berber (Tachawit), Mzab Berber, Tuareg Berber (Tamahaq)',2381740,'676','4700000','37692000','3200000','215700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(4,'American Samoa','AS','ASM','as','AQ',16,'5880801',1,'1-684','Oceania','Pago Pago','Pacific/Pago_Pago','Dollar','en-AS,sm,to','Samoan 90.6% (closely related to Hawaiian and other Polynesian languages), English 2.9%, Tongan 2.4%, other Pacific islander 2.1%, other 2%',199,'2387','','','10000','462200000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(5,'Andorra','AD','AND','ad','AN',20,'3041565',376,'376','Europe','Andorra la Vella','Europe/Andorra','Euro','ca','Catalan (official), French, Castilian, Portuguese',468,'28383','67100','65000','39000','4800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(6,'Angola','AO','AGO','ao','AO',24,'3351879',244,'244','Africa','Luanda','Africa/Luanda','Kwanza','pt-AO','Portuguese (official), Bantu and other African languages',1246700,'20703','606700','9800000','303000','124000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(7,'Anguilla','AI','AIA','ai','AV',660,'3573511',1,'1-264','North America','The Valley','America/Anguilla','Dollar','en-AI','English (official)',102,'269','3700','26000','6000','175400000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(8,'Antarctica','AQ','ATA','aq','AY',10,'6697173',672,'672','Antarctica','','Antarctica/Troll','','','',14000000,'7764','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(9,'Antigua and Barbuda','AG','ATG','ag','AC',28,'3576396',1,'1-268','North America','St. John\'s','America/Antigua','Dollar','en-AG','English (official), local dialects',443,'11532','65000','179800','35000','1220000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(10,'Argentina','AR','ARG','ar','AR',32,'3865483',54,'54','South America','Buenos Aires','America/Argentina/Buenos_Aires','Peso','es-AR,en,it,de,fr,gn','Spanish (official), Italian, English, German, French, indigenous (Mapudungun, Quechua)',2766890,'11232000','13694000','58600000','1','484600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(11,'Armenia','AM','ARM','am','AM',51,'174982',374,'374','Asia','Yerevan','Asia/Yerevan','Dram','hy','Armenian (official) 97.9%, Kurdish (spoken by Yezidi minority) 1%, other 1% (2011 est.)',29800,'194142','208200','3223000','584000','10440000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(12,'Aruba','AW','ABW','aw','AA',533,'3577279',297,'297','North America','Oranjestad','America/Aruba','Guilder','nl-AW,es,en','Papiamento (a Spanish-Portuguese-Dutch-English dialect) 69.4%, Spanish 13.7%, English (widely spoken) 7.1%, Dutch (official) 6.1%, Chinese 1.5%, other 1.7%, unspecified 0.4% (2010 est.)',193,'40560','24000','135000','43000','2516000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(13,'Australia','AU','AUS','au','AS',36,'2077456',61,'61','Oceania','Canberra','Australia/Sydney','Dollar','en-AU','English 76.8%, Mandarin 1.6%, Italian 1.4%, Arabic 1.3%, Greek 1.2%, Cantonese 1.2%, Vietnamese 1.1%, other 10.4%, unspecified 5% (2011 est.)',7686850,'17081000','15810000','24400000','10470000','1488000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(14,'Austria','AT','AUT','at','AU',40,'2782113',43,'43','Europe','Vienna','Europe/Vienna','Euro','de-AT,hr,hu,sl','German (official nationwide) 88.6%, Turkish 2.3%, Serbian 2.2%, Croatian (official in Burgenland) 1.6%, other (includes Slovene, official in Carinthia, and Hungarian, official in Burgenland) 5.3% (2001 census)',83858,'3512000','6143000','13590000','3342000','417900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(15,'Azerbaijan','AZ','AZE','az','AJ',31,'587116',994,'994','Asia','Baku','Asia/Baku','Manat','az,ru,hy','Azerbaijani (Azeri) (official) 92.5%, Russian 1.4%, Armenian 1.4%, other 4.7% (2009 est.)',86600,'46856','2420000','10125000','1734000','76010000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(16,'Bahamas','BS','BHS','bs','BF',44,'3572887',1,'1-242','North America','Nassau','America/Nassau','Dollar','en-BS','English (official), Creole (among Haitian immigrants)',13940,'20661','115800','254000','137000','8373000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(17,'Bahrain','BH','BHR','bh','BA',48,'290291',973,'973','Asia','Manama','Asia/Bahrain','Dinar','ar-BH,en,fa,ur','Arabic (official), English, Farsi, Urdu',665,'47727','419500','2125000','290000','28360000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(18,'Bangladesh','BD','BGD','bd','BG',50,'1210997',880,'880','Asia','Dhaka','Asia/Dhaka','Taka','bn-BD,en','Bangla (official, also known as Bengali), English',144000,'71164','617300','97180000','962000','140200000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(19,'Barbados','BB','BRB','bb','BB',52,'3374084',1,'1-246','North America','Bridgetown','America/Barbados','Dollar','en-BB','English (official), Bajan (English-based creole language, widely spoken in informal settings)',431,'1524','188000','347000','144000','4262000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(20,'Belarus','BY','BLR','by','BO',112,'630336',375,'375','Europe','Minsk','Europe/Minsk','Ruble','be,ru','Belarusian (official) 23.4%, Russian (official) 70.2%, other 3.1% (includes small Polish- and Ukrainian-speaking minorities), unspecified 3.3% (2009 est.)',207600,'295217','2643000','10675000','4407000','69240000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(21,'Belgium','BE','BEL','be','BE',56,'2802361',32,'32','Europe','Brussels','Europe/Brussels','Euro','nl-BE,fr-BE,de-BE','Dutch (official) 60%, French (official) 40%, German (official) less than 1%, legally bilingual (Dutch and French)',30510,'5192000','8113000','12880000','4631000','507400000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(22,'Belize','BZ','BLZ','bz','BH',84,'3582678',501,'501','North America','Belmopan','America/Belize','Dollar','en-BZ,es','Spanish 46%, Creole 32.9%, Mayan dialects 8.9%, English 3.9% (official), Garifuna 3.4% (Carib), German 3.3%, other 1.4%, unknown 0.2% (2000 census)',22966,'3392','36000','164200','25400','1637000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(23,'Benin','BJ','BEN','bj','BN',204,'2395170',229,'229','Africa','Porto-Novo','Africa/Porto-Novo','Franc','fr-BJ','French (official), Fon and Yoruba (most common vernaculars in south), tribal languages (at least six major ones in north)',112620,'491','200100','8408000','156700','8359000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(24,'Bermuda','BM','BMU','bm','BD',60,'3573345',1,'1-441','North America','Hamilton','Atlantic/Bermuda','Dollar','en-BM,pt','English (official), Portuguese',53,'20040','54000','91000','69000','5600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(25,'Bhutan','BT','BTN','bt','BT',64,'1252634',975,'975','Asia','Thimphu','Asia/Thimphu','Ngultrum','dz','Sharchhopka 28%, Dzongkha (official) 24%, Lhotshamkha 22%, other 26% (includes foreign languages) (2005 est.)',47000,'14590','50000','560000','27000','2133000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(26,'Bolivia','BO','BOL','bo','BL',68,'3923057',591,'591','South America','Sucre','America/La_Paz','Boliviano','es-BO,qu,ay','Spanish (official) 60.7%, Quechua (official) 21.2%, Aymara (official) 14.6%, Guarani (official), foreign languages 2.4%, other 1.2%',1098580,'180988','1103000','9494000','880600','30790000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(27,'Bosnia and Herzegovina','BA','BIH','ba','BK',70,'3277605',387,'387','Europe','Sarajevo','Europe/Sarajevo','Marka','bs,hr-BA,sr-BA','Bosnian (official), Croatian (official), Serbian (official)',51129,'155252','1422000','3350000','878000','18870000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(28,'Botswana','BW','BWA','bw','BC',72,'933860',267,'267','Africa','Gaborone','Africa/Gaborone','Pula','en-BW,tn-BW','Setswana 78.2%, Kalanga 7.9%, Sekgalagadi 2.8%, English (official) 2.1%, other 8.6%, unspecified 0.4% (2001 census)',600370,'1806','120000','3082000','160500','15530000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(29,'Brazil','BR','BRA','br','BR',76,'3469034',55,'55','South America','Brasilia','America/Sao_Paulo','Real','pt-BR,es,en,fr','Portuguese (official and most widely spoken language)',8511965,'26577000','75982000','248324000','44300000','2190000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(30,'British Indian Ocean Territory','IO','IOT','io','IO',86,'1282588',246,'246','Asia','Diego Garcia','Indian/Chagos','Dollar','en-IO','English',60,'75006','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(31,'British Virgin Islands','VG','VGB','vg','VI',92,'3577718',1,'1-284','North America','Road Town','America/Tortola','Dollar','en-VG','English (official)',153,'505','4000','48700','12268','1095000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(32,'Brunei','BN','BRN','bn','BX',96,'1820814',673,'673','Asia','Bandar Seri Begawan','Asia/Brunei','Dollar','ms-BN,en-BN','Malay (official), English, Chinese',5770,'49457','314900','469700','70933','16560000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(33,'Bulgaria','BG','BGR','bg','BU',100,'732800',359,'359','Europe','Sofia','Europe/Sofia','Lev','bg,tr-BG','Bulgarian (official) 76.8%, Turkish 8.2%, Roma 3.8%, other 0.7%, unspecified 10.5% (2011 est.)',110910,'976277','3395000','10780000','2253000','53700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(34,'Burkina Faso','BF','BFA','bf','UV',854,'2361809',226,'226','Africa','Ouagadougou','Africa/Ouagadougou','Franc','fr-BF','French (official), native African languages belonging to Sudanic family spoken by 90% of the population',274200,'1795','178100','9980000','141400','12130000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(35,'Burundi','BI','BDI','bi','BY',108,'433561',257,'257','Africa','Bujumbura','Africa/Bujumbura','Franc','fr-BI,rn','Kirundi 29.7% (official), Kirundi and other language 9.1%, French (official) and French and other language 0.3%, Swahili and Swahili and other language 0.2% (along Lake Tanganyika and in the Bujumbura area), English and English and other language 0.06%, more than 2 languages 3.7%, unspecified 56.9% (2008 est.)',27830,'229','157800','2247000','17400','2676000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(36,'Cambodia','KH','KHM','kh','CB',116,'1831722',855,'855','Asia','Phnom Penh','Asia/Phnom_Penh','Riels','km,fr,en','Khmer (official) 96.3%, other 3.7% (2008 est.)',181040,'13784','78500','19100000','584000','15640000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(37,'Cameroon','CM','CMR','cm','CM',120,'2233387',237,'237','Africa','Yaounde','Africa/Douala','Franc','en-CM,fr-CM','24 major African language groups, English (official), French (official)',475440,'10207','749600','13100000','737400','27880000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(38,'Canada','CA','CAN','ca','CA',124,'6251999',1,'1','North America','Ottawa','America/Toronto','Dollar','en-CA,fr-CA,iu','English (official) 58.7%, French (official) 22%, Punjabi 1.4%, Italian 1.3%, Spanish 1.3%, German 1.3%, Cantonese 1.2%, Tagalog 1.2%, Arabic 1.1%, other 10.5% (2011 est.)',9984670,'8743000','26960000','26263000','18010000','1825000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(39,'Cape Verde','CV','CPV','cv','CV',132,'3374766',238,'238','Africa','Praia','Atlantic/Cape_Verde','Escudo','pt-CV','Portuguese (official), Crioulo (a blend of Portuguese and West African words)',4033,'38','150000','425300','70200','1955000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(40,'Cayman Islands','KY','CYM','ky','CJ',136,'3580718',1,'1-345','North America','George Town','America/Cayman','Dollar','en-KY','English (official) 90.9%, Spanish 4%, Filipino 3.3%, other 1.7%, unspecified 0.1% (2010 est.)',262,'23472','23000','96300','37400','2250000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(41,'Central African Republic','CF','CAF','cf','CT',140,'239880',236,'236','Africa','Bangui','Africa/Bangui','Franc','fr-CF,sg,ln,kg','French (official), Sangho (lingua franca and national language), tribal languages',622984,'20','22600','1070000','5600','2050000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(42,'Chad','TD','TCD','td','CD',148,'2434508',235,'235','Africa','N\'Djamena','Africa/Ndjamena','Franc','fr-TD,ar-TD,sre','French (official), Arabic (official), Sara (in south), more than 120 different languages and dialects',1284000,'6','168100','4200000','29900','13590000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(43,'Chile','CL','CHL','cl','CI',152,'3895114',56,'56','South America','Santiago','America/Santiago','Peso','es-CL','Spanish 99.5% (official), English 10.2%, indigenous 1% (includes Mapudungun, Aymara, Quechua, Rapa Nui), other 2.3%, unspecified 0.2%',756950,'2152000','7009000','24130000','3276000','281700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(44,'China','CN','CHN','cn','CH',156,'1814991',86,'86','Asia','Beijing','Asia/Shanghai','Yuan Renminbi','zh-CN,yue,wuu,dta,ug,za','Standard Chinese or Mandarin (official; Putonghua, based on the Beijing dialect), Yue (Cantonese), Wu (Shanghainese), Minbei (Fuzhou), Minnan (Hokkien-Taiwanese), Xiang, Gan, Hakka dialects, minority languages',9596960,'20602000','389000000','1100000000','278860000','9330000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(45,'Christmas Island','CX','CXR','cx','KT',162,'2078138',61,'61','Asia','Flying Fish Cove','Indian/Christmas','Dollar','en,zh,ms-CC','English (official), Chinese, Malay',135,'3028','464','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(46,'Cocos Islands','CC','CCK','cc','CK',166,'1547376',61,'61','Asia','West Island','Indian/Cocos','Dollar','ms-CC,en','Malay (Cocos dialect), English',14,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(47,'Colombia','CO','COL','co','CO',170,'3686110',57,'57','South America','Bogota','America/Bogota','Peso','es-CO','Spanish (official)',1138910,'4410000','22538000','49066000','6291000','369200000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(48,'Comoros','KM','COM','km','CN',174,'921929',269,'269','Africa','Moroni','Indian/Comoro','Franc','ar,fr-KM','Arabic (official), French (official), Shikomoro (a blend of Swahili and Arabic)',2170,'14','24300','250000','24000','658000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(49,'Cook Islands','CK','COK','ck','CW',184,'1899402',682,'682','Oceania','Avarua','Pacific/Rarotonga','Dollar','en-CK,mi','English (official) 86.4%, Cook Islands Maori (Rarotongan) (official) 76.2%, other 8.3%',240,'3562','6000','7800','7200','183200000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(50,'Costa Rica','CR','CRI','cr','CS',188,'3624060',506,'506','North America','San Jose','America/Costa_Rica','Colon','es-CR,en','Spanish (official), English',51100,'147258','1485000','6151000','1018000','48510000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(51,'Croatia','HR','HRV','hr','HR',191,'3202326',385,'385','Europe','Zagreb','Europe/Zagreb','Kuna','hr-HR,sr','Croatian (official) 95.6%, Serbian 1.2%, other 3% (including Hungarian, Czech, Slovak, and Albanian), unspecified 0.2% (2011 est.)',56542,'729420','2234000','4970000','1640000','59140000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(52,'Cuba','CU','CUB','cu','CU',192,'3562981',53,'53','North America','Havana','America/Havana','Peso','es-CU','Spanish (official)',110860,'3244','1606000','1682000','1217000','72300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(53,'Curacao','CW','CUW','cw','UC',531,'7626836',599,'599','North America','Willemstad','America/Curacao','Guilder','nl,pap','Papiamentu (a Spanish-Portuguese-Dutch-English dialect) 81.2%, Dutch (official) 8%, Spanish 4%, English 2.9%, other 3.9% (2001 census)',444,'','','','','5600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(54,'Cyprus','CY','CYP','cy','CY',196,'146669',357,'357','Europe','Nicosia','Asia/Nicosia','Euro','el-CY,tr-CY,en','Greek (official) 80.9%, Turkish (official) 0.2%, English 4.1%, Romanian 2.9%, Russian 2.5%, Bulgarian 2.2%, Arabic 1.2%, Filippino 1.1%, other 4.3%, unspecified 0.6% (2011 est.)',9250,'252013','433900','1110000','373200','21780000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(55,'Czech Republic','CZ','CZE','cz','EZ',203,'3077311',420,'420','Europe','Prague','Europe/Prague','Koruna','cs,sk','Czech 95.4%, Slovak 1.6%, other 3% (2011 census)',78866,'4148000','6681000','12973000','2100000','194800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(56,'Democratic Republic of the Congo','CD','COD','cd','CG',180,'203312',243,'243','Africa','Kinshasa','Africa/Kinshasa','Franc','fr-CD,ln,kg','French (official), Lingala (a lingua franca trade language), Kingwana (a dialect of Kiswahili or Swahili), Kikongo, Tshiluba',2345410,'2515','290000','19487000','58200','18560000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(57,'Denmark','DK','DNK','dk','DA',208,'2623032',45,'45','Europe','Copenhagen','Europe/Copenhagen','Krone','da-DK,en,fo,de-DK','Danish, Faroese, Greenlandic (an Inuit dialect), German (small minority)',43094,'4297000','4750000','6600000','2431000','324300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(58,'Djibouti','DJ','DJI','dj','DJ',262,'223816',253,'253','Africa','Djibouti','Africa/Djibouti','Franc','fr-DJ,ar,so-DJ,aa','French (official), Arabic (official), Somali, Afar',23000,'215','25900','209000','18000','1459000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(59,'Dominica','DM','DMA','dm','DO',212,'3575830',1,'1-767','North America','Roseau','America/Dominica','Dollar','en-DM','English (official), French patois',754,'723','28000','109300','14600','495000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(60,'Dominican Republic','DO','DOM','do','DR',214,'3508796',1,'1-809, 1-829, 1-849','North America','Santo Domingo','America/Santo_Domingo','Peso','es-DO','Spanish (official)',48730,'404500','2701000','9038000','1065000','59270000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(61,'East Timor','TL','TLS','tl','TT',626,'1966436',670,'670','Oceania','Dili','Asia/Dili','Dollar','tet,pt-TL,id,en','Tetum (official), Portuguese (official), Indonesian, English',15007,'252','2100','621000','3000','6129000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(62,'Ecuador','EC','ECU','ec','EC',218,'3658394',593,'593','South America','Quito','America/Guayaquil','Dollar','es-EC','Spanish (Castillian) 93% (official), Quechua 4.1%, other indigenous 0.7%, foreign 2.2%',283560,'170538','3352000','16457000','2310000','91410000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(63,'Egypt','EG','EGY','eg','EG',818,'357994',20,'20','Africa','Cairo','Africa/Cairo','Pound','ar-EG,en,fr','Arabic (official), English and French widely understood by educated classes',1001450,'200430','20136000','96800000','8557000','262000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(64,'El Salvador','SV','SLV','sv','ES',222,'3585968',503,'503','North America','San Salvador','America/El_Salvador','Dollar','es-SV','Spanish (official), Nahua (among some Amerindians)',21040,'24070','746000','8650000','1060000','24670000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(65,'Equatorial Guinea','GQ','GNQ','gq','EK',226,'2309096',240,'240','Africa','Malabo','Africa/Malabo','Franc','es-GQ,fr','Spanish (official) 67.6%, other (includes French (official), Fang, Bubi) 32.4% (1994 census)',28051,'7','14400','501000','14900','17080000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(66,'Eritrea','ER','ERI','er','ER',232,'338010',291,'291','Africa','Asmara','Africa/Asmara','Nakfa','aa-ER,ar,tig,kun,ti-ER','Tigrinya (official), Arabic (official), English (official), Tigre, Kunama, Afar, other Cushitic languages',121320,'701','200000','305300','60000','3438000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(67,'Estonia','EE','EST','ee','EN',233,'453733',372,'372','Europe','Tallinn','Europe/Tallinn','Euro','et,ru','Estonian (official) 68.5%, Russian 29.6%, Ukrainian 0.6%, other 1.2%, unspecified 0.1% (2011 est.)',45226,'865494','971700','2070000','448200','24280000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(68,'Ethiopia','ET','ETH','et','ET',231,'337996',251,'251','Africa','Addis Ababa','Africa/Addis_Ababa','Birr','am,en-ET,om-ET,ti-ET,so-ET,sid','Oromo (official working language in the State of Oromiya) 33.8%, Amharic (official national language) 29.3%, Somali (official working language of the State of Sumale) 6.2%, Tigrigna (Tigrinya) (official working language of the State of Tigray) 5.9%, Sidamo 4%, Wolaytta 2.2%, Gurage 2%, Afar (official working language of the State of Afar) 1.7%, Hadiyya 1.7%, Gamo 1.5%, Gedeo 1.3%, Opuuo 1.2%, Kafa 1.1%, other 8.1%, English (major foreign language taught in schools), Arabic (2007 est.)',1127127,'179','447300','20524000','797500','47340000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(69,'Falkland Islands','FK','FLK','fk','FK',238,'3474414',500,'500','South America','Stanley','Atlantic/Stanley','Pound','en-FK','English 89%, Spanish 7.7%, other 3.3% (2006 est.)',12173,'110','2900','3450','1980','164500000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(70,'Faroe Islands','FO','FRO','fo','FO',234,'2622320',298,'298','Europe','Torshavn','Atlantic/Faroe','Krone','fo,da-FO','Faroese (derived from Old Norse), Danish',1399,'7575','37500','61000','24000','2320000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(71,'Fiji','FJ','FJI','fj','FJ',242,'2205218',679,'679','Oceania','Suva','Pacific/Fiji','Dollar','en-FJ,fj','English (official), Fijian (official), Hindustani',18270,'21739','114200','858800','88400','4218000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(72,'Finland','FI','FIN','fi','FI',246,'660013',358,'358','Europe','Helsinki','Europe/Helsinki','Euro','fi-FI,sv-FI,smn','Finnish (official) 94.2%, Swedish (official) 5.5%, other (small Sami- and Russian-speaking minorities) 0.2% (2012 est.)',337030,'4763000','4393000','9320000','890000','259600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(73,'France','FR','FRA','fr','FR',250,'3017382',33,'33','Europe','Paris','Europe/Paris','Euro','fr-FR,frp,br,co,ca,eu,oc','French (official) 100%, rapidly declining regional dialects and languages (Provencal, Breton, Alsatian, Corsican, Catalan, Basque, Flemish)',547030,'17266000','45262000','62280000','39290000','2739000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(74,'French Polynesia','PF','PYF','pf','FP',258,'4030656',689,'689','Oceania','Papeete','Pacific/Tahiti','Franc','fr-PF,ty','French (official) 61.1%, Polynesian (official) 31.4%, Asian languages 1.2%, other 0.3%, unspecified 6% (2002 census)',4167,'37949','120000','226000','55000','5650000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(75,'Gabon','GA','GAB','ga','GB',266,'2400553',241,'241','Africa','Libreville','Africa/Libreville','Franc','fr-GA','French (official), Fang, Myene, Nzebi, Bapounou/Eschira, Bandjabi',267667,'127','98800','2930000','17000','19970000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(76,'Gambia','GM','GMB','gm','GA',270,'2413451',220,'220','Africa','Banjul','Africa/Banjul','Dalasi','en-GM,mnk,wof,wo,ff','English (official), Mandinka, Wolof, Fula, other indigenous vernaculars',11300,'656','130100','1526000','64200','896000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(77,'Georgia','GE','GEO','ge','GG',268,'614540',995,'995','Asia','Tbilisi','Asia/Tbilisi','Lari','ka,ru,hy,az','Georgian (official) 71%, Russian 9%, Armenian 7%, Azeri 6%, other 7%',69700,'357864','1300000','4699000','1276000','15950000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(78,'Germany','DE','DEU','de','GM',276,'2921044',49,'49','Europe','Berlin','Europe/Berlin','Euro','de','German (official)',357021,'20043000','65125000','107700000','50700000','3593000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(79,'Ghana','GH','GHA','gh','GH',288,'2300660',233,'233','Africa','Accra','Africa/Accra','Cedi','en-GH,ak,ee,tw','Asante 14.8%, Ewe 12.7%, Fante 9.9%, Boron (Brong) 4.6%, Dagomba 4.3%, Dangme 4.3%, Dagarte (Dagaba) 3.7%, Akyem 3.4%, Ga 3.4%, Akuapem 2.9%, other (includes English (official)) 36.1% (2000 census)',239460,'59086','1297000','25618000','285000','45550000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(80,'Gibraltar','GI','GIB','gi','GI',292,'2411586',350,'350','Europe','Gibraltar','Europe/Gibraltar','Pound','en-GI,es,it,pt','English (used in schools and for official purposes), Spanish, Italian, Portuguese',7,'3509','20200','34750','23100','1106000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(81,'Greece','GR','GRC','gr','GR',300,'390903',30,'30','Europe','Athens','Europe/Athens','Euro','el-GR,en,fr','Greek (official) 99%, other (includes English and French) 1%',131940,'3201000','4971000','13354000','5461000','243300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(82,'Greenland','GL','GRL','gl','GL',304,'3425505',299,'299','North America','Nuuk','America/Godthab','Krone','kl,da-GL,en','Greenlandic (East Inuit) (official), Danish (official), English',2166086,'15645','36000','59455','18900','2160000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(83,'Grenada','GD','GRD','gd','GJ',308,'3580239',1,'1-473','North America','St. George\'s','America/Grenada','Dollar','en-GD','English (official), French patois',344,'80','25000','128000','28500','811000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(84,'Guam','GU','GUM','gu','GQ',316,'4043988',1,'1-671','Oceania','Hagatna','Pacific/Guam','Dollar','en-GU,ch-GU','English 43.6%, Filipino 21.2%, Chamorro 17.8%, other Pacific island languages 10%, Asian languages 6.3%, other 1.1% (2010 est.)',549,'23','90000','98000','67000','4600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(85,'Guatemala','GT','GTM','gt','GT',320,'3595528',502,'502','North America','Guatemala City','America/Guatemala','Quetzal','es-GT','Spanish (official) 60%, Amerindian languages 40%',108890,'357552','2279000','20787000','1744000','53900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(86,'Guernsey','GG','GGY','gg','GK',831,'3042362',44,'44-1481','Europe','St Peter Port','Europe/Guernsey','Pound','en,fr','English, French, Norman-French dialect spoken in country districts',78,'239','48300','43800','45100','2742000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(87,'Guinea','GN','GIN','gn','GV',324,'2420477',224,'224','Africa','Conakry','Africa/Conakry','Franc','fr-GN','French (official)',245857,'15','95000','4781000','18000','6544000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(88,'Guinea-Bissau','GW','GNB','gw','PU',624,'2372248',245,'245','Africa','Bissau','Africa/Bissau','Franc','pt-GW,pov','Portuguese (official), Crioulo, African languages',36120,'90','37100','1100000','5000','880000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(89,'Guyana','GY','GUY','gy','GY',328,'3378535',592,'592','South America','Georgetown','America/Guyana','Dollar','en-GY','English, Amerindian dialects, Creole, Caribbean Hindustani (a dialect of Hindi), Urdu',214970,'24936','189600','547000','154200','3020000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(90,'Haiti','HT','HTI','ht','HA',332,'3723988',509,'509','North America','Port-au-Prince','America/Port-au-Prince','Gourde','ht,fr-HT','French (official), Creole (official)',27750,'555','1000000','6095000','50000','8287000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(91,'Honduras','HN','HND','hn','HO',340,'3608932',504,'504','North America','Tegucigalpa','America/Tegucigalpa','Lempira','es-HN','Spanish (official), Amerindian dialects',112090,'30955','731700','7370000','610000','18880000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(92,'Hong Kong','HK','HKG','hk','HK',344,'1819730',852,'852','Asia','Hong Kong','Asia/Hong_Kong','Dollar','zh-HK,yue,zh,en','Cantonese (official) 89.5%, English (official) 3.5%, Putonghua (Mandarin) 1.4%, other Chinese dialects 4%, other 1.6% (2011 est.)',1092,'870041','4873000','16403000','4362000','272100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(93,'Hungary','HU','HUN','hu','HU',348,'719819',36,'36','Europe','Budapest','Europe/Budapest','Forint','hu-HU','Hungarian (official) 99.6%, English 16%, German 11.2%, Russian 1.6%, Romanian 1.3%, French 1.2%, other 4.2%',93030,'3145000','6176000','11580000','2960000','130600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(94,'Iceland','IS','ISL','is','IC',352,'2629691',354,'354','Europe','Reykjavik','Atlantic/Reykjavik','Krona','is,en,de,da,sv,no','Icelandic, English, Nordic languages, German widely spoken',103000,'369969','301600','346000','189000','14590000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(95,'India','IN','IND','in','IN',356,'1269750',91,'91','Asia','New Delhi','Asia/Kolkata','Rupee','en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc','Hindi 41%, Bengali 8.1%, Telugu 7.2%, Marathi 7%, Tamil 5.9%, Urdu 5%, Gujarati 4.5%, Kannada 3.7%, Malayalam 3.2%, Oriya 3.2%, Punjabi 2.8%, Assamese 1.3%, Maithili 1.2%, other 5.9%',3287590,'6746000','61338000','893862000','31080000','1670000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(96,'Indonesia','ID','IDN','id','ID',360,'1643084',62,'62','Asia','Jakarta','Asia/Jakarta','Rupiah','id,en,nl,jv','Bahasa Indonesia (official, modified form of Malay), English, Dutch, local dialects (of which the most widely spoken is Javanese)',1919440,'1344000','20000000','281960000','37983000','867500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(97,'Iran','IR','IRN','ir','IR',364,'130758',98,'98','Asia','Tehran','Asia/Tehran','Rial','fa-IR,ku','Persian (official) 53%, Azeri Turkic and Turkic dialects 18%, Kurdish 10%, Gilaki and Mazandarani 7%, Luri 6%, Balochi 2%, Arabic 2%, other 2%',1648000,'197804','8214000','58160000','28760000','411900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(98,'Iraq','IQ','IRQ','iq','IZ',368,'99237',964,'964','Asia','Baghdad','Asia/Baghdad','Dinar','ar-IQ,ku,hy','Arabic (official), Kurdish (official), Turkmen (a Turkish dialect) and Assyrian (Neo-Aramaic) are official in areas where they constitute a majority of the population), Armenian',437072,'26','325900','26760000','1870000','221800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(99,'Ireland','IE','IRL','ie','EI',372,'2963597',353,'353','Europe','Dublin','Europe/Dublin','Euro','en-IE,ga-IE','English (official, the language generally used), Irish (Gaelic or Gaeilge) (official, spoken mainly in areas along the western coast)',70280,'1387000','3042000','4906000','2007000','220900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(100,'Isle of Man','IM','IMN','im','IM',833,'3042225',44,'44-1624','Europe','Douglas, Isle of Man','Europe/Isle_of_Man','Pound','en,gv','English, Manx Gaelic (about 2% of the population has some knowledge)',572,'895','','','','4076000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(101,'Israel','IL','ISR','il','IS',376,'294640',972,'972','Asia','Jerusalem','Asia/Jerusalem','Shekel','he,ar-IL,en-IL,','Hebrew (official), Arabic (used officially for Arab minority), English (most commonly used foreign language)',20770,'2483000','4525000','9225000','3594000','272700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(102,'Italy','IT','ITA','it','IT',380,'3175395',39,'39','Europe','Rome','Europe/Rome','Euro','it-IT,de-IT,fr-IT,sc,ca,co,sl','Italian (official), German (parts of Trentino-Alto Adige region are predominantly German-speaking), French (small French-speaking minority in Valle d\'Aosta region), Slovene (Slovene-speaking minority in the Trieste-Gorizia area)',301230,'25662000','29235000','97225000','21656000','2068000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(103,'Ivory Coast','CI','CIV','ci','IV',384,'2287781',225,'225','Africa','Yamoussoukro','Africa/Abidjan','Franc','fr-CI','French (official), 60 native dialects of which Dioula is the most widely spoken',322460,'9115','967300','19827000','268000','28280000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(104,'Jamaica','JM','JAM','jm','JM',388,'3489940',1,'1-876','North America','Kingston','America/Jamaica','Dollar','en-JM','English, English patois',10991,'3906','1581000','2665000','265000','14390000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(105,'Japan','JP','JPN','jp','JA',392,'1861060',81,'81','Asia','Tokyo','Asia/Tokyo','Yen','ja','Japanese',377835,'64453000','99182000','138363000','64273000','5007000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(106,'Jersey','JE','JEY','je','JE',832,'3042142',44,'44-1534','Europe','Saint Helier','Europe/Jersey','Pound','en,pt','English 94.5% (official), Portuguese 4.6%, other 0.9% (2001 census)',116,'264','29500','108000','73800','5100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(107,'Jordan','JO','JOR','jo','JO',400,'248816',962,'962','Asia','Amman','Asia/Amman','Dinar','ar-JO,en','Arabic (official), English (widely understood among upper and middle classes)',92300,'69473','1642000','8984000','435000','34080000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(108,'Kazakhstan','KZ','KAZ','kz','KZ',398,'1522867',7,'7','Asia','Astana','Asia/Almaty','Tenge','kk,ru','Kazakh (official, Qazaq) 64.4%, Russian (official, used in everyday business, designated the \"language of interethnic communication\") 95% (2001 est.)',2717300,'67464','5299000','28731000','4340000','224900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(109,'Kenya','KE','KEN','ke','KE',404,'192950',254,'254','Africa','Nairobi','Africa/Nairobi','Shilling','en-KE,sw-KE','English (official), Kiswahili (official), numerous indigenous languages',582650,'71018','3996000','30732000','251600','45310000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(110,'Kiribati','KI','KIR','ki','KR',296,'4030945',686,'686','Oceania','Tarawa','Pacific/Tarawa','Dollar','en-KI,gil','I-Kiribati, English (official)',811,'327','7800','16000','9000','173000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(111,'Kosovo','XK','XKX','','KV',0,'831053',383,'383','Europe','Pristina','Europe/Podgorica','Euro','sq,sr','Albanian (official), Serbian (official), Bosnian, Turkish, Roma',10887,'','','562000','106300','7150000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(112,'Kuwait','KW','KWT','kw','KU',414,'285570',965,'965','Asia','Kuwait City','Asia/Kuwait','Dinar','ar-KW,en','Arabic (official), English widely spoken',17820,'2771','1100000','5526000','510000','179500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(113,'Kyrgyzstan','KG','KGZ','kg','KG',417,'1527747',996,'996','Asia','Bishkek','Asia/Bishkek','Som','ky,uz,ru','Kyrgyz (official) 64.7%, Uzbek 13.6%, Russian (official) 12.5%, Dungun 1%, other 8.2% (1999 census)',198500,'115573','2195000','6800000','489000','7234000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(114,'Laos','LA','LAO','la','LA',418,'1655842',856,'856','Asia','Vientiane','Asia/Vientiane','Kip','lo,fr,en','Lao (official), French, English, various ethnic languages',236800,'1532','300000','6492000','112000','10100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(115,'Latvia','LV','LVA','lv','LG',428,'458258',371,'371','Europe','Riga','Europe/Riga','Euro','lv,ru,lt','Latvian (official) 56.3%, Russian 33.8%, other 0.6% (includes Polish, Ukrainian, and Belarusian), unspecified 9.4% (2011 est.)',64589,'359604','1504000','2310000','501000','30380000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(116,'Lebanon','LB','LBN','lb','LE',422,'272103',961,'961','Asia','Beirut','Asia/Beirut','Pound','ar-LB,fr-LB,en,hy','Arabic (official), French, English, Armenian',10400,'64926','1000000','4000000','878000','43490000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(117,'Lesotho','LS','LSO','ls','LT',426,'932692',266,'266','Africa','Maseru','Africa/Maseru','Loti','en-LS,st,zu,xh','Sesotho (official) (southern Sotho), English (official), Zulu, Xhosa',30355,'11030','76800','1312000','43100','2457000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(118,'Liberia','LR','LBR','lr','LI',430,'2275384',231,'231','Africa','Monrovia','Africa/Monrovia','Dollar','en-LR','English 20% (official), some 20 ethnic group languages few of which can be written or used in correspondence',111370,'7','20000','2394000','3200','1977000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(119,'Libya','LY','LBY','ly','LY',434,'2215636',218,'218','Africa','Tripolis','Africa/Tripoli','Dinar','ar-LY,it,en','Arabic (official), Italian, English (all widely understood in the major cities); Berber (Nafusi, Ghadamis, Suknah, Awjilah, Tamasheq)',1759540,'17926','353900','9590000','814000','70920000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(120,'Liechtenstein','LI','LIE','li','LS',438,'3042058',423,'423','Europe','Vaduz','Europe/Vaduz','Franc','de-LI','German 94.5% (official) (Alemannic is the main dialect), Italian 1.1%, other 4.3% (2010 est.)',160,'14278','23000','38000','20000','5113000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(121,'Lithuania','LT','LTU','lt','LH',440,'597427',370,'370','Europe','Vilnius','Europe/Vilnius','Euro','lt,ru,pl','Lithuanian (official) 82%, Russian 8%, Polish 5.6%, other 0.9%, unspecified 3.5% (2011 est.)',65200,'1205000','1964000','5000000','667300','46710000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(122,'Luxembourg','LU','LUX','lu','LU',442,'2960313',352,'352','Europe','Luxembourg','Europe/Luxembourg','Euro','lb,de-LU,fr-LU','Luxembourgish (official administrative language and national language (spoken vernacular)), French (official administrative language), German (official administrative language)',2586,'250900','424500','761300','266700','60540000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(123,'Macau','MO','MAC','mo','MC',446,'1821275',853,'853','Asia','Macao','Asia/Macau','Pataca','zh,zh-MO,pt','Cantonese 83.3%, Mandarin 5%, Hokkien 3.7%, English 2.3%, other Chinese dialects 2%, Tagalog 1.7%, Portuguese 0.7%, other 1.3%',254,'327','270200','1613000','162500','51680000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(124,'Macedonia','MK','MKD','mk','MK',807,'718075',389,'389','Europe','Skopje','Europe/Skopje','Denar','mk,sq,tr,rmm,sr','Macedonian (official) 66.5%, Albanian (official) 25.1%, Turkish 3.5%, Roma 1.9%, Serbian 1.2%, other 1.8% (2002 census)',25333,'62826','1057000','2235000','407900','10650000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(125,'Madagascar','MG','MDG','mg','MA',450,'1062947',261,'261','Africa','Antananarivo','Indian/Antananarivo','Ariary','fr-MG,mg','French (official), Malagasy (official), English',587040,'38392','319900','8564000','143700','10530000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(126,'Malawi','MW','MWI','mw','MI',454,'927384',265,'265','Africa','Lilongwe','Africa/Blantyre','Kwacha','ny,yao,tum,swk','English (official), Chichewa (common), Chinyanja, Chiyao, Chitumbuka, Chilomwe, Chinkhonde, Chingoni, Chisena, Chitonga, Chinyakyusa, Chilambya',118480,'1099','716400','4420000','227300','3683000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(127,'Malaysia','MY','MYS','my','MY',458,'1733045',60,'60','Asia','Kuala Lumpur','Asia/Kuala_Lumpur','Ringgit','ms-MY,en,zh,ta,te,ml,pa,th','Bahasa Malaysia (official), English, Chinese (Cantonese, Mandarin, Hokkien, Hakka, Hainan, Foochow), Tamil, Telugu, Malayalam, Panjabi, Thai',329750,'422470','15355000','41325000','4589000','312400000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(128,'Maldives','MV','MDV','mv','MV',462,'1282028',960,'960','Asia','Male','Indian/Maldives','Rufiyaa','dv,en','Dhivehi (official, dialect of Sinhala, script derived from Arabic), English (spoken by most government officials)',300,'3296','86400','560000','23140','2270000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(129,'Mali','ML','MLI','ml','ML',466,'2453866',223,'223','Africa','Bamako','Africa/Bamako','Franc','fr-ML,bm','French (official), Bambara 46.3%, Peul/foulfoulbe 9.4%, Dogon 7.2%, Maraka/soninke 6.4%, Malinke 5.6%, Sonrhai/djerma 5.6%, Minianka 4.3%, Tamacheq 3.5%, Senoufo 2.6%, unspecified 0.6%, other 8.5%',1240000,'437','249800','14613000','112000','11370000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(130,'Malta','MT','MLT','mt','MT',470,'2562770',356,'356','Europe','Valletta','Europe/Malta','Euro','mt,en-MT','Maltese (official) 90.1%, English (official) 6%, multilingual 3%, other 0.9% (2005 est.)',316,'14754','240600','539500','229700','9541000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(131,'Marshall Islands','MH','MHL','mh','RM',584,'2080185',692,'692','Oceania','Majuro','Pacific/Majuro','Dollar','mh,en-MH','Marshallese (official) 98.2%, other languages 1.8% (1999 census)',181,'3','2200','3800','4400','193000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(132,'Mauritania','MR','MRT','mr','MR',478,'2378080',222,'222','Africa','Nouakchott','Africa/Nouakchott','Ouguiya','ar-MR,fuc,snk,fr,mey,wo','Arabic (official and national), Pulaar, Soninke, Wolof (all national languages), French, Hassaniya (a variety of Arabic)',1030700,'22','75000','4024000','65100','4183000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(133,'Mauritius','MU','MUS','mu','MP',480,'934292',230,'230','Africa','Port Louis','Indian/Mauritius','Rupee','en-MU,bho,fr','Creole 86.5%, Bhojpuri 5.3%, French 4.1%, two languages 1.4%, other 2.6% (includes English, the official language, which is spoken by less than 1% of the population), unspecified 0.1% (2011 est.)',2040,'51139','290000','1485000','349100','11900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(134,'Mayotte','YT','MYT','yt','MF',175,'1024031',262,'262','Africa','Mamoudzou','Indian/Mayotte','Euro','fr-YT','French',374,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(135,'Mexico','MX','MEX','mx','MX',484,'3996063',52,'52','North America','Mexico City','America/Mexico_City','Peso','es-MX','Spanish only 92.7%, Spanish and indigenous languages 5.7%, indigenous only 0.8%, unspecified 0.8%',1972550,'16233000','31020000','100786000','20220000','1327000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(136,'Micronesia','FM','FSM','fm','FM',583,'2081918',691,'691','Oceania','Palikir','Pacific/Pohnpei','Dollar','en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg','English (official and common language), Chuukese, Kosrean, Pohnpeian, Yapese, Ulithian, Woleaian, Nukuoro, Kapingamarangi',702,'4668','17000','27600','8400','339000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(137,'Moldova','MD','MDA','md','MD',498,'617790',373,'373','Europe','Chisinau','Europe/Chisinau','Leu','ro,ru,gag,tr','Moldovan 58.8% (official; virtually the same as the Romanian language), Romanian 16.4%, Russian 16%, Ukrainian 3.8%, Gagauz 3.1% (a Turkish language), Bulgarian 1.1%, other 0.3%, unspecified 0.4%',33843,'711564','1333000','4080000','1206000','7932000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(138,'Monaco','MC','MCO','mc','MN',492,'2993457',377,'377','Europe','Monaco','Europe/Monaco','Euro','fr-MC,en,it','French (official), English, Italian, Monegasque',2,'26009','23000','33200','44500','5748000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(139,'Mongolia','MN','MNG','mn','MG',496,'2029969',976,'976','Asia','Ulan Bator','Asia/Ulaanbaatar','Tugrik','mn,ru','Khalkha Mongol 90% (official), Turkic, Russian (1999)',1565000,'20084','330000','3375000','176700','11140000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(140,'Montenegro','ME','MNE','me','MJ',499,'3194884',382,'382','Europe','Podgorica','Europe/Podgorica','Euro','sr,hu,bs,sq,hr,rom','Serbian 42.9%, Montenegrin (official) 37%, Bosnian 5.3%, Albanian 5.3%, Serbo-Croat 2%, other 3.5%, unspecified 4% (2011 est.)',14026,'10088','280000','1126000','163000','4518000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(141,'Montserrat','MS','MSR','ms','MH',500,'3578097',1,'1-664','North America','Plymouth','America/Montserrat','Dollar','en-MS','English',102,'2431','1200','4000','3000','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(142,'Morocco','MA','MAR','ma','MO',504,'2542007',212,'212','Africa','Rabat','Africa/Casablanca','Dirham','ar-MA,fr','Arabic (official), Berber languages (Tamazight (official), Tachelhit, Tarifit), French (often the language of business, government, and diplomacy)',446550,'277338','13213000','39016000','3280000','104800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(143,'Mozambique','MZ','MOZ','mz','MZ',508,'1036973',258,'258','Africa','Maputo','Africa/Maputo','Metical','pt-MZ,vmw','Emakhuwa 25.3%, Portuguese (official) 10.7%, Xichangana 10.3%, Cisena 7.5%, Elomwe 7%, Echuwabo 5.1%, other Mozambican languages 30.1%, other 4% (1997 census)',801590,'89737','613600','8108000','88100','14670000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(144,'Myanmar','MM','MMR','mm','BM',104,'1327865',95,'95','Asia','Nay Pyi Taw','Asia/Rangoon','Kyat','my','Burmese (official)',678500,'1055','110000','5440000','556000','59430000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(145,'Namibia','NA','NAM','na','WA',516,'3355338',264,'264','Africa','Windhoek','Africa/Windhoek','Dollar','en-NA,af,de,hz,naq','Oshiwambo languages 48.9%, Nama/Damara 11.3%, Afrikaans 10.4% (common language of most of the population and about 60% of the white population), Otjiherero languages 8.6%, Kavango languages 8.5%, Caprivi languages 4.8%, English (official) 3.4%, other African languages 2.3%, other 1.7%',825418,'78280','127500','2435000','171000','12300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(146,'Nauru','NR','NRU','nr','NR',520,'2110425',674,'674','Oceania','Yaren','Pacific/Nauru','Dollar','na,en-NR','Nauruan 93% (official, a distinct Pacific Island language), English 2% (widely understood, spoken, and used for most government and commercial purposes), other 5% (includes I-Kiribati 2% and Chinese 2%)',21,'8162','','6800','1900','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(147,'Nepal','NP','NPL','np','NP',524,'1282988',977,'977','Asia','Kathmandu','Asia/Kathmandu','Rupee','ne,en','Nepali (official) 44.6%, Maithali 11.7%, Bhojpuri 6%, Tharu 5.8%, Tamang 5.1%, Newar 3.2%, Magar 3%, Bajjika 3%, Urdu 2.6%, Avadhi 1.9%, Limbu 1.3%, Gurung 1.2%, other 10.4%, unspecified 0.2%',140800,'41256','577800','18138000','834000','19340000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(148,'Netherlands','NL','NLD','nl','NL',528,'2750405',31,'31','Europe','Amsterdam','Europe/Amsterdam','Euro','nl-NL,fy-NL','Dutch (official)',41526,'13699000','14872000','19643000','7086000','722300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(149,'Netherlands Antilles','AN','ANT','an','NT',530,'',599,'599','North America','Willemstad','America/Curacao','Guilder','nl-AN,en,es','Dutch, English, Spanish',960,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(150,'New Caledonia','NC','NCL','nc','NC',540,'2139685',687,'687','Oceania','Noumea','Pacific/Noumea','Franc','fr-NC','French (official), 33 Melanesian-Polynesian dialects',19060,'34231','85000','231000','80000','9280000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(151,'New Zealand','NZ','NZL','nz','NZ',554,'2186224',64,'64','Oceania','Wellington','Pacific/Auckland','Dollar','en-NZ,mi','English (de facto official) 89.8%, Maori (de jure official) 3.5%, Samoan 2%, Hindi 1.6%, French 1.2%, Northern Chinese 1.2%, Yue 1%, Other or not stated 20.5%, New Zealand Sign Language (de jure official)',268680,'3026000','3400000','4922000','1880000','181100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(152,'Nicaragua','NI','NIC','ni','NU',558,'3617476',505,'505','North America','Managua','America/Managua','Cordoba','es-NI,en','Spanish (official) 95.3%, Miskito 2.2%, Mestizo of the Caribbean coast 2%, other 0.5%',129494,'296068','199800','5346000','320000','11260000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(153,'Niger','NE','NER','ne','NG',562,'2440476',227,'227','Africa','Niamey','Africa/Niamey','Franc','fr-NE,ha,kr,dje','French (official), Hausa, Djerma',1267000,'454','115900','5400000','100500','7304000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(154,'Nigeria','NG','NGA','ng','NI',566,'2328926',234,'234','Africa','Abuja','Africa/Lagos','Naira','en-NG,ha,yo,ig,ff','English (official), Hausa, Yoruba, Igbo (Ibo), Fulani, over 500 additional indigenous languages',923768,'1234','43989000','112780000','418200','502000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(155,'Niue','NU','NIU','nu','NE',570,'4036232',683,'683','Oceania','Alofi','Pacific/Niue','Dollar','niu,en-NU','Niuean (official) 46% (a Polynesian language closely related to Tongan and Samoan), Niuean and English 32%, English (official) 11%, Niuean and others 5%, other 6% (2011 est.)',260,'79508','1100','','','10010000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(156,'North Korea','KP','PRK','kp','KN',408,'1873107',850,'850','Asia','Pyongyang','Asia/Pyongyang','Won','ko-KP','Korean',120540,'8','','1700000','1180000','28000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(157,'Northern Mariana Islands','MP','MNP','mp','CQ',580,'4041468',1,'1-670','Oceania','Saipan','Pacific/Saipan','Dollar','fil,tl,zh,ch-MP,en-MP','Philippine languages 32.8%, Chamorro (official) 24.1%, English (official) 17%, other Pacific island languages 10.1%, Chinese 6.8%, other Asian languages 7.3%, other 1.9% (2010 est.)',477,'17','','','','733000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(158,'Norway','NO','NOR','no','NO',578,'3144096',47,'47','Europe','Oslo','Europe/Oslo','Krone','no,nb,nn,se,fi','Bokmal Norwegian (official), Nynorsk Norwegian (official), small Sami- and Finnish-speaking minorities',324220,'3588000','4431000','5732000','1465000','515800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(159,'Oman','OM','OMN','om','MU',512,'286963',968,'968','Asia','Muscat','Asia/Muscat','Rial','ar-OM,en,bal,ur','Arabic (official), English, Baluchi, Urdu, Indian dialects',212460,'14531','1465000','5278000','305000','81950000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(160,'Pakistan','PK','PAK','pk','PK',586,'1168579',92,'92','Asia','Islamabad','Asia/Karachi','Rupee','ur-PK,en-PK,pa,sd,ps,brh','Punjabi 48%, Sindhi 12%, Saraiki (a Punjabi variant) 10%, Pashto (alternate name, Pashtu) 8%, Urdu (official) 8%, Balochi 3%, Hindko 2%, Brahui 1%, English (official; lingua franca of Pakistani elite and most government ministries), Burushaski, and other 8%',803940,'365813','20431000','125000000','5803000','236500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(161,'Palau','PW','PLW','pw','PS',585,'1559582',680,'680','Oceania','Melekeok','Pacific/Palau','Dollar','pau,sov,en-PW,tox,ja,fil,zh','Palauan (official on most islands) 66.6%, Carolinian 0.7%, other Micronesian 0.7%, English (official) 15.5%, Filipino 10.8%, Chinese 1.8%, other Asian 2.6%, other 1.3%',458,'4','','17150','7300','221000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(162,'Palestine','PS','PSE','ps','WE',275,'6254930',970,'970','Asia','East Jerusalem','Asia/Hebron','Shekel','ar-PS','Arabic, Hebrew, English',5970,'','1379000','3041000','406000','6641000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(163,'Panama','PA','PAN','pa','PM',591,'3703430',507,'507','North America','Panama City','America/Panama','Balboa','es-PA,en','Spanish (official), English 14%',78200,'11022','959800','6770000','640000','40620000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(164,'Papua New Guinea','PG','PNG','pg','PP',598,'2088628',675,'675','Oceania','Port Moresby','Pacific/Port_Moresby','Kina','en-PG,ho,meu,tpi','Tok Pisin (official), English (official), Hiri Motu (official), some 836 indigenous languages spoken (about 12% of the world\'s total); most languages have fewer than 1,000 speakers',462840,'5006','125000','2709000','139000','16100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(165,'Paraguay','PY','PRY','py','PA',600,'3437598',595,'595','South America','Asuncion','America/Asuncion','Guarani','es-PY,gn','Spanish (official), Guarani (official)',406750,'280658','1105000','6790000','376000','30560000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(166,'Peru','PE','PER','pe','PE',604,'3932488',51,'51','South America','Lima','America/Lima','Sol','es-PE,qu,ay','Spanish (official) 84.1%, Quechua (official) 13%, Aymara (official) 1.7%, Ashaninka 0.3%, other native languages (includes a large number of minor Amazonian languages) 0.7%, other (includes foreign languages and sign language) 0.2% (2007 est.)',1285220,'234102','9158000','29400000','3420000','210300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(167,'Philippines','PH','PHL','ph','RP',608,'1694008',63,'63','Asia','Manila','Asia/Manila','Peso','tl,en-PH,fil','Filipino (official; based on Tagalog) and English (official); eight major dialects - Tagalog, Cebuano, Ilocano, Hiligaynon or Ilonggo, Bicol, Waray, Pampango, and Pangasinan',300000,'425812','8278000','103000000','3939000','272200000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(168,'Pitcairn','PN','PCN','pn','PC',612,'4030699',64,'64','Oceania','Adamstown','Pacific/Pitcairn','Dollar','en-PN','English',47,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(169,'Poland','PL','POL','pl','PL',616,'798544',48,'48','Europe','Warsaw','Europe/Warsaw','Zloty','pl','Polish (official) 96.2%, Polish and non-Polish 2%, non-Polish 0.5%, unspecified 1.3%',312685,'13265000','22452000','50840000','6125000','513900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(170,'Portugal','PT','PRT','pt','PO',620,'2264397',351,'351','Europe','Lisbon','Europe/Lisbon','Euro','pt-PT,mwl','Portuguese (official), Mirandese (official, but locally used)',92391,'3748000','5168000','12312000','4558000','219300000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(171,'Puerto Rico','PR','PRI','pr','RQ',630,'4566966',1,'1-787, 1-939','North America','San Juan','America/Puerto_Rico','Dollar','en-PR,es-PR','Spanish, English',9104,'469','1000000','3060000','780200','93520000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(172,'Qatar','QA','QAT','qa','QA',634,'289688',974,'974','Asia','Doha','Asia/Qatar','Rial','ar-QA,es','Arabic (official), English commonly used as a second language',11437,'897','563800','2600000','327000','213100000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(173,'Republic of the Congo','CG','COG','cg','CF',178,'2260494',242,'242','Africa','Brazzaville','Africa/Brazzaville','Franc','fr-CG,kg,ln-CG','French (official), Lingala and Monokutuba (lingua franca trade languages), many local languages and dialects (of which Kikongo is the most widespread)',342000,'45','245200','4283000','14900','14250000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(174,'Reunion','RE','REU','re','RE',638,'935317',262,'262','Africa','Saint-Denis','Indian/Reunion','Euro','fr-RE','French',2517,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(175,'Romania','RO','ROU','ro','RO',642,'798549',40,'40','Europe','Bucharest','Europe/Bucharest','Leu','ro,hu,rom','Romanian (official) 85.4%, Hungarian 6.3%, Romany (Gypsy) 1.2%, other 1%, unspecified 6.1% (2011 est.)',237500,'2667000','7787000','22700000','4680000','188900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(176,'Russia','RU','RUS','ru','RS',643,'2017370',7,'7','Europe','Moscow','Europe/Moscow','Ruble','ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,ava,sah,nog','Russian (official) 96.3%, Dolgang 5.3%, German 1.5%, Chechen 1%, Tatar 3%, other 10.3%',17100000,'14865000','40853000','261900000','42900000','2113000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(177,'Rwanda','RW','RWA','rw','RW',646,'49518',250,'250','Africa','Kigali','Africa/Kigali','Franc','rw,en-RW,fr-RW,sw','Kinyarwanda only (official, universal Bantu vernacular) 93.2%, Kinyarwanda and other language(s) 6.2%, French (official) and other language(s) 0.1%, English (official) and other language(s) 0.1%, Swahili (or Kiswahili, used in commercial centers) 0.02%, other 0.03%, unspecified 0.3% (2002 est.)',26338,'1447','450000','5690000','44400','7700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(178,'Saint Barthelemy','BL','BLM','gp','TB',652,'3578476',590,'590','North America','Gustavia','America/St_Barthelemy','Euro','fr','French (primary), English',21,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(179,'Saint Helena','SH','SHN','sh','SH',654,'3370751',290,'290','Africa','Jamestown','Atlantic/St_Helena','Pound','en-SH','English',410,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(180,'Saint Kitts and Nevis','KN','KNA','kn','SC',659,'3575174',1,'1-869','North America','Basseterre','America/St_Kitts','Dollar','en-KN','English (official)',261,'54','17000','84000','20000','767000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(181,'Saint Lucia','LC','LCA','lc','ST',662,'3576468',1,'1-758','North America','Castries','America/St_Lucia','Dollar','en-LC','English (official), French patois',616,'100','142900','227000','36800','1377000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(182,'Saint Martin','MF','MAF','gp','RN',663,'3578421',1,'590','North America','Marigot','America/Marigot','Euro','fr','French (official), English, Dutch, French Patois, Spanish, Papiamento (dialect of Netherlands Antilles)',53,'','','','','561500000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(183,'Saint Pierre and Miquelon','PM','SPM','pm','SB',666,'3424932',508,'508','North America','Saint-Pierre','America/Miquelon','Euro','fr-PM','French (official)',242,'15','','','4800','215300000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(184,'Saint Vincent and the Grenadines','VC','VCT','vc','VC',670,'3577815',1,'1-784','North America','Kingstown','America/St_Vincent','Dollar','en-VC,fr','English, French patois',389,'305','76000','135500','19400','742000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(185,'Samoa','WS','WSM','ws','WS',882,'4034894',685,'685','Oceania','Apia','Pacific/Apia','Tala','sm,en-WS','Samoan (Polynesian) (official), English',2944,'18013','9000','167400','35300','705000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(186,'San Marino','SM','SMR','sm','SM',674,'3168068',378,'378','Europe','San Marino','Europe/San_Marino','Euro','it-SM','Italian',61,'11015','17000','36000','18700','1866000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(187,'Sao Tome and Principe','ST','STP','st','TP',678,'2410758',239,'239','Africa','Sao Tome','Africa/Sao_Tome','Dobra','pt-ST','Portuguese 98.4% (official), Forro 36.2%, Cabo Verdian 8.5%, French 6.8%, Angolar 6.6%, English 4.9%, Lunguie 1%, other (including sign language) 2.4%',1001,'1678','26700','122000','8000','311000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(188,'Saudi Arabia','SA','SAU','sa','SA',682,'102358',966,'966','Asia','Riyadh','Asia/Riyadh','Rial','ar-SA','Arabic (official)',1960582,'145941','9774000','53000000','4800000','718500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(189,'Senegal','SN','SEN','sn','SG',686,'2245662',221,'221','Africa','Dakar','Africa/Dakar','Franc','fr-SN,wo,fuc,mnk','French (official), Wolof, Pulaar, Jola, Mandinka',196190,'237','1818000','11470000','338200','15360000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(190,'Serbia','RS','SRB','rs','RI',688,'6290252',381,'381','Europe','Belgrade','Europe/Belgrade','Dinar','sr,hu,bs,rom','Serbian (official) 88.1%, Hungarian 3.4%, Bosnian 1.9%, Romany 1.4%, other 3.4%, undeclared or unknown 1.8%',88361,'1102000','4107000','9138000','2977000','43680000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(191,'Seychelles','SC','SYC','sc','SE',690,'241170',248,'248','Africa','Victoria','Indian/Mahe','Rupee','en-SC,fr-SC','Seychellois Creole (official) 89.1%, English (official) 5.1%, French (official) 0.7%, other 3.8%, unspecified 1.4% (2010 est.)',455,'247','32000','138300','28900','1271000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(192,'Sierra Leone','SL','SLE','sl','SL',694,'2403846',232,'232','Africa','Freetown','Africa/Freetown','Leone','en-SL,men,tem','English (official, regular use limited to literate minority), Mende (principal vernacular in the south), Temne (principal vernacular in the north), Krio (English-based Creole, spoken by the descendants of freed Jamaican slaves who were settled in the Freetown area, a lingua franca and a first language for 10% of the population but understood by 95%)',71740,'282','14900','2210000','18000','4607000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(193,'Singapore','SG','SGP','sg','SN',702,'1880251',65,'65','Asia','Singapore','Asia/Singapore','Dollar','cmn,en-SG,ms-SG,ta-SG,zh-SG','Mandarin (official) 36.3%, English (official) 29.8%, Malay (official) 11.9%, Hokkien 8.1%, Tamil (official) 4.4%, Cantonese 4.1%, Teochew 3.2%, other Indian languages 1.2%, other Chinese dialects 1.1%, other 1.1% (2010 est.)',693,'1960000','3235000','8063000','1990000','295700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(194,'Sint Maarten','SX','SXM','sx','NN',534,'7609695',1,'1-721','North America','Philipsburg','America/Lower_Princes','Guilder','nl,en','English (official) 67.5%, Spanish 12.9%, Creole 8.2%, Dutch (official) 4.2%, Papiamento (a Spanish-Portuguese-Dutch-English dialect) 2.2%, French 1.5%, other 3.5% (2001 census)',34,'','','','','794700000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(195,'Slovakia','SK','SVK','sk','LO',703,'3057568',421,'421','Europe','Bratislava','Europe/Bratislava','Euro','sk,hu','Slovak (official) 78.6%, Hungarian 9.4%, Roma 2.3%, Ruthenian 1%, other or unspecified 8.8% (2011 est.)',48845,'1384000','4063000','6095000','975000','96960000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(196,'Slovenia','SI','SVN','si','SI',705,'3190538',386,'386','Europe','Ljubljana','Europe/Ljubljana','Euro','sl,sh','Slovenian (official) 91.1%, Serbo-Croatian 4.5%, other or unspecified 4.4%, Italian (official, only in municipalities where Italian national communities reside), Hungarian (official, only in municipalities where Hungarian national communities reside) (2002 census)',20273,'415581','1298000','2246000','825000','46820000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(197,'Solomon Islands','SB','SLB','sb','BP',90,'2103350',677,'677','Oceania','Honiara','Pacific/Guadalcanal','Dollar','en-SB,tpi','Melanesian pidgin (in much of the country is lingua franca), English (official but spoken by only 1%-2% of the population), 120 indigenous languages',28450,'4370','10000','302100','8060','1099000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(198,'Somalia','SO','SOM','so','SO',706,'51537',252,'252','Africa','Mogadishu','Africa/Mogadishu','Shilling','so-SO,ar-SO,it,en-SO','Somali (official), Arabic (official, according to the Transitional Federal Charter), Italian, English',637657,'186','106000','658000','100000','2372000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(199,'South Africa','ZA','ZAF','za','SF',710,'953987',27,'27','Africa','Pretoria','Africa/Johannesburg','Rand','zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr','IsiZulu (official) 22.7%, IsiXhosa (official) 16%, Afrikaans (official) 13.5%, English (official) 9.6%, Sepedi (official) 9.1%, Setswana (official) 8%, Sesotho (official) 7.6%, Xitsonga (official) 4.5%, siSwati (official) 2.5%, Tshivenda (official) 2.4%, isiNdebele (official) 2.1%, sign language 0.5%, other 1.6% (2011 est.)',1219912,'4761000','4420000','68400000','4030000','353900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(200,'South Korea','KR','KOR','kr','KS',410,'1835841',82,'82','Asia','Seoul','Asia/Seoul','Won','ko-KR,en','Korean, English (widely taught in junior high and high school)',98480,'315697','39400000','53625000','30100000','1198000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(201,'South Sudan','SS','SSD','ss','OD',728,'7909807',211,'211','Africa','Juba','Africa/Juba','Pound','en','English (official), Arabic (includes Juba and Sudanese variants), regional languages include Dinka, Nuer, Bari, Zande, Shilluk',644329,'','','2000000','2200','11770000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(202,'Spain','ES','ESP','es','SP',724,'2510769',34,'34','Europe','Madrid','Europe/Madrid','Euro','es-ES,ca,gl,eu,oc','Castilian Spanish (official) 74%, Catalan 17%, Galician 7%, and Basque 2%',504782,'4228000','28119000','50663000','19220000','1356000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(203,'Sri Lanka','LK','LKA','lk','CE',144,'1227603',94,'94','Asia','Colombo','Asia/Colombo','Rupee','si,ta,en','Sinhala (official and national language) 74%, Tamil (national language) 18%, other 8%',65610,'9552','1777000','19533000','2796000','65120000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(204,'Sudan','SD','SDN','sd','SU',729,'366755',249,'249','Africa','Khartoum','Africa/Khartoum','Pound','ar-SD,en,fia','Arabic (official), English (official), Nubian, Ta Bedawie, Fur',1861484,'99','4200000','27659000','425000','52500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(205,'Suriname','SR','SUR','sr','NS',740,'3382998',597,'597','South America','Paramaribo','America/Paramaribo','Dollar','nl-SR,en,srn,hns,jv','Dutch (official), English (widely spoken), Sranang Tongo (Surinamese, sometimes called Taki-Taki, is native language of Creoles and much of the younger population and is lingua franca among others), Caribbean Hindustani (a dialect of Hindi), Javanese',163270,'188','163000','977000','83000','5009000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(206,'Svalbard and Jan Mayen','SJ','SJM','sj','SV',744,'607072',47,'47','Europe','Longyearbyen','Arctic/Longyearbyen','Krone','no,ru','Norwegian, Russian',62049,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(207,'Swaziland','SZ','SWZ','sz','WZ',748,'934841',268,'268','Africa','Mbabane','Africa/Mbabane','Lilangeni','en-SZ,ss-SZ','English (official, used for government business), siSwati (official)',17363,'2744','90100','805000','48600','3807000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(208,'Sweden','SE','SWE','se','SW',752,'2661886',46,'46','Europe','Stockholm','Europe/Stockholm','Krona','sv-SE,se,sma,fi-SE','Swedish (official), small Sami- and Finnish-speaking minorities',449964,'5978000','8398000','11643000','4321000','552000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(209,'Switzerland','CH','CHE','ch','SZ',756,'2658434',41,'41','Europe','Berne','Europe/Zurich','Franc','de-CH,fr-CH,it-CH,rm','German (official) 64.9%, French (official) 22.6%, Italian (official) 8.3%, Serbo-Croatian 2.5%, Albanian 2.6%, Portuguese 3.4%, Spanish 2.2%, English 4.6%, Romansch (official) 0.5%, other 5.1%',41290,'5301000','6152000','10460000','4382000','646200000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(210,'Syria','SY','SYR','sy','SY',760,'163843',963,'963','Asia','Damascus','Asia/Damascus','Pound','ar-SY,ku,hy,arc,fr,en','Arabic (official), Kurdish, Armenian, Aramaic, Circassian (widely understood); French, English (somewhat understood)',185180,'416','4469000','12928000','4425000','64700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(211,'Taiwan','TW','TWN','tw','TW',158,'1668284',886,'886','Asia','Taipei','Asia/Taipei','Dollar','zh-TW,zh,nan,hak','Mandarin Chinese (official), Taiwanese (Min), Hakka dialects',35980,'6272000','16147000','29455000','15998000','484700000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(212,'Tajikistan','TJ','TJK','tj','TI',762,'1220409',992,'992','Asia','Dushanbe','Asia/Dushanbe','Somoni','tg,ru','Tajik (official), Russian widely used in government and business',143100,'6258','700000','6528000','393000','8513000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(213,'Tanzania','TZ','TZA','tz','TZ',834,'149590',255,'255','Africa','Dodoma','Africa/Dar_es_Salaam','Shilling','sw-TZ,en,ar','Kiswahili or Swahili (official), Kiunguja (name for Swahili in Zanzibar), English (official, primary language of commerce, administration, and higher education), Arabic (widely spoken in Zanzibar), many local languages',945087,'26074','678000','27220000','161100','31940000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(214,'Thailand','TH','THA','th','TH',764,'1605651',66,'66','Asia','Bangkok','Asia/Bangkok','Baht','th,en','Thai (official) 90.7%, Burmese 1.3%, other 8%',514000,'3399000','17483000','84075000','6391000','400900000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(215,'Togo','TG','TGO','tg','TO',768,'2363686',228,'228','Africa','Lome','Africa/Lome','Franc','fr-TG,ee,hna,kbp,dag,ha','French (official, the language of commerce), Ewe and Mina (the two major African languages in the south), Kabye (sometimes spelled Kabiye) and Dagomba (the two major African languages in the north)',56785,'1168','356300','3518000','225000','4299000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(216,'Tokelau','TK','TKL','tk','TL',772,'4031074',690,'690','Oceania','','Pacific/Fakaofo','Dollar','tkl,en-TK','Tokelauan 93.5% (a Polynesian language), English 58.9%, Samoan 45.5%, Tuvaluan 11.6%, Kiribati 2.7%, other 2.5%, none 4.1%, unspecified 0.6%',10,'2069','800','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(217,'Tonga','TO','TON','to','TN',776,'4032283',676,'676','Oceania','Nuku\'alofa','Pacific/Tongatapu','Pa\'anga','to,en-TO','English and Tongan 87%, Tongan (official) 10.7%, English (official) 1.2%, other 1.1%, uspecified 0.03% (2006 est.)',748,'5367','8400','56000','30000','477000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(218,'Trinidad and Tobago','TT','TTO','tt','TD',780,'3573591',1,'1-868','North America','Port of Spain','America/Port_of_Spain','Dollar','en-TT,hns,fr,es,zh','English (official), Caribbean Hindustani (a dialect of Hindi), French, Spanish, Chinese',5128,'241690','593000','1884000','287000','27130000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(219,'Tunisia','TN','TUN','tn','TS',788,'2464461',216,'216','Africa','Tunis','Africa/Tunis','Dinar','ar-TN,fr','Arabic (official, one of the languages of commerce), French (commerce), Berber (Tamazight)',163610,'576','3500000','12840000','1105000','48380000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(220,'Turkey','TR','TUR','tr','TU',792,'298795',90,'90','Asia','Ankara','Europe/Istanbul','Lira','tr-TR,ku,diq,az,av','Turkish (official), Kurdish, other minority languages',780580,'7093000','27233000','67680000','13860000','821800000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(221,'Turkmenistan','TM','TKM','tm','TX',795,'1218197',993,'993','Asia','Ashgabat','Asia/Ashgabat','Manat','tk,ru,uz','Turkmen (official) 72%, Russian 12%, Uzbek 9%, other 7%',488100,'714','80400','3953000','575000','40560000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(222,'Turks and Caicos Islands','TC','TCA','tc','TK',796,'3576916',1,'1-649','North America','Cockburn Town','America/Grand_Turk','Dollar','en-TC','English (official)',430,'73217','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(223,'Tuvalu','TV','TUV','tv','TV',798,'2110297',688,'688','Oceania','Funafuti','Pacific/Funafuti','Dollar','tvl,en,sm,gil','Tuvaluan (official), English (official), Samoan, Kiribati (on the island of Nui)',26,'145158','4200','2800','1450','38000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(224,'U.S. Virgin Islands','VI','VIR','vi','VQ',850,'4796775',1,'1-340','North America','Charlotte Amalie','America/St_Thomas','Dollar','en-VI','English 74.7%, Spanish or Spanish Creole 16.8%, French or French Creole 6.6%, other 1.9% (2000 census)',352,'4790','30000','80300','75800','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(225,'Uganda','UG','UGA','ug','UG',800,'226074',256,'256','Africa','Kampala','Africa/Kampala','Shilling','en-UG,lg,sw,ar','English (official national language, taught in grade schools, used in courts of law and by most newspapers and some radio broadcasts), Ganda or Luganda (most widely used of the Niger-Congo languages, preferred for native language publications in the capital and may be taught in school), other Niger-Congo languages, Nilo-Saharan languages, Swahili, Arabic',236040,'32683','3200000','16355000','315000','22600000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(226,'Ukraine','UA','UKR','ua','UP',804,'690791',380,'380','Europe','Kiev','Europe/Kiev','Hryvnia','uk,ru-UA,rom,pl,hu','Ukrainian (official) 67%, Russian (regional language) 24%, other (includes small Romanian-, Polish-, and Hungarian-speaking minorities) 9%',603700,'2173000','7770000','59344000','12182000','175500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(227,'United Arab Emirates','AE','ARE','ae','AE',784,'290557',971,'971','Asia','Abu Dhabi','Asia/Dubai','Dirham','ar-AE,fa,en,hi,ur','Arabic (official), Persian, English, Hindi, Urdu',82880,'337804','3449000','13775000','1967000','390000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(228,'United Kingdom','GB','GBR','uk','UK',826,'2635167',44,'44','Europe','London','Europe/London','Pound','en-GB,cy-GB,gd','English',244820,'8107000','51444000','82109000','33010000','2490000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(229,'United States','US','USA','us','US',840,'6252001',1,'1','North America','Washington','America/New_York','Dollar','en-US,es-US,haw,fr','English 82.1%, Spanish 10.7%, other Indo-European 3.8%, Asian and Pacific island 2.7%, other 0.7% (2000 census)',9629091,'505000000','245000000','310000000','139000000','16720000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(230,'Uruguay','UY','URY','uy','UY',858,'3439705',598,'598','South America','Montevideo','America/Montevideo','Peso','es-UY','Spanish (official), Portunol, Brazilero (Portuguese-Spanish mix on the Brazilian frontier)',176220,'1036000','1405000','5000000','1010000','57110000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(231,'Uzbekistan','UZ','UZB','uz','UZ',860,'1512440',998,'998','Asia','Tashkent','Asia/Tashkent','Som','uz,ru,tg','Uzbek (official) 74.3%, Russian 14.2%, Tajik 4.4%, other 7.1%',447400,'56075','4689000','20274000','1963000','55180000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(232,'Vanuatu','VU','VUT','vu','NH',548,'2134431',678,'678','Oceania','Port Vila','Pacific/Efate','Vatu','bi,en-VU,fr-VU','local languages (more than 100) 63.2%, Bislama (official; creole) 33.7%, English (official) 2%, French (official) 0.6%, other 0.5% (2009 est.)',12200,'5655','17000','137000','5800','828000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(233,'Vatican','VA','VAT','va','VT',336,'3164670',39,'379','Europe','Vatican City','Europe/Vatican','Euro','la,it,fr','Latin, Italian, French',0,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(234,'Venezuela','VE','VEN','ve','VE',862,'3625428',58,'58','South America','Caracas','America/Caracas','Bolivar','es-VE','Spanish (official), numerous indigenous dialects',912050,'1016000','8918000','30520000','7650000','367500000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(235,'Vietnam','VN','VNM','vn','VM',704,'1562822',84,'84','Asia','Hanoi','Asia/Ho_Chi_Minh','Dong','vi,en,fr,zh,km','Vietnamese (official), English (increasingly favored as a second language), some French, Chinese, and Khmer, mountain area languages (Mon-Khmer and Malayo-Polynesian)',329560,'189553','23382000','134066000','10191000','170000000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(236,'Wallis and Futuna','WF','WLF','wf','WF',876,'4034749',681,'681','Oceania','Mata Utu','Pacific/Wallis','Franc','wls,fud,fr-WF','Wallisian (indigenous Polynesian language) 58.9%, Futunian 30.1%, French (official) 10.8%, other 0.2% (2003 census)',274,'2760','1300','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(237,'Western Sahara','EH','ESH','eh','WI',732,'2461445',212,'212','Africa','El-Aaiun','Africa/El_Aaiun','Dirham','ar,mey','Standard Arabic (national), Hassaniya Arabic, Moroccan Arabic',266000,'','','','','','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(238,'Yemen','YE','YEM','ye','YM',887,'69543',967,'967','Asia','Sanaa','Asia/Aden','Rial','ar-YE','Arabic (official)',527970,'33206','2349000','13900000','1100000','43890000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(239,'Zambia','ZM','ZMB','zm','ZA',894,'895949',260,'260','Africa','Lusaka','Africa/Lusaka','Kwacha','en-ZM,bem,loz,lun,lue,ny,toi','Bembe 33.4%, Nyanja 14.7%, Tonga 11.4%, Lozi 5.5%, Chewa 4.5%, Nsenga 2.9%, Tumbuka 2.5%, Lunda (North Western) 1.9%, Kaonde 1.8%, Lala 1.8%, Lamba 1.8%, English (official) 1.7%, Luvale 1.5%, Mambwe 1.3%, Namwanga 1.2%, Lenje 1.1%, Bisa 1%, other 9.2%, unspecified 0.4%',752614,'16571','816200','10525000','82500','22240000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39'),(240,'Zimbabwe','ZW','ZWE','zw','ZI',716,'878675',263,'263','Africa','Harare','Africa/Harare','Dollar','en-ZW,sn,nr,nd','English (official), Shona, Sindebele (the language of the Ndebele, sometimes called Ndebele), numerous but minor tribal dialects',390580,'30615','1423000','12614000','301600','10480000000','0','2021-12-28 09:20:39','2021-12-28 09:20:39');
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorials`
--

DROP TABLE IF EXISTS `tutorials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorials`
--

LOCK TABLES `tutorials` WRITE;
/*!40000 ALTER TABLE `tutorials` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,13,'Test Address','2021-12-31 06:52:32','2021-12-31 06:52:32','2021-12-31 11:05:53','2021-12-31 11:05:53'),(2,13,'New Test Address','2021-12-31 06:52:32','2021-12-31 06:52:32','2021-12-31 11:05:53','2021-12-31 11:05:53'),(3,20,'test address','2022-01-10 10:33:05','2022-01-10 10:33:05','2022-01-10 10:33:05','2022-01-10 10:33:05'),(4,20,'test address','2022-01-10 10:34:29','2022-01-10 10:34:29','2022-01-10 10:34:29','2022-01-10 10:34:29'),(5,20,'test address','2022-01-10 10:53:59','2022-01-10 10:53:59','2022-01-10 10:53:59','2022-01-10 10:53:59'),(6,9,'test address','2022-01-10 10:54:52','2022-01-10 10:59:03','2022-01-10 10:54:51','2022-01-10 10:59:03'),(7,9,'test address','2022-01-10 10:58:47','2022-01-10 10:58:47','2022-01-10 10:58:47','2022-01-10 10:58:47'),(8,9,'test address','2022-01-10 11:00:41','2022-01-10 11:00:41','2022-01-10 11:00:41','2022-01-10 11:00:41'),(9,9,'test address','2022-01-10 11:02:25','2022-01-10 11:02:25','2022-01-10 11:02:25','2022-01-10 11:02:25'),(10,9,'test address','2022-01-10 11:04:00','2022-01-10 11:04:00','2022-01-10 11:04:00','2022-01-10 11:04:00'),(11,9,'test address','2022-01-10 11:04:45','2022-01-10 11:04:45','2022-01-10 11:04:45','2022-01-10 11:04:45'),(12,9,'test address','2022-01-10 11:58:21','2022-01-10 11:58:21','2022-01-10 11:58:21','2022-01-10 11:58:21'),(13,9,'test address','2022-01-10 12:24:41','2022-01-10 12:24:41','2022-01-10 12:24:41','2022-01-10 12:24:41'),(14,13,'test address','2022-01-10 19:30:17','2022-01-10 19:30:17','2022-01-10 19:30:17','2022-01-10 19:30:17'),(15,13,'test address','2022-01-10 19:35:53','2022-01-10 19:35:53','2022-01-10 19:35:53','2022-01-10 19:35:53'),(16,13,'test address','2022-01-10 19:36:57','2022-01-10 19:36:57','2022-01-10 19:36:57','2022-01-10 19:36:57'),(17,13,'test address','2022-01-10 19:50:00','2022-01-10 19:50:00','2022-01-10 19:50:00','2022-01-10 19:50:00'),(18,26,'26, Monu Nager, Jaipur, India','2022-01-11 04:57:46','2022-01-11 04:57:46','2022-01-11 04:57:46','2022-01-11 04:57:46'),(19,22,'test','2022-01-11 09:29:25','2022-01-11 09:29:25','2022-01-11 09:29:25','2022-01-11 09:29:25'),(20,22,'test','2022-01-11 09:32:29','2022-01-11 09:32:29','2022-01-11 09:32:29','2022-01-11 09:32:29'),(21,22,'test','2022-01-11 09:34:40','2022-01-11 09:34:40','2022-01-11 09:34:40','2022-01-11 09:34:40'),(22,26,'Test address','2022-01-11 09:43:43','2022-01-11 09:43:43','2022-01-11 09:43:43','2022-01-11 09:43:43'),(23,26,'New address','2022-01-11 09:45:07','2022-01-11 09:45:07','2022-01-11 09:45:07','2022-01-11 09:45:07'),(24,28,'test','2022-01-11 09:54:42','2022-01-11 09:54:42','2022-01-11 09:54:42','2022-01-11 09:54:42'),(25,28,'New Address','2022-01-11 09:57:20','2022-01-11 09:57:20','2022-01-11 09:57:20','2022-01-11 09:57:20'),(26,28,'Test','2022-01-11 09:57:53','2022-01-11 09:57:53','2022-01-11 09:57:53','2022-01-11 09:57:53'),(27,28,'Test','2022-01-11 10:01:55','2022-01-11 10:01:55','2022-01-11 10:01:55','2022-01-11 10:01:55'),(28,28,'Test111111111111','2022-01-11 10:02:52','2022-01-11 10:02:52','2022-01-11 10:02:52','2022-01-11 10:02:52'),(29,28,'Helllllllllllllllllllllllllllllll','2022-01-11 10:03:53','2022-01-11 10:03:53','2022-01-11 10:03:53','2022-01-11 10:03:53'),(30,29,'test','2022-01-11 10:05:08','2022-01-11 10:05:08','2022-01-11 10:05:08','2022-01-11 10:05:08'),(31,27,'test','2022-01-11 11:05:27','2022-01-11 11:05:27','2022-01-11 11:05:27','2022-01-11 11:05:27'),(32,27,'testii','2022-01-11 11:07:37','2022-01-11 11:07:37','2022-01-11 11:07:37','2022-01-11 11:07:37'),(33,21,'test','2022-01-11 11:15:40','2022-01-11 11:15:40','2022-01-11 11:15:40','2022-01-11 11:15:40'),(34,33,' 26, mahaveer nager, Raj, India','2022-01-11 11:52:49','2022-01-11 11:52:49','2022-01-11 11:52:49','2022-01-11 11:52:49'),(35,33,' 26, Govind Nager, Raj India','2022-01-11 12:11:14','2022-01-11 12:11:14','2022-01-11 12:11:14','2022-01-11 12:11:14'),(36,28,'test','2022-01-11 12:50:34','2022-01-11 12:50:34','2022-01-11 12:50:34','2022-01-11 12:50:34'),(37,16,'test','2022-01-12 14:33:02','2022-01-12 14:33:02','2022-01-12 14:33:02','2022-01-12 14:33:02'),(38,17,'compassvale','2022-01-12 14:34:03','2022-01-12 14:34:03','2022-01-12 14:34:03','2022-01-12 14:34:03'),(39,10,'test','2022-01-12 14:34:57','2022-01-12 14:34:57','2022-01-12 14:34:57','2022-01-12 14:34:57'),(40,10,'adddress','2022-01-12 14:35:03','2022-01-12 14:35:03','2022-01-12 14:35:03','2022-01-12 14:35:03'),(41,17,'northstar','2022-01-13 07:47:04','2022-01-13 07:47:04','2022-01-13 07:47:04','2022-01-13 07:47:04'),(42,34,'Northstar','2022-01-14 02:15:43','2022-01-14 02:15:43','2022-01-14 02:15:43','2022-01-14 02:15:43'),(43,13,'Hello, Test addresss','2022-01-17 11:27:31','2022-01-17 11:27:31','2022-01-17 11:27:31','2022-01-17 11:27:31'),(44,10,'jurong east','2022-01-17 15:35:57','2022-01-17 15:35:57','2022-01-17 15:35:57','2022-01-17 15:35:57'),(45,39,'Punjab Society','2022-04-08 18:44:18','2022-04-08 18:44:18','2022-04-08 18:44:18','2022-04-08 18:44:18'),(46,40,'fghj','2022-04-13 03:11:39','2022-04-13 03:11:39','2022-04-13 03:11:39','2022-04-13 03:11:39'),(47,40,'fghj','2022-04-13 03:26:14','2022-04-13 03:26:14','2022-04-13 03:26:14','2022-04-13 03:26:14'),(48,40,'fghj','2022-04-13 03:26:15','2022-04-13 03:26:15','2022-04-13 03:26:15','2022-04-13 03:26:15'),(49,40,'fghj','2022-04-13 03:28:15','2022-04-13 03:28:15','2022-04-13 03:28:15','2022-04-13 03:28:15'),(50,40,'fghj','2022-04-13 03:31:30','2022-04-13 03:31:30','2022-04-13 03:31:30','2022-04-13 03:31:30'),(51,40,'fghj','2022-04-13 03:33:35','2022-04-13 03:33:35','2022-04-13 03:33:35','2022-04-13 03:33:35'),(52,40,'fghj','2022-04-13 03:48:28','2022-04-13 03:48:28','2022-04-13 03:48:28','2022-04-13 03:48:28'),(53,46,'test','2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33','2022-04-17 05:14:33'),(54,42,'test','2022-04-17 05:25:41','2022-04-17 05:25:41','2022-04-17 05:25:41','2022-04-17 05:25:41'),(55,51,'Surat','2022-05-06 10:48:19','2022-05-06 10:48:19','2022-05-06 10:48:19','2022-05-06 10:48:19'),(56,51,'Surat','2022-05-06 10:48:30','2022-05-06 10:48:30','2022-05-06 10:48:30','2022-05-06 10:48:30');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rewards`
--

DROP TABLE IF EXISTS `user_rewards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rewards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rewards_id` int NOT NULL,
  `rewards_point` int NOT NULL,
  `store_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `store_id` (`store_id`),
  KEY `user_id` (`user_id`),
  KEY `rewards_id` (`rewards_id`),
  CONSTRAINT `user_rewards_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `user_rewards_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_rewards_ibfk_3` FOREIGN KEY (`rewards_id`) REFERENCES `rewards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rewards`
--

LOCK TABLES `user_rewards` WRITE;
/*!40000 ALTER TABLE `user_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'Admin','2021-10-30 06:21:42','2021-10-30 06:21:42'),(2,'Group User','2021-10-30 12:46:43','2021-12-28 07:16:55'),(3,'Member','2021-12-28 07:17:16','2021-12-28 07:17:16');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' For Enable, ''1'' For Disable',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' For delete',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_forgot_password_email_sent` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@admin.com','123456','Test address','278899','2021-10-01',NULL,'224455110',1,'0','0','2021-10-30 06:21:53','2021-11-01 12:15:43','2021-10-30 12:43:54','2021-11-01 12:15:43',NULL),(2,'Ram','sain','ram@gmail.com','123456','Test','332211','1990-01-02',NULL,'9988552200',2,'1','0','2021-10-30 12:55:14','2021-12-09 08:34:07','2021-10-30 12:55:14','2021-12-09 08:34:07',NULL),(3,'mohit','sharma','mohit@mailinator.com','123456','Test','4545454','1991-02-02',NULL,'456564545645',2,'1','1','2021-10-30 12:58:24','2021-11-10 13:04:18','2021-10-30 12:58:24','2021-11-10 13:04:18',NULL),(4,'Deepak','JI','deepak1@mailinator.com','123456','Test address','112255','2021-10-01',NULL,'34985739457',2,'0','1','2021-10-30 15:26:12','2021-10-30 15:27:03','2021-10-30 15:26:12','2021-10-30 15:27:03',NULL),(5,'Sonu','Jain','Sonu1@mailinator.com','123456','Test addres','314400','2021-10-30',NULL,'98787777777',2,'1','1','2021-10-30 15:54:31','2021-11-10 13:05:09','2021-10-30 15:54:31','2021-11-10 13:05:09',NULL),(6,'velztorme','smith','velztorm@mailinator.com','123456','test address1\ntest address2','10001','2003-01-30',NULL,'9898787676',2,'0','0','2021-10-30 15:56:08','2021-11-01 10:15:28','2021-10-30 15:56:08','2021-11-01 10:15:28',NULL),(7,'ashok','jain','asho1k@gmail.com','123456','test addres 1s','332200','1999-10-25',NULL,'8755441120',2,'0','0','2021-11-01 10:18:48','2021-11-01 10:18:48','2021-11-01 10:18:48','2021-11-01 10:18:48',NULL),(8,'Rohit','jain','rohit7@mailinator.com','12345678','Hello','221100','2021-11-02',NULL,'564564564564',2,'0','1','2021-11-01 10:20:26','2021-11-02 08:37:19','2021-11-01 10:20:26','2021-11-02 08:37:19',NULL),(9,'pulkit','sharma','punit1@mailinator.com','123456','Test address','5489679','1990-01-02',NULL,'79878979797',2,'0','0','2021-11-02 10:06:47','2021-11-02 10:07:12','2021-11-02 10:06:47','2021-11-02 10:07:12',NULL),(10,'koh','kh','k.kokhwee@gmail.com','123123','as','123123','2021-12-06',NULL,'91234567',2,'0','0','2021-12-06 11:43:53','2021-12-06 11:43:53','2021-12-06 11:43:52','2021-12-06 11:43:52',NULL),(11,'shyam','Ji','shyam1@mailinator.com','123456','Test address','333555','2000-04-28',NULL,'9988552200',2,'0','0','2021-12-09 08:48:18','2021-12-09 08:48:18','2021-12-09 08:48:18','2021-12-09 08:48:18',NULL),(12,'raghav','sharma','raghav@mailinator.com','123456','Test address','333555','2000-04-28',NULL,'9988552211',2,'0','0','2021-12-09 08:52:01','2021-12-09 08:52:01','2021-12-09 08:52:01','2021-12-09 08:52:01',NULL),(13,'raghav','sharma','raghav11@mailinator.com','123456','Test address','333555','2000-04-28',NULL,'9988550011',2,'0','0','2021-12-18 09:48:54','2021-12-18 09:48:54','2021-12-18 09:48:54','2021-12-18 09:48:54',NULL),(14,'test','test','test@test.com','1345+','test address','85685','2021-12-08',NULL,'8567455585',2,'0','0','2021-12-21 12:35:09','2021-12-21 12:35:09','2021-12-21 12:35:09','2021-12-21 12:35:09',NULL),(15,'pravesh','tiwari','pravesh@test.com','123456','Test address','320011','2021-12-20',NULL,'9877445511',2,'0','0','2021-12-21 13:12:40','2021-12-21 13:12:40','2021-12-21 13:12:40','2021-12-21 13:12:40',NULL),(16,'k','kh','omgkkh@gmail.com','123123','test','asdfs','2021-12-22',NULL,'asdasd',2,'0','0','2021-12-22 02:37:07','2021-12-22 02:37:07','2021-12-22 02:37:07','2021-12-22 02:37:07',NULL),(17,'Lyon','Kong','LyonKongZL46@gmail.com','SAStarScouts23','58 Farrer Road','268845','1992-11-23',NULL,'98272739',2,'0','0','2021-12-22 06:40:51','2021-12-22 06:40:51','2021-12-22 06:40:51','2021-12-22 06:40:51',NULL),(18,'raghav','sharma','raghav111@mailinator.com','123456','Test address','333555','2000-04-28','91','9388550011',3,'0','0','2021-12-28 09:42:43','2021-12-30 08:28:41','2021-12-28 09:42:43','2021-12-30 08:28:41',NULL),(19,'mohit',NULL,'raghav11@mailinator.com','Raghav@123','Test address','335522','2021-12-29','91','9955220011',2,'0','0','2021-12-29 07:24:28','2021-12-30 08:28:33','2021-12-29 07:24:28','2021-12-30 08:28:33',NULL),(20,'kh',NULL,'k.kokhwee@gmail.com','1Aa!123','test','123123','2022-01-05','1','1231',3,'0','0','2022-01-05 05:45:17','2022-01-05 05:45:17','2022-01-05 05:45:17','2022-01-05 05:45:17',NULL),(21,'Vikas',NULL,'vikas@mailinator.com','Activa@123','89 test','302001','1994-01-14','91','7737689351',2,'0','0','2022-01-05 12:08:28','2022-01-05 12:08:28','2022-01-05 12:08:28','2022-01-05 12:08:28',NULL),(22,'Amit',NULL,'amit@mailinator.com','Activa@123','45','302001','1998-02-03','91','7737689351',2,'0','0','2022-01-06 08:21:39','2022-01-06 08:21:39','2022-01-06 08:21:39','2022-01-06 08:21:39',NULL),(23,'PULKIT',NULL,'pulkit@mailinator.com','Activa@123','58','302001','1992-05-11','91','7737689351',2,'0','0','2022-01-06 08:30:37','2022-01-06 08:30:37','2022-01-06 08:30:37','2022-01-06 08:30:37',NULL),(24,'KAMAL',NULL,'kamal@mailinator.com','Activa@123','45','302001','1990-01-01','36','77376893',3,'0','0','2022-01-06 08:44:30','2022-01-06 08:44:30','2022-01-06 08:44:30','2022-01-06 08:44:30',NULL),(25,'suraj',NULL,'suraj@mailinator.com','Activa@123','45','302001','1993-02-25','91','546545564545',3,'0','0','2022-01-06 08:53:31','2022-01-06 08:53:31','2022-01-06 08:53:31','2022-01-06 08:53:31',NULL),(26,'Sunil',NULL,'sunil@mailinator.com','Sunil@123','25, Radhe Shyam Marg, Udaipur, Raj, India','665500','2000-12-31','91','930044881100',3,'0','0','2022-01-11 04:55:21','2022-01-11 04:55:21','2022-01-11 04:55:21','2022-01-11 04:55:21',NULL),(27,'Prem',NULL,'prem@mailinator.com','Activa@123','78, JLN, JAIPUR','302001','1993-01-01','1','773768935123',2,'0','0','2022-01-11 09:50:42','2022-01-11 09:50:42','2022-01-11 09:50:42','2022-01-11 09:50:42',NULL),(28,'harsh',NULL,'harsh@mailinator.com','Activa@123','89, KL, JAIPUR','302004','1993-02-12','1-345','773768935165',3,'0','0','2022-01-11 09:53:37','2022-01-11 09:53:37','2022-01-11 09:53:37','2022-01-11 09:53:37',NULL),(29,'AMAN',NULL,'aman@mailinator.com','Activa@123','78, KLP','302001','1993-02-02','1','756484564564',3,'0','0','2022-01-11 10:04:33','2022-01-11 10:04:33','2022-01-11 10:04:33','2022-01-11 10:04:33',NULL),(30,'Mukesh',NULL,'mukesh@mailinator.com','Activa@123','test','302001','1993-02-02','1-345','7737689351',2,'0','0','2022-01-11 11:20:12','2022-01-11 11:20:12','2022-01-11 11:20:12','2022-01-11 11:20:12',NULL),(31,'Hemant',NULL,'hemant@mailinator.com','Activa@123','test','302001','1993-02-02','1-345','7737686351',3,'0','0','2022-01-11 11:21:14','2022-01-11 11:21:14','2022-01-11 11:21:14','2022-01-11 11:21:14',NULL),(32,'SOnu',NULL,'sonu@mailinator.com','Sonu@123','Test address','654411','2022-01-11','91','9988774400',2,'0','0','2022-01-11 11:47:10','2022-01-11 11:47:10','2022-01-11 11:47:10','2022-01-11 11:47:10',NULL),(33,'Monu',NULL,'monu@mailinator.com','Monu@123','Test address','988200','2022-01-11','91','4455882200',3,'0','0','2022-01-11 11:48:45','2022-01-11 11:48:45','2022-01-11 11:48:45','2022-01-11 11:48:45',NULL),(34,'spam',NULL,'Spamlo46@gmail.com','1aA!123','Northstar','268835','1977-01-20','65','6598272739',3,'0','0','2022-01-14 02:07:10','2022-01-14 02:07:10','2022-01-14 02:07:10','2022-01-14 02:07:10',NULL),(35,'1231231','23112321','112323','13123','1231231','23123','2022-04-01',NULL,'23123',2,'0','0','2022-04-08 16:19:13','2022-04-08 16:19:13','2022-04-08 16:19:13','2022-04-08 16:19:13',NULL),(36,'saad','saad','saad@saad.com','saad','saad','12345','2022-03-29',NULL,'saad',2,'0','0','2022-04-08 17:53:21','2022-04-08 17:53:21','2022-04-08 17:53:21','2022-04-08 17:53:21',NULL),(37,'saad','saad','saad@saad1.com','saad','saad','12345','2022-03-29',NULL,'saad',2,'0','0','2022-04-08 17:57:32','2022-04-08 17:57:32','2022-04-08 17:57:32','2022-04-08 17:57:32',NULL),(38,'saad','saad','saad@saad2.com','saad','saad','12345','2022-03-29',NULL,'saad',2,'0','0','2022-04-08 18:03:58','2022-04-08 18:03:58','2022-04-08 18:03:58','2022-04-08 18:03:58',NULL),(39,'Abdullah','Hani','leader@leader.com','1234567890','Punjab Society','54600','2022-04-01',NULL,'123456',2,'0','0','2022-04-08 18:38:44','2022-04-08 18:38:44','2022-04-08 18:38:44','2022-04-08 18:38:44',NULL),(40,'flamingspaz13','Ajmal','saadajmal022@gmail.com','Ajruepajr1@','fghj','5678','2022-04-05',NULL,'5678934567',3,'0','0','2022-04-08 19:51:19','2022-05-10 08:47:34','2022-04-08 19:51:19','2022-05-10 08:47:34',1),(41,'Hani','Abdullah','hani@h1.com','Hani@123','test','1234','2022-04-01',NULL,'1234567890',2,'0','0','2022-04-08 20:42:39','2022-04-08 20:42:39','2022-04-08 20:42:39','2022-04-08 20:42:39',NULL),(42,'tester','Spam','Tester@hotmail.com','SAStarScouts23','test','436625','2022-04-01',NULL,'98272739',2,'0','0','2022-04-11 12:37:52','2022-04-11 12:37:52','2022-04-11 12:37:52','2022-04-11 12:37:52',NULL),(43,'tester123','Tester123','tester123@gmail.com','SAStarScouts23','test','234445','2022-04-01',NULL,'98272739',2,'0','0','2022-04-11 12:40:28','2022-04-11 12:40:28','2022-04-11 12:40:28','2022-04-11 12:40:28',NULL),(44,'Saad','Ajmal','saadajmal@gmail.com','123456789','xyz','12345','2022-04-05',NULL,'1234567890',2,'0','0','2022-04-11 16:18:57','2022-04-11 16:18:57','2022-04-11 16:18:57','2022-04-11 16:18:57',NULL),(45,'flamingspaz14','adsfd','saadajmal1@gmail.com','Ajruepajr1@','adsfsg','3425','2022-03-29',NULL,'5678934567',3,'0','0','2022-04-13 04:07:30','2022-04-13 04:07:30','2022-04-13 04:07:30','2022-04-13 04:07:30',NULL),(46,'test','test','test@tester.com','1Aa@','test','123123','2022-04-13',NULL,'9123456789',3,'0','0','2022-04-13 14:11:17','2022-04-13 14:11:17','2022-04-13 14:11:17','2022-04-13 14:11:17',NULL),(47,'Lyon','Kong','LyonKongZL46@hotmail.com','1Aa@','test','288823','2022-04-01',NULL,'6598272739',3,'0','0','2022-04-17 05:21:21','2022-04-17 05:21:21','2022-04-17 05:21:21','2022-04-17 05:21:21',NULL),(48,'Kevin ','huddle','kevinjhuddle@malinator.com','Test@123','test, 300','395006','2022-05-06',NULL,'8956895745',2,'0','0','2022-05-03 05:38:54','2022-05-03 05:38:54','2022-05-03 05:38:54','2022-05-03 05:38:54',NULL),(49,'canada','gallien','candacemgallien@mailinator.com','Test@123','Test Test','39092','2000-08-01',NULL,'8956852650',3,'0','0','2022-05-03 06:38:37','2022-05-03 06:38:37','2022-05-03 06:38:37','2022-05-03 06:38:37',NULL),(50,'kh','kh','testsss@tester.com','1Aa@','test','123123','2022-05-12',NULL,'9123456789',3,'0','0','2022-05-04 13:27:13','2022-05-04 13:27:13','2022-05-04 13:27:13','2022-05-04 13:27:13',NULL),(51,'angular','admin','angular@mailinator.com','Angular@123456','Surat','394220','2015-06-09',NULL,'9838104305',2,'0','0','2022-05-06 08:49:43','2022-05-06 08:49:43','2022-05-06 08:49:43','2022-05-06 08:49:43',NULL),(52,'angular','member','member@mailinator.com','Angular@123456','Surta','394222','2012-06-14',NULL,'9838100543',3,'0','0','2022-05-06 08:52:17','2022-05-06 08:52:17','2022-05-06 08:52:17','2022-05-06 08:52:17',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village_posts`
--

DROP TABLE IF EXISTS `village_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `village_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `village_id` int NOT NULL,
  `group_id` int NOT NULL,
  `post` text NOT NULL,
  `posted_user_id` int NOT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '"1" for delete',
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '"0" for enable, "1" for disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `village_id` (`village_id`),
  KEY `posted_user_id` (`posted_user_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `village_posts_ibfk_1` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`),
  CONSTRAINT `village_posts_ibfk_2` FOREIGN KEY (`posted_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `village_posts_ibfk_3` FOREIGN KEY (`group_id`) REFERENCES `villages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village_posts`
--

LOCK TABLES `village_posts` WRITE;
/*!40000 ALTER TABLE `village_posts` DISABLE KEYS */;
INSERT INTO `village_posts` VALUES (1,6,6,'Hello Users',4,'0','0','2021-11-02 10:31:27','2021-11-02 10:31:27','2021-11-02 10:41:55','2021-11-02 10:41:55'),(2,1,1,'My New POST',3,'0','0','2021-11-02 10:31:27','2021-11-02 10:31:27','2021-11-02 10:41:55','2021-11-02 10:41:55');
/*!40000 ALTER TABLE `village_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village_user_data`
--

DROP TABLE IF EXISTS `village_user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `village_user_data` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`user_id`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `village_user_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `village_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `village_user_data_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village_user_data`
--

LOCK TABLES `village_user_data` WRITE;
/*!40000 ALTER TABLE `village_user_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `village_user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village_users`
--

DROP TABLE IF EXISTS `village_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `village_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_leave_group` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for avaiable, ''1'' for leave',
  `is_group_leader` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for group leader',
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `village_users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `villages` (`id`),
  CONSTRAINT `village_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village_users`
--

LOCK TABLES `village_users` WRITE;
/*!40000 ALTER TABLE `village_users` DISABLE KEYS */;
INSERT INTO `village_users` VALUES (1,15,7,'0','0','0','2021-11-01 11:42:55','2021-12-30 05:48:23','2021-11-01 12:12:34','2021-12-30 05:48:23',NULL),(2,15,4,'0','1','0','2021-11-01 11:42:55','2021-12-30 05:48:30','2021-11-01 12:12:34','2021-12-30 05:48:30',NULL),(3,15,12,'1','0','0','2021-12-28 13:13:18','2021-12-30 08:22:42','2021-12-28 13:13:18','2021-12-30 08:22:42',NULL),(4,15,18,'1','0','0','2021-12-28 13:15:33','2021-12-30 06:32:18','2021-12-28 13:15:33','2021-12-30 06:32:18',NULL),(5,1,18,'0','0','0','2021-12-30 11:26:10','2021-12-30 11:26:10','2021-12-30 11:26:10','2021-12-30 11:26:10',NULL),(6,1,18,'0','0','0','2021-12-30 11:26:19','2021-12-30 11:26:19','2021-12-30 11:26:19','2021-12-30 11:26:19',NULL),(7,17,20,'1','0','0','2022-01-05 05:46:15','2022-01-06 11:09:43','2022-01-05 05:46:15','2022-01-06 11:09:43',NULL),(8,18,20,'0','0','0','2022-01-05 05:46:25','2022-01-05 05:46:25','2022-01-05 05:46:25','2022-01-05 05:46:25',NULL),(9,6,20,'0','0','0','2022-01-05 05:53:24','2022-01-05 05:53:24','2022-01-05 05:53:24','2022-01-05 05:53:24',NULL),(10,6,18,'0','0','0','2022-01-05 17:08:12','2022-01-05 17:08:12','2022-01-05 17:08:12','2022-01-05 17:08:12',NULL),(11,7,18,'0','0','0','2022-01-05 17:10:19','2022-01-05 17:10:19','2022-01-05 17:10:19','2022-01-05 17:10:19',NULL),(12,1,13,'0','0','0','2022-01-05 17:36:54','2022-01-05 17:36:54','2022-01-05 17:36:54','2022-01-05 17:36:54',NULL),(13,9,13,'0','0','0','2022-01-06 06:11:26','2022-01-06 06:11:26','2022-01-06 06:11:26','2022-01-06 06:11:26',NULL),(14,26,22,'1','0','0','2022-01-06 08:22:36','2022-01-06 08:41:12','2022-01-06 08:22:36','2022-01-06 08:41:12',NULL),(15,26,22,'1','0','0','2022-01-06 08:27:02','2022-01-06 08:41:12','2022-01-06 08:27:02','2022-01-06 08:41:12',NULL),(16,26,23,'1','0','0','2022-01-06 08:30:55','2022-01-06 08:39:25','2022-01-06 08:30:55','2022-01-06 08:39:25',NULL),(17,28,22,'0','0','0','2022-01-06 08:38:43','2022-01-06 08:38:43','2022-01-06 08:38:43','2022-01-06 08:38:43',NULL),(18,28,21,'1','0','0','2022-01-06 08:39:15','2022-01-06 08:40:58','2022-01-06 08:39:15','2022-01-06 08:40:58',NULL),(19,28,21,'0','0','0','2022-01-06 08:41:39','2022-01-06 08:41:39','2022-01-06 08:41:39','2022-01-06 08:41:39',NULL),(20,26,24,'1','0','0','2022-01-06 08:48:25','2022-01-06 08:52:03','2022-01-06 08:48:25','2022-01-06 08:52:02',NULL),(21,28,24,'0','0','0','2022-01-06 08:48:30','2022-01-06 08:48:30','2022-01-06 08:48:30','2022-01-06 08:48:30',NULL),(22,28,25,'0','0','0','2022-01-06 08:53:45','2022-01-06 08:53:45','2022-01-06 08:53:45','2022-01-06 08:53:45',NULL),(23,26,25,'0','0','0','2022-01-06 08:53:47','2022-01-06 08:53:47','2022-01-06 08:53:47','2022-01-06 08:53:47',NULL),(24,1,20,'0','0','0','2022-01-06 11:09:12','2022-01-06 11:09:12','2022-01-06 11:09:12','2022-01-06 11:09:12',NULL),(25,33,20,'0','0','0','2022-01-06 13:13:11','2022-01-13 14:42:58','2022-01-06 13:13:11','2022-01-13 14:42:58',NULL),(26,6,13,'0','0','0','2022-01-10 05:39:38','2022-01-10 05:39:38','2022-01-10 05:39:38','2022-01-10 05:39:38',NULL),(27,1,13,'0','0','0','2022-01-10 17:50:20','2022-01-10 17:50:20','2022-01-10 17:50:20','2022-01-10 17:50:20',NULL),(28,15,13,'0','0','0','2022-01-10 19:51:00','2022-01-10 19:51:00','2022-01-10 19:51:00','2022-01-10 19:51:00',NULL),(29,15,26,'1','0','0','2022-01-11 04:57:58','2022-01-11 10:46:49','2022-01-11 04:57:58','2022-01-11 10:46:49',NULL),(30,14,21,'0','0','0','2022-01-11 09:15:47','2022-01-11 09:15:47','2022-01-11 09:15:47','2022-01-11 09:15:47',NULL),(31,14,21,'0','0','0','2022-01-11 09:15:49','2022-01-11 09:15:49','2022-01-11 09:15:49','2022-01-11 09:15:49',NULL),(32,14,21,'0','0','0','2022-01-11 09:15:50','2022-01-11 09:15:50','2022-01-11 09:15:50','2022-01-11 09:15:50',NULL),(33,15,21,'0','0','0','2022-01-11 09:16:18','2022-01-11 09:16:18','2022-01-11 09:16:18','2022-01-11 09:16:18',NULL),(34,26,22,'0','0','0','2022-01-11 09:28:13','2022-01-11 09:28:13','2022-01-11 09:28:13','2022-01-11 09:28:13',NULL),(35,26,26,'0','0','0','2022-01-11 09:43:37','2022-01-11 09:43:37','2022-01-11 09:43:37','2022-01-11 09:43:37',NULL),(36,30,28,'1','0','0','2022-01-11 09:54:38','2022-01-11 10:49:08','2022-01-11 09:54:38','2022-01-11 10:49:08',NULL),(37,30,28,'1','0','0','2022-01-11 09:56:58','2022-01-11 10:49:08','2022-01-11 09:56:58','2022-01-11 10:49:08',NULL),(38,30,28,'1','0','0','2022-01-11 09:57:05','2022-01-11 10:49:08','2022-01-11 09:57:05','2022-01-11 10:49:08',NULL),(39,30,28,'1','0','0','2022-01-11 09:58:41','2022-01-11 10:49:08','2022-01-11 09:58:41','2022-01-11 10:49:08',NULL),(40,30,28,'1','0','0','2022-01-11 09:58:55','2022-01-11 10:49:08','2022-01-11 09:58:55','2022-01-11 10:49:08',NULL),(41,30,28,'1','0','0','2022-01-11 10:02:13','2022-01-11 10:49:08','2022-01-11 10:02:13','2022-01-11 10:49:08',NULL),(42,30,28,'1','0','0','2022-01-11 10:02:20','2022-01-11 10:49:08','2022-01-11 10:02:20','2022-01-11 10:49:08',NULL),(43,30,28,'1','0','0','2022-01-11 10:02:21','2022-01-11 10:49:08','2022-01-11 10:02:21','2022-01-11 10:49:08',NULL),(44,30,28,'1','0','0','2022-01-11 10:03:48','2022-01-11 10:49:08','2022-01-11 10:03:48','2022-01-11 10:49:08',NULL),(45,30,29,'1','0','0','2022-01-11 10:04:58','2022-01-11 10:47:23','2022-01-11 10:04:58','2022-01-11 10:47:23',NULL),(46,30,29,'1','0','0','2022-01-11 10:05:00','2022-01-11 10:47:23','2022-01-11 10:05:00','2022-01-11 10:47:23',NULL),(47,30,29,'1','0','0','2022-01-11 10:05:01','2022-01-11 10:47:23','2022-01-11 10:05:01','2022-01-11 10:47:23',NULL),(48,30,29,'1','0','0','2022-01-11 10:05:04','2022-01-11 10:47:23','2022-01-11 10:05:04','2022-01-11 10:47:23',NULL),(49,26,27,'0','0','0','2022-01-11 11:05:19','2022-01-11 11:05:19','2022-01-11 11:05:19','2022-01-11 11:05:19',NULL),(50,30,21,'1','0','0','2022-01-11 11:13:10','2022-01-11 11:13:23','2022-01-11 11:13:10','2022-01-11 11:13:23',NULL),(51,30,21,'0','0','0','2022-01-11 11:13:34','2022-01-11 11:13:34','2022-01-11 11:13:34','2022-01-11 11:13:34',NULL),(52,31,33,'0','0','0','2022-01-11 11:51:21','2022-01-11 11:51:21','2022-01-11 11:51:21','2022-01-11 11:51:21',NULL),(53,30,28,'0','0','0','2022-01-11 12:50:07','2022-01-11 12:50:07','2022-01-11 12:50:07','2022-01-11 12:50:07',NULL),(54,6,16,'0','0','0','2022-01-12 14:32:59','2022-01-12 14:32:59','2022-01-12 14:32:59','2022-01-12 14:32:59',NULL),(55,6,17,'1','0','0','2022-01-12 14:33:21','2022-04-11 12:33:39','2022-01-12 14:33:21','2022-04-11 12:33:39',NULL),(56,17,10,'1','0','0','2022-01-12 14:33:37','2022-04-25 12:58:50','2022-01-12 14:33:37','2022-04-25 12:58:50',NULL),(57,19,16,'0','0','0','2022-01-12 14:37:13','2022-01-12 14:37:13','2022-01-12 14:37:13','2022-01-12 14:37:13',NULL),(58,32,34,'1','0','0','2022-01-14 02:15:26','2022-01-14 02:18:01','2022-01-14 02:15:26','2022-01-14 02:18:01',NULL),(59,31,13,'0','0','0','2022-01-17 11:27:13','2022-01-17 11:27:13','2022-01-17 11:27:13','2022-01-17 11:27:13',NULL),(60,35,10,'1','0','0','2022-01-17 15:35:49','2022-04-25 12:58:56','2022-01-17 15:35:48','2022-04-25 12:58:56',NULL),(61,6,34,'0','0','0','2022-01-19 07:28:02','2022-01-19 07:28:02','2022-01-19 07:28:02','2022-01-19 07:28:02',NULL),(62,1,39,'0','0','0','2022-04-08 18:43:42','2022-04-08 18:43:42','2022-04-08 18:43:42','2022-04-08 18:43:42','Requested'),(63,2,39,'0','0','0','2022-04-08 18:43:48','2022-04-08 18:43:48','2022-04-08 18:43:48','2022-04-08 18:43:48','Requested'),(64,1,41,'0','0','0','2022-04-08 20:45:44','2022-04-08 20:45:44','2022-04-08 20:45:44','2022-04-08 20:45:44','Requested'),(65,3,40,'0','0','0','2022-04-08 21:40:57','2022-04-08 21:40:57','2022-04-08 21:40:57','2022-04-08 21:40:57','Requested'),(66,1,43,'0','0','0','2022-04-11 12:43:51','2022-04-11 12:43:51','2022-04-11 12:43:51','2022-04-11 12:43:51','Requested'),(67,38,43,'0','0','0','2022-04-11 12:46:08','2022-04-11 12:46:08','2022-04-11 12:46:08','2022-04-11 12:46:08','Requested'),(68,40,40,'0','0','0','2022-04-13 01:17:56','2022-04-13 01:17:56','2022-04-13 01:17:56','2022-04-13 01:17:56','Requested'),(69,1,46,'1','0','0','2022-04-13 14:11:41','2022-04-13 14:25:58','2022-04-13 14:11:41','2022-04-13 14:25:58','Requested'),(70,1,46,'1','0','0','2022-04-13 14:14:33','2022-04-13 14:25:58','2022-04-13 14:14:33','2022-04-13 14:25:58','Requested'),(71,1,46,'1','0','0','2022-04-13 14:14:59','2022-04-13 14:25:58','2022-04-13 14:14:59','2022-04-13 14:25:58','Requested'),(72,1,46,'1','0','0','2022-04-13 14:15:28','2022-04-13 14:25:58','2022-04-13 14:15:28','2022-04-13 14:25:58','Requested'),(73,40,46,'0','0','0','2022-04-13 14:26:56','2022-04-13 14:26:56','2022-04-13 14:26:56','2022-04-13 14:26:56','Requested'),(74,40,17,'0','0','0','2022-04-17 05:12:02','2022-04-17 05:12:02','2022-04-17 05:12:02','2022-04-17 05:12:02','Requested'),(75,40,42,'1','0','0','2022-04-17 05:16:53','2022-04-17 05:23:54','2022-04-17 05:16:53','2022-04-17 05:23:54','Requested'),(76,42,42,'0','0','0','2022-04-17 05:24:08','2022-04-17 05:24:08','2022-04-17 05:24:08','2022-04-17 05:24:08','Requested'),(77,1,10,'1','0','0','2022-04-25 12:59:02','2022-04-25 13:02:07','2022-04-25 12:59:02','2022-04-25 13:02:07','Requested'),(78,1,10,'1','0','0','2022-04-25 12:59:18','2022-04-25 13:02:07','2022-04-25 12:59:18','2022-04-25 13:02:07','Requested'),(79,1,10,'1','0','0','2022-04-25 13:01:59','2022-04-25 13:02:07','2022-04-25 13:01:59','2022-04-25 13:02:07','Requested'),(80,1,49,'0','0','0','2022-05-03 06:39:27','2022-05-03 06:39:27','2022-05-03 06:39:27','2022-05-03 06:39:27','Requested'),(81,33,1,'0','0','0','2022-05-03 07:12:50','2022-05-03 07:12:50','2022-05-03 07:12:50','2022-05-03 07:12:50','Requested'),(82,38,50,'1','0','0','2022-05-05 06:02:23','2022-05-05 06:02:41','2022-05-05 06:02:23','2022-05-05 06:02:41','Requested'),(83,28,50,'0','0','0','2022-05-05 06:03:11','2022-05-05 06:03:11','2022-05-05 06:03:11','2022-05-05 06:03:11','Requested'),(84,44,52,'1','0','0','2022-05-06 09:36:03','2022-05-06 09:45:57','2022-05-06 09:36:03','2022-05-06 09:45:57','Requested'),(85,4,51,'0','0','0','2022-05-06 10:19:16','2022-05-06 10:19:16','2022-05-06 10:19:16','2022-05-06 10:19:16','Requested');
/*!40000 ALTER TABLE `village_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `villages`
--

DROP TABLE IF EXISTS `villages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `villages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `village_name` varchar(255) NOT NULL,
  `status_id` int NOT NULL DEFAULT '0',
  `store_id` int NOT NULL DEFAULT '0',
  `contact` varchar(255) NOT NULL,
  `description` text,
  `address` text,
  `opening_days` text,
  `user_reference_id` int NOT NULL,
  `group_created_by` int NOT NULL,
  `is_enable` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''0'' for enable, ''1'' for disable',
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0' COMMENT '''1'' for delete',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_reference_id` (`user_reference_id`),
  CONSTRAINT `villages_ibfk_1` FOREIGN KEY (`user_reference_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `villages`
--

LOCK TABLES `villages` WRITE;
/*!40000 ALTER TABLE `villages` DISABLE KEYS */;
INSERT INTO `villages` VALUES (1,'Shree',0,1,'9878897897','test','test','Wed,Thu',1,1,'0','0','2021-11-01 09:53:27','2021-12-20 08:49:23','2021-11-01 09:53:27','2021-12-20 08:49:23'),(2,'Manali',0,0,'9988442200','Test','Test','Mon,Tue,Wed',1,1,'0','1','2021-11-01 10:33:10','2021-12-30 09:07:36','2021-11-01 10:33:10','2021-12-30 09:07:36'),(3,'ddfd',0,0,'1','','','',1,1,'0','1','2021-11-01 12:18:45','2021-11-10 12:54:48','2021-11-01 12:18:45','2021-11-10 12:54:48'),(4,'ddd',0,0,'fddfd','','','',1,1,'0','1','2021-11-01 12:31:50','2021-11-10 12:55:45','2021-11-01 12:31:50','2021-11-10 12:55:45'),(5,'dffd1',0,0,'22222221','','','',1,1,'0','1','2021-11-01 12:37:45','2021-11-02 10:11:01','2021-11-01 12:37:45','2021-11-02 10:11:01'),(6,'Pratap Nager',0,0,'Test ','','','',1,1,'0','0','2021-11-02 10:09:48','2021-11-02 10:48:50','2021-11-02 10:09:48','2021-11-02 10:48:50'),(7,'rocks',0,0,'iutrhihi',NULL,NULL,NULL,1,1,'0','0','2021-11-09 05:17:22','2021-11-09 05:17:22','2021-11-09 05:17:22','2021-11-09 05:17:22'),(8,'rocks',0,0,'iutrhihi','description value','address value','Sun,Mon',1,1,'0','1','2021-11-09 05:20:14','2021-11-10 12:50:46','2021-11-09 05:20:14','2021-11-10 12:50:46'),(9,'Udaipur',0,0,'9898787676','Udaipur','Udaipur','Sun',1,1,'0','0','2021-11-09 07:31:23','2021-11-09 10:50:59','2021-11-09 07:31:23','2021-11-09 10:50:59'),(12,'Pratap Nager',0,0,'9898787676','df','Pratap Nager','Mon,Tue,Wed,Thu',1,1,'0','0','2021-11-09 08:33:16','2021-11-09 10:50:32','2021-11-09 08:33:16','2021-11-09 10:50:32'),(13,'Udaipur',0,0,'9988442200','Test','Test','Thu,Fri,Sat,Sun',1,1,'1','0','2021-12-18 10:53:26','2021-12-18 10:56:51','2021-12-18 10:53:26','2021-12-18 10:56:51'),(14,'Manali',0,0,'9988442200','Test','Test','Mon,Tue,Wed',1,1,'0','0','2021-12-18 10:58:45','2021-12-18 10:58:45','2021-12-18 10:58:45','2021-12-18 10:58:45'),(15,'Aapni Dukan',0,0,'555544440011','good village','test address','Mon,Tue,Wed,Thu',13,13,'0','0','2021-12-21 19:51:10','2022-01-11 04:56:25','2021-12-21 19:51:10','2022-01-11 04:56:25'),(16,'Rom',0,0,'9988552200','Hellllo','Test address','Mon,Tue,Wed,Thu',13,13,'0','0','2021-12-22 06:14:35','2022-01-05 06:16:57','2021-12-22 06:14:35','2022-01-05 06:16:57'),(17,'tests',0,0,'91234567','test','testaddress','Monday,Tuesday',16,16,'0','0','2021-12-25 05:50:19','2022-01-03 03:07:01','2021-12-25 05:50:19','2022-01-03 03:07:01'),(18,'test',0,0,'91234567','test','testaddress','Monday,Tuesday',16,16,'0','1','2021-12-25 05:51:49','2022-01-12 14:34:02','2021-12-25 05:51:49','2022-01-12 14:34:02'),(19,'test',0,0,'91234567','test','testaddress','Sunday,Monday',10,10,'0','0','2021-12-27 15:16:03','2021-12-27 15:16:03','2021-12-27 15:16:03','2021-12-27 15:16:03'),(20,'test',0,0,'78954612','test village','A-931 ','Mon,Tue,Wed,Thu',13,13,'0','1','2021-12-28 03:21:39','2022-01-05 13:37:25','2021-12-28 03:21:39','2022-01-05 13:37:25'),(21,'test name village',0,0,'456546465','bjbkj','jyjgfjgf','Mon,Tue,Wed,Thu',13,13,'0','0','2021-12-28 03:24:37','2021-12-30 05:50:34','2021-12-28 03:24:37','2021-12-30 05:50:34'),(22,'My New Group',0,0,'9638527411','Test','Testing addrss','Win',13,13,'0','0','2021-12-30 08:21:56','2021-12-30 08:26:01','2021-12-30 08:21:56','2021-12-30 08:26:01'),(23,'Rocking',0,0,'9755441100','fgfgdfgdg','test','Sun,Mon',13,13,'0','0','2021-12-30 11:27:00','2021-12-30 11:27:18','2021-12-30 11:27:00','2021-12-30 11:27:18'),(24,'test',0,0,'45345324','test','test','Mon,Tue,Win,Thu,Sat,Fri,Sun',13,13,'0','1','2022-01-03 18:19:05','2022-01-03 19:01:23','2022-01-03 18:19:05','2022-01-03 19:01:23'),(25,'My Village11',0,0,'9855227711','Test Description','Test Address','Tue',13,13,'0','0','2022-01-04 06:38:01','2022-01-04 06:38:14','2022-01-04 06:38:01','2022-01-04 06:38:14'),(26,'Ganga123',0,0,'77376893512','testing message','Mansarver','Win,Thu,Fri,Tue,Mon,Sun,Sat',21,21,'0','0','2022-01-05 13:09:47','2022-01-05 13:15:33','2022-01-05 13:09:47','2022-01-05 13:15:33'),(27,'test Group',0,0,'144859','Test village','test address','Sun,Mon,Tue,Win',7,7,'0','0','2022-01-05 17:02:55','2022-01-05 17:02:55','2022-01-05 17:02:55','2022-01-05 17:02:55'),(28,'homepg',0,0,'7737689351','test','jaipur','Sun,Mon,Tue',23,23,'0','0','2022-01-06 08:35:46','2022-01-06 08:35:46','2022-01-06 08:35:46','2022-01-06 08:35:46'),(29,'Pravesh1',0,0,'919876543210','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','New York, USA','Sun,Mon,Tue,Wed,Thu,Fri,Sat',13,13,'0','0','2022-01-10 05:29:15','2022-01-10 05:29:15','2022-01-10 05:29:15','2022-01-10 05:29:15'),(30,'hut',0,0,'773768935122','trsr','test','Sun,Mon,Tue',27,27,'0','0','2022-01-11 09:51:44','2022-01-11 09:51:44','2022-01-11 09:51:44','2022-01-11 09:51:44'),(31,'Sonu Village',0,0,'8777441100','Hello, This is my group','Test address','Mon,Tue,Wed',32,32,'0','0','2022-01-11 11:50:15','2022-01-11 11:50:15','2022-01-11 11:50:15','2022-01-11 11:50:15'),(32,'Share Village',0,0,'6598272739','Happy to serve','Northstar@amk','Tue,Thu,Fri,Sat,Wed',17,17,'0','0','2022-01-13 07:41:13','2022-01-14 02:17:36','2022-01-13 07:41:13','2022-01-14 02:17:36'),(33,'Hi hey Ho',0,0,'6598272739','hi hey','spanish village','Tue',17,17,'0','0','2022-01-13 07:48:58','2022-04-11 12:29:19','2022-01-13 07:48:58','2022-04-11 12:29:19'),(34,'dummy',0,0,'6598272739','test','northstar','Mon,Tue,Wed',17,17,'0','0','2022-01-14 06:17:17','2022-01-14 06:17:30','2022-01-14 06:17:17','2022-01-14 06:17:30'),(35,'test',0,0,'6591234567','test','test','Mon',16,16,'0','0','2022-01-17 15:32:48','2022-01-17 15:32:48','2022-01-17 15:32:48','2022-01-17 15:32:48'),(38,'5Ten',0,0,'6598272739','Test test alcohol','Northstar@AMK','Mon,Wed',17,17,'0','0','2022-04-11 12:28:46','2022-04-11 12:28:46','2022-04-11 12:28:46','2022-04-11 12:28:46'),(40,'asdfgnfgdsafg',0,0,'324566754325','dfsfdafs','aesdfgsf','Mon,Thu',40,40,'0','0','2022-04-13 01:17:35','2022-04-13 01:17:35','2022-04-13 01:17:35','2022-04-13 01:17:35'),(41,'3456788756',0,0,'453678765446','fdfhgfcv','cvgfytuifghghfhcv','Mon,Thu',40,40,'0','0','2022-04-13 01:23:49','2022-04-13 01:23:49','2022-04-13 01:23:49','2022-04-13 01:23:49'),(42,'LKZL',0,0,'6598272739','testing test test','st andrew','Mon',47,47,'0','0','2022-04-17 05:22:15','2022-04-17 05:22:15','2022-04-17 05:22:15','2022-04-17 05:22:15'),(43,'asdasdfasdf',0,0,'6591234567','test','awer','Mon',50,50,'0','0','2022-05-04 13:28:57','2022-05-04 13:28:57','2022-05-04 13:28:57','2022-05-04 13:28:57'),(44,'surat',0,0,'9838100511','test','surat','Mon,Tue,Wed,Thu,Fri,Sat,Sun',52,52,'0','0','2022-05-06 09:35:07','2022-05-06 09:35:07','2022-05-06 09:35:07','2022-05-06 09:35:07');
/*!40000 ALTER TABLE `villages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 16:45:23
