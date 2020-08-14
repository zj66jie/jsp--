-- MySQL dump 10.13  Distrib 5.6.44, for Win64 (x86_64)
--
-- Host: localhost    Database: keshe
-- ------------------------------------------------------
-- Server version	5.6.44-log

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'01','01'),(2,'02','02'),(3,'03','03');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jscore`
--

DROP TABLE IF EXISTS `jscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `five` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jscore`
--

LOCK TABLES `jscore` WRITE;
/*!40000 ALTER TABLE `jscore` DISABLE KEYS */;
INSERT INTO `jscore` VALUES (1,'011','英语','20','20','20','20','20'),(2,'011','英语','20','20','20','20','20'),(3,'011','英语','5','5','5','5','5');
/*!40000 ALTER TABLE `jscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tscore` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,'011','英语',100),(2,'011','英语',100),(3,'011','英语',25);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sjscore`
--

DROP TABLE IF EXISTS `sjscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sjscore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xingming` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `three` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `four` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `five` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sjscore`
--

LOCK TABLES `sjscore` WRITE;
/*!40000 ALTER TABLE `sjscore` DISABLE KEYS */;
INSERT INTO `sjscore` VALUES (1,'081','011','赵敏','英语','20','20','20','20','20','100'),(2,'081','011','赵敏','英语','20','20','20','20','20','100'),(3,'081','011','赵敏','英语','5','5','5','5','5','25');
/*!40000 ALTER TABLE `sjscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'081','01'),(2,'082','2'),(3,'083','3'),(4,'084','04'),(5,'089','89'),(6,'085','05');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `psd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'011','1'),(2,'012','2'),(3,'013','3'),(4,'014','14'),(5,'015','15');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherke`
--

DROP TABLE IF EXISTS `teacherke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacherke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xingming` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kecheng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherke`
--

LOCK TABLES `teacherke` WRITE;
/*!40000 ALTER TABLE `teacherke` DISABLE KEYS */;
INSERT INTO `teacherke` VALUES (1,'011','081','赵敏','英语'),(2,'011','082','赵敏','英语'),(3,'012','081','王刚','数学'),(4,'012','083','王刚','数学'),(5,'013','081','李阳','物理');
/*!40000 ALTER TABLE `teacherke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'keshe'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-14 16:53:21
