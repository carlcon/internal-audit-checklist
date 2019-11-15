-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: internal_audit
-- ------------------------------------------------------
-- Server version	5.6.45-log

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
-- Table structure for table `additional_req`
--

DROP TABLE IF EXISTS `additional_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `additional_req` (
  `checklist3_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_id` int(11) DEFAULT NULL,
  `program_act` int(11) DEFAULT NULL,
  `pa_date` datetime DEFAULT NULL,
  `pa_remarks` varchar(500) DEFAULT NULL,
  `itinerary_travel` int(11) DEFAULT NULL,
  `it_date` datetime DEFAULT NULL,
  `it_remarks` varchar(500) DEFAULT NULL,
  `applicants_list` int(11) DEFAULT NULL,
  `al_date` datetime DEFAULT NULL,
  `al_remarks` varchar(500) DEFAULT NULL,
  `narrative_report` int(11) DEFAULT NULL,
  `nr_date` datetime DEFAULT NULL,
  `nr_remarks` varchar(500) DEFAULT NULL,
  `act_photos` int(11) DEFAULT NULL,
  `ap_date` datetime DEFAULT NULL,
  `ap_remarks` varchar(500) DEFAULT NULL,
  `attendance_sheet` int(11) DEFAULT NULL,
  `as_date` datetime DEFAULT NULL,
  `as_remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`checklist3_id`),
  KEY `control_id` (`control_id`),
  CONSTRAINT `additional_req_ibfk_1` FOREIGN KEY (`control_id`) REFERENCES `overall_details` (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_req`
--

LOCK TABLES `additional_req` WRITE;
/*!40000 ALTER TABLE `additional_req` DISABLE KEYS */;
INSERT INTO `additional_req` VALUES (1,5,0,'2019-09-26 08:00:00','k;lfdskfl;sakl',1,NULL,'',1,NULL,'',1,NULL,'',0,NULL,'',0,NULL,'mlvjfla'),(2,6,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(3,7,0,NULL,'',0,'2019-09-12 08:00:00','',1,NULL,'',1,NULL,'',0,NULL,'',0,NULL,''),(4,8,1,NULL,'aa',1,NULL,'dsf',1,NULL,'fasa',1,NULL,'f',1,NULL,'fasa',1,'2019-09-27 08:00:00','sf'),(5,9,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(6,10,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(7,11,1,'2019-09-16 08:00:00','a',0,'2019-09-17 08:00:00','b',1,'2019-09-20 08:00:00','e',1,'2019-09-19 08:00:00','d',1,'2019-09-20 08:00:00','e',1,'2019-09-21 08:00:00','g'),(8,12,1,'2019-09-14 08:00:00','n',1,'2019-09-15 08:00:00','o',1,'2019-09-18 08:00:00','r',1,'2019-09-17 08:00:00','q',1,'2019-09-18 08:00:00','r',1,'2019-09-19 08:00:00','s'),(9,13,1,'2019-09-14 08:00:00','n',1,'2019-09-15 08:00:00','o',1,'2019-09-18 08:00:00','r',1,'2019-09-17 08:00:00','q',1,'2019-09-18 08:00:00','r',1,'2019-09-19 08:00:00','s'),(10,14,1,'2019-09-14 08:00:00','nnn',1,'2019-09-15 08:00:00','ooo',1,'2019-09-16 08:00:00','ppp',1,'2019-09-17 08:00:00','qqq',1,'2019-09-18 08:00:00','rrr',1,'2019-09-19 08:00:00','sss'),(11,15,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(12,16,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(13,17,0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,'',0,NULL,'',0,NULL,''),(14,18,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,''),(15,19,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(16,20,1,'2019-10-14 08:00:00','ffyghh',1,'2019-10-15 08:00:00','vhgvghvhg',1,'2019-10-16 08:00:00','p',1,'2019-10-17 08:00:00','q',1,'2019-10-18 08:00:00','r',1,'2019-10-19 08:00:00','s'),(17,21,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(18,22,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(19,23,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(20,24,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(21,25,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(22,26,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(23,27,1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'');
/*!40000 ALTER TABLE `additional_req` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16  6:32:50
