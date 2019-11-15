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
-- Table structure for table `proofs`
--

DROP TABLE IF EXISTS `proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proofs` (
  `proof_id` int(11) NOT NULL AUTO_INCREMENT,
  `control_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `supplier` varchar(255) DEFAULT NULL,
  `receipts` varchar(255) DEFAULT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`proof_id`),
  KEY `control_id` (`control_id`),
  KEY `modified_by` (`modified_by`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `proofs_ibfk_1` FOREIGN KEY (`control_id`) REFERENCES `overall_details` (`control_id`),
  CONSTRAINT `proofs_ibfk_2` FOREIGN KEY (`modified_by`) REFERENCES `users` (`user_id`),
  CONSTRAINT `proofs_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proofs`
--

LOCK TABLES `proofs` WRITE;
/*!40000 ALTER TABLE `proofs` DISABLE KEYS */;
INSERT INTO `proofs` VALUES (7,14,NULL,'','','',0.00,'','',NULL,NULL,NULL),(12,19,'2019-09-30 08:00:00','a','b','c',200.00,'d','e',NULL,NULL,NULL),(13,19,'2019-09-29 08:00:00','f','g','h',300.00,'i','j',NULL,NULL,NULL),(14,19,'2019-09-28 08:00:00','das','pw','cas',400.00,'kds','wow',NULL,NULL,NULL),(16,15,NULL,'','','',0.00,'','',NULL,NULL,NULL),(19,21,NULL,'','','',0.00,'','',1,NULL,NULL),(22,24,NULL,'','','',0.00,'','',1,NULL,NULL),(24,26,NULL,'','','',0.00,'','',1,NULL,NULL),(27,27,NULL,'','','',0.00,'','',NULL,NULL,NULL),(28,27,NULL,'','','',0.00,'','',NULL,NULL,NULL),(29,20,'2019-10-20 08:00:00','t','u','v',400.00,'','',NULL,NULL,NULL),(30,23,NULL,'','','',0.00,'','',NULL,NULL,NULL),(31,23,NULL,'','','',0.00,'','',NULL,NULL,NULL),(32,23,NULL,'','','',0.00,'','',NULL,NULL,NULL),(33,25,NULL,'','','',0.00,'','',NULL,NULL,NULL),(35,22,NULL,'','','',0.00,'','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `proofs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-16  6:32:49
