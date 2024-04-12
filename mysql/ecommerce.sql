-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'dien thoai',NULL,'dien-thoai','2022-12-16 13:48:07','2022-12-16 13:48:07'),(2,'may tinh bang',NULL,'may-tinh-bang','2022-12-16 13:48:22','2022-12-16 13:48:22'),(3,'laptop',NULL,'laptop','2022-12-16 13:48:33','2022-12-16 13:48:33'),(4,'Sam Sung',1,'sam-sung','2022-12-16 13:48:48','2022-12-16 13:48:48'),(5,'Dell',3,'dell','2022-12-16 13:49:05','2022-12-16 13:49:05'),(6,'Iphone',1,'iphone','2023-12-26 13:27:50','2023-12-26 13:27:50'),(7,'Smart Watch',NULL,'smart-watch','2023-12-27 13:59:35','2023-12-27 13:59:35');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (3,'Duong Nguyen','nguyenduong2824@gmail.com',NULL,NULL,NULL,NULL,NULL,'2022-12-18 13:41:42','2023-12-22 03:09:09');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2018_12_23_120000_create_shoppingcart_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2021_08_12_073700_create_categories_table',1),(11,'2021_08_17_084603_create_products_table',1),(12,'2021_08_26_124244_create_producers_table',1),(13,'2021_08_26_134147_create_type_products_table',1),(14,'2021_09_10_034518_create_orders_table',1),(15,'2021_09_10_043016_create_order_items_table',1),(16,'2021_09_27_130014_create_coupons_table',1),(17,'2021_10_02_033248_create_customers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('524ec8b6ef2aca1078d241e37700a104c2fae4a1e9633457f4645d786b2eb1ca3c1de8a286951a3d',1,'97fe9821-01c9-4c78-9b21-aaa83bfd8fa4','Personal Access Token','[]',1,'2023-12-22 03:09:38','2023-12-22 03:09:38','2024-12-22 03:09:38'),('5497448347a1d1f6f503fdfa4f276c0e0d09d7f6ea2916e6d158a685efe14c63d7a691aee8606b16',1,'97fe9821-01c9-4c78-9b21-aaa83bfd8fa4','Personal Access Token','[]',1,'2023-12-26 12:38:57','2023-12-26 12:38:57','2024-12-26 12:38:57'),('b80f646c3b885761d2bd63a7dfeca2b49ed521baa4687a8ecd6aa9d13ab374ed835071595aea7297',1,'97fe9821-01c9-4c78-9b21-aaa83bfd8fa4','Personal Access Token','[]',0,'2022-12-16 13:28:40','2022-12-16 13:28:40','2023-12-16 13:28:40'),('efa2abdcac399d2b3f4297b143df5763e6f0e51e4e87d926bf580251ef4a2a24d93c14085749db2b',1,'97fe9821-01c9-4c78-9b21-aaa83bfd8fa4','Personal Access Token','[]',1,'2023-12-27 13:24:39','2023-12-27 13:24:39','2024-12-27 13:24:39');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('97fe9821-01c9-4c78-9b21-aaa83bfd8fa4',NULL,'Laravel Personal Access Client','baGFfmIfFPsmnrXm85awpYyWF5Xr5JGFmQC308zv',NULL,'http://localhost',1,0,0,'2022-12-16 13:28:17','2022-12-16 13:28:17'),('97fe9821-0dd1-455a-968e-8aa12ae9dc7c',NULL,'Laravel Password Grant Client','FjFi3d6OMAzria4xORNKec9THtJnI9x6yB3T2eSE','users','http://localhost',0,1,0,'2022-12-16 13:28:17','2022-12-16 13:28:17');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'97fe9821-01c9-4c78-9b21-aaa83bfd8fa4','2022-12-16 13:28:17','2022-12-16 13:28:17');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (5,5,17,60.00,1,NULL,NULL),(6,5,27,70.00,1,NULL,NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status` enum('pending','processing','completed','decline') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `payment_method` enum('cash_on_delivery','paypal','stripe','card') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'OrderNumber-639f17981a04d',1,'pending',29.04,2,0,'cash_on_delivery','nguyen duong','hcm','hcm','vn','85','123456789',NULL,'nguyen duong','hcm','hcm','vn','85','123456789','2022-12-18 13:37:28','2022-12-18 13:37:28'),(2,'OrderNumber-639f1861d347d',1,'pending',29.04,2,0,'cash_on_delivery','nguyen duong','hcm','hcm','vn','85','123456789',NULL,'nguyen duong','hcm','hcm','vn','85','123456789','2022-12-18 13:40:49','2022-12-18 13:40:49'),(3,'OrderNumber-639f1896b5463',1,'completed',29.04,2,1,'cash_on_delivery','nguyen duong','hcm','hcm','vn','85','123456789',NULL,'nguyen duong','hcm','hcm','vn','85','123456789','2022-12-18 13:41:42','2022-12-18 13:49:55'),(4,'OrderNumber-6584fdd4ec189',1,'completed',43.56,3,1,'cash_on_delivery','Duong Nguyen','ho chi minh city','ho chi minh','vn','84','0345973061',NULL,'Duong Nguyen','ho chi minh city','ho chi minh','vn','84','0345973061','2023-12-22 03:09:08','2023-12-22 03:09:25'),(5,'OrderNumber-658d69831624e',1,'completed',157.30,2,1,'cash_on_delivery','Duong Nguyen','ho chi minh city','ho chi minh','vn','84','0345973061',NULL,'Duong Nguyen','ho chi minh city','ho chi minh','vn','84','0345973061','2023-12-28 12:26:43','2023-12-28 12:27:03');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (4,'Apple','USA','2023-12-26 13:31:08','2023-12-26 13:31:08'),(5,'Sam sung','Korea','2023-12-26 13:31:29','2023-12-26 13:31:29');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `product_type_id` int NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` int NOT NULL,
  `discount` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'test 22 12 production',4,6,4,'images/test-22-12-production1.jpg',23.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',4,1,'test-22-12-production','2023-12-22 03:12:21','2023-12-26 14:01:27'),(15,'Điện thoại iPhone 15 Pro Max 256GB',4,6,1,'images/dien-thoai-iphone-15-pro-max-256gb1.jpg',80.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dien-thoai-iphone-15-pro-max-256gb','2023-12-26 12:53:15','2023-12-26 14:02:04'),(16,'Điện thoại iPhone 15 Pro 128GB',4,6,1,'images/dien-thoai-iphone-15-pro-128gb1.jpg',60.00,1,'.','<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; font-weight: 600; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Hiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Nút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100); position: relative;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 Pro Max</span>&nbsp;thiết kế mới với&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">chất liệu&nbsp;titan</span>&nbsp;chuẩn hàng không vũ trụ bền bỉ, trọng lượng nhẹ, đồng thời trang bị&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">nút Action</span>&nbsp;và cổng sạc&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">USB-C</span>&nbsp;tiêu chuẩn giúp nâng cao tốc độ sạc. Khả năng chụp ảnh đỉnh cao của&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-15.html\" title=\"iPhone 15\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15</span></a>&nbsp;bản Pro Max đến từ&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">camera chính 48MP</span>, camera&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">UltraWide 12MP</span>&nbsp;và camera telephoto có khả năng zoom quang học đến&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">5x</span>. Bên cạnh đó,&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 ProMax</span>&nbsp;sử dụng chip&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">A17 Pro</span>&nbsp;mới mạnh mẽ. Xem thêm chi tiết những điểm nổi bật của sản phẩm qua thông tin sau!</p></blockquote><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px;\"><span style=\"box-sizing: inherit; font-style: inherit; font-weight: inherit; color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: small;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700; font-size: 1.5em;\">Đánh giá điện thoại iPhone 15 Pro Max có gì mới</span></span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 Pro Max</span>&nbsp;đem lại một diện mạo hoàn toàn mới và sở hữu nhiều tính năng ưu việt cùng công nghệ tiên tiến. Hãy khám phá các đánh giá chi tiết về sản phẩm về khía cạnh thiết kế, màn hình, hiệu năng, thời lượng pin và bộ camera độc đáo qua các thông tin dưới đây!</p><h3 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 16px; font-weight: 700;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54);\">Hiệu năng mạnh mẽ cùng chipset A17 Pro tiên tiến&nbsp;</span></h3><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Sản phẩm trang bị&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">chip A17 Pro</span>&nbsp;được sản xuất trên&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">tiến trình 3nm</span>, mang lại bước cải tiến đột phá. Nhờ những cải tiến về thiết kế và kiến trúc vi mô, CPU mới&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">nhanh hơn đến 10%</span>, hỗ trợ tính năng như Giọng nói cá nhân hay tự động sửa lỗi chuyên nghiệp. Không chỉ vậy,&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">GPU nhanh hơn đến 20%</span>&nbsp;với thiết kế 6 lõi mới nhằm nâng cao hiệu suất và tiết kiệm năng lượng.</p></div>','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành &amp; CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ &amp; Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin &amp; Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',5,1,'dien-thoai-iphone-15-pro-128gb','2023-12-26 13:38:26','2023-12-26 14:03:30'),(17,'iPhone 15 Plus 128GB',4,1,1,'images/iphone-15-plus-128gb1.jpg',60.00,1,'iPhone 15 Plus 128GB','.<div class=\"ksp-content p-2 mb-2\" style=\"box-sizing: inherit; margin: auto; background-color: rgb(242, 242, 242); border-radius: 0.5rem; width: 800px; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><h2 class=\"ksp-title has-text-centered\" style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 18px; font-weight: 600; color: rgb(215, 0, 24); text-align: center !important;\">ĐẶC ĐIỂM NỔI BẬT</h2><div style=\"box-sizing: inherit;\"><ul style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow-y: auto;\"><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Thiết kế dẫn đầu xu hướng - Nhiều màu sắc trendy cùng chất liệu kính pha màu và khung nhôm vô cùng bền bỉ</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Nắm bắt và tương tác mọi thông tin dễ dàng hơn với Dynamic Island mở rộng</li><li style=\"box-sizing: inherit; margin: 0px 0px 5px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Chụp ảnh chân dung xuất sắc mọi khoảnh khắc - Camera chính 48MP với tele 2X và chế độ chỉnh sửa đa dạng</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; font-size: 14px; line-height: 1.45; text-align: left;\">Hiệu năng cân mọi tác vụ - A16 Bionic mạnh mẽ cho mọi thao tác mượt mà và nhanh chóng</li></ul></div></div><div style=\"box-sizing: inherit; color: rgb(74, 74, 74); font-family: Roboto, sans-serif; text-align: justify;\"><blockquote style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 0px 20px; color: rgb(100, 100, 100); position: relative;\"><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5; color: inherit;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 Plus</span>&nbsp;được đánh giá cao bởi màn hình&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Dynamic Island 6.7 inch</span>&nbsp;với mặt kính lưng&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">pha màu</span>&nbsp;ấn tượng, chip&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">A16 Bionic</span>&nbsp;mạnh mẽ cùng cổng sạc&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">USB-C</span>&nbsp;cho khả năng sạc đầy nhanh chóng. Ngoài ra, phiên bản Plus thuộc series&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-15.html\" title=\"iPhone 15\" target=\"_blank\" style=\"box-sizing: inherit; color: rgb(215, 0, 24); cursor: pointer;\"><span style=\"box-sizing: inherit; color: currentcolor; font-weight: 700;\">iPhone 15</span></a>&nbsp;còn sở hữu 5 phiên bản&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">màu pastel</span>&nbsp;thanh lịch phù hợp với nhiều đối tượng khách hàng: hồng, vàng, xanh lá, xanh dương, đen. Xem thêm các thông tin hữu ích khác về điện thoại iPhone 15 Plus sau đây!</p></blockquote><h2 style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 21px;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">Tại sao nên mua iPhone 15 Plus tại CellphoneS?</span></h2><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\">Khi chọn mua điện thoại cao cấp như&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">iPhone 15 Plus</span>&nbsp;thì chọn điểm mua uy tín là một yếu tố khá quan trọng. Vậy tại sao khách hàng nên chọn mua điện thoại flagship iPhone này tại&nbsp;<span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">CellphoneS</span>:</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">- Đảm bảo hành chính hãng</span>: CellphoneS là 1 trong những nhà phân phối sản phẩm chính hãng Apple tại thị trường Việt Nam (AAR). Do đó, khách hàng hoàn toàn yên tâm về chất lượng, chính sách bảo hành và nguồn gốc sản phẩm khi mua iPhone 15 Plus tại đây.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">- Tham gia thu cũ lên đời – nhận thêm trợ giá hấp dẫn</span>: Với định giá thu cũ cao cùng mức trợ giá ưu đãi khi kết hợp lên đời, khách hàng sẽ nâng cấp lên iPhone 15 Plus mới mức chi phí tối ưu nhất.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">- Giảm giá phụ kiện chính hãng khi mua kèm</span>: Khi mua điện thoại iPhone 15 Plus kèm các phụ kiện chính hãng như sạc, ốp lưng, bao da thì sẽ được nhận thêm ưu đãi giảm giá phụ kiện hấp dẫn.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">- Mua trả góp 0% cùng mức trả trước thấp</span>: Khi chưa đủ điều kiện mua trả thẳng, CellphoneS có chương trình mua trả góp với lãi suất cùng số tiền trả trước thấp. Nhờ đó khách hàng có thể sở hữu sớm siêu phẩm iPhone 2023 với mức chi phí cần trả hàng tháng hợp lý.</p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 15px; line-height: 1.5;\"><span style=\"box-sizing: inherit; color: rgb(54, 54, 54); font-weight: 700;\">- Hệ thống cửa hàng rộng khắp toàn quốc</span>: Hệ thống cửa hàng Cellphones có mặt tại nhiều thành phố trên toàn quốc, giúp khách hàng có thể dễ dàng đến thăm và trải nghiệm sản phẩm. Đặc biệt khi mua online, sản phẩm đến tay bạn một cách nhanh chóng và an toàn</p></div>','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',6,1,'iphone-15-plus-128gb','2023-12-26 13:41:20','2023-12-26 13:43:11'),(18,'iPhone 15 128GB',4,6,1,'images/iphone-15-128gb1.jpg',60.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',4,1,'iphone-15-128gb','2023-12-26 13:48:22','2023-12-26 13:48:22'),(19,'Samsung Galaxy Z Fold5 12GB 256GB',5,4,2,'images/samsung-galaxy-z-fold5-12gb-256gb1.jpg',50.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'samsung-galaxy-z-fold5-12gb-256gb','2023-12-26 13:51:11','2023-12-26 13:51:11'),(20,'Samsung Galaxy Z Flip5 512GB',5,4,2,'images/samsung-galaxy-z-flip5-512gb1.jpg',70.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'samsung-galaxy-z-flip5-512gb','2023-12-26 13:57:11','2023-12-26 13:57:11'),(21,'Samsung Galaxy S23 Ultra 12GB 512GB',5,1,2,'images/samsung-galaxy-s23-ultra-12gb-512gb1.jpg',50.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',23,1,'samsung-galaxy-s23-ultra-12gb-512gb','2023-12-27 13:35:10','2023-12-27 13:35:10'),(22,'Samsung Galaxy S23 Plus 8GB 256GB',5,1,2,'images/samsung-galaxy-s23-plus-8gb-256gb1.jpg',50.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'samsung-galaxy-s23-plus-8gb-256gb','2023-12-27 13:41:45','2023-12-27 13:41:45'),(23,'Samsung Galaxy S21 FE 8GB 128GB',5,1,2,'images/samsung-galaxy-s21-fe-8gb-128gb1.jpg',30.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'samsung-galaxy-s21-fe-8gb-128gb','2023-12-27 13:44:03','2023-12-27 13:44:03'),(24,'Samsung Galaxy A34 5G 8GB 128GB',5,1,2,'images/samsung-galaxy-a34-5g-8gb-128gb1.jpg',20.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',5,1,'samsung-galaxy-a34-5g-8gb-128gb','2023-12-27 13:47:44','2023-12-27 13:47:44'),(25,'Đồng hồ thông minh Apple Watch Series 9',4,7,3,'images/dong-ho-thong-minh-apple-watch-series-91.png',80.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dong-ho-thong-minh-apple-watch-series-9','2023-12-27 13:54:48','2023-12-27 13:54:48'),(26,'Đồng hồ thông minh Apple Watch Ultra 2',4,7,3,'images/dong-ho-thong-minh-apple-watch-ultra-21.jpg',70.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dong-ho-thong-minh-apple-watch-ultra-2','2023-12-27 13:56:28','2023-12-27 13:56:28'),(27,'Đồng hồ thông minh Samsung Galaxy Watch5 Pro 45mm',5,7,3,'images/dong-ho-thong-minh-samsung-galaxy-watch5-pro-45mm1.jpg',70.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dong-ho-thong-minh-samsung-galaxy-watch5-pro-45mm','2023-12-27 13:59:03','2023-12-27 13:59:03'),(28,'Đồng hồ thông minh Samsung Galaxy Watch6 Classic 47mm',5,7,3,'images/dong-ho-thong-minh-samsung-galaxy-watch6-classic-47mm1.jpg',70.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dong-ho-thong-minh-samsung-galaxy-watch6-classic-47mm','2023-12-27 14:02:30','2023-12-27 14:02:30'),(29,'Đồng hồ thông minh Samsung Galaxy Watch6 40mm',5,7,3,'images/dong-ho-thong-minh-samsung-galaxy-watch6-40mm1.jpg',60.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',6,1,'dong-ho-thong-minh-samsung-galaxy-watch6-40mm','2023-12-27 14:04:10','2023-12-27 14:04:10'),(30,'Đồng hồ thông minh Apple Watch Series 9',4,7,3,'images/dong-ho-thong-minh-apple-watch-series-91.png',40.00,1,'.','.','<table style=\"width:100%\">\r\n  <tbody>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Màn hình</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Công nghệ màn hình</td>\r\n      <td>Độ phân giải</td>\r\n      <td>Màn hình rộng</td>\r\n      <td>Độ sáng tối đa</td>\r\n      <td>Mặt hình cảm ứng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera sau</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Quay phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Đèn flash</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Camera trước</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Độ phân giải</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Hệ điều hành & CPU</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Hệ điều hành</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip xử lý(CPU):</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tốc độ CPU</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chip đồ họa(GPU)</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Bộ nhớ & Lưu trữ</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>RAM</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng lưu trữ</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Danh bạ</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Kết nối</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Mạng di động</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Sim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Wifi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>GPS</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Bluetooth</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Cổng kết nối/sạc</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Jack tai nghe</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Pin & Sạc</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Loại pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Dung lượng pin</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hỗ trợ sạc tối đa</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Công nghệ pin</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Tiện ích</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Bảo mật nâng cao</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Tính năng đặc biệt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kháng nước, bụi</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Ghi âm</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Xem phim</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Nghe nhạc</td>\r\n    </tr>\r\n    <tr style=\"background-color:#f1f1f1 \">\r\n      <th>Thông tin chung</th>\r\n  	</tr>\r\n    <tr>\r\n      <td>Thiết kế</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Chất liệu</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Kích thước, khối lượng</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Thời điểm ra mắt</td>\r\n    </tr>\r\n    <tr>\r\n      <td>Hãng</td>\r\n    </tr>\r\n</tbody></table>',2,1,'dong-ho-thong-minh-apple-watch-series-9','2023-12-27 14:06:02','2023-12-27 14:06:02');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_products`
--

DROP TABLE IF EXISTS `type_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_products`
--

LOCK TABLES `type_products` WRITE;
/*!40000 ALTER TABLE `type_products` DISABLE KEYS */;
INSERT INTO `type_products` VALUES (1,'Second hand','second-hand','2023-12-26 13:30:13','2023-12-26 13:30:13'),(2,'New box','new-box','2023-12-26 13:30:29','2023-12-26 13:30:29'),(3,'sale off','sale-off','2023-12-26 14:00:12','2023-12-26 14:00:12');
/*!40000 ALTER TABLE `type_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@gmail.com',NULL,'$2y$10$A/pjotys1GlM/ddPW8LGXey9Flon4ZCEyy6rj0HNInHd7OgfuA4Aa',NULL,'2022-12-15 14:06:58','2022-12-15 14:06:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 13:47:30
