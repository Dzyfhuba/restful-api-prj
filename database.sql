-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: rest_api_prj
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classroom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (2,'Lecturer 2','Calculus','2022-01-23 21:26:33','2022-01-23 21:26:33'),(3,'Teacher 1','Chemical','2022-01-23 21:52:33','2022-01-23 21:52:33');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_01_22_123000_create_students_table',1),(6,'2022_01_24_032003_create_classrooms_table',1),(7,'2022_01_24_032805_create_presences_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `presences`
--

DROP TABLE IF EXISTS `presences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presences` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_classroom` bigint unsigned NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('present','not present','permit','sick','forget') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'forget',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `presences_id_classroom_foreign` (`id_classroom`),
  KEY `presences_number_foreign` (`number`),
  CONSTRAINT `presences_id_classroom_foreign` FOREIGN KEY (`id_classroom`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `presences_number_foreign` FOREIGN KEY (`number`) REFERENCES `students` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presences`
--

LOCK TABLES `presences` WRITE;
/*!40000 ALTER TABLE `presences` DISABLE KEYS */;
INSERT INTO `presences` VALUES (2,2,'24032001001','not present','2022-01-23 22:03:14','2022-01-23 22:04:47');
/*!40000 ALTER TABLE `presences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_number_unique` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Archibald Jakubowski','21061994001','21-06-1994','2022-01-23 20:49:33','2022-01-23 20:49:33'),(2,'Haylee Donnelly III','10051997001','10-05-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(3,'Oma Gulgowski','05111995001','05-11-1995','2022-01-23 20:49:33','2022-01-23 20:49:33'),(4,'Jayden Murray','10042001001','10-04-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(5,'Mr. Magnus Stroman PhD','08111992001','08-11-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(6,'Dr. Golden Kozey III','21122001001','21-12-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(7,'Devan Gerlach','28062000001','28-06-2000','2022-01-23 20:49:33','2022-01-23 20:49:33'),(8,'Miss Tanya Schimmel','02011998001','02-01-1998','2022-01-23 20:49:33','2022-01-23 20:49:33'),(9,'Ole Mitchell','06051997001','06-05-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(10,'Miss Thalia Jacobi I','16071993001','16-07-1993','2022-01-23 20:49:33','2022-01-23 20:49:33'),(11,'Aliyah Purdy','18041998001','18-04-1998','2022-01-23 20:49:33','2022-01-23 20:49:33'),(12,'Alexane Hammes','19021999001','19-02-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(13,'Mr. Stewart Keeling PhD','11122000001','11-12-2000','2022-01-23 20:49:33','2022-01-23 20:49:33'),(14,'Dee Roob','03031993001','03-03-1993','2022-01-23 20:49:33','2022-01-23 20:49:33'),(15,'Martin Swaniawski','27112001001','27-11-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(16,'Kameron Thompson','20111999001','20-11-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(17,'Garrett Prohaska','28051999001','28-05-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(18,'Lois O\'Reilly III','11081992001','11-08-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(19,'Gina Wiegand','07031994001','07-03-1994','2022-01-23 20:49:33','2022-01-23 20:49:33'),(20,'Jerod Borer V','04111994001','04-11-1994','2022-01-23 20:49:33','2022-01-23 20:49:33'),(21,'Amiya Torphy','11062000001','11-06-2000','2022-01-23 20:49:33','2022-01-23 20:49:33'),(22,'Kamren Reilly','15021998001','15-02-1998','2022-01-23 20:49:33','2022-01-23 20:49:33'),(23,'Jalyn Runolfsdottir PhD','20101999001','20-10-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(24,'Claire Ondricka','04081995001','04-08-1995','2022-01-23 20:49:33','2022-01-23 20:49:33'),(25,'Hassie Reinger PhD','27031992001','27-03-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(26,'Lenora Reilly PhD','03101997001','03-10-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(27,'Karelle McDermott III','16091995001','16-09-1995','2022-01-23 20:49:33','2022-01-23 20:49:33'),(28,'Jarod Tillman','18041996001','18-04-1996','2022-01-23 20:49:33','2022-01-23 20:49:33'),(29,'Demarco Tremblay III','19081999001','19-08-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(30,'Danyka Conn DVM','14112001001','14-11-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(31,'Dr. Reta Friesen DDS','15011997001','15-01-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(32,'Dr. Yasmeen Grimes III','25012000001','25-01-2000','2022-01-23 20:49:33','2022-01-23 20:49:33'),(33,'Violet Kilback II','07022000001','07-02-2000','2022-01-23 20:49:33','2022-01-23 20:49:33'),(34,'Elias Rutherford','11061992001','11-06-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(35,'Esmeralda Lind','15021992001','15-02-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(36,'Elisha Hoppe','29071998001','29-07-1998','2022-01-23 20:49:33','2022-01-23 20:49:33'),(37,'Mr. Scot Howell Jr.','17071994001','17-07-1994','2022-01-23 20:49:33','2022-01-23 20:49:33'),(38,'Lacey Zulauf','13121997001','13-12-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(39,'Francisca Altenwerth','24091999001','24-09-1999','2022-01-23 20:49:33','2022-01-23 20:49:33'),(40,'Stevie Considine','28041997001','28-04-1997','2022-01-23 20:49:33','2022-01-23 20:49:33'),(41,'Kendrick Kuhic','01031995001','01-03-1995','2022-01-23 20:49:33','2022-01-23 20:49:33'),(42,'Alisa Denesik III','13121992001','13-12-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(43,'Dr. Alda Kuphal','08041992001','08-04-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(44,'Mr. Winfield O\'Conner V','28071992001','28-07-1992','2022-01-23 20:49:33','2022-01-23 20:49:33'),(45,'Ms. Margaret Abernathy','02071993001','02-07-1993','2022-01-23 20:49:33','2022-01-23 20:49:33'),(46,'Madalyn Dietrich PhD','10051993001','10-05-1993','2022-01-23 20:49:33','2022-01-23 20:49:33'),(47,'Alda Nitzsche','30011996001','30-01-1996','2022-01-23 20:49:33','2022-01-23 20:49:33'),(48,'Minerva Kling II','12062001001','12-06-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(49,'Johanna Kshlerin','22121995001','22-12-1995','2022-01-23 20:49:33','2022-01-23 20:49:33'),(50,'Phoebe Waters','24032001001','24-03-2001','2022-01-23 20:49:33','2022-01-23 20:49:33'),(51,'Hafidz Ubaidillah','21022001001','21-02-2001','2022-01-24 00:28:50','2022-01-24 00:28:50');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2022-01-24 14:40:12
