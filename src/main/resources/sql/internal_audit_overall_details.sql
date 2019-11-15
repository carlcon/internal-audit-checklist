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
-- Table structure for table `overall_details`
--

DROP TABLE IF EXISTS `overall_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `overall_details` (
  `control_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_no` varchar(45) DEFAULT NULL,
  `request_type` int(11) DEFAULT NULL,
  `prepared_by` int(11) DEFAULT NULL,
  `inspected_by` int(11) DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `acctble_officer_Fn` varchar(255) DEFAULT NULL,
  `acctble_officer_Mi` varchar(45) DEFAULT NULL,
  `acctble_officer_Ln` varchar(45) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `act_purpose` varchar(255) DEFAULT NULL,
  `act_started` datetime DEFAULT NULL,
  `act_ended` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `approved_budget` double(12,2) DEFAULT NULL,
  `tot_reported_disburse` double(12,2) DEFAULT NULL,
  `received_amt` double(12,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `docs_in` datetime DEFAULT NULL,
  `docs_out` datetime DEFAULT NULL,
  PRIMARY KEY (`control_id`),
  KEY `prepared_by` (`prepared_by`),
  KEY `inspected_by` (`inspected_by`),
  KEY `verified_by` (`verified_by`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `overall_details_ibfk_1` FOREIGN KEY (`prepared_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `overall_details_ibfk_2` FOREIGN KEY (`inspected_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `overall_details_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `overall_details_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overall_details`
--

LOCK TABLES `overall_details` WRITE;
/*!40000 ALTER TABLE `overall_details` DISABLE KEYS */;
INSERT INTO `overall_details` VALUES (1,NULL,1,1,NULL,NULL,'julius','c','concepcion','','','',NULL,NULL,'2019-09-22 10:45:15',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,NULL,NULL),(2,NULL,3,1,NULL,NULL,'julius','c','','','','',NULL,NULL,'2019-09-23 11:34:55',NULL,NULL,NULL,2,NULL,200000.00,0.00,0.00,NULL,NULL,NULL),(3,NULL,3,1,NULL,NULL,'julius','c','','','','',NULL,NULL,'2019-09-23 11:40:51',NULL,NULL,NULL,2,NULL,200000.00,0.00,0.00,NULL,NULL,NULL),(4,NULL,3,1,NULL,NULL,'','','','','','',NULL,NULL,'2019-09-23 11:44:21',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,NULL,NULL),(5,NULL,3,1,NULL,NULL,'julius','c','concepcion','','','',NULL,NULL,'2019-09-23 11:51:03',NULL,NULL,NULL,2,NULL,0.00,0.00,2000000.00,NULL,NULL,NULL),(6,NULL,1,1,NULL,NULL,'Marianne','R','Guinto','Director','Acess','Cores',NULL,NULL,'2019-09-24 23:30:06',NULL,NULL,NULL,2,'2019-09-30 08:00:00',10000.00,50000.00,20000.00,NULL,NULL,NULL),(7,NULL,1,1,NULL,NULL,'julius2','c','concepcion','jdlkasjdlkas','','',NULL,NULL,'2019-09-25 00:40:57',NULL,NULL,NULL,2,NULL,0.00,0.00,2000000.00,NULL,NULL,NULL),(8,NULL,1,1,NULL,NULL,'carl','c','concepcion','jdlkasjdlkas','','',NULL,NULL,'2019-09-25 00:53:24',NULL,NULL,NULL,2,NULL,0.00,0.00,2000000.00,NULL,NULL,NULL),(9,NULL,1,1,NULL,NULL,'angela','R.','Enriquez','sec','internal audit','cores',NULL,NULL,'2019-09-25 16:37:41',NULL,NULL,NULL,2,NULL,0.00,0.00,500.00,NULL,NULL,NULL),(10,NULL,1,1,NULL,NULL,'carlson','','tabije','jfdsalk','fldsa','wala',NULL,NULL,'2019-09-25 17:11:54',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,NULL,NULL),(11,NULL,1,1,NULL,NULL,'joshua','N','Delgado','secretary','acess','corres\\\\',NULL,NULL,'2019-09-25 17:22:06',NULL,NULL,NULL,2,'2019-09-30 08:00:00',200000.00,4000000.00,3000000.00,NULL,NULL,NULL),(12,NULL,1,1,NULL,NULL,'Joshua','N','Delgado','pres','access','cores','2019-09-29 08:00:00','2019-09-30 08:00:00','2019-09-25 17:52:35',NULL,NULL,NULL,2,'2019-09-30 08:00:00',100.00,500.00,200.00,NULL,NULL,NULL),(13,NULL,NULL,1,NULL,NULL,'Joshua','N','Delgado','pres','access','cores',NULL,NULL,'2019-09-26 08:00:07',NULL,NULL,NULL,2,'2019-09-30 08:00:00',100.00,500.00,200.00,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,'Abegail','A','Mandapat','secretary','access2','foundation day','2019-09-27 08:00:00','2019-09-28 08:00:00','2019-10-02 02:22:24',NULL,NULL,NULL,2,'2019-09-29 08:00:00',3000000.00,500000.00,400000.00,NULL,'2019-09-30 08:00:00','2019-10-08 08:00:00'),(15,NULL,1,NULL,NULL,2,'Angela','R','Enriquez','','ewan','',NULL,NULL,'2019-10-02 03:23:13',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-09-16 08:00:00','2019-09-29 08:00:00'),(16,NULL,1,1,NULL,NULL,'','','','','','',NULL,NULL,'2019-09-29 21:40:00',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,NULL,NULL),(17,NULL,1,1,NULL,NULL,'julius ','c','concepcion','','','',NULL,NULL,'2019-09-29 23:51:25',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-09-30 08:00:00','2019-10-03 08:00:00'),(18,NULL,1,1,NULL,NULL,'Julius','C','Concepcion','','','',NULL,NULL,'2019-09-29 23:54:28',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-09-26 08:00:00','2019-09-30 08:00:00'),(19,NULL,1,NULL,3,NULL,'Julius','C','Concepcion','pres','acces','nothing',NULL,NULL,'2019-10-02 02:35:02',NULL,NULL,NULL,2,NULL,500.00,100.00,200.00,NULL,'2019-09-15 08:00:00','2019-09-23 08:00:00'),(20,'2019-09-001',1,NULL,1,NULL,'Marianne Elise','R','Guinto','Vice','ACCESS','Debate','2019-10-16 08:00:00','2019-10-26 08:00:00','2019-10-05 14:40:08',NULL,NULL,NULL,3,'2019-10-30 08:00:00',100.00,300.00,200.00,NULL,'2019-10-03 08:00:00','2019-10-05 08:00:00'),(21,'2019-09-021',3,5,NULL,NULL,'angela','r','Enriquez','','PUP','',NULL,NULL,'2019-10-02 14:50:13',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-10-18 08:00:00','2019-10-13 08:00:00'),(22,'2019-09-022',3,NULL,NULL,NULL,'jason','a','medina','','','',NULL,NULL,'2019-10-30 15:38:39',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-10-31 08:00:00','2019-11-07 08:00:00'),(23,'2019-09-023',1,NULL,NULL,NULL,'angela','r','enriquez','','','',NULL,NULL,'2019-10-05 15:38:52',NULL,NULL,NULL,1,NULL,0.00,0.00,0.00,NULL,NULL,NULL),(24,'2019-09-024',2,3,NULL,NULL,'Joshua','M.','Delgado','','PUP','',NULL,NULL,'2019-10-02 15:23:31',NULL,NULL,NULL,1,NULL,0.00,0.00,0.00,NULL,'2019-10-17 08:00:00',NULL),(25,'2019-09-025',1,NULL,NULL,NULL,'Clarisse','O.','Quilapio','Faculty','PUP','',NULL,NULL,'2019-10-23 18:13:46',NULL,NULL,NULL,1,NULL,90.00,1500.00,1000.00,NULL,'2019-10-18 08:00:00',NULL),(26,'2019-09-026',1,3,NULL,NULL,'Clarisse','O.','Quilapio','Faculty','PUP','',NULL,NULL,'2019-10-02 15:26:29',NULL,NULL,NULL,2,NULL,2000.00,1500.00,1000.00,NULL,'2019-10-18 08:00:00',NULL),(27,'2019-09-027',1,NULL,1,NULL,'Julius','r','Concepcion','','PUP','',NULL,NULL,'2019-10-02 16:49:29',NULL,NULL,NULL,2,NULL,0.00,0.00,0.00,NULL,'2019-10-22 08:00:00','2019-10-22 08:00:00');
/*!40000 ALTER TABLE `overall_details` ENABLE KEYS */;
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
