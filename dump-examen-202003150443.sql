-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: examen
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_03_14_225601_create_profesiones_table',1),(4,'2020_03_14_230107_add__f_k_id_profesion_to_usuarios',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `profesiones`
--

DROP TABLE IF EXISTS `profesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesiones` (
  `idProfesion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreProfesion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idProfesion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesiones`
--

LOCK TABLES `profesiones` WRITE;
/*!40000 ALTER TABLE `profesiones` DISABLE KEYS */;
INSERT INTO `profesiones` VALUES (1,'Molestiae ullam quam iste molestiae.','2020-03-15 17:00:20','2020-03-15 17:00:20'),(2,'Illum iste et.','2020-03-15 17:00:20','2020-03-15 17:00:20'),(3,'Magni qui aliquam.','2020-03-15 17:00:20','2020-03-15 17:00:20'),(4,'Qui ut cum.','2020-03-15 17:00:20','2020-03-15 17:00:20'),(5,'Voluptas et cumque aperiam.','2020-03-15 17:00:21','2020-03-15 17:00:21');
/*!40000 ALTER TABLE `profesiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idProfesion` int(10) unsigned DEFAULT NULL,
  `nombreUsuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidoPaternoUsuario` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidoMaternoUsuario` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefonoUsuario` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccionUsuario` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `usuarios_email_unique` (`email`),
  KEY `usuarios_idprofesion_foreign` (`idProfesion`),
  CONSTRAINT `usuarios_idprofesion_foreign` FOREIGN KEY (`idProfesion`) REFERENCES `profesiones` (`idProfesion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,'userTest','apellidoTest','apellidoTest','5555555555','Cerrada reyna xochitl no 26','prueba@correo.com','http://facebook.com/prueba','http://twitter.com/prueba','http://instagram.com/prueba','$2y$10$IgQli1EPtsOzRXBX8BbcDejuxkndbjm3kRVhLcVujYz88NvqZpS0C','CKYVfypt13','2020-03-15 17:00:21','2020-03-15 17:00:21'),(2,1,'Luigi Doyle','Hudson','Kassulke','(897) 469-9759','7871 Christina Light Apt. 390\nSouth Caroline, IA 12926','zbogisich@example.org','http://nitzsche.biz/molestiae-quae-perspiciatis-aspernatur-laborum','http://www.auer.com/atque-quisquam-id-quis-tempora-earum-aperiam-quod.html','http://reynolds.com/','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','Ol8Zdb6YI5','2020-03-15 17:00:21','2020-03-15 17:00:21'),(3,1,'Corine Douglas MD','Murray','Yost','429.969.2784','64469 Catharine Brooks\nCarrollshire, NC 76426-6911','milford31@example.net','http://www.kutch.net/earum-eos-repudiandae-dolores-quod.html','http://wolf.net/incidunt-voluptatem-excepturi-cum-autem','http://www.rath.biz/ab-a-veniam-sequi-eos-corporis-deleniti','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','4yeX7WvnAU','2020-03-15 17:00:21','2020-03-15 17:00:21'),(4,1,'Jana Schiller','Connelly','Torp','+1 (210) 776-4991','81300 Stiedemann Hill Apt. 673\nGulgowskiland, GA 52341-8094','shanahan.jennie@example.net','http://www.becker.org/et-temporibus-veritatis-ea-suscipit-velit','http://glover.info/iure-vitae-non-et-dolorum-nihil-ducimus-et','http://www.rau.biz/quae-quaerat-aut-est-sint-repellendus-qui','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','inGqP7hf2Q','2020-03-15 17:00:21','2020-03-15 17:00:21'),(5,1,'Mr. Dax Ritchie','Schaefer','Bogan','514.378.1075 x96140','26021 Beatty Ways Suite 346\nNorth Jessestad, KS 12953','dickinson.malika@example.org','http://www.fay.com/','https://www.kiehn.com/excepturi-magnam-ut-rerum-et-deleniti-et-voluptatem','http://jacobs.com/architecto-illo-ex-qui-itaque','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','q9vBQTpjGs','2020-03-15 17:00:21','2020-03-15 17:00:21'),(6,1,'Polly Goodwin','Deckow','Abernathy','+15178732361','92190 Sheila Pine Apt. 426\nBoehmport, WV 04703','saul.waters@example.org','http://williamson.com/non-libero-ducimus-velit-voluptas-dolores-molestiae-quis-quibusdam','http://rohan.com/soluta-non-velit-omnis-rerum-cum-earum.html','http://www.pollich.com/velit-expedita-voluptatibus-deserunt-ea-beatae-voluptas','$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm','NOHlg4TSPZ','2020-03-15 17:00:21','2020-03-15 17:00:21');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'examen'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15  5:01:25
