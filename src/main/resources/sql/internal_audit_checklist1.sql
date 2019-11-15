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
-- Table structure for table `checklist1`
--

DROP TABLE IF EXISTS `checklist1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checklist1` (
  `checklist1_id` int(6) NOT NULL AUTO_INCREMENT,
  `control_id` int(11) DEFAULT NULL,
  `copy_spec_order` int(11) DEFAULT NULL,
  `cso_date` datetime DEFAULT NULL,
  `cso_remarks` varchar(500) DEFAULT NULL,
  `approved_budget_expend` int(11) DEFAULT NULL,
  `abe_date` datetime DEFAULT NULL,
  `abe_remarks` varchar(500) DEFAULT NULL,
  `approved_purchase_req` int(11) DEFAULT NULL,
  `apr_date` datetime DEFAULT NULL,
  `apr_remarks` varchar(500) DEFAULT NULL,
  `cert_of_canvass` int(11) DEFAULT NULL,
  `coc_date` datetime DEFAULT NULL,
  `coc_remarks` varchar(500) DEFAULT NULL,
  `liq_report` int(11) DEFAULT NULL,
  `lr_date` datetime DEFAULT NULL,
  `lr_remarks` varchar(500) DEFAULT NULL,
  `report_disburse` int(11) DEFAULT NULL,
  `rd_date` datetime DEFAULT NULL,
  `rd_remarks` varchar(500) DEFAULT NULL,
  `reimburse_expense_rcpt` int(11) DEFAULT NULL,
  `rer_date` datetime DEFAULT NULL,
  `rer_remarks` varchar(500) DEFAULT NULL,
  `return_cash_bal` int(11) DEFAULT NULL,
  `rcb_date` datetime DEFAULT NULL,
  `rcb_remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`checklist1_id`),
  KEY `control_id` (`control_id`),
  CONSTRAINT `checklist1_ibfk_1` FOREIGN KEY (`control_id`) REFERENCES `overall_details` (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checklist1`
--

LOCK TABLES `checklist1` WRITE;
/*!40000 ALTER TABLE `checklist1` DISABLE KEYS */;
INSERT INTO `checklist1` VALUES (1,2,0,'2019-09-26 08:00:00','',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,''),(2,3,0,'2019-09-26 08:00:00','',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,''),(3,4,1,'2019-09-19 08:00:00','',1,'2019-09-27 08:00:00','',1,NULL,'',1,NULL,'',1,'2019-09-27 08:00:00','',1,NULL,'',1,NULL,'',1,NULL,'fhjh'),(4,5,0,NULL,'good',0,'2019-09-13 08:00:00','',0,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(5,6,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(6,7,1,'2019-09-12 08:00:00','',1,NULL,'',1,'2019-09-13 08:00:00','',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'dadalkdal;'),(7,8,1,'2019-09-12 08:00:00','',1,NULL,'',1,'2019-09-13 08:00:00','',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(8,9,1,'2019-09-12 08:00:00','',1,NULL,'',1,'2019-09-13 08:00:00','',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(9,10,1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,'',1,NULL,''),(10,11,1,'2019-09-30 08:00:00','a',1,'2019-09-30 08:00:00','b',1,'2019-09-29 08:00:00','cd',1,'2019-09-29 08:00:00','d',1,'2019-09-28 08:00:00','e',1,'2019-09-28 08:00:00','f',1,'2019-09-28 08:00:00','g',1,'2019-09-27 08:00:00','h'),(11,12,1,'2019-09-01 08:00:00','a',1,'2019-09-02 08:00:00','b',1,'2019-09-03 08:00:00','c',1,'2019-09-04 08:00:00','d',1,'2019-09-05 08:00:00','e',1,'2019-09-06 08:00:00','f',1,'2019-09-07 08:00:00','g',1,'2019-09-08 08:00:00','h'),(12,13,1,'2019-09-01 08:00:00','a',1,'2019-09-02 08:00:00','b',1,'2019-09-03 08:00:00','c',1,'2019-09-04 08:00:00','d',1,'2019-09-05 08:00:00','e',1,'2019-09-06 08:00:00','f',1,'2019-09-07 08:00:00','g',1,'2019-09-08 08:00:00','h'),(13,14,1,'2019-09-01 08:00:00','aaa',1,'2019-09-02 08:00:00','bbb',1,'2019-09-03 08:00:00','ccc',1,'2019-09-04 08:00:00','ddd',1,'2019-09-05 08:00:00','eee',1,'2019-09-06 08:00:00','fff',1,'2019-09-07 08:00:00','ggg',1,'2019-09-08 08:00:00','hhh'),(14,15,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(15,16,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(16,17,1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(17,18,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,''),(18,19,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(19,20,1,'2019-10-01 08:00:00','issued by ',0,'2019-10-02 08:00:00','b',0,'2019-10-03 08:00:00','c',0,'2019-10-04 08:00:00','d',0,'2019-10-05 08:00:00','e',0,'2019-10-06 08:00:00','f',0,'2019-10-07 08:00:00','g',0,'2019-10-08 08:00:00','h'),(20,21,0,NULL,'',0,NULL,'',0,NULL,'',1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(21,22,1,NULL,'',1,NULL,'',1,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(22,23,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(23,24,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(24,25,1,'2019-10-25 08:00:00','',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(25,26,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,''),(26,27,0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'',0,NULL,'');
/*!40000 ALTER TABLE `checklist1` ENABLE KEYS */;
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
