-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'5627LNmLdaihHsVjZ68zEpVjgj3eSxLx',1,'2022-11-10 21:04:40','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-11-11 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,'Top Slider Image 2','2027-11-11 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(3,'Homepage middle 1','2027-11-11 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(4,'Homepage middle 2','2027-11-11 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(5,'Homepage middle 3','2027-11-11 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(6,'Homepage big 1','2027-11-11 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(7,'Homepage bottom small','2027-11-11 00:00:00','not_set','SSFOIB1D7OGZ','promotion/7.jpg','/products',0,7,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(8,'Product sidebar','2027-11-11 00:00:00','product-sidebar','5AJRTDTYKVR9','promotion/8.jpg','/products',0,8,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(9,'Homepage big 2','2027-11-11 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ad ratione sit qui officiis eius reprehenderit et. Tenetur qui inventore nulla qui numquam ipsum qui sapiente. Quia qui non ab ut quo eum repudiandae et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(2,'Fashion',0,'Fugit est eos facilis debitis repellendus non. Eos quam eum velit molestias asperiores. Itaque nihil porro asperiores ratione dolores optio quia sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(3,'Electronic',0,'Velit qui nihil consectetur ad. Et nam et veritatis reprehenderit quibusdam numquam vel. Distinctio sint sed repellendus animi et ut autem. Maiores fuga quia molestiae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(4,'Commercial',0,'Dolores in eos et dolor. Hic nihil consequuntur qui itaque quos. Amet maiores sit vel nemo minima. Id occaecati nesciunt minus quia suscipit deserunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-11-10 21:04:38','2022-11-10 21:04:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Afton Lebsack','nona.grady@example.net','+1-726-407-0262','7709 O\'Hara Harbor Apt. 233\nJonathonmouth, WY 86487-6831','Eveniet qui optio suscipit optio.','Natus maxime neque aperiam animi quibusdam tempora. Iusto et assumenda magni voluptate. Voluptatem occaecati ut optio vitae. Cumque eos voluptatum vel consequatur natus harum et suscipit. Placeat sit optio deleniti suscipit amet iste mollitia. Delectus nesciunt voluptatibus vero sed adipisci accusamus. In officia voluptatem expedita atque rem neque sed. Fuga amet ut vel.','read','2022-11-10 21:04:37','2022-11-10 21:04:37'),(2,'Ms. Heaven Jakubowski','schowalter.marlon@example.net','+1-657-313-2504','76305 Lorna Knoll\nPort Maximetown, MI 14012','Enim laboriosam explicabo et aut nisi optio.','Aut ut dolore libero inventore. Modi culpa nostrum illo vel illo harum. Laboriosam iure qui omnis deleniti in omnis soluta. Et est hic provident. Magnam expedita voluptatem totam similique. Eveniet et optio unde odit doloremque deleniti fugit blanditiis. Nostrum tenetur quam nesciunt fuga culpa. Impedit nisi cumque accusamus corporis quia. Porro natus aperiam ea dolores. Sed ut maxime et et sed sit.','read','2022-11-10 21:04:37','2022-11-10 21:04:37'),(3,'Domenick D\'Amore','lionel.buckridge@example.com','304.528.1965','523 Tyreek Orchard Apt. 082\nNew Stephania, CT 34427','Placeat aut ea omnis quas itaque commodi itaque.','Voluptas et earum laudantium quae. Et corporis voluptatum quis labore qui. Dolor autem odit nobis quibusdam tempore vel. Doloribus aut nihil consequatur soluta hic. Ex officia illum earum. Quas praesentium itaque non eum aliquid voluptates incidunt. Voluptates velit tempora consequatur. Laudantium atque omnis esse et voluptatem eos tempora. Quia sint adipisci totam ut omnis quis. Consequatur quibusdam ut error inventore mollitia est ea. Voluptatem eaque suscipit culpa excepturi aliquid.','read','2022-11-10 21:04:37','2022-11-10 21:04:37'),(4,'Mr. Narciso West I','tupton@example.net','+1.308.875.7437','7567 Camila Inlet Suite 925\nLake Mckenna, SC 76322','Dolores non atque placeat iure.','Illo sed ut dolorem non ea reprehenderit ut. Natus quia in sed eaque. Nostrum quaerat perspiciatis est accusantium. Sit omnis beatae eum reprehenderit aut error. Nisi voluptates exercitationem exercitationem delectus. Repellendus doloribus facere id pariatur autem expedita cumque. Non ea sit recusandae voluptates accusamus. Nobis non quis laborum quis esse necessitatibus. Repellat quis aliquam alias in. Culpa inventore iusto magnam est est nemo sapiente.','unread','2022-11-10 21:04:37','2022-11-10 21:04:37'),(5,'Mrs. Lonie Franecki MD','fcorwin@example.com','+1.240.247.5427','69144 Parker Ports Suite 515\nNorth Ezekiel, AR 98166','Quibusdam sit amet exercitationem.','Dolorum ullam dicta magnam nemo quia et. Sed nobis doloribus ut aut saepe sapiente rerum. Natus neque et sunt velit quasi et tempora. Molestiae beatae veritatis neque labore. Odit quam accusamus et voluptatibus minus cupiditate quae deserunt. Amet saepe odit eos iste. Atque illum nobis non molestiae ipsam. Possimus accusamus eum sed animi. Et occaecati omnis sed molestiae. Magnam placeat nisi labore rerum numquam sed at quasi. Ab sit nobis possimus.','unread','2022-11-10 21:04:37','2022-11-10 21:04:37'),(6,'Mr. Giovanny Greenfelder II','chad.nader@example.net','+1.979.210.9803','75696 Okuneva Groves\nPort Georgette, AZ 34325','Distinctio in sed aspernatur repudiandae.','Dolore dolore odio earum facere ea adipisci dolor. Aut ducimus quis aut ut ut. Et earum ut quos nihil fugiat nobis excepturi sit. Et qui aut error qui libero rerum aut. Tempora esse odit a. Labore numquam sint sit et fuga non sed. Ipsam aperiam commodi facilis vel eius excepturi maiores reiciendis. Perspiciatis cumque et iusto qui dicta consequatur corporis.','unread','2022-11-10 21:04:37','2022-11-10 21:04:37'),(7,'Eliza Langosh','deffertz@example.org','+15053662169','688 Joe Lake Apt. 022\nGottliebstad, AL 59721-9502','Sed sequi nobis explicabo.','Aut labore hic commodi commodi. Consequatur ipsum animi consequatur repellendus alias aliquam hic. Facere perferendis eius qui aliquid voluptatibus velit unde. Quo occaecati sed blanditiis iusto repellat laborum. Est quidem itaque quas laboriosam repudiandae sunt et. Saepe quas earum necessitatibus enim aut et consectetur. Et et et in eius. Minus aut officia sequi itaque sunt maiores. Perspiciatis quisquam voluptatem deserunt velit est error. Dolorum magni fuga numquam nulla sit.','read','2022-11-10 21:04:37','2022-11-10 21:04:37'),(8,'Prof. Grace Simonis I','eveline87@example.net','+1-952-594-3451','43097 Braun Run Apt. 209\nNew Marciaside, KY 97399-7551','Esse ab magni ut modi laborum.','Hic enim provident perferendis. Dolores sint et voluptatibus odio dolorum. Qui ut ut non aut. Odio molestiae modi libero assumenda. Tempora modi ab possimus odio. Nam tenetur molestiae ea iure voluptatum ab molestias. Fuga omnis et beatae vel debitis. Architecto amet ipsam dolor dolore molestiae a accusantium. Consequuntur ut et fugiat nostrum placeat id. Velit eius non asperiores inventore quos.','unread','2022-11-10 21:04:37','2022-11-10 21:04:37'),(9,'Cheyanne Bauch','johnathan67@example.net','+1-669-552-4313','2675 Quitzon Fort Apt. 747\nBinsville, PA 71205-3767','Quia fugit necessitatibus eos soluta ex.','Non delectus nulla qui qui earum voluptates officiis. Beatae mollitia labore sed nostrum provident nihil perspiciatis. Soluta illo necessitatibus natus et. Ullam quia unde qui aliquam magnam recusandae. Et quis aliquid facere cupiditate non consequatur. Omnis mollitia quibusdam voluptate omnis. Dolores pariatur ipsa excepturi aut consequuntur. Consequatur magni cumque placeat nam ullam nemo quae.','read','2022-11-10 21:04:37','2022-11-10 21:04:37'),(10,'Lurline Sporer','carleton.schmidt@example.org','+1-734-394-2174','1677 Willms Extensions Suite 597\nEast Maiyahaven, IN 11242-6054','Et voluptatem iste id incidunt eos.','Rerum impedit veniam itaque est blanditiis. Tenetur deserunt voluptatem officiis ut. Et nihil aspernatur in autem quod. Aliquid consectetur fugiat cum explicabo. Eaque cupiditate fuga hic omnis dolorem aperiam. Temporibus ab provident ipsa laborum similique voluptates. Soluta aut quia et architecto aut eveniet. Incidunt officiis autem quia praesentium recusandae eos. Illum explicabo eaque et ut ea quisquam est perferendis. Omnis non dolor quod dolores ut. Quia sit ipsum corrupti doloremque.','unread','2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-11-10 21:04:30','2022-11-10 21:04:30');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(2,'EUR','€',0,2,1,0,0.84,'2022-11-10 21:04:30','2022-11-10 21:04:30'),(3,'VND','₫',0,0,2,0,23203,'2022-11-10 21:04:30','2022-11-10 21:04:30');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Berneice Klein','customer@botble.com','+17573310260','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',1,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','67581'),(2,'Berneice Klein','customer@botble.com','+12123103583','ZM','Wyoming','Predovicstad','563 Burdette Underpass',1,0,'2022-11-10 21:04:37','2022-11-10 21:04:37','78804'),(3,'Dr. Brad Thiel','vendor@botble.com','+12792063467','SZ','Maine','Lake Lourdesmouth','98918 Trystan Turnpike Suite 841',2,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','01372-7453'),(4,'Dr. Brad Thiel','vendor@botble.com','+16814314955','UZ','Texas','Quigleyton','510 Janis Ports Apt. 451',2,0,'2022-11-10 21:04:37','2022-11-10 21:04:37','42581-4912'),(5,'Benjamin Ullrich','reynolds.adrien@example.org','+17862843339','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',3,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','54906'),(6,'Karli VonRueden Sr.','vkub@example.org','+13099371127','CN','Tennessee','Schimmelfurt','601 Quigley Circle',4,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','87422-4680'),(7,'Miss Jayda Erdman','cade.cremin@example.org','+13236726833','NR','New Mexico','Daretown','21488 Krystel Dam',5,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','87007'),(8,'Vella Oberbrunner','reilly18@example.org','+19304994609','GU','Nevada','Coraton','482 Stehr Glen',6,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','36894'),(9,'Lonzo Bauch Jr.','lorna.block@example.net','+12408489996','RS','North Dakota','Port Elmerborough','154 Berge Extension Suite 744',7,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','93671-8125'),(10,'Eli Powlowski','addie.schoen@example.com','+18453156386','PF','Maine','North Hectorstad','78271 Steuber Gateway',8,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','64118'),(11,'Kaelyn Hilpert II','maximilian.feest@example.com','+16802533230','FJ','New York','O\'Connerberg','237 Christopher Brook',9,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','96089-4621'),(12,'Mr. Garry Bins I','gmclaughlin@example.org','+14584402296','BE','Washington','Ondrickaberg','9317 Clyde Skyway Apt. 775',10,1,'2022-11-10 21:04:37','2022-11-10 21:04:37','39641');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Berneice Klein','customer@botble.com','$2y$10$OTd3xWXlHuK/eYhlv57pw.4dBJp2UckMIxw26riV3QXQpkEIILp5S','customers/9.jpg','1982-10-13','+19375399244',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:37','2022-11-11 04:04:37',NULL,'activated',0,NULL),(2,'Dr. Brad Thiel','vendor@botble.com','$2y$10$Ck4f6ftGoU8v3e9Zh/rR6O5vdJ9vs4Ryok.F9zpAJqJgoyzaiv/4O','customers/1.jpg','1990-11-03','+12158861719',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42'),(3,'Benjamin Ullrich','reynolds.adrien@example.org','$2y$10$x0VFcGU53zrw0bYoBWA5aOKhkbmTDrkXMU4p3bgz5lQDhvdRfa4hi','customers/1.jpg','1979-10-26','+15155228324',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:37','2022-11-11 04:04:37',NULL,'activated',0,NULL),(4,'Karli VonRueden Sr.','vkub@example.org','$2y$10$RV/bsidfSvJdPB9nqlD06uM.NMCsUolBjfbyiFZZGPl4Yq1XydQr6','customers/2.jpg','1997-10-29','+17604571819',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:37','2022-11-11 04:04:37',NULL,'activated',0,NULL),(5,'Miss Jayda Erdman','cade.cremin@example.org','$2y$10$HX851CiSeEa.eatz1L66eeLHtFgUXlN2YT1PrxKdli9C3ek3yaNF2','customers/3.jpg','1992-10-21','+14842526742',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42'),(6,'Vella Oberbrunner','reilly18@example.org','$2y$10$Fh2onet3pACnukr4jvyzbexlwXZDyZnz9bZkk61/NGMvLjScBPtUS','customers/4.jpg','1999-10-28','+18457293397',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42'),(7,'Lonzo Bauch Jr.','lorna.block@example.net','$2y$10$4FCZv5vxffZHX5Z5k1/A7.0m9vIPMOq05rmZF9tn7bC5YxCPEFcAK','customers/5.jpg','1976-11-02','+13608781570',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42'),(8,'Eli Powlowski','addie.schoen@example.com','$2y$10$.juOJkrmpTRuA40LG7jaaeK.qqR0MtEjnAV6qxLvLZqVQYtmHu9W2','customers/6.jpg','1984-11-10','+14782538629',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:37','2022-11-11 04:04:37',NULL,'activated',0,NULL),(9,'Kaelyn Hilpert II','maximilian.feest@example.com','$2y$10$A.VJ7OZWkFKrognZa4Ivj.Vtu/Oany3U.5k41h5U3csc9gJlebMGy','customers/7.jpg','1980-10-21','+17543822413',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42'),(10,'Mr. Garry Bins I','gmclaughlin@example.org','$2y$10$aNcEqAki.S72v2F/8BfBhOI2BYFtgXlu/dNQwfTmBXFgQPOCbmL9q','customers/8.jpg','1973-10-13','+15853269556',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:42','2022-11-11 04:04:37',NULL,'activated',1,'2022-11-11 04:04:42');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,53.7675,9,5),(1,2,17.82,13,1),(1,3,8.2,16,2),(1,4,140.0688,15,3),(1,5,292.06,14,5),(1,6,345.87,9,3),(1,7,343.04,12,1),(1,8,734.31,13,5),(1,9,215.66,6,2),(1,10,696,20,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-12-11 00:00:00','published','2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,'1 Year',0,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(1,'2 Year',10,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(1,'3 Year',20,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(2,'4GB',0,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(2,'8GB',10,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(2,'16GB',20,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(3,'Core i5',0,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(3,'Core i7',10,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(3,'Core i9',20,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(4,'128GB',0,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(4,'256GB',10,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(4,'512GB',20,9999,0,'2022-11-10 21:04:41','2022-11-10 21:04:41');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2022-11-10 21:04:41','2022-11-10 21:04:41'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2022-11-10 21:04:41','2022-11-10 21:04:41');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` int unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Eli Powlowski','+18453156386','addie.schoen@example.com','PF','Maine','North Hectorstad','78271 Steuber Gateway',1,'64118','shipping_address'),(2,'Eli Powlowski','+18453156386','addie.schoen@example.com','PF','Maine','North Hectorstad','78271 Steuber Gateway',2,'64118','shipping_address'),(3,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',3,'87422-4680','shipping_address'),(4,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',4,'87422-4680','shipping_address'),(5,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',5,'87422-4680','shipping_address'),(6,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',6,'87422-4680','shipping_address'),(7,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',7,'54906','shipping_address'),(8,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',8,'54906','shipping_address'),(9,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',9,'87422-4680','shipping_address'),(10,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',10,'87422-4680','shipping_address'),(11,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',11,'87422-4680','shipping_address'),(12,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',12,'87422-4680','shipping_address'),(13,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',13,'67581','shipping_address'),(14,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',14,'67581','shipping_address'),(15,'Eli Powlowski','+18453156386','addie.schoen@example.com','PF','Maine','North Hectorstad','78271 Steuber Gateway',15,'64118','shipping_address'),(16,'Eli Powlowski','+18453156386','addie.schoen@example.com','PF','Maine','North Hectorstad','78271 Steuber Gateway',16,'64118','shipping_address'),(17,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',17,'67581','shipping_address'),(18,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',18,'67581','shipping_address'),(19,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',19,'67581','shipping_address'),(20,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',20,'67581','shipping_address'),(21,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',21,'67581','shipping_address'),(22,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',22,'67581','shipping_address'),(23,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',23,'87422-4680','shipping_address'),(24,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',24,'87422-4680','shipping_address'),(25,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',25,'87422-4680','shipping_address'),(26,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',26,'87422-4680','shipping_address'),(27,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',27,'87422-4680','shipping_address'),(28,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',28,'54906','shipping_address'),(29,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',29,'54906','shipping_address'),(30,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',30,'54906','shipping_address'),(31,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',31,'67581','shipping_address'),(32,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',32,'67581','shipping_address'),(33,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',33,'87422-4680','shipping_address'),(34,'Karli VonRueden Sr.','+13099371127','vkub@example.org','CN','Tennessee','Schimmelfurt','601 Quigley Circle',34,'87422-4680','shipping_address'),(35,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',35,'54906','shipping_address'),(36,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',36,'54906','shipping_address'),(37,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',37,'54906','shipping_address'),(38,'Benjamin Ullrich','+17862843339','reynolds.adrien@example.org','GG','North Carolina','Unashire','484 Rath Lodge Apt. 858',38,'54906','shipping_address'),(39,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',39,'67581','shipping_address'),(40,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',40,'67581','shipping_address'),(41,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',41,'67581','shipping_address'),(42,'Berneice Klein','+17573310260','customer@botble.com','UG','Florida','East Samara','87404 Schinner Ferry Apt. 024',42,'67581','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-10-28 13:04:42','2022-10-28 13:04:42'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-10-28 13:04:42','2022-10-28 13:04:42'),(3,'confirm_payment','Payment was confirmed (amount $1,698.80) by %user_name%',0,1,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-11-04 05:04:42','2022-11-04 05:04:42'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-11-04 05:04:42','2022-11-04 05:04:42'),(8,'confirm_payment','Payment was confirmed (amount $2,904.30) by %user_name%',0,2,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-10-26 01:04:42','2022-10-26 01:04:42'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-10-26 01:04:42','2022-10-26 01:04:42'),(12,'confirm_payment','Payment was confirmed (amount $44.55) by %user_name%',0,3,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-10-29 05:04:42','2022-10-29 05:04:42'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-10-29 05:04:42','2022-10-29 05:04:42'),(17,'create_shipment','Created shipment for order',0,4,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(18,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(19,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(20,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(21,'confirm_payment','Payment was confirmed (amount $3,884.30) by %user_name%',0,5,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(22,'create_shipment','Created shipment for order',0,5,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-11-01 21:04:42','2022-11-01 21:04:42'),(25,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-11-01 21:04:42','2022-11-01 21:04:42'),(26,'confirm_payment','Payment was confirmed (amount $2,374.60) by %user_name%',0,6,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(27,'create_shipment','Created shipment for order',0,6,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(28,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(29,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-10-30 13:04:42','2022-10-30 13:04:42'),(30,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-10-30 13:04:42','2022-10-30 13:04:42'),(31,'create_shipment','Created shipment for order',0,7,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(32,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-10-31 23:04:42','2022-10-31 23:04:42'),(33,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-10-31 23:04:42','2022-10-31 23:04:42'),(34,'create_shipment','Created shipment for order',0,8,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(36,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(37,'confirm_payment','Payment was confirmed (amount $578.60) by %user_name%',0,9,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(38,'create_shipment','Created shipment for order',0,9,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(41,'confirm_payment','Payment was confirmed (amount $4,769.90) by %user_name%',0,10,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(43,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(44,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(45,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(46,'confirm_payment','Payment was confirmed (amount $469.70) by %user_name%',0,11,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(47,'create_shipment','Created shipment for order',0,11,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(48,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(49,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(50,'confirm_payment','Payment was confirmed (amount $3,701.40) by %user_name%',0,12,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(51,'create_shipment','Created shipment for order',0,12,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-11-02 17:04:42','2022-11-02 17:04:42'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-11-02 17:04:42','2022-11-02 17:04:42'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(55,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-11-05 01:04:42','2022-11-05 01:04:42'),(56,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-11-05 01:04:42','2022-11-05 01:04:42'),(57,'confirm_payment','Payment was confirmed (amount $1,875.30) by %user_name%',0,14,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(58,'create_shipment','Created shipment for order',0,14,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(60,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-11-05 11:04:42','2022-11-05 11:04:42'),(61,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-11-05 11:04:42','2022-11-05 11:04:42'),(62,'create_shipment','Created shipment for order',0,15,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(63,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(64,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-11-02 05:04:42','2022-11-02 05:04:42'),(65,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-11-02 05:04:42','2022-11-02 05:04:42'),(66,'confirm_payment','Payment was confirmed (amount $1,276.00) by %user_name%',0,16,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(67,'create_shipment','Created shipment for order',0,16,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-11-04 21:04:42','2022-11-04 21:04:42'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-11-04 21:04:42','2022-11-04 21:04:42'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-10-31 21:04:42','2022-10-31 21:04:42'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-10-31 21:04:42','2022-10-31 21:04:42'),(74,'confirm_payment','Payment was confirmed (amount $2,608.20) by %user_name%',0,18,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-11-07 05:04:42','2022-11-07 05:04:42'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-11-07 05:04:42','2022-11-07 05:04:42'),(79,'confirm_payment','Payment was confirmed (amount $1,313.40) by %user_name%',0,19,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-11-04 11:04:42','2022-11-04 11:04:42'),(82,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-11-04 11:04:42','2022-11-04 11:04:42'),(83,'confirm_payment','Payment was confirmed (amount $608.30) by %user_name%',0,20,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(84,'create_shipment','Created shipment for order',0,20,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(86,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(87,'create_shipment','Created shipment for order',0,21,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(89,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(90,'confirm_payment','Payment was confirmed (amount $2,374.60) by %user_name%',0,22,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(91,'create_shipment','Created shipment for order',0,22,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-11-10 03:04:42','2022-11-10 03:04:42'),(93,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-11-10 03:04:42','2022-11-10 03:04:42'),(94,'confirm_payment','Payment was confirmed (amount $1,733.90) by %user_name%',0,23,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(95,'create_shipment','Created shipment for order',0,23,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(98,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(99,'confirm_payment','Payment was confirmed (amount $1,664.70) by %user_name%',0,24,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(100,'create_shipment','Created shipment for order',0,24,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(101,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(103,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(104,'confirm_payment','Payment was confirmed (amount $1,366.20) by %user_name%',0,25,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(105,'create_shipment','Created shipment for order',0,25,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(106,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-11-08 05:04:42','2022-11-08 05:04:42'),(107,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-11-08 05:04:42','2022-11-08 05:04:42'),(108,'create_shipment','Created shipment for order',0,26,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(110,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(111,'confirm_payment','Payment was confirmed (amount $2,608.20) by %user_name%',0,27,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(112,'create_shipment','Created shipment for order',0,27,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-11-05 15:04:42','2022-11-05 15:04:42'),(114,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-11-05 15:04:42','2022-11-05 15:04:42'),(115,'confirm_payment','Payment was confirmed (amount $1,215.98) by %user_name%',0,28,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(116,'create_shipment','Created shipment for order',0,28,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(117,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-11-09 17:04:42','2022-11-09 17:04:42'),(119,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-11-09 17:04:42','2022-11-09 17:04:42'),(120,'create_shipment','Created shipment for order',0,29,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(121,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-11-06 05:04:42','2022-11-06 05:04:42'),(122,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-11-06 05:04:42','2022-11-06 05:04:42'),(123,'create_shipment','Created shipment for order',0,30,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(124,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(125,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(126,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(127,'create_shipment','Created shipment for order',0,31,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(129,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(130,'confirm_payment','Payment was confirmed (amount $2,437.30) by %user_name%',0,32,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(131,'create_shipment','Created shipment for order',0,32,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(132,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(133,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-11-06 17:04:42','2022-11-06 17:04:42'),(134,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-11-06 17:04:42','2022-11-06 17:04:42'),(135,'create_shipment','Created shipment for order',0,33,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-11-10 11:04:42','2022-11-10 11:04:42'),(137,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-11-10 11:04:42','2022-11-10 11:04:42'),(138,'create_shipment','Created shipment for order',0,34,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(139,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-11-07 21:04:42','2022-11-07 21:04:42'),(140,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-11-07 21:04:42','2022-11-07 21:04:42'),(141,'create_shipment','Created shipment for order',0,35,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(142,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(143,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(144,'confirm_payment','Payment was confirmed (amount $3,701.40) by %user_name%',0,36,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(145,'create_shipment','Created shipment for order',0,36,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(147,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(148,'confirm_payment','Payment was confirmed (amount $2,070.50) by %user_name%',0,37,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(149,'create_shipment','Created shipment for order',0,37,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(151,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(152,'confirm_payment','Payment was confirmed (amount $3,701.40) by %user_name%',0,38,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(153,'create_shipment','Created shipment for order',0,38,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(155,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(156,'confirm_payment','Payment was confirmed (amount $589.60) by %user_name%',0,39,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(157,'create_shipment','Created shipment for order',0,39,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(158,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(160,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(161,'confirm_payment','Payment was confirmed (amount $2,507.40) by %user_name%',0,40,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(162,'create_shipment','Created shipment for order',0,40,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(163,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-11-10 17:04:42','2022-11-10 17:04:42'),(165,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-11-10 17:04:42','2022-11-10 17:04:42'),(166,'confirm_payment','Payment was confirmed (amount $578.60) by %user_name%',0,41,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(167,'create_shipment','Created shipment for order',0,41,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(169,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(170,'create_shipment','Created shipment for order',0,42,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(171,'update_status','Order confirmed by %user_name%',0,1,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(172,'update_status','Order confirmed by %user_name%',0,3,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(173,'update_status','Order confirmed by %user_name%',0,5,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(174,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(175,'update_status','Order confirmed by %user_name%',0,10,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(176,'update_status','Order confirmed by %user_name%',0,14,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(177,'update_status','Order confirmed by %user_name%',0,18,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(178,'update_status','Order confirmed by %user_name%',0,23,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(179,'update_status','Order confirmed by %user_name%',0,24,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43'),(180,'update_status','Order confirmed by %user_name%',0,28,NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44'),(181,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44'),(182,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44'),(183,'update_status','Order confirmed by %user_name%',0,40,NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,548.00,54.80,'[]',NULL,31,'Red & Black Headphone',NULL,2613.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(2,2,2,427.00,42.70,'[]',NULL,37,'Nikon HD camera',NULL,1354.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(3,2,2,956.00,95.60,'[]',NULL,64,'Aveeno Moisturizing Body Shower 450ml',NULL,1504.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(4,3,1,40.50,4.05,'[]',NULL,27,'Smart Watches',NULL,551.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(5,4,2,20.00,2.00,'[]',NULL,29,'Beat Headphone',NULL,1024.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(6,5,3,1253.00,125.30,'[]',NULL,52,'Xbox One Wireless Controller Black Color',NULL,1737.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(7,6,3,766.00,76.60,'[]',NULL,73,'Ciate Palemore Lipstick Bold Red Color',NULL,2169.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(8,7,3,20.00,2.00,'[]',NULL,30,'Beat Headphone',NULL,1536.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(9,8,1,526.00,52.60,'[]',NULL,46,'Samsung Smart Phone (Digital)',NULL,535.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(10,9,1,526.00,52.60,'[]',NULL,46,'Samsung Smart Phone (Digital)',NULL,535.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(11,10,3,1160.00,116.00,'[]',NULL,49,'Herschel Leather Duffle Bag In Brown Color',NULL,1758.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(12,10,2,559.00,55.90,'[]',NULL,54,'EPSION Plaster Printer',NULL,1110.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(13,11,1,427.00,42.70,'[]',NULL,37,'Nikon HD camera',NULL,677.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(14,12,3,1194.00,119.40,'[]',NULL,45,'Smart Televisions',NULL,2361.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(15,13,2,526.00,52.60,'[]',NULL,46,'Samsung Smart Phone (Digital)',NULL,1070.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(16,13,2,535.00,53.50,'[]',NULL,55,'Sound Intone I65 Earphone White Version (Digital)',NULL,1030.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(17,14,2,893.00,89.30,'[]',NULL,68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,1444.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(18,15,3,1194.00,119.40,'[]',NULL,42,'Smart Televisions',NULL,2361.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(19,15,1,893.00,89.30,'[]',NULL,68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,722.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(20,16,1,1160.00,116.00,'[]',NULL,49,'Herschel Leather Duffle Bag In Brown Color',NULL,586.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(21,17,2,859.00,85.90,'[]',NULL,36,'Smart Watch External (Digital)',NULL,1244.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(22,17,1,1160.00,116.00,'[]',NULL,47,'Herschel Leather Duffle Bag In Brown Color',NULL,586.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(23,17,1,400.00,40.00,'[]',NULL,69,'Baxter Care Hair Kit For Bearded Mens',NULL,691.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(24,18,2,1242.00,124.20,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12',NULL,1290.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(25,19,1,1194.00,119.40,'[]',NULL,43,'Smart Televisions',NULL,787.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(26,20,1,553.00,55.30,'[]',NULL,59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,605.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(27,21,3,584.00,58.40,'[]',NULL,57,'B&O Play Mini Bluetooth Speaker',NULL,2082.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(28,22,3,766.00,76.60,'[]',NULL,73,'Ciate Palemore Lipstick Bold Red Color',NULL,2169.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(29,23,2,536.00,53.60,'[]',NULL,41,'Audio Equipment',NULL,1798.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(30,23,1,553.00,55.30,'[]',NULL,60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,605.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(31,24,3,537.00,53.70,'[]',NULL,61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,2037.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(32,25,1,1242.00,124.20,'[]',NULL,66,'NYX Beauty Couton Pallete Makeup 12',NULL,645.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(33,26,1,1253.00,125.30,'[]',NULL,51,'Xbox One Wireless Controller Black Color',NULL,579.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(34,27,2,1242.00,124.20,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12',NULL,1290.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(35,28,1,80.25,8.03,'[]',NULL,24,'Dual Camera 20MP (Digital)',NULL,760.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(36,28,2,537.00,53.70,'[]',NULL,62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,1358.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(37,29,3,40.50,4.05,'[]',NULL,27,'Smart Watches',NULL,1653.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(38,30,3,526.00,52.60,'[]',NULL,46,'Samsung Smart Phone (Digital)',NULL,1605.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(39,31,3,40.50,4.05,'[]',NULL,27,'Smart Watches',NULL,1653.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(40,32,1,1160.00,116.00,'[]',NULL,48,'Herschel Leather Duffle Bag In Brown Color',NULL,586.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(41,32,2,553.00,55.30,'[]',NULL,60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,1210.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(42,33,1,584.00,58.40,'[]',NULL,58,'B&O Play Mini Bluetooth Speaker',NULL,694.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(43,34,2,1242.00,124.20,'[]',NULL,65,'NYX Beauty Couton Pallete Makeup 12',NULL,1290.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(44,35,2,40.50,4.05,'[]',NULL,27,'Smart Watches',NULL,1102.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(45,36,3,1194.00,119.40,'[]',NULL,45,'Smart Televisions',NULL,2361.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(46,37,1,859.00,85.90,'[]',NULL,35,'Smart Watch External (Digital)',NULL,622.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(47,37,2,536.00,53.60,'[]',NULL,41,'Audio Equipment',NULL,1798.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(48,38,3,1194.00,119.40,'[]',NULL,42,'Smart Televisions',NULL,2361.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(49,39,1,536.00,53.60,'[]',NULL,38,'Audio Equipment',NULL,899.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(50,40,2,1194.00,119.40,'[]',NULL,45,'Smart Televisions',NULL,1574.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(51,41,1,526.00,52.60,'[]',NULL,46,'Samsung Smart Phone (Digital)',NULL,535.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(52,42,3,536.00,53.60,'[]',NULL,41,'Audio Equipment',NULL,2697.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','physical',0),(53,42,2,553.00,55.30,'[]',NULL,60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,1210.00,0,'2022-11-10 21:04:43','2022-11-10 21:04:43','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` int unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` int unsigned NOT NULL COMMENT 'Order product id',
  `product_id` int unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL COMMENT 'Order ID',
  `store_id` int unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` int unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',8,'1','default','completed',1698.80,54.80,0.00,NULL,NULL,0.00,1644.00,1,NULL,1,'2022-11-10 21:04:43','XGBeWCYuhYMYRQZgLPt47hWHeBNQp',1,'2022-10-28 13:04:42','2022-11-10 21:04:43',1),(2,'#10000002',8,'1','default','pending',2904.30,138.30,0.00,NULL,NULL,0.00,2766.00,1,NULL,1,NULL,'Oiu6BVz1JcSFZ3hCDaHqdevy3c9gw',2,'2022-11-04 05:04:42','2022-11-10 21:04:42',2),(3,'#10000003',4,'1','default','completed',44.55,4.05,0.00,NULL,NULL,0.00,40.50,1,NULL,1,'2022-11-10 21:04:43','Vaap103zOt4KJmFj61iImSxanGEEl',3,'2022-10-26 01:04:42','2022-11-10 21:04:43',4),(4,'#10000004',4,'1','default','completed',42.00,2.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'2022-11-10 21:04:42','v2t2bN4Kywf4ib9rCSqJONa68O2p2',4,'2022-10-29 05:04:42','2022-11-10 21:04:42',2),(5,'#10000005',4,'1','default','completed',3884.30,125.30,0.00,NULL,NULL,0.00,3759.00,1,NULL,1,'2022-11-10 21:04:43','MYCKRZDYN21UxZRWV7XYPdeVMGhhk',5,'2022-11-09 09:04:42','2022-11-10 21:04:43',5),(6,'#10000006',4,'1','default','completed',2374.60,76.60,0.00,NULL,NULL,0.00,2298.00,1,NULL,1,'2022-11-10 21:04:43','v83RkYGa4G8qlMCsLQEUVgJ28g3zI',6,'2022-11-01 21:04:42','2022-11-10 21:04:43',4),(7,'#10000007',3,'1','default','pending',62.00,2.00,0.00,NULL,NULL,0.00,60.00,1,NULL,1,NULL,'jjL4Ry4fNy9UDsJU4fbKcdP5BosB1',7,'2022-10-30 13:04:42','2022-11-10 21:04:42',2),(8,'#10000008',3,'1','default','pending',578.60,52.60,0.00,NULL,NULL,0.00,526.00,1,NULL,1,NULL,'wFMPbfCRa8O0NsWkT95RogauZJyOU',8,'2022-10-31 23:04:42','2022-11-10 21:04:42',1),(9,'#10000009',4,'1','default','pending',578.60,52.60,0.00,NULL,NULL,0.00,526.00,1,NULL,1,NULL,'OvB74Dy6j4RcH86IocM7URtP87SYP',9,'2022-11-01 13:04:42','2022-11-10 21:04:42',1),(10,'#10000010',4,'1','default','completed',4769.90,171.90,0.00,NULL,NULL,0.00,4598.00,1,NULL,1,'2022-11-10 21:04:43','exUXz4SfUBQMpjBBxX1CjGvhZVxto',10,'2022-11-01 13:04:42','2022-11-10 21:04:43',6),(11,'#10000011',4,'1','default','pending',469.70,42.70,0.00,NULL,NULL,0.00,427.00,1,NULL,1,NULL,'hFfbEjFbnlIWn5djS0WU9kRzTdJBu',11,'2022-11-09 15:04:42','2022-11-10 21:04:42',2),(12,'#10000012',4,'1','default','pending',3701.40,119.40,0.00,NULL,NULL,0.00,3582.00,1,NULL,1,NULL,'GhWOcmUbu1XSjneP2dNhtHEMV7JkO',12,'2022-11-09 15:04:42','2022-11-10 21:04:42',3),(13,'#10000013',1,'1','default','pending',2228.10,106.10,0.00,NULL,NULL,0.00,2122.00,1,NULL,1,NULL,'IFBfuEWbZZRBr20L6QLoUHLPlPgj4',13,'2022-11-02 17:04:42','2022-11-10 21:04:42',1),(14,'#10000014',1,'1','default','completed',1875.30,89.30,0.00,NULL,NULL,0.00,1786.00,1,NULL,1,'2022-11-10 21:04:43','mqRIsZsydv5rtBROwGjJXXl1ltWc9',14,'2022-11-05 01:04:42','2022-11-10 21:04:43',3),(15,'#10000015',8,'1','default','completed',4683.70,208.70,0.00,NULL,NULL,0.00,4475.00,1,NULL,1,'2022-11-10 21:04:42','Ikxh4VUywRztmKai278t320ivsGWj',15,'2022-11-05 11:04:42','2022-11-10 21:04:42',3),(16,'#10000016',8,'1','default','pending',1276.00,116.00,0.00,NULL,NULL,0.00,1160.00,1,NULL,1,NULL,'RFdw4oB2sXdfnaPRVT2txvjqw8ByJ',16,'2022-11-02 05:04:42','2022-11-10 21:04:42',6),(17,'#10000017',1,'1','default','completed',3519.90,241.90,0.00,NULL,NULL,0.00,3278.00,1,NULL,1,'2022-11-10 21:04:42','t3UHija0Tk4ZoQPHNkTSQTIGRXkCE',17,'2022-11-04 21:04:42','2022-11-10 21:04:42',6),(18,'#10000018',1,'1','default','completed',2608.20,124.20,0.00,NULL,NULL,0.00,2484.00,1,NULL,1,'2022-11-10 21:04:43','404aCOLDYXHQuzNvT07ColvlDAkRK',18,'2022-10-31 21:04:42','2022-11-10 21:04:43',1),(19,'#10000019',1,'1','default','pending',1313.40,119.40,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,NULL,'o99xj0RBoYckv5Bqvbng1jnDXdE4v',19,'2022-11-07 05:04:42','2022-11-10 21:04:42',3),(20,'#10000020',1,'1','default','pending',608.30,55.30,0.00,NULL,NULL,0.00,553.00,1,NULL,1,NULL,'uJKec1nR5n4Q7UUXI3C39JMKUJY99',20,'2022-11-04 11:04:42','2022-11-10 21:04:42',6),(21,'#10000021',1,'1','default','pending',1810.40,58.40,0.00,NULL,NULL,0.00,1752.00,1,NULL,1,NULL,'M39Q7gnDB6ivjNwkSwz8yOgueqQiZ',21,'2022-11-03 09:04:42','2022-11-10 21:04:42',3),(22,'#10000022',1,'1','default','pending',2374.60,76.60,0.00,NULL,NULL,0.00,2298.00,1,NULL,1,NULL,'bIZOguifE9F6NCt5gtLbkWBnmBZJg',22,'2022-11-03 09:04:42','2022-11-10 21:04:42',4),(23,'#10000023',4,'1','default','completed',1733.90,108.90,0.00,NULL,NULL,0.00,1625.00,1,NULL,1,'2022-11-10 21:04:43','2qs4RiroDYn6UmuUf5muSscsMTYGK',23,'2022-11-10 03:04:42','2022-11-10 21:04:43',6),(24,'#10000024',4,'1','default','completed',1664.70,53.70,0.00,NULL,NULL,0.00,1611.00,1,NULL,1,'2022-11-10 21:04:43','smqMaEhKJp4peYNq0mJHW8EGqCvDA',24,'2022-11-08 15:04:42','2022-11-10 21:04:43',3),(25,'#10000025',4,'1','default','pending',1366.20,124.20,0.00,NULL,NULL,0.00,1242.00,1,NULL,1,NULL,'I5j1OnwSme1EyoKPg6qzO7jpWd1Wl',25,'2022-11-08 15:04:42','2022-11-10 21:04:42',1),(26,'#10000026',4,'1','default','pending',1378.30,125.30,0.00,NULL,NULL,0.00,1253.00,1,NULL,1,NULL,'oAR5IOjwqFebZRrzR1zrUJjy9HcW8',26,'2022-11-08 05:04:42','2022-11-10 21:04:42',5),(27,'#10000027',4,'1','default','pending',2608.20,124.20,0.00,NULL,NULL,0.00,2484.00,1,NULL,1,NULL,'byia5ksM30RC45GdON0MjKernbPxy',27,'2022-11-08 21:04:42','2022-11-10 21:04:42',1),(28,'#10000028',3,'1','default','completed',1215.98,61.73,0.00,NULL,NULL,0.00,1154.25,1,NULL,1,'2022-11-10 21:04:44','xm1BaIvcEzZyCi9ijSqgR64qEkhJw',28,'2022-11-05 15:04:42','2022-11-10 21:04:44',3),(29,'#10000029',3,'1','default','pending',125.55,4.05,0.00,NULL,NULL,0.00,121.50,1,NULL,1,NULL,'xl9UEhkd3T5K3R67aaKYWTalaqfOq',29,'2022-11-09 17:04:42','2022-11-10 21:04:42',4),(30,'#10000030',3,'1','default','completed',1630.60,52.60,0.00,NULL,NULL,0.00,1578.00,1,NULL,1,'2022-11-10 21:04:42','yzbL5Zz9cfyzoAvEzDJ7lzaFeTmKO',30,'2022-11-06 05:04:42','2022-11-10 21:04:42',1),(31,'#10000031',1,'1','default','pending',125.55,4.05,0.00,NULL,NULL,0.00,121.50,1,NULL,1,NULL,'GQlouAizcaWONuDlTJd9iLwEBIdPc',31,'2022-11-08 21:04:42','2022-11-10 21:04:42',4),(32,'#10000032',1,'1','default','completed',2437.30,171.30,0.00,NULL,NULL,0.00,2266.00,1,NULL,1,'2022-11-10 21:04:44','uW3GPMy1Zv49JKFwIUfBLVPaj9LHZ',32,'2022-11-09 09:04:42','2022-11-10 21:04:44',6),(33,'#10000033',4,'1','default','pending',642.40,58.40,0.00,NULL,NULL,0.00,584.00,1,NULL,1,NULL,'v52a5sgFMPF255d24LTh9PP8cecew',33,'2022-11-06 17:04:42','2022-11-10 21:04:42',3),(34,'#10000034',4,'1','default','pending',2608.20,124.20,0.00,NULL,NULL,0.00,2484.00,1,NULL,1,NULL,'vxOHvZt8rPhetEexSThuMyht59zhp',34,'2022-11-10 11:04:42','2022-11-10 21:04:42',1),(35,'#10000035',3,'1','default','pending',85.05,4.05,0.00,NULL,NULL,0.00,81.00,1,NULL,1,NULL,'JAT0wzTMU2VATqBweiUNS4MmlrMkZ',35,'2022-11-07 21:04:42','2022-11-10 21:04:42',4),(36,'#10000036',3,'1','default','pending',3701.40,119.40,0.00,NULL,NULL,0.00,3582.00,1,NULL,1,NULL,'XqwTCFL132vE2ksuSeG9utptghVj7',36,'2022-11-10 05:04:42','2022-11-10 21:04:42',3),(37,'#10000037',3,'1','default','pending',2070.50,139.50,0.00,NULL,NULL,0.00,1931.00,1,NULL,1,NULL,'KCe4HXECuy0w2o2xrs6nQEzpKjVlZ',37,'2022-11-09 09:04:42','2022-11-10 21:04:42',6),(38,'#10000038',3,'1','default','pending',3701.40,119.40,0.00,NULL,NULL,0.00,3582.00,1,NULL,1,NULL,'4lDa4QM6MlqccpDTNh6FWL4dHn1ss',38,'2022-11-08 21:04:42','2022-11-10 21:04:42',3),(39,'#10000039',1,'1','default','completed',589.60,53.60,0.00,NULL,NULL,0.00,536.00,1,NULL,1,'2022-11-10 21:04:44','qsYwqT7ENlyrdKgJNZ4PHQh2TqKhQ',39,'2022-11-10 13:04:42','2022-11-10 21:04:44',6),(40,'#10000040',1,'1','default','completed',2507.40,119.40,0.00,NULL,NULL,0.00,2388.00,1,NULL,1,'2022-11-10 21:04:44','bc1id1xI6wTwj3OYe1uSvYVzigDav',40,'2022-11-10 05:04:42','2022-11-10 21:04:44',3),(41,'#10000041',1,'1','default','pending',578.60,52.60,0.00,NULL,NULL,0.00,526.00,1,NULL,1,NULL,'Izs1Y9njDGdp4gka3dYQQQ27v8UJM',41,'2022-11-10 17:04:42','2022-11-10 21:04:42',1),(42,'#10000042',1,'1','default','pending',2822.90,108.90,0.00,NULL,NULL,0.00,2714.00,1,NULL,1,NULL,'RVtUn9Sy6s8xPul6tBeoJIEEwoYFQ',42,'2022-11-10 13:04:42','2022-11-10 21:04:43',6);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-11-10 21:04:36','2022-11-10 21:04:36',0),(2,'Size','size','text',1,1,1,'published',1,'2022-11-10 21:04:36','2022-11-10 21:04:36',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-11-10 21:04:36','2022-11-10 21:04:36'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-11-10 21:04:36','2022-11-10 21:04:36');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-11-10 21:04:31','2022-11-10 21:04:31');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,10,1),(2,4,1),(3,13,1),(4,15,1),(5,34,2),(6,12,2),(7,33,2),(8,27,2),(9,21,3),(10,22,3),(11,19,3),(12,23,3),(13,28,4),(14,16,4),(15,14,4),(16,29,4),(17,20,5),(18,34,5),(19,36,5),(20,35,5),(21,35,6),(22,20,6),(23,34,6),(24,29,6),(25,33,7),(26,36,7),(27,21,7),(28,18,7),(29,27,8),(30,33,8),(31,3,8),(32,19,8),(33,26,9),(34,2,9),(35,12,9),(36,18,9),(37,16,10),(38,17,10),(39,21,10),(40,33,10),(41,29,11),(42,28,11),(43,4,11),(44,32,11),(45,8,12),(46,5,12),(47,29,12),(48,36,12),(49,23,13),(50,3,13),(51,27,13),(52,18,14),(53,19,14),(54,28,14),(55,24,14),(56,16,15),(57,5,15),(58,21,15),(59,33,15),(60,13,16),(61,8,16),(62,33,16),(63,16,17),(64,25,17),(65,24,17),(66,21,17),(67,21,18),(68,18,18),(69,16,18),(70,15,18),(71,10,19),(72,33,19),(73,18,19),(74,16,19),(75,31,20),(76,9,20),(77,12,20),(78,28,20),(79,5,21),(80,31,21),(81,13,21),(82,33,21),(83,23,22),(84,29,22),(85,7,22),(86,26,22),(87,28,23),(88,29,23),(89,15,23),(90,20,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,3,6),(7,1,7),(8,3,8),(9,3,9),(10,2,10),(11,2,11),(12,1,12),(13,3,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,2,21),(22,3,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-11-10 21:04:31','2022-11-10 21:04:31',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-11-10 21:04:31','2022-11-10 21:04:31',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-11-10 21:04:31','2022-11-10 21:04:31',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,3),(2,1,14),(3,1,20),(4,1,11),(5,1,6),(6,1,2),(7,2,13),(8,2,15),(9,2,16),(10,2,6),(11,2,12),(12,2,1),(13,3,14),(14,3,4),(15,3,12),(16,3,13),(17,3,18),(18,3,5),(19,4,5),(20,4,15),(21,4,14),(22,4,16),(23,4,13),(24,4,20),(25,5,6),(26,5,2),(27,5,15),(28,5,20),(29,5,7),(30,5,11),(31,6,9),(32,6,20),(33,6,12),(34,6,3),(35,6,4),(36,6,15),(37,6,11),(38,7,2),(39,7,9),(40,7,16),(41,7,18),(42,7,6),(43,7,12),(44,8,5),(45,8,15),(46,8,1),(47,8,13),(48,8,12),(49,9,6),(50,9,2),(51,9,14),(52,9,18),(53,9,15),(54,9,8),(55,10,18),(56,10,15),(57,10,8),(58,10,1),(59,10,16),(60,10,3),(61,11,13),(62,11,14),(63,11,20),(64,11,10),(65,11,18),(66,11,6),(67,12,10),(68,12,3),(69,12,20),(70,12,2),(71,12,16),(72,12,7),(73,13,11),(74,13,16),(75,13,4),(76,13,20),(77,13,1),(78,13,3),(79,13,6),(80,14,3),(81,14,12),(82,14,7),(83,14,13),(84,14,5),(85,14,10),(86,14,4),(87,15,5),(88,15,7),(89,15,6),(90,15,11),(91,15,4),(92,16,8),(93,16,19),(94,16,20),(95,16,14),(96,16,1),(97,16,18),(98,17,13),(99,17,6),(100,17,11),(101,17,8),(102,17,7),(103,17,2),(104,18,17),(105,18,10),(106,18,19),(107,18,3),(108,18,15),(109,18,1),(110,19,10),(111,19,5),(112,19,8),(113,19,15),(114,19,2),(115,19,12),(116,20,4),(117,20,3),(118,20,1),(119,20,18),(120,20,11),(121,21,16),(122,21,9),(123,21,15),(124,21,1),(125,21,14),(126,21,8),(127,22,8),(128,22,15),(129,22,9),(130,22,6),(131,23,18),(132,23,5),(133,23,12),(134,23,8),(135,23,16);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,24,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(2,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(3,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(4,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(5,35,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(6,35,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(7,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(8,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(9,36,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(10,36,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(11,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"9\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(12,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(13,46,'product-files/9-2.jpg','{\"filename\":\"9-2.jpg\",\"url\":\"product-files\\/9-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"9-2\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(14,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(15,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(16,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"13\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(17,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(18,63,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"17\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(19,63,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(20,63,'product-files/17-2.jpg','{\"filename\":\"17-2.jpg\",\"url\":\"product-files\\/17-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"17-2\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(21,63,'product-files/17-3.jpg','{\"filename\":\"17-3.jpg\",\"url\":\"product-files\\/17-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"17-3\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(22,68,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"21\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(23,68,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36'),(24,68,'product-files/21-2.jpg','{\"filename\":\"21-2.jpg\",\"url\":\"product-files\\/21-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2022-11-11 04:04:36\",\"name\":\"21-2\",\"extension\":\"jpg\"}','2022-11-10 21:04:36','2022-11-10 21:04:36');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(2,6),(2,18),(3,3),(3,12),(3,15),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-11-10 21:04:31','2022-11-10 21:04:31'),(2,'New','#00c9a7','published','2022-11-10 21:04:31','2022-11-10 21:04:31'),(3,'Sale','#fe9931','published','2022-11-10 21:04:31','2022-11-10 21:04:31');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,3),(1,6),(2,3),(2,4),(2,5),(3,2),(3,3),(4,3),(4,4),(5,2),(5,5),(5,6),(6,4),(6,6),(7,3),(7,4),(7,6),(8,1),(8,3),(9,2),(9,3),(9,6),(10,3),(10,6),(11,2),(11,4),(11,6),(12,1),(12,3),(13,4),(13,5),(14,2),(14,3),(14,6),(15,3),(15,4),(15,6),(16,1),(16,6),(17,2),(17,3),(17,5),(18,3),(18,5),(18,6),(19,1),(19,4),(19,5),(20,2),(20,3),(21,3),(21,4),(21,6),(22,2),(22,5),(22,6),(23,3),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(2,'Mobile',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(3,'Iphone',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(4,'Printer',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(5,'Office',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(6,'IT',NULL,'published','2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (19,1,10),(25,1,13),(31,1,16),(41,1,21),(47,1,24),(51,1,26),(61,1,31),(97,1,49),(3,2,2),(5,2,3),(11,2,6),(13,2,7),(17,2,9),(29,2,15),(53,2,27),(55,2,28),(63,2,32),(85,2,43),(87,2,44),(89,2,45),(93,2,47),(99,2,50),(7,3,4),(23,3,12),(27,3,14),(35,3,18),(45,3,23),(57,3,29),(69,3,35),(81,3,41),(1,4,1),(15,4,8),(33,4,17),(39,4,20),(59,4,30),(67,4,34),(71,4,36),(73,4,37),(77,4,39),(83,4,42),(9,5,5),(21,5,11),(37,5,19),(43,5,22),(49,5,25),(65,5,33),(75,5,38),(79,5,40),(91,5,46),(95,5,48),(12,6,6),(34,6,17),(44,6,22),(54,6,27),(60,6,30),(64,6,32),(88,6,44),(4,7,2),(6,7,3),(26,7,13),(36,7,18),(50,7,25),(68,7,34),(74,7,37),(84,7,42),(86,7,43),(94,7,47),(96,7,48),(8,8,4),(10,8,5),(14,8,7),(20,8,10),(24,8,12),(28,8,14),(30,8,15),(38,8,19),(42,8,21),(46,8,23),(62,8,31),(70,8,35),(72,8,36),(76,8,38),(82,8,41),(16,9,8),(18,9,9),(22,9,11),(40,9,20),(58,9,29),(100,9,50),(2,10,1),(32,10,16),(48,10,24),(52,10,26),(56,10,28),(66,10,33),(78,10,39),(80,10,40),(90,10,45),(92,10,46),(98,10,49);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,2,0),(6,29,3,1),(7,30,3,0),(8,31,4,1),(9,32,4,0),(10,33,4,0),(11,34,4,0),(12,35,5,1),(13,36,5,0),(14,37,6,1),(15,38,7,1),(16,39,7,0),(17,40,7,0),(18,41,7,0),(19,42,8,1),(20,43,8,0),(21,44,8,0),(22,45,8,0),(23,46,9,1),(24,47,10,1),(25,48,10,0),(26,49,10,0),(27,50,10,0),(28,51,11,1),(29,52,11,0),(30,53,12,1),(31,54,12,0),(32,55,13,1),(33,56,13,0),(34,57,14,1),(35,58,14,0),(36,59,15,1),(37,60,15,0),(38,61,16,1),(39,62,16,0),(40,63,17,1),(41,64,18,1),(42,65,19,1),(43,66,19,0),(44,67,20,1),(45,68,21,1),(46,69,22,1),(47,70,23,1),(48,71,23,0),(49,72,23,0),(50,73,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `store_id` int unsigned DEFAULT NULL,
  `approved_by` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-185-A0',0,16,0,1,1,6,0,0,80.25,NULL,NULL,NULL,11.00,18.00,10.00,760.00,1,70686,'2022-11-10 21:04:35','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',3,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-159-A0',0,19,0,1,1,2,0,0,40.5,NULL,NULL,NULL,15.00,15.00,16.00,551.00,1,165514,'2022-11-10 21:04:35','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-127-A0',0,11,0,1,1,1,0,0,20,NULL,NULL,NULL,16.00,12.00,13.00,512.00,1,112930,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-100-A0',0,19,0,1,1,2,0,0,548,389.08,NULL,NULL,13.00,17.00,18.00,871.00,1,41987,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(5,'Smart Watch External (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-107-A0',0,12,0,1,1,2,0,0,859,NULL,NULL,NULL,16.00,14.00,20.00,622.00,1,37167,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',6,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-126-A0',0,10,0,1,1,5,0,0,427,NULL,NULL,NULL,15.00,19.00,15.00,677.00,1,53984,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-143-A0',0,12,0,1,1,4,0,0,536,NULL,NULL,NULL,14.00,15.00,11.00,899.00,1,77354,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-116-A0',0,12,0,1,1,4,0,0,1194,895.5,NULL,NULL,17.00,12.00,18.00,787.00,1,102792,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(9,'Samsung Smart Phone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-129-A0',0,16,0,1,1,4,0,0,526,NULL,NULL,NULL,16.00,10.00,13.00,535.00,1,70774,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-139-A0',0,14,0,1,0,6,0,0,1160,NULL,NULL,NULL,11.00,14.00,19.00,586.00,1,78824,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-192-A0',0,17,0,1,0,6,0,0,1253,NULL,NULL,NULL,10.00,17.00,10.00,579.00,1,178912,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',5,0),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-197-A0',0,14,0,1,0,3,0,0,559,441.61,NULL,NULL,19.00,20.00,19.00,555.00,1,23101,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(13,'Sound Intone I65 Earphone White Version (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-130-A0',0,13,0,1,0,4,0,0,535,NULL,NULL,NULL,17.00,15.00,18.00,515.00,1,43707,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',1,0),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-165-A0',0,17,0,1,0,3,0,0,584,NULL,NULL,NULL,19.00,16.00,17.00,694.00,1,150079,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-175-A0',0,19,0,1,0,6,0,0,553,NULL,NULL,NULL,16.00,19.00,20.00,605.00,1,162807,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-184-A0',0,17,0,1,0,6,0,0,537,418.86,NULL,NULL,20.00,16.00,19.00,679.00,1,45017,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',3,0),(17,'Samsung Gear VR Virtual Reality Headset (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-107-A0',0,19,0,1,0,2,0,0,557,NULL,NULL,NULL,10.00,15.00,20.00,872.00,1,67657,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',4,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-127-A0',0,20,0,1,0,6,0,0,956,NULL,NULL,NULL,17.00,18.00,10.00,752.00,1,38679,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',2,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-144-A0',0,10,0,1,0,4,0,0,1242,NULL,NULL,NULL,19.00,12.00,20.00,645.00,1,124560,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-196-A0',0,19,0,1,0,5,0,0,903,713.37,NULL,NULL,13.00,13.00,13.00,527.00,1,163378,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',1,0),(21,'MVMTH Classical Leather Watch In Black (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-142-A0',0,17,0,1,0,5,0,0,893,NULL,NULL,NULL,10.00,16.00,20.00,722.00,1,136022,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',3,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-147-A0',0,10,0,1,0,5,0,0,400,NULL,NULL,NULL,18.00,14.00,18.00,691.00,1,60853,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',6,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-176-A0',0,20,0,1,0,4,0,0,766,NULL,NULL,NULL,16.00,16.00,17.00,723.00,1,15237,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',4,0),(24,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0',0,16,0,1,0,6,1,0,80.25,NULL,NULL,NULL,11.00,18.00,10.00,760.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(25,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-185-A0-A1',0,16,0,1,0,6,1,0,80.25,NULL,NULL,NULL,11.00,18.00,10.00,760.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-159-A0',0,19,0,1,0,2,1,0,40.5,NULL,NULL,NULL,15.00,15.00,16.00,551.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-159-A0-A1',0,19,0,1,0,2,1,0,40.5,NULL,NULL,NULL,15.00,15.00,16.00,551.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-159-A0-A2',0,19,0,1,0,2,1,0,40.5,NULL,NULL,NULL,15.00,15.00,16.00,551.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-127-A0',0,11,0,1,0,1,1,0,20,NULL,NULL,NULL,16.00,12.00,13.00,512.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-127-A0-A1',0,11,0,1,0,1,1,0,20,NULL,NULL,NULL,16.00,12.00,13.00,512.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-100-A0',0,19,0,1,0,2,1,0,548,389.08,NULL,NULL,13.00,17.00,18.00,871.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-100-A0-A1',0,19,0,1,0,2,1,0,548,460.32,NULL,NULL,13.00,17.00,18.00,871.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(33,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-100-A0-A2',0,19,0,1,0,2,1,0,548,482.24,NULL,NULL,13.00,17.00,18.00,871.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(34,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','SW-100-A0-A3',0,19,0,1,0,2,1,0,548,465.8,NULL,NULL,13.00,17.00,18.00,871.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(35,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-107-A0',0,12,0,1,0,2,1,0,859,NULL,NULL,NULL,16.00,14.00,20.00,622.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(36,'Smart Watch External (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-107-A0-A1',0,12,0,1,0,2,1,0,859,NULL,NULL,NULL,16.00,14.00,20.00,622.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-126-A0',0,10,0,1,0,5,1,0,427,NULL,NULL,NULL,15.00,19.00,15.00,677.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-143-A0',0,12,0,1,0,4,1,0,536,NULL,NULL,NULL,14.00,15.00,11.00,899.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-143-A0-A1',0,12,0,1,0,4,1,0,536,NULL,NULL,NULL,14.00,15.00,11.00,899.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-143-A0-A2',0,12,0,1,0,4,1,0,536,NULL,NULL,NULL,14.00,15.00,11.00,899.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-143-A0-A3',0,12,0,1,0,4,1,0,536,NULL,NULL,NULL,14.00,15.00,11.00,899.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(42,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-116-A0',0,12,0,1,0,4,1,0,1194,895.5,NULL,NULL,17.00,12.00,18.00,787.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(43,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-116-A0-A1',0,12,0,1,0,4,1,0,1194,943.26,NULL,NULL,17.00,12.00,18.00,787.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(44,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-116-A0-A2',0,12,0,1,0,4,1,0,1194,883.56,NULL,NULL,17.00,12.00,18.00,787.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-3.jpg\"]','SW-116-A0-A3',0,12,0,1,0,4,1,0,1194,871.62,NULL,NULL,17.00,12.00,18.00,787.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(46,'Samsung Smart Phone (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-129-A0',0,16,0,1,0,4,1,0,526,NULL,NULL,NULL,16.00,10.00,13.00,535.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-139-A0',0,14,0,1,0,6,1,0,1160,NULL,NULL,NULL,11.00,14.00,19.00,586.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-139-A0-A1',0,14,0,1,0,6,1,0,1160,NULL,NULL,NULL,11.00,14.00,19.00,586.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(49,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-139-A0-A2',0,14,0,1,0,6,1,0,1160,NULL,NULL,NULL,11.00,14.00,19.00,586.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-139-A0-A3',0,14,0,1,0,6,1,0,1160,NULL,NULL,NULL,11.00,14.00,19.00,586.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(51,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-192-A0',0,17,0,1,0,6,1,0,1253,NULL,NULL,NULL,10.00,17.00,10.00,579.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-192-A0-A1',0,17,0,1,0,6,1,0,1253,NULL,NULL,NULL,10.00,17.00,10.00,579.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(53,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-197-A0',0,14,0,1,0,3,1,0,559,441.61,NULL,NULL,19.00,20.00,19.00,555.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(54,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-197-A0-A1',0,14,0,1,0,3,1,0,559,503.1,NULL,NULL,19.00,20.00,19.00,555.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(55,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-130-A0',0,13,0,1,0,4,1,0,535,NULL,NULL,NULL,17.00,15.00,18.00,515.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(56,'Sound Intone I65 Earphone White Version (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-130-A0-A1',0,13,0,1,0,4,1,0,535,NULL,NULL,NULL,17.00,15.00,18.00,515.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(57,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-165-A0',0,17,0,1,0,3,1,0,584,NULL,NULL,NULL,19.00,16.00,17.00,694.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(58,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-165-A0-A1',0,17,0,1,0,3,1,0,584,NULL,NULL,NULL,19.00,16.00,17.00,694.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-175-A0',0,19,0,1,0,6,1,0,553,NULL,NULL,NULL,16.00,19.00,20.00,605.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-175-A0-A1',0,19,0,1,0,6,1,0,553,NULL,NULL,NULL,16.00,19.00,20.00,605.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-184-A0',0,17,0,1,0,6,1,0,537,418.86,NULL,NULL,20.00,16.00,19.00,679.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-184-A0-A1',0,17,0,1,0,6,1,0,537,381.27,NULL,NULL,20.00,16.00,19.00,679.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(63,'Samsung Gear VR Virtual Reality Headset (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-107-A0',0,19,0,1,0,2,1,0,557,NULL,NULL,NULL,10.00,15.00,20.00,872.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-127-A0',0,20,0,1,0,6,1,0,956,NULL,NULL,NULL,17.00,18.00,10.00,752.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-144-A0',0,10,0,1,0,4,1,0,1242,NULL,NULL,NULL,19.00,12.00,20.00,645.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-144-A0-A1',0,10,0,1,0,4,1,0,1242,NULL,NULL,NULL,19.00,12.00,20.00,645.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-196-A0',0,19,0,1,0,5,1,0,903,713.37,NULL,NULL,13.00,13.00,13.00,527.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(68,'MVMTH Classical Leather Watch In Black (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-142-A0',0,17,0,1,0,5,1,0,893,NULL,NULL,NULL,10.00,16.00,20.00,722.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,0),(69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-147-A0',0,10,0,1,0,5,1,0,400,NULL,NULL,NULL,18.00,14.00,18.00,691.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(70,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-176-A0',0,20,0,1,0,4,1,0,766,NULL,NULL,NULL,16.00,16.00,17.00,723.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-176-A0-A1',0,20,0,1,0,4,1,0,766,NULL,NULL,NULL,16.00,16.00,17.00,723.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-176-A0-A2',0,20,0,1,0,4,1,0,766,NULL,NULL,NULL,16.00,16.00,17.00,723.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0),(73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-3.jpg\"]','SW-176-A0-A3',0,20,0,1,0,4,1,0,766,NULL,NULL,NULL,16.00,16.00,17.00,723.00,NULL,0,'2022-11-10 21:04:36','2022-11-10 21:04:42','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Red & Black Headphone',NULL,NULL),('vi',34,'Red & Black Headphone',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Smart Watch External',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Audio Equipment',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Audio Equipment',NULL,NULL),('vi',41,'Audio Equipment',NULL,NULL),('vi',42,'Smart Televisions',NULL,NULL),('vi',43,'Smart Televisions',NULL,NULL),('vi',44,'Smart Televisions',NULL,NULL),('vi',45,'Smart Televisions',NULL,NULL),('vi',46,'Samsung Smart Phone',NULL,NULL),('vi',47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',49,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',51,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',52,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',53,'EPSION Plaster Printer',NULL,NULL),('vi',54,'EPSION Plaster Printer',NULL,NULL),('vi',55,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',56,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',57,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',58,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',63,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',65,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',66,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',67,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',68,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',69,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',70,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',71,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',72,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',73,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,7,5,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/14.jpg\"]'),(2,5,21,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\"]'),(3,6,1,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(4,2,5,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(5,3,5,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(6,9,23,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(7,8,20,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/14.jpg\"]'),(8,8,17,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/18.jpg\"]'),(9,1,16,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(10,5,2,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(11,3,6,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(12,6,12,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\"]'),(13,9,17,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(14,10,2,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/14.jpg\"]'),(15,10,17,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(16,4,17,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(17,10,16,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/14.jpg\"]'),(18,5,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(19,2,7,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/10.jpg\"]'),(20,3,16,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(21,4,17,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(22,3,2,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(23,5,7,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(24,7,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(25,4,4,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(26,4,17,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(27,9,22,4.00,'Best ecommerce CMS online store!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(28,5,6,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(29,2,21,5.00,'Good app, good backup service and support. Good documentation.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(30,2,22,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(31,8,15,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/12.jpg\"]'),(32,6,13,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(33,1,13,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(34,4,21,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(35,10,16,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\"]'),(36,9,13,4.00,'Good app, good backup service and support. Good documentation.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(37,2,23,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(38,6,8,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\"]'),(39,4,17,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(40,5,3,5.00,'Clean & perfect source code','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(41,8,22,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(42,8,6,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(43,5,2,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(44,2,8,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(45,3,2,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(46,7,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(47,8,23,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/12.jpg\"]'),(48,1,14,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/21.jpg\"]'),(49,7,8,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(50,2,7,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(51,1,19,1.00,'Best ecommerce CMS online store!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(52,6,13,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\"]'),(53,3,4,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(54,10,10,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(55,2,14,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(56,6,14,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(57,4,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/8.jpg\"]'),(58,6,12,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(59,4,23,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(60,6,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(61,6,21,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(62,7,6,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\"]'),(63,8,15,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(64,5,8,4.00,'Clean & perfect source code','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(65,2,2,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(66,9,23,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(67,3,10,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/17.jpg\"]'),(68,2,13,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(69,4,21,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(70,6,5,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(71,1,7,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\"]'),(72,1,7,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(73,8,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(74,10,23,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/15.jpg\"]'),(75,3,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(76,7,11,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/19.jpg\"]'),(77,10,16,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/14.jpg\"]'),(78,5,16,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(79,8,22,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(80,6,7,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/8.jpg\"]'),(81,5,4,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(82,7,1,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(83,4,7,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\"]'),(84,4,6,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(85,2,6,5.00,'Clean & perfect source code','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(86,7,23,4.00,'Clean & perfect source code','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(87,2,13,1.00,'Good app, good backup service and support. Good documentation.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(88,2,19,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\"]'),(89,7,13,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/20.jpg\"]'),(90,6,8,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(91,5,11,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(92,10,21,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(93,7,13,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(94,10,4,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(95,1,16,3.00,'Good app, good backup service and support. Good documentation.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\",\"products\\/17.jpg\"]'),(96,5,21,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(97,6,6,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(98,4,13,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/23.jpg\"]'),(99,10,11,3.00,'Best ecommerce CMS online store!','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/3.jpg\"]'),(100,7,7,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-11-10 21:04:37','2022-11-10 21:04:37','[\"products\\/2.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-10-28 13:04:42','2022-10-28 13:04:42'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-11-09 05:04:42','2022-11-10 21:04:42'),(3,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,1,1,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-11-04 05:04:42','2022-11-04 05:04:42'),(5,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-11-09 05:04:42','2022-11-10 21:04:42'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-10-26 01:04:42','2022-10-26 01:04:42'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-11-09 07:04:42','2022-11-10 21:04:42'),(8,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,3,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-10-29 05:04:42','2022-10-29 05:04:42'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-11-09 07:04:42','2022-11-10 21:04:42'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-11-09 09:04:42','2022-11-10 21:04:42'),(14,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(15,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-11-01 21:04:42','2022-11-01 21:04:42'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-11-09 09:04:42','2022-11-10 21:04:42'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,6,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(18,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-10-30 13:04:42','2022-10-30 13:04:42'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-11-09 11:04:42','2022-11-10 21:04:42'),(20,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-10-31 23:04:42','2022-10-31 23:04:42'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-11-09 11:04:42','2022-11-10 21:04:42'),(22,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-11-09 13:04:42','2022-11-10 21:04:42'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-11-01 13:04:42','2022-11-01 13:04:42'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-11-09 13:04:42','2022-11-10 21:04:42'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-11-09 15:04:42','2022-11-10 21:04:42'),(29,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-11-09 15:04:42','2022-11-09 15:04:42'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-11-09 15:04:42','2022-11-10 21:04:42'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-11-02 17:04:42','2022-11-02 17:04:42'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-11-09 17:04:42','2022-11-10 21:04:42'),(33,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-11-05 01:04:42','2022-11-05 01:04:42'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-11-09 17:04:42','2022-11-10 21:04:42'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-11-05 11:04:42','2022-11-05 11:04:42'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-11-09 19:04:42','2022-11-10 21:04:42'),(38,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,15,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(39,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(40,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-11-02 05:04:42','2022-11-02 05:04:42'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-11-09 19:04:42','2022-11-10 21:04:42'),(42,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-11-04 21:04:42','2022-11-04 21:04:42'),(43,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-11-09 21:04:42','2022-11-10 21:04:42'),(44,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,17,17,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(45,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(46,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-10-31 21:04:42','2022-10-31 21:04:42'),(47,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-11-09 21:04:42','2022-11-10 21:04:42'),(48,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(49,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-11-07 05:04:42','2022-11-07 05:04:42'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-11-09 23:04:42','2022-11-10 21:04:42'),(51,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-11-04 11:04:42','2022-11-04 11:04:42'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-11-09 23:04:42','2022-11-10 21:04:42'),(53,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-11-10 01:04:42','2022-11-10 21:04:42'),(55,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-11-03 09:04:42','2022-11-03 09:04:42'),(56,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-11-10 01:04:42','2022-11-10 21:04:42'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-11-10 03:04:42','2022-11-10 03:04:42'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-11-10 03:04:42','2022-11-10 21:04:42'),(59,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,23,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(60,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(61,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-11-10 03:04:42','2022-11-10 21:04:42'),(62,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(63,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-11-08 15:04:42','2022-11-08 15:04:42'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-11-10 03:04:42','2022-11-10 21:04:42'),(65,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-11-08 05:04:42','2022-11-08 05:04:42'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-11-10 05:04:42','2022-11-10 21:04:42'),(67,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-11-10 05:04:42','2022-11-10 21:04:42'),(69,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-11-05 15:04:42','2022-11-05 15:04:42'),(70,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-11-10 07:04:42','2022-11-10 21:04:42'),(71,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(72,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-11-09 17:04:42','2022-11-09 17:04:42'),(73,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-11-10 07:04:42','2022-11-10 21:04:42'),(74,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-11-06 05:04:42','2022-11-06 05:04:42'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-11-10 07:04:42','2022-11-10 21:04:42'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(77,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(78,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-11-10 09:04:42','2022-11-10 21:04:42'),(79,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-11-10 09:04:42','2022-11-10 21:04:42'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(82,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-11-06 17:04:42','2022-11-06 17:04:42'),(83,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-11-10 11:04:42','2022-11-10 21:04:42'),(84,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-11-10 11:04:42','2022-11-10 11:04:42'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-11-10 11:04:42','2022-11-10 21:04:42'),(86,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-11-07 21:04:42','2022-11-07 21:04:42'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-11-10 13:04:42','2022-11-10 21:04:42'),(88,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(89,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-11-10 13:04:42','2022-11-10 21:04:42'),(90,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-11-09 09:04:42','2022-11-09 09:04:42'),(91,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-11-10 15:04:42','2022-11-10 21:04:42'),(92,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-11-08 21:04:42','2022-11-08 21:04:42'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-11-10 15:04:42','2022-11-10 21:04:42'),(94,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-11-10 17:04:42','2022-11-10 21:04:42'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(97,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-11-10 05:04:42','2022-11-10 05:04:42'),(98,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-11-10 17:04:42','2022-11-10 21:04:42'),(99,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2022-11-10 21:04:42','2022-11-10 21:04:42'),(100,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-11-10 17:04:42','2022-11-10 17:04:42'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-11-10 17:04:42','2022-11-10 21:04:42'),(102,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-11-10 13:04:42','2022-11-10 13:04:42'),(103,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-11-10 19:04:43','2022-11-10 21:04:43');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `transaction` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2613.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0014264032','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42','2022-11-11 04:04:42',NULL,NULL),(2,2,NULL,2858.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0049590150','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42',NULL,NULL,NULL),(3,3,NULL,551.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0038494178','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42','2022-11-11 04:04:42',NULL,NULL),(4,4,NULL,1024.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0078759982','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42','2022-11-11 04:04:42',NULL,NULL),(5,5,NULL,1737.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0087788292','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42','2022-11-11 04:04:42',NULL,NULL),(6,6,NULL,2169.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0033775191','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 04:04:42','2022-11-11 04:04:42',NULL,NULL),(7,7,NULL,1536.00,NULL,'','approved',62.00,'pending','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0084860236','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-13 04:04:42',NULL,NULL,NULL),(8,8,NULL,535.00,NULL,'','approved',578.60,'pending','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0015547922','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-13 04:04:42',NULL,NULL,NULL),(9,9,NULL,535.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD007713837','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-13 04:04:42',NULL,NULL,NULL),(10,10,NULL,2868.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0081753772','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42','2022-11-11 04:04:42',NULL,NULL),(11,11,NULL,677.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0020861915','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 04:04:42',NULL,NULL,NULL),(12,12,NULL,2361.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0082633512','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42',NULL,NULL,NULL),(13,13,NULL,2100.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0095548941','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42',NULL,NULL,NULL),(14,14,NULL,1444.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0089952640','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42','2022-11-11 04:04:42',NULL,NULL),(15,15,NULL,3083.00,NULL,'','delivered',4683.70,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0069113902','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42','2022-11-11 04:04:42',NULL,NULL),(16,16,NULL,586.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0017163722','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 04:04:42',NULL,NULL,NULL),(17,17,NULL,2521.00,NULL,'','delivered',3519.90,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0068963163','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-21 04:04:42','2022-11-11 04:04:42',NULL,NULL),(18,18,NULL,1290.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0099016428','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 04:04:42','2022-11-11 04:04:42',NULL,NULL),(19,19,NULL,787.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0017263334','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-17 04:04:42',NULL,NULL,NULL),(20,20,NULL,605.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0057702038','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 04:04:42',NULL,NULL,NULL),(21,21,NULL,2082.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0025526534','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42',NULL,NULL,NULL),(22,22,NULL,2169.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0086805983','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42',NULL,NULL,NULL),(23,23,NULL,2403.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0071125186','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42','2022-11-11 04:04:42',NULL,NULL),(24,24,NULL,2037.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0043010945','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-12 04:04:42','2022-11-11 04:04:42',NULL,NULL),(25,25,NULL,645.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0086731966','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 04:04:42',NULL,NULL,NULL),(26,26,NULL,579.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0036282450','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-13 04:04:42',NULL,NULL,NULL),(27,27,NULL,1290.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0059202463','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 04:04:42',NULL,NULL,NULL),(28,28,NULL,2118.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0078516504','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42','2022-11-11 04:04:42',NULL,NULL),(29,29,NULL,1653.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0072325226','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 04:04:42',NULL,NULL,NULL),(30,30,NULL,1605.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0022448945','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42','2022-11-11 04:04:42',NULL,NULL),(31,31,NULL,1653.00,NULL,'','approved',125.55,'pending','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0045156726','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 04:04:42',NULL,NULL,NULL),(32,32,NULL,1796.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0077321357','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42','2022-11-11 04:04:42',NULL,NULL),(33,33,NULL,694.00,NULL,'','approved',642.40,'pending','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0080410251','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 04:04:42',NULL,NULL,NULL),(34,34,NULL,1290.00,NULL,'','approved',2608.20,'pending','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0015628452','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-19 04:04:42',NULL,NULL,NULL),(35,35,NULL,1102.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0091017539','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-12 04:04:42',NULL,NULL,NULL),(36,36,NULL,2361.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0052887324','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-14 04:04:42',NULL,NULL,NULL),(37,37,NULL,2420.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0049116065','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-18 04:04:42',NULL,NULL,NULL),(38,38,NULL,2361.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0031481423','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42',NULL,NULL,NULL),(39,39,NULL,899.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0029251284','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-16 04:04:42','2022-11-11 04:04:42',NULL,NULL),(40,40,NULL,1574.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0014011727','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-20 04:04:42','2022-11-11 04:04:42',NULL,NULL),(41,41,NULL,535.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-11-10 21:04:42','2022-11-10 21:04:42','JJD0029868708','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 04:04:42',NULL,NULL,NULL),(42,42,NULL,3907.00,NULL,'','approved',2822.90,'pending','pending',0.00,0,'2022-11-10 21:04:43','2022-11-10 21:04:43','JJD001157999','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-11-15 04:04:43',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-11-10 21:04:37','2022-11-10 21:04:37'),(2,'None',0.000000,2,'published','2022-11-10 21:04:37','2022-11-10 21:04:37');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,'PAYMENT',1,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(3,'ORDER & RETURNS',2,'published','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','0d4733d4f7d05867cf0353038a3ae27a',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','0d4733d4f7d05867cf0353038a3ae27a',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','3c00d43c4caaa987de61b8badeae441b',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','5be938af891df431db6a207a90110b3c',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','114022c9fc97a1fdee6c1ce3e8cfae47',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','48b9b166ade72f011dce9b872eb3fc54',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','0f689c40b4bab40c7329026911d03e4b',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','fe53ebb46bb9294c66d8db4166b97b19',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','5be938af891df431db6a207a90110b3c',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','114022c9fc97a1fdee6c1ce3e8cfae47',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','48b9b166ade72f011dce9b872eb3fc54',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','0f689c40b4bab40c7329026911d03e4b',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',916,'brands/1.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(2,0,'2',1,'image/jpeg',916,'brands/2.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(3,0,'3',1,'image/jpeg',916,'brands/3.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(4,0,'4',1,'image/jpeg',916,'brands/4.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(5,0,'5',1,'image/jpeg',916,'brands/5.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(6,0,'6',1,'image/jpeg',916,'brands/6.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(7,0,'7',1,'image/jpeg',916,'brands/7.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(8,0,'1',2,'image/jpeg',2165,'product-categories/1.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(9,0,'2',2,'image/jpeg',2165,'product-categories/2.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(10,0,'3',2,'image/jpeg',2165,'product-categories/3.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(11,0,'4',2,'image/jpeg',2165,'product-categories/4.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(12,0,'5',2,'image/jpeg',2165,'product-categories/5.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(13,0,'6',2,'image/jpeg',2165,'product-categories/6.jpg','[]','2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(14,0,'7',2,'image/jpeg',2165,'product-categories/7.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(15,0,'8',2,'image/jpeg',2165,'product-categories/8.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(16,0,'1',3,'image/jpeg',2165,'products/1.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(17,0,'10-1',3,'image/jpeg',2165,'products/10-1.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(18,0,'10-2',3,'image/jpeg',2165,'products/10-2.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(19,0,'10',3,'image/jpeg',2165,'products/10.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(20,0,'11-1',3,'image/jpeg',2165,'products/11-1.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(21,0,'11-2',3,'image/jpeg',2165,'products/11-2.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(22,0,'11-3',3,'image/jpeg',2165,'products/11-3.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(23,0,'11',3,'image/jpeg',2165,'products/11.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(24,0,'12-1',3,'image/jpeg',2165,'products/12-1.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(25,0,'12-2',3,'image/jpeg',2165,'products/12-2.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(26,0,'12-3',3,'image/jpeg',2165,'products/12-3.jpg','[]','2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(27,0,'12',3,'image/jpeg',2165,'products/12.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(28,0,'13-1',3,'image/jpeg',2165,'products/13-1.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(29,0,'13',3,'image/jpeg',2165,'products/13.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(30,0,'14',3,'image/jpeg',2165,'products/14.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(31,0,'15-1',3,'image/jpeg',2165,'products/15-1.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(32,0,'15',3,'image/jpeg',2165,'products/15.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(33,0,'16',3,'image/jpeg',2165,'products/16.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(34,0,'17-1',3,'image/jpeg',2165,'products/17-1.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(35,0,'17-2',3,'image/jpeg',2165,'products/17-2.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(36,0,'17-3',3,'image/jpeg',2165,'products/17-3.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(37,0,'17',3,'image/jpeg',2165,'products/17.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(38,0,'18-1',3,'image/jpeg',2165,'products/18-1.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(39,0,'18-2',3,'image/jpeg',2165,'products/18-2.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(40,0,'18-3',3,'image/jpeg',2165,'products/18-3.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(41,0,'18',3,'image/jpeg',2165,'products/18.jpg','[]','2022-11-10 21:04:32','2022-11-10 21:04:32',NULL),(42,0,'19-1',3,'image/jpeg',2165,'products/19-1.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(43,0,'19-2',3,'image/jpeg',2165,'products/19-2.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(44,0,'19-3',3,'image/jpeg',2165,'products/19-3.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(45,0,'19',3,'image/jpeg',2165,'products/19.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(46,0,'2-1',3,'image/jpeg',2165,'products/2-1.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(47,0,'2-2',3,'image/jpeg',2165,'products/2-2.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(48,0,'2-3',3,'image/jpeg',2165,'products/2-3.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(49,0,'2',3,'image/jpeg',2165,'products/2.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(50,0,'20-1',3,'image/jpeg',2165,'products/20-1.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(51,0,'20-2',3,'image/jpeg',2165,'products/20-2.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(52,0,'20-3',3,'image/jpeg',2165,'products/20-3.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(53,0,'20',3,'image/jpeg',2165,'products/20.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(54,0,'21-1',3,'image/jpeg',2165,'products/21-1.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(55,0,'21-2',3,'image/jpeg',2165,'products/21-2.jpg','[]','2022-11-10 21:04:33','2022-11-10 21:04:33',NULL),(56,0,'21',3,'image/jpeg',2165,'products/21.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(57,0,'22-1',3,'image/jpeg',2165,'products/22-1.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(58,0,'22-2',3,'image/jpeg',2165,'products/22-2.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(59,0,'22-3',3,'image/jpeg',2165,'products/22-3.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(60,0,'22',3,'image/jpeg',2165,'products/22.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(61,0,'23-1',3,'image/jpeg',2165,'products/23-1.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(62,0,'23-2',3,'image/jpeg',2165,'products/23-2.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(63,0,'23-3',3,'image/jpeg',2165,'products/23-3.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(64,0,'23',3,'image/jpeg',2165,'products/23.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(65,0,'3',3,'image/jpeg',2165,'products/3.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(66,0,'4-1',3,'image/jpeg',2165,'products/4-1.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(67,0,'4-2',3,'image/jpeg',2165,'products/4-2.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(68,0,'4-3',3,'image/jpeg',2165,'products/4-3.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(69,0,'4',3,'image/jpeg',2165,'products/4.jpg','[]','2022-11-10 21:04:34','2022-11-10 21:04:34',NULL),(70,0,'5-1',3,'image/jpeg',2165,'products/5-1.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(71,0,'5-2',3,'image/jpeg',2165,'products/5-2.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(72,0,'5-3',3,'image/jpeg',2165,'products/5-3.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(73,0,'5',3,'image/jpeg',2165,'products/5.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(74,0,'6',3,'image/jpeg',2165,'products/6.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(75,0,'7',3,'image/jpeg',2165,'products/7.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(76,0,'8-1',3,'image/jpeg',2165,'products/8-1.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(77,0,'8-2',3,'image/jpeg',2165,'products/8-2.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(78,0,'8-3',3,'image/jpeg',2165,'products/8-3.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(79,0,'8',3,'image/jpeg',2165,'products/8.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(80,0,'9-1',3,'image/jpeg',2165,'products/9-1.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(81,0,'9-2',3,'image/jpeg',2165,'products/9-2.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(82,0,'9',3,'image/jpeg',2165,'products/9.jpg','[]','2022-11-10 21:04:35','2022-11-10 21:04:35',NULL),(83,0,'1',4,'image/jpeg',2165,'customers/1.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(84,0,'10',4,'image/jpeg',2165,'customers/10.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(85,0,'2',4,'image/jpeg',2165,'customers/2.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(86,0,'3',4,'image/jpeg',2165,'customers/3.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(87,0,'4',4,'image/jpeg',2165,'customers/4.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(88,0,'5',4,'image/jpeg',2165,'customers/5.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(89,0,'6',4,'image/jpeg',2165,'customers/6.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(90,0,'7',4,'image/jpeg',2165,'customers/7.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(91,0,'8',4,'image/jpeg',2165,'customers/8.jpg','[]','2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(92,0,'9',4,'image/jpeg',2165,'customers/9.jpg','[]','2022-11-10 21:04:37','2022-11-10 21:04:37',NULL),(93,0,'1',5,'image/jpeg',2165,'news/1.jpg','[]','2022-11-10 21:04:37','2022-11-10 21:04:37',NULL),(94,0,'10',5,'image/jpeg',2165,'news/10.jpg','[]','2022-11-10 21:04:37','2022-11-10 21:04:37',NULL),(95,0,'11',5,'image/jpeg',2165,'news/11.jpg','[]','2022-11-10 21:04:37','2022-11-10 21:04:37',NULL),(96,0,'2',5,'image/jpeg',2165,'news/2.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(97,0,'3',5,'image/jpeg',2165,'news/3.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(98,0,'4',5,'image/jpeg',2165,'news/4.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(99,0,'5',5,'image/jpeg',2165,'news/5.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(100,0,'6',5,'image/jpeg',2165,'news/6.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(101,0,'7',5,'image/jpeg',2165,'news/7.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(102,0,'8',5,'image/jpeg',2165,'news/8.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(103,0,'9',5,'image/jpeg',2165,'news/9.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(104,0,'1-lg',6,'image/jpeg',3852,'sliders/1-lg.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(105,0,'1-md',6,'image/jpeg',3852,'sliders/1-md.jpg','[]','2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(106,0,'1-sm',6,'image/jpeg',3852,'sliders/1-sm.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(107,0,'2-lg',6,'image/jpeg',3852,'sliders/2-lg.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(108,0,'2-md',6,'image/jpeg',3852,'sliders/2-md.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(109,0,'2-sm',6,'image/jpeg',3852,'sliders/2-sm.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(110,0,'3-lg',6,'image/jpeg',3852,'sliders/3-lg.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(111,0,'3-md',6,'image/jpeg',3852,'sliders/3-md.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(112,0,'3-sm',6,'image/jpeg',3852,'sliders/3-sm.jpg','[]','2022-11-10 21:04:39','2022-11-10 21:04:39',NULL),(113,0,'1',7,'image/jpeg',1463,'promotion/1.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(114,0,'2',7,'image/jpeg',1463,'promotion/2.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(115,0,'3',7,'image/jpeg',2049,'promotion/3.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(116,0,'4',7,'image/jpeg',2049,'promotion/4.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(117,0,'5',7,'image/jpeg',2049,'promotion/5.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(118,0,'6',7,'image/jpeg',2049,'promotion/6.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(119,0,'7',7,'image/jpeg',2049,'promotion/7.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(120,0,'8',7,'image/jpeg',2049,'promotion/8.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(121,0,'9',7,'image/jpeg',2049,'promotion/9.jpg','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(122,0,'app',8,'image/png',1849,'general/app.png','[]','2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(123,0,'coming-soon',8,'image/jpeg',19900,'general/coming-soon.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(124,0,'favicon',8,'image/png',1925,'general/favicon.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(125,0,'logo-dark',8,'image/png',784,'general/logo-dark.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(126,0,'logo-light',8,'image/png',783,'general/logo-light.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(127,0,'logo',8,'image/png',793,'general/logo.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(128,0,'newsletter',8,'image/jpeg',3316,'general/newsletter.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(129,0,'payment-method-1',8,'image/jpeg',813,'general/payment-method-1.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(130,0,'payment-method-2',8,'image/jpeg',878,'general/payment-method-2.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(131,0,'payment-method-3',8,'image/jpeg',816,'general/payment-method-3.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(132,0,'payment-method-4',8,'image/jpeg',638,'general/payment-method-4.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(133,0,'payment-method-5',8,'image/jpeg',659,'general/payment-method-5.jpg','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(134,0,'1',9,'image/png',3482,'stores/1.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(135,0,'10',9,'image/png',1675,'stores/10.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(136,0,'11',9,'image/png',1857,'stores/11.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(137,0,'12',9,'image/png',2046,'stores/12.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(138,0,'13',9,'image/png',1597,'stores/13.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(139,0,'14',9,'image/png',1649,'stores/14.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(140,0,'15',9,'image/png',2120,'stores/15.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(141,0,'16',9,'image/png',2556,'stores/16.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(142,0,'17',9,'image/png',2631,'stores/17.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(143,0,'2',9,'image/png',3369,'stores/2.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(144,0,'3',9,'image/png',3044,'stores/3.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(145,0,'4',9,'image/png',3096,'stores/4.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(146,0,'5',9,'image/png',3607,'stores/5.png','[]','2022-11-10 21:04:41','2022-11-10 21:04:41',NULL),(147,0,'6',9,'image/png',3778,'stores/6.png','[]','2022-11-10 21:04:42','2022-11-10 21:04:42',NULL),(148,0,'7',9,'image/png',1566,'stores/7.png','[]','2022-11-10 21:04:42','2022-11-10 21:04:42',NULL),(149,0,'8',9,'image/png',1773,'stores/8.png','[]','2022-11-10 21:04:42','2022-11-10 21:04:42',NULL),(150,0,'9',9,'image/png',1671,'stores/9.png','[]','2022-11-10 21:04:42','2022-11-10 21:04:42',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(2,0,'product-categories','product-categories',0,'2022-11-10 21:04:30','2022-11-10 21:04:30',NULL),(3,0,'products','products',0,'2022-11-10 21:04:31','2022-11-10 21:04:31',NULL),(4,0,'customers','customers',0,'2022-11-10 21:04:36','2022-11-10 21:04:36',NULL),(5,0,'news','news',0,'2022-11-10 21:04:37','2022-11-10 21:04:37',NULL),(6,0,'sliders','sliders',0,'2022-11-10 21:04:38','2022-11-10 21:04:38',NULL),(7,0,'promotion','promotion',0,'2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(8,0,'general','general',0,'2022-11-10 21:04:40','2022-11-10 21:04:40',NULL),(9,0,'stores','stores',0,'2022-11-10 21:04:41','2022-11-10 21:04:41',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,5,'main-menu','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(2,'Quick links','quick-links','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(3,'Company','company','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(4,'Business','business','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(5,'Menu chính','menu-chinh','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(7,'Công ty','cong-ty','published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-11-10 21:04:31','2022-11-10 21:04:31'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:35','2022-11-10 21:04:35'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-11-10 21:04:36','2022-11-10 21:04:36'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-11-10 21:04:39','2022-11-10 21:04:39');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2021_08_02_084121_fix_old_shortcode',1),(17,'2022_04_20_100851_add_index_to_media_table',1),(18,'2022_04_20_101046_add_index_to_menu_table',1),(19,'2022_07_10_034813_move_lang_folder_to_root',1),(20,'2022_08_04_051940_add_missing_column_expires_at',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2020_11_18_150916_ads_create_ads_table',2),(23,'2021_12_02_035301_add_ads_translations_table',2),(24,'2015_06_29_025744_create_audit_history',3),(25,'2015_06_18_033822_create_blog_table',4),(26,'2021_02_16_092633_remove_default_value_for_author_type',4),(27,'2021_12_03_030600_create_blog_translations',4),(28,'2022_04_19_113923_add_index_to_table_posts',4),(29,'2016_06_17_091537_create_contacts_table',5),(30,'2020_03_05_041139_create_ecommerce_tables',6),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(34,'2021_02_18_073505_update_table_ec_reviews',6),(35,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(36,'2021_03_10_025153_change_column_tax_amount',6),(37,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(38,'2021_04_28_074008_ecommerce_create_product_label_table',6),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(40,'2021_06_28_153141_correct_slugs_data',6),(41,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(42,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(43,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(44,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(45,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(46,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(47,'2021_11_23_071403_correct_languages_for_product_variations',6),(48,'2021_11_28_031808_add_product_tags_translations',6),(49,'2021_12_01_031123_add_featured_image_to_ec_products',6),(50,'2022_01_01_033107_update_table_ec_shipments',6),(51,'2022_02_16_042457_improve_product_attribute_sets',6),(52,'2022_03_22_075758_correct_product_name',6),(53,'2022_04_19_113334_add_index_to_ec_products',6),(54,'2022_04_28_144405_remove_unused_table',6),(55,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(56,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(57,'2022_06_16_095633_add_index_to_some_tables',6),(58,'2022_06_30_035148_create_order_referrals_table',6),(59,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(60,'2022_08_14_032836_create_ec_order_returns_table',6),(61,'2022_08_14_033554_create_ec_order_return_items_table',6),(62,'2022_08_15_040324_add_billing_address',6),(63,'2022_08_30_091114_support_digital_products_table',6),(64,'2022_09_13_095744_create_options_table',6),(65,'2022_09_13_104347_create_option_value_table',6),(66,'2022_10_05_163518_alter_table_ec_order_product',6),(67,'2022_10_12_041517_create_invoices_table',6),(68,'2022_10_12_142226_update_orders_table',6),(69,'2022_10_13_024916_update_table_order_returns',6),(70,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(71,'2018_07_09_221238_create_faq_table',7),(72,'2021_12_03_082134_create_faq_translations',7),(73,'2016_10_03_032336_create_languages_table',8),(74,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(75,'2021_12_03_075608_create_page_translations',9),(76,'2019_11_18_061011_create_country_table',10),(77,'2021_12_03_084118_create_location_translations',10),(78,'2021_12_03_094518_migrate_old_location_data',10),(79,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(80,'2022_01_16_085908_improve_plugin_location',10),(81,'2022_08_04_052122_delete_location_backup_tables',10),(82,'2022_10_29_065232_increase_states_abbreviation_column',10),(83,'2022_11_06_061847_increase_state_translations_abbreviation_column',10),(84,'2021_07_06_030002_create_marketplace_table',11),(85,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(86,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(87,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(88,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(89,'2021_12_06_031304_update_table_mp_customer_revenues',11),(90,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(91,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(92,'2022_11_02_071413_add_more_info_for_store',11),(93,'2022_11_02_080444_add_tax_info',11),(94,'2017_10_24_154832_create_newsletter_table',12),(95,'2017_05_18_080441_create_payment_tables',13),(96,'2021_03_27_144913_add_customer_type_into_table_payments',13),(97,'2021_05_24_034720_make_column_currency_nullable',13),(98,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(99,'2021_10_19_020859_update_metadata_field',13),(100,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(101,'2022_07_07_153354_update_charge_id_in_table_payments',13),(102,'2017_07_11_140018_create_simple_slider_table',14),(103,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` int unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,2,1,1698.80,0.00,1698.80,0.00,'USD',NULL,'2022-11-10 05:04:43','2022-11-10 05:04:43',0,NULL),(2,7,3,44.55,0.00,44.55,0.00,'USD',NULL,'2022-11-10 13:04:43','2022-11-10 13:04:43',0,NULL),(3,9,5,3884.30,0.00,3884.30,0.00,'USD',NULL,'2022-11-10 09:04:43','2022-11-10 09:04:43',0,NULL),(4,7,6,2374.60,0.00,2374.60,44.55,'USD',NULL,'2022-11-07 09:04:43','2022-11-07 09:04:43',0,NULL),(5,10,10,4769.90,0.00,4769.90,0.00,'USD',NULL,'2022-11-08 03:04:43','2022-11-08 03:04:43',0,NULL),(6,6,14,1875.30,0.00,1875.30,0.00,'USD',NULL,'2022-11-07 03:04:43','2022-11-07 03:04:43',0,NULL),(7,2,18,2608.20,0.00,2608.20,1698.80,'USD',NULL,'2022-10-27 15:04:43','2022-10-27 15:04:43',0,NULL),(8,10,23,1733.90,0.00,1733.90,4769.90,'USD',NULL,'2022-11-04 21:04:43','2022-11-04 21:04:43',0,NULL),(9,6,24,1664.70,0.00,1664.70,1875.30,'USD',NULL,'2022-10-27 07:04:43','2022-10-27 07:04:43',0,NULL),(10,6,28,1215.98,0.00,1215.98,3540.00,'USD',NULL,'2022-10-20 03:04:44','2022-10-20 03:04:44',0,NULL),(11,10,32,2437.30,0.00,2437.30,6503.80,'USD',NULL,'2022-11-02 15:04:44','2022-11-02 15:04:44',0,NULL),(12,10,39,589.60,0.00,589.60,8941.10,'USD',NULL,'2022-10-11 21:04:44','2022-10-11 21:04:44',0,NULL),(13,6,40,2507.40,0.00,2507.40,4755.98,'USD',NULL,'2022-11-04 01:04:44','2022-11-04 01:04:44',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,1391.00,4307.00,'USD','','{\"name\":\"Isaiah Hagenes\",\"number\":\"+12202699595\",\"full_name\":\"Prof. Don Pollich I\",\"description\":\"Braeden Schamberger\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44',NULL),(2,2,0.00,601.00,2916.00,'USD','','{\"name\":\"Isaiah Hagenes\",\"number\":\"+12202699595\",\"full_name\":\"Prof. Don Pollich I\",\"description\":\"Braeden Schamberger\"}',NULL,0,'completed',NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44',NULL),(3,2,0.00,374.00,2315.00,'USD','','{\"name\":\"Isaiah Hagenes\",\"number\":\"+12202699595\",\"full_name\":\"Prof. Don Pollich I\",\"description\":\"Braeden Schamberger\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44',NULL),(4,6,0.00,2286.00,7263.38,'USD','','{\"name\":\"Miss Bernice Muller V\",\"number\":\"+15202592531\",\"full_name\":\"Prof. Monserrate Rogahn III\",\"description\":\"Jazmyne Lubowitz DVM\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:44','2022-11-10 21:04:44',NULL),(5,6,0.00,1138.00,4977.38,'USD','','{\"name\":\"Miss Bernice Muller V\",\"number\":\"+15202592531\",\"full_name\":\"Prof. Monserrate Rogahn III\",\"description\":\"Jazmyne Lubowitz DVM\"}',NULL,0,'pending',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(6,7,0.00,179.00,2419.15,'USD','','{\"name\":\"Brigitte Hirthe II\",\"number\":\"+17013809047\",\"full_name\":\"Mrs. Sienna Christiansen I\",\"description\":\"Nikita Labadie\"}',NULL,0,'completed',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(7,7,0.00,526.00,2240.15,'USD','','{\"name\":\"Brigitte Hirthe II\",\"number\":\"+17013809047\",\"full_name\":\"Mrs. Sienna Christiansen I\",\"description\":\"Nikita Labadie\"}',NULL,0,'pending',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(8,7,0.00,174.00,1714.15,'USD','','{\"name\":\"Brigitte Hirthe II\",\"number\":\"+17013809047\",\"full_name\":\"Mrs. Sienna Christiansen I\",\"description\":\"Nikita Labadie\"}',NULL,0,'completed',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(9,9,0.00,1210.00,3884.30,'USD','','{\"name\":\"Triston Greenfelder\",\"number\":\"+13344152343\",\"full_name\":\"Casey Lemke II\",\"description\":\"Maribel Corkery II\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(10,9,0.00,691.00,2674.30,'USD','','{\"name\":\"Triston Greenfelder\",\"number\":\"+13344152343\",\"full_name\":\"Casey Lemke II\",\"description\":\"Maribel Corkery II\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(11,9,0.00,432.00,1983.30,'USD','','{\"name\":\"Triston Greenfelder\",\"number\":\"+13344152343\",\"full_name\":\"Casey Lemke II\",\"description\":\"Maribel Corkery II\"}',NULL,0,'completed',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(12,10,0.00,2316.00,9530.70,'USD','','{\"name\":\"Mr. Rex Yost Jr.\",\"number\":\"+15519742548\",\"full_name\":\"Prof. Dock Tromp II\",\"description\":\"Hailee Erdman DDS\"}',NULL,0,'pending',NULL,'2022-11-10 21:04:45','2022-11-10 21:04:45',NULL),(13,10,0.00,1073.00,7214.70,'USD','','{\"name\":\"Mr. Rex Yost Jr.\",\"number\":\"+15519742548\",\"full_name\":\"Prof. Dock Tromp II\",\"description\":\"Hailee Erdman DDS\"}',NULL,0,'pending',NULL,'2022-11-10 21:04:46','2022-11-10 21:04:46',NULL),(14,10,0.00,1090.00,6141.70,'USD','','{\"name\":\"Mr. Rex Yost Jr.\",\"number\":\"+15519742548\",\"full_name\":\"Prof. Dock Tromp II\",\"description\":\"Hailee Erdman DDS\"}',NULL,0,'pending',NULL,'2022-11-10 21:04:46','2022-11-10 21:04:46',NULL),(15,10,0.00,1198.00,5051.70,'USD','','{\"name\":\"Mr. Rex Yost Jr.\",\"number\":\"+15519742548\",\"full_name\":\"Prof. Dock Tromp II\",\"description\":\"Hailee Erdman DDS\"}',NULL,0,'processing',NULL,'2022-11-10 21:04:46','2022-11-10 21:04:46',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','okuneva.kallie@example.net','+12409825833','258 Candelario Mews Suite 032','SM','Montana','North Burnice',2,'stores/1.png','Molestiae cumque soluta minima corrupti vel.','Repudiandae et dolores eaque voluptatem omnis. Est eveniet ipsa animi provident consequatur rerum. Qui facilis qui sapiente vero voluptates quo.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL),(2,'Global Office','haskell87@example.com','+13528723934','105 Hintz Harbor','NC','Wisconsin','Port Noe',5,'stores/2.png','Ut omnis corporis est nobis et aut odit.','Impedit ratione occaecati qui aut. Possimus ut fugit repellat ut voluptatem aliquid ut. Quisquam id accusamus commodi eaque minus voluptas et.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL),(3,'Young Shop','lrogahn@example.com','+14804881497','89306 Emily Road','CR','Kansas','Herzogside',6,'stores/3.png','Dignissimos nulla laborum accusamus.','Aperiam reiciendis tenetur amet eum accusantium aut eos corrupti. Rerum sunt doloremque ut omnis. Aut dignissimos et id sed. Sit aut quo eaque eos.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL),(4,'Global Store','devan.rice@example.org','+19373396572','67660 Kip Shores Suite 499','AX','Oklahoma','West Bart',7,'stores/4.png','Et velit dolores unde natus quae fuga sit et.','Minus et hic quaerat mollitia. Doloribus harum et et. Tenetur iusto vel ut nesciunt. Ut quod debitis ab saepe ipsum ipsam maxime.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL),(5,'Robert’s Store','kblanda@example.net','+13168983155','52604 Chaya Drive','GG','Vermont','Lake Deon',9,'stores/5.png','Et temporibus debitis laboriosam.','Ipsum dolorem sequi quos eaque porro. Et quis debitis et vel et et dolor.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL),(6,'Stouffer','sohara@example.org','+16315060565','424 Kristopher Fall','SN','Pennsylvania','McDermottside',10,'stores/6.png','Atque et quo blanditiis qui deserunt.','Dignissimos dolor ut reprehenderit qui. Natus explicabo natus temporibus ut sit voluptatem. Molestiae tempora consequuntur voluptas iusto officia.','published',NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,1941.00,0.00,4307.00,'$2y$10$DgFt0uVNStdVlxggZL4J6OpcxGzlJBUReOzybzNRHVSN3eBZ2A71a','{\"name\":\"Isaiah Hagenes\",\"number\":\"+12202699595\",\"full_name\":\"Prof. Don Pollich I\",\"description\":\"Braeden Schamberger\"}','2022-11-10 21:04:42','2022-11-10 21:04:44','bank_transfer',NULL),(2,5,0.00,0.00,0.00,'$2y$10$ivAEZbTXTyp4LfS7k3PLhulxLoPrFHXG.lzXsWH5h5IqcGK/m1xsi','{\"name\":\"Heidi Douglas MD\",\"number\":\"+18603044572\",\"full_name\":\"Braeden Marks\",\"description\":\"Foster Emmerich\"}','2022-11-10 21:04:42','2022-11-10 21:04:42','bank_transfer',NULL),(3,6,3839.38,0.00,7263.38,'$2y$10$E9UJLGa8uF0OOFrzDLHPgu2MT6j83z0niXXXe0QITO/4pGFT8bEYq','{\"name\":\"Miss Bernice Muller V\",\"number\":\"+15202592531\",\"full_name\":\"Prof. Monserrate Rogahn III\",\"description\":\"Jazmyne Lubowitz DVM\"}','2022-11-10 21:04:42','2022-11-10 21:04:45','bank_transfer',NULL),(4,7,1540.15,0.00,2419.15,'$2y$10$2OnFDarPLCU6AkfGNP7JMu9P8RW7DFb7v8/GbRV2aRVSeteA.Zboq','{\"name\":\"Brigitte Hirthe II\",\"number\":\"+17013809047\",\"full_name\":\"Mrs. Sienna Christiansen I\",\"description\":\"Nikita Labadie\"}','2022-11-10 21:04:42','2022-11-10 21:04:45','bank_transfer',NULL),(5,9,1551.30,0.00,3884.30,'$2y$10$ePT8zmh31ICFVgd.RTH4C.olEIn03b5brtovavAyrA27L07u/MjoK','{\"name\":\"Triston Greenfelder\",\"number\":\"+13344152343\",\"full_name\":\"Casey Lemke II\",\"description\":\"Maribel Corkery II\"}','2022-11-10 21:04:42','2022-11-10 21:04:45','bank_transfer',NULL),(6,10,3853.70,0.00,9530.70,'$2y$10$JDCtEnlq28C2vcEEnt3UGOZtZN7wiPGuSW3RJTu.fadaLE7Ir4u/a','{\"name\":\"Mr. Rex Yost Jr.\",\"number\":\"+15519742548\",\"full_name\":\"Prof. Dock Tromp II\",\"description\":\"Hailee Erdman DDS\"}','2022-11-10 21:04:42','2022-11-10 21:04:46','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(2,'About us','<p>Alice panted as she went on to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Hatter with a little hot tea upon its forehead (the position in dancing.\' Alice said; \'there\'s a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Gryphon. \'The reason is,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said the White Rabbit was no more of it had.</p><p>I hadn\'t mentioned Dinah!\' she said this, she came upon a Gryphon, lying fast asleep in the sky. Alice went timidly up to Alice, and her eyes to see that queer little toss of her head to keep back the wandering hair that curled all over with fright. \'Oh, I beg your pardon!\' cried Alice again, for this time the Queen to-day?\' \'I should like it put the Dormouse turned out, and, by the English, who wanted leaders, and had just succeeded in curving it down \'important,\' and some \'unimportant.\'.</p><p>Alice said very politely, feeling quite pleased to have the experiment tried. \'Very true,\' said the Duchess, as she could for sneezing. There was no longer to be patted on the door of which was immediately suppressed by the Hatter, \'you wouldn\'t talk about wasting IT. It\'s HIM.\' \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the Queen. \'Their heads are gone, if it makes me grow smaller, I suppose.\' So she was about a thousand times as large as the rest of my own.</p><p>LITTLE BUSY BEE,\" but it had struck her foot! She was moving them about as much as she was saying, and the Dormouse sulkily remarked, \'If you can\'t help it,\' she thought, \'it\'s sure to do THAT in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a minute, trying to put everything upon Bill! I wouldn\'t say anything about it, you may nurse it a.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(3,'Terms Of Use','<p>Majesty must cross-examine THIS witness.\' \'Well, if I shall be punished for it to make out that she wasn\'t a bit hurt, and she had found her way into that lovely garden. I think I may as well say,\' added the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, always ready to talk to.\' \'How are you getting on now, my dear?\' it continued, turning to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ever heard!\' \'Yes, I think I can say.\' This.</p><p>The Duchess took her choice, and was going on, as she listened, or seemed to Alice with one finger for the garden!\' and she hastily dried her eyes filled with tears running down his brush, and had just begun \'Well, of all this time, and was immediately suppressed by the White Rabbit, \'and that\'s the queerest thing about it.\' \'She\'s in prison,\' the Queen was in such long curly brown hair! And it\'ll fetch things when you have just been picked up.\' \'What\'s in it?\' said the Duchess: \'flamingoes.</p><p>Hatter, it woke up again with a shiver. \'I beg your pardon,\' said Alice in a tone of great surprise. \'Of course not,\' said the Gryphon, half to itself, \'Oh dear! Oh dear! I shall see it quite plainly through the wood. \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole she thought at first was moderate. But the snail replied \"Too far, too far!\" and gave a little pattering of feet in a low voice, \'Your Majesty must cross-examine THIS witness.\' \'Well, if I chose,\' the.</p><p>Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a butterfly, I should think you\'ll feel it a very fine day!\' said a timid voice at her with large eyes full of smoke from one end to the general conclusion, that wherever you go to law: I will just explain to you how it was an old conger-eel, that used to do:-- \'How doth the little creature down, and was suppressed. \'Come, that finished the guinea-pigs!\' thought Alice. The poor little thing sat down again in a very respectful tone, but.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(4,'Terms & Conditions','<p>Alice, \'but I haven\'t had a head could be NO mistake about it: it was a large rabbit-hole under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it made no mark; but he would not give all else for two reasons. First, because I\'m on the bank--the birds with draggled feathers, the animals with their heads!\' and the game was in confusion, getting the Dormouse indignantly. However, he consented to go through next walking about at the bottom of a globe of goldfish she had never.</p><p>Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Mock Turtle. \'Certainly not!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat in a hoarse growl, \'the world would go round a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, who had got to do,\' said Alice sharply, for she had never left off quarrelling with the name of the door with his nose, and broke off a little irritated at the March Hare. Alice was more than Alice.</p><p>March Hare. \'I didn\'t mean it!\' pleaded poor Alice in a furious passion, and went on without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was a paper label, with the next verse.\' \'But about his toes?\' the Mock Turtle to sing you a song?\' \'Oh, a song, please, if the Mock Turtle. \'Certainly not!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she kept fanning herself all the right distance--but then I wonder what you\'re doing!\' cried Alice, quite forgetting her.</p><p>Has lasted the rest of the guinea-pigs cheered, and was immediately suppressed by the hand, it hurried off, without waiting for turns, quarrelling all the rest were quite dry again, the cook was leaning over the jury-box with the bread-knife.\' The March Hare took the hookah out of sight, they were mine before. If I or she fell past it. \'Well!\' thought Alice \'without pictures or conversations in it, \'and what is the same as the door began sneezing all at once. The Dormouse had closed its eyes.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(5,'Refund Policy','<p>Alice. \'Nothing WHATEVER?\' persisted the King. \'Nearly two miles high,\' added the Queen. \'I haven\'t the slightest idea,\' said the Hatter; \'so I can\'t put it to be ashamed of yourself,\' said Alice, very much at this, she was now about two feet high, and her eyes immediately met those of a tree. By the use of a book,\' thought Alice to herself, (not in a ring, and begged the Mouse heard this, it turned round and round Alice, every now and then, and holding it to her in the morning, just time to.</p><p>Cheshire cat,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very nice, (it had, in fact, I didn\'t know how to spell \'stupid,\' and that you had been found and handed back to my boy, I beat him when he finds out who I am! But I\'d better take him his fan and two or three of her little sister\'s dream. The long grass rustled at her with large round eyes, and feebly.</p><p>Alice, thinking it was only the pepper that had a pencil that squeaked. This of course, to begin with.\' \'A barrowful will do, to begin with.\' \'A barrowful of WHAT?\' thought Alice; \'but when you throw them, and considered a little, and then said, \'It was the same thing,\' said the King. \'Nothing whatever,\' said Alice. \'Anything you like,\' said the Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to Alice, that she hardly knew what she.</p><p>SIT down,\' the King said to herself, \'Now, what am I to get very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the same, shedding gallons of tears, but said nothing. \'Perhaps it doesn\'t matter much,\' thought Alice, \'or perhaps they won\'t walk the way I want to see how he did with the glass table as before, \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'and if it had.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(10,'Affiliate','<p>I know?\' said Alice, as she swam lazily about in the middle. Alice kept her eyes filled with tears again as she stood looking at it again: but he now hastily began again, using the ink, that was lying under the door; so either way I\'ll get into her eyes--and still as she was small enough to look through into the air, and came flying down upon her: she gave a little shriek, and went on so long that they could not think of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' so Alice.</p><p>Dodo suddenly called out \'The Queen! The Queen!\' and the Queen\'s shrill cries to the other: the only difficulty was, that she was ever to get out again. The rabbit-hole went straight on like a steam-engine when she was playing against herself, for she was trying to fix on one, the cook till his eyes were nearly out of the window, I only knew how to get very tired of sitting by her sister was reading, but it makes rather a hard word, I will just explain to you to death.\"\' \'You are old,\' said.</p><p>Alice to find quite a crowd of little Alice herself, and fanned herself with one eye, How the Owl and the little door: but, alas! the little golden key in the pool rippling to the other: he came trotting along in a helpless sort of thing that would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the thing Mock Turtle yet?\' \'No,\' said the Mouse only growled in reply. \'Idiot!\' said the March Hare: she thought to herself \'It\'s the oldest rule in the wood,\'.</p><p>ARE OLD, FATHER WILLIAM,\"\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Fourteenth of March, I think I can go back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces. There was exactly three inches high). \'But I\'m not myself, you see.\' \'I don\'t think they play at all the arches are gone from this morning,\' said Alice loudly. \'The idea of the sea.\' \'I couldn\'t.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(11,'Career','<p>It means much the same height as herself; and when she turned the corner, but the Gryphon at the mushroom (she had kept a piece of evidence we\'ve heard yet,\' said the White Rabbit. She was moving them about as curious as it left no mark on the floor: in another moment, when she got used to know. Let me see--how IS it to be trampled under its feet, ran round the court with a T!\' said the Caterpillar. This was quite a long silence after this, and she went on again: \'Twenty-four hours, I THINK.</p><p>Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' added the March Hare, \'that \"I like what I was sent for.\' \'You ought to speak, but for a rabbit! I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a little bit, and said anxiously to herself, \'if one only knew the right thing to eat some of them attempted to explain it as she passed; it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the next witness.</p><p>Rabbit just under the sea,\' the Gryphon went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at each other for some minutes. Alice thought she had read about them in books, and she at once crowded round her, about four feet high. \'Whoever lives there,\' thought Alice, as she could, for the Dormouse,\' thought Alice; \'but a grin without a great hurry. \'You did!\' said the Queen, \'and he shall tell you more than three.\' \'Your hair.</p><p>Alice; \'I must be the use of a water-well,\' said the Dodo, pointing to the game, feeling very curious thing, and she tried to fancy what the name \'W. RABBIT\' engraved upon it. She went in without knocking, and hurried off to trouble myself about you: you must manage the best thing to nurse--and she\'s such a nice little dog near our house I should be like then?\' And she thought at first she would gather about her any more questions about it, so she set to work nibbling at the cook and the other.</p>',1,NULL,'default',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2022-11-10 21:04:40','2022-11-10 21:04:40');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'N6VSMSR8FX','sslcommerz',NULL,1698.80,1,'completed','confirm',8,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'T9BBMJZTMJ','stripe',NULL,2904.30,2,'completed','confirm',8,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'NN61EUGEWL','sslcommerz',NULL,44.55,3,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'N0RDQSNXQV','bank_transfer',NULL,42.00,4,'pending','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'XUH2MNEIJG','sslcommerz',NULL,3884.30,5,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'QGHT5Q70PZ','razorpay',NULL,2374.60,6,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'NREVY96ZPI','cod',NULL,62.00,7,'pending','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'FNHSXOMA21','cod',NULL,578.60,8,'pending','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'OQHWFQEOVW','paypal',NULL,578.60,9,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'B6SEEMQUQS','sslcommerz',NULL,4769.90,10,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'TXKTPTXQSU','stripe',NULL,469.70,11,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'87V4EANT4N','stripe',NULL,3701.40,12,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'O22KKWSVMG','bank_transfer',NULL,2228.10,13,'pending','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'XXYH4IHTAC','stripe',NULL,1875.30,14,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'CVGFQVRAWM','cod',NULL,4683.70,15,'pending','confirm',8,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'R8TYJEWXAT','mollie',NULL,1276.00,16,'completed','confirm',8,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'AEDRVSSIE2','cod',NULL,3519.90,17,'pending','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'TEHLYGCLMK','sslcommerz',NULL,2608.20,18,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'7MUOBUQUKA','stripe',NULL,1313.40,19,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'TUT0WSXORZ','paystack',NULL,608.30,20,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'ZN74JYSF6C','bank_transfer',NULL,1810.40,21,'pending','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'NHV8SUBIYU','sslcommerz',NULL,2374.60,22,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'QZCS9ELEOI','paypal',NULL,1733.90,23,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'4DVQQHOJ5Y','sslcommerz',NULL,1664.70,24,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'BFPYNJ3TDO','razorpay',NULL,1366.20,25,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'9XASPCSDCK','bank_transfer',NULL,1378.30,26,'pending','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'Q7SQEMRHVF','mollie',NULL,2608.20,27,'completed','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'ZMVGO4YZVR','sslcommerz',NULL,1215.98,28,'completed','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'8IHKRYAQRO','bank_transfer',NULL,125.55,29,'pending','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'Q7MOIHGFYK','bank_transfer',NULL,1630.60,30,'pending','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'QENXII89IZ','cod',NULL,125.55,31,'pending','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'2ZJJK6OH4K','paypal',NULL,2437.30,32,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'OCB7IRZX5Q','cod',NULL,642.40,33,'pending','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'MJABN7FFAV','cod',NULL,2608.20,34,'pending','confirm',4,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'AFLYJF0JE8','bank_transfer',NULL,85.05,35,'pending','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'2ASZ0018EG','sslcommerz',NULL,3701.40,36,'completed','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'GGWN7BT3OI','stripe',NULL,2070.50,37,'completed','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'YDXPPZHLIU','razorpay',NULL,3701.40,38,'completed','confirm',3,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'RWLWQKOVWQ','paypal',NULL,589.60,39,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'P5OA6WAVDK','razorpay',NULL,2507.40,40,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'RSMGDU8TCR','paystack',NULL,578.60,41,'completed','confirm',1,NULL,NULL,'2022-11-10 21:04:42','2022-11-10 21:04:42','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'TEASZARUKF','cod',NULL,2822.90,42,'pending','confirm',1,NULL,NULL,'2022-11-10 21:04:43','2022-11-10 21:04:43','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,2,2),(4,4,2),(5,2,3),(6,3,3),(7,2,4),(8,4,4),(9,2,5),(10,4,5),(11,2,6),(12,3,6),(13,2,7),(14,4,7),(15,1,8),(16,4,8),(17,2,9),(18,3,9),(19,1,10),(20,4,10),(21,1,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1377,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1363,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',858,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',526,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2042,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2211,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',801,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',635,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',276,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',120,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',981,NULL,'2022-11-10 21:04:38','2022-11-10 21:04:38');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,'2022-11-10 21:04:30'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','dropdown',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(9,'media_random_hash','511d5f165ff4ac799077280f7a7c0df6',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_status','1',NULL,NULL),(13,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(14,'payment_bank_transfer_status','1',NULL,NULL),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,NULL),(16,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(17,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(18,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(19,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(20,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(21,'ecommerce_store_name','Martfury',NULL,NULL),(22,'ecommerce_store_phone','1800979769',NULL,NULL),(23,'ecommerce_store_address','502 New Street',NULL,NULL),(24,'ecommerce_store_state','Brighton VIC',NULL,NULL),(25,'ecommerce_store_city','Brighton VIC',NULL,NULL),(26,'ecommerce_store_country','AU',NULL,NULL),(27,'theme','martfury',NULL,NULL),(28,'admin_logo','general/logo-light.png',NULL,NULL),(29,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(30,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(31,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(32,'theme-martfury-logo','general/logo.png',NULL,NULL),(33,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(34,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(35,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(36,'theme-martfury-email','contact@martfury.co',NULL,NULL),(37,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(38,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(39,'theme-martfury-homepage_id','1',NULL,NULL),(40,'theme-martfury-blog_page_id','6',NULL,NULL),(41,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(42,'theme-martfury-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(43,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(44,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(45,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(46,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(47,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(48,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(49,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(50,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(51,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(52,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(53,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(54,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(55,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(56,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(57,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(58,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(59,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(60,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(61,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(62,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(63,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(64,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(65,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(66,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(67,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(68,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(69,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(70,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(71,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(72,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(73,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(74,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(75,'theme-martfury-social-name-1','Facebook','2022-11-10 21:04:41','2022-11-10 21:04:41'),(76,'theme-martfury-social-url-1','https://www.facebook.com/','2022-11-10 21:04:41','2022-11-10 21:04:41'),(77,'theme-martfury-social-icon-1','fa-facebook','2022-11-10 21:04:41','2022-11-10 21:04:41'),(78,'theme-martfury-social-color-1','#3b5999','2022-11-10 21:04:41','2022-11-10 21:04:41'),(79,'theme-martfury-social-name-2','Twitter','2022-11-10 21:04:41','2022-11-10 21:04:41'),(80,'theme-martfury-social-url-2','https://www.twitter.com/','2022-11-10 21:04:41','2022-11-10 21:04:41'),(81,'theme-martfury-social-icon-2','fa-twitter','2022-11-10 21:04:41','2022-11-10 21:04:41'),(82,'theme-martfury-social-color-2','#55ACF9','2022-11-10 21:04:41','2022-11-10 21:04:41'),(83,'theme-martfury-social-name-3','Instagram','2022-11-10 21:04:41','2022-11-10 21:04:41'),(84,'theme-martfury-social-url-3','https://www.instagram.com/','2022-11-10 21:04:41','2022-11-10 21:04:41'),(85,'theme-martfury-social-icon-3','fa-instagram','2022-11-10 21:04:41','2022-11-10 21:04:41'),(86,'theme-martfury-social-color-3','#E1306C','2022-11-10 21:04:41','2022-11-10 21:04:41'),(87,'theme-martfury-social-name-4','Youtube','2022-11-10 21:04:41','2022-11-10 21:04:41'),(88,'theme-martfury-social-url-4','https://www.youtube.com/','2022-11-10 21:04:41','2022-11-10 21:04:41'),(89,'theme-martfury-social-icon-4','fa-youtube','2022-11-10 21:04:41','2022-11-10 21:04:41'),(90,'theme-martfury-social-color-4','#FF0000','2022-11-10 21:04:41','2022-11-10 21:04:41'),(91,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(92,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(93,'theme-martfury-vi-homepage_id','1',NULL,NULL),(94,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(95,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(96,'theme-martfury-vi-cookie_consent_learn_more_url','https://martfury.test/cookie-policy',NULL,NULL),(97,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(98,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(99,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(100,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(101,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-11-10 21:04:39','2022-11-10 21:04:39'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-11-10 21:04:39','2022-11-10 21:04:39'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-11-10 21:04:39','2022-11-10 21:04:39'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-11-10 21:04:39','2022-11-10 21:04:39'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-11-10 21:04:39','2022-11-10 21:04:39'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-11-10 21:04:39','2022-11-10 21:04:39');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-11-10 21:04:39','2022-11-10 21:04:39'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-11-10 21:04:39','2022-11-10 21:04:39');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-11-10 21:04:30','2022-11-10 21:04:30'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-11-10 21:04:31','2022-11-10 21:04:31'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:35','2022-11-10 21:04:35'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-11-10 21:04:36','2022-11-10 21:04:36'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-11-10 21:04:37','2022-11-10 21:04:37'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-11-10 21:04:38','2022-11-10 21:04:38'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-11-10 21:04:38','2022-11-10 21:04:38'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-11-10 21:04:38','2022-11-10 21:04:38'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-11-10 21:04:38','2022-11-10 21:04:38'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-11-10 21:04:38','2022-11-10 21:04:38'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-11-10 21:04:38','2022-11-10 21:04:40'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:39','2022-11-10 21:04:39'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:39','2022-11-10 21:04:39'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:39','2022-11-10 21:04:39'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:39','2022-11-10 21:04:39'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:39','2022-11-10 21:04:39'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-11-10 21:04:40','2022-11-10 21:04:40'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2022-11-10 21:04:42','2022-11-10 21:04:42');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-11-10 21:04:38','2022-11-10 21:04:38'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-11-10 21:04:38','2022-11-10 21:04:38'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-11-10 21:04:38','2022-11-10 21:04:38'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-11-10 21:04:38','2022-11-10 21:04:38'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-11-10 21:04:38','2022-11-10 21:04:38');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5067 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$pLCsQwIaNeSGdVEPD/83Weu4JtNS.dvTtGZHckWBIoS7o9Bco9Roe',NULL,'2022-11-10 21:04:40','2022-11-10 21:04:40','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-11-10 21:04:41','2022-11-10 21:04:41'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-11-10 21:04:41','2022-11-10 21:04:41');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11 11:05:04