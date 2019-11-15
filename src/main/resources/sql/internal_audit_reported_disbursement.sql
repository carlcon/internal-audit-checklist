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
-- Table structure for table `reported_disbursement`
--

DROP TABLE IF EXISTS `reported_disbursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reported_disbursement` (
  `checklist2_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_id` int(11) DEFAULT NULL,
  `supplies_n_materials` int(11) DEFAULT NULL,
  `snm_date` datetime DEFAULT NULL,
  `snm_remarks` varchar(500) DEFAULT NULL,
  `food_expenses` int(11) DEFAULT NULL,
  `fe_date` datetime DEFAULT NULL,
  `fe_remarks` varchar(500) DEFAULT NULL,
  `transpo_fare` int(11) DEFAULT NULL,
  `tf_date` datetime DEFAULT NULL,
  `tf_remarks` varchar(500) DEFAULT NULL,
  `venue` int(11) DEFAULT NULL,
  `v_date` datetime DEFAULT NULL,
  `v_remarks` varchar(500) DEFAULT NULL,
  `other_expenses` int(11) DEFAULT NULL,
  `oe_date` datetime DEFAULT NULL,
  `oe_remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`checklist2_id`),
  KEY `control_id` (`control_id`),
  CONSTRAINT `reported_disbursement_ibfk_1` FOREIGN KEY (`control_id`) REFERENCES `overall_details` (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reported_disbursement`
--

LOCK TABLES `reported_disbursement` WRITE;
/*!40000 ALTER TABLE `reported_disbursement` DISABLE KEYS */;
INSERT INTO `reported_disbursement` VALUES (1,3,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'good'),(2,4,0,'2019-09-26 08:00:00','',1,NULL,'',0,NULL,'',1,NULL,'',0,NULL,''),(3,5,0,'2019-09-04 08:00:00','',1,NULL,'',0,'2019-09-11 08:00:00','fk;fsd',1,NULL,'',0,NULL,''),(4,6,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(5,7,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',1,'2019-09-13 08:00:00',''),(6,8,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(7,9,1,NULL,'',1,'2019-09-28 08:00:00','',1,NULL,'',1,NULL,'',1,NULL,''),(8,10,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(9,11,1,'2019-09-01 08:00:00','a',1,'2019-09-02 08:00:00','b',1,'2019-09-03 08:00:00','c',1,'2019-09-04 08:00:00','d',1,'2019-09-05 08:00:00','e'),(10,12,1,'2019-09-09 08:00:00','i',1,'2019-09-10 08:00:00','j',1,'2019-09-11 08:00:00','k',1,'2019-09-12 08:00:00','l',1,'2019-09-13 08:00:00','m'),(11,13,1,'2019-09-09 08:00:00','i',1,'2019-09-10 08:00:00','j',1,'2019-09-11 08:00:00','k',1,'2019-09-12 08:00:00','l',1,'2019-09-13 08:00:00','m'),(12,14,0,'2019-09-09 08:00:00','iii',1,'2019-09-10 08:00:00','jjj',1,'2019-09-11 08:00:00','kkk',1,'2019-09-12 08:00:00','lll',1,'2019-09-13 08:00:00','mmm'),(13,15,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(14,16,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(15,17,0,NULL,'',1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(16,18,1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(17,19,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(18,20,0,'2019-10-09 08:00:00','i',0,'2019-10-10 08:00:00','j',0,'2019-10-11 08:00:00','k',1,'2019-10-12 08:00:00','l',1,'2019-10-13 08:00:00','m'),(19,21,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(20,22,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(21,23,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(22,24,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(23,25,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(24,26,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(25,27,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'');
/*!40000 ALTER TABLE `reported_disbursement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16  6:32:51
