-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: salespersonsDB2P1
-- ------------------------------------------------------
-- Server version	5.7.14

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

DROP DATABASE IF EXISTS `salespersonsDB2P1`;

CREATE DATABASE `salespersonsDB2P1`;

USE `salespersonsDB2P1`;

--
-- Table structure for table `city_table`
--

--
-- Table structure for table `salesperson_city_table`
--

DROP TABLE IF EXISTS `salesperson_city_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesperson_city_table` (
  `sid` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `commission` double(4,2) DEFAULT NULL,
  PRIMARY KEY (`sid`,`city`),
  CONSTRAINT `salesperson_city_table_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `salesperson_table` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson_city_table`
--

LOCK TABLES `salesperson_city_table` WRITE;
/*!40000 ALTER TABLE `salesperson_city_table` DISABLE KEYS */;
INSERT INTO `salesperson_city_table` VALUES ('S100','Boston',4.10),('S100','New York',5.20),('S101','Boston',3.20),('S102','Dallas',3.09),('S103','Dallas',NULL),('S104','Atlanta',3.23),('S104','Boston',NULL),('S105','Boston',5.13);
/*!40000 ALTER TABLE `salesperson_city_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesperson_table`
--

DROP TABLE IF EXISTS `salesperson_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesperson_table` (
  `sid` varchar(20) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `surname` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesperson_table`
--

LOCK TABLES `salesperson_table` WRITE;
/*!40000 ALTER TABLE `salesperson_table` DISABLE KEYS */;
INSERT INTO `salesperson_table` VALUES ('S100','Tom','Smith','1969-01-20'),('S101','Betty','Jones','1979-02-12'),('S102','Mick','Clark','1988-02-07'),('S103','Anne','Collins','1971-12-14'),('S104','Jim','Flynn','1962-01-11'),('S105','Chloe','Smyth','1999-10-11'),('S106','Martin','Clinton','1981-01-02');
/*!40000 ALTER TABLE `salesperson_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-04 10:53:45
