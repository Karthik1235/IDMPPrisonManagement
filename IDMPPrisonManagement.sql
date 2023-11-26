CREATE DATABASE  IF NOT EXISTS `prisonmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `prisonmanagement`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: prisonmanagement
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addrId` int NOT NULL AUTO_INCREMENT,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`addrId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'345 Winchell Pl','Anderson','IN'),(2,'1298 E Smathers St','Benton','AR'),(3,'6925 N Parkland Ave','Puyallup','WA'),(4,'83 d\'Urberville Ln','Casterbridge','GA'),(5,'22717 E 73rd Ave','Dubuque','IA'),(6,'1778 N Bovine Ave','Peoria','IL'),(7,'1234 Main St','Normal','IL'),(8,'1877 Ete Ct','Frogtown','LA'),(9,'717 E Michigan Ave','Chicago','IL'),(10,'4562 Rt 78 E','Vancouver','WA'),(11,'2732 Baker Blvd.','Eugene','OR'),(12,'City Center Plaza 516 Main St.','Elgin','OR'),(13,'12 Orchestra Terrace','Walla Walla','WA'),(14,'87 Polk St. Suite 5','San Francisco','CA'),(15,'89 Chiaroscuro Rd.','Portland','OR'),(16,'2743 Bering St.','Anchorage','AK'),(17,'2817 Milton Dr.','Albuquerque','NM'),(18,'187 Suffolk Ln.','Boise','ID'),(19,'P.O. Box 555','Lander','WY'),(20,'89 Jefferson Way Suite 2','Providence','RI'),(21,'alvin','boston','MA'),(22,'12 Tremor Street','Boston','MA'),(23,'12 Tremor Street','Boston','MA'),(24,'12 Tremor Street','Boston','MA'),(28,'45','fgd','fd'),(29,'45 ABCD Street','Boston','MA'),(30,'45 ABCD Street','Boston','MA'),(31,'45 ABCD Street','Boston','MA'),(32,'245 Tremor Street','Cambridge','MA'),(33,'1453 ABC Street','Boston','MA'),(34,'23 B Street','NY','NY'),(35,'1209 Street','Boston','MA'),(36,'209 Street','Boston','MA'),(37,'30 Street','Boston','MA'),(38,'23 Beacon Street','Boston','MA'),(39,'ABC Street','Boston','MA'),(40,'alvin','boston','MA'),(41,'alvin','boston','MA'),(42,'alvin','boston','MA'),(43,'alvin','boston','MA'),(45,'29 Street','Boston','MA'),(46,'29 ABC Street','Cambridge','MA'),(47,'ABCD Street','Boston','MA'),(48,'29 ABC Street','Boston','MA'),(49,'24 Street','New York','NY'),(50,'29 Street','New York','NY'),(51,'40 Street','Brooklyn','NY'),(52,'34 Street','San Jose','CA'),(53,'45 Street','Boston','MA'),(54,'12 Street','Boston','MA'),(55,'29 Street','New Jersey','NJ'),(56,'34','Boston','MA'),(57,'Las Donna','Rio De Janeiro','BR'),(58,'Boston','29 Street','MA'),(59,'29 Street ','Boston','MA');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `address_insert` BEFORE INSERT ON `address` FOR EACH ROW IF length(NEW.state) > 2 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The inserted state code is invalid';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block` (
  `blockId` int NOT NULL,
  `numberCells` int NOT NULL,
  PRIMARY KEY (`blockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES (1,2),(2,3),(3,4);
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `block_insert` BEFORE INSERT ON `block` FOR EACH ROW IF NEW.numberCells <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Cannot create a block with less than or equal to zero number of cells';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cell`
--

DROP TABLE IF EXISTS `cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cell` (
  `cellId` int NOT NULL AUTO_INCREMENT,
  `capacity` int DEFAULT NULL,
  `blockId` int NOT NULL,
  PRIMARY KEY (`cellId`,`blockId`),
  KEY `FK_blockId` (`blockId`),
  CONSTRAINT `FK_blockId` FOREIGN KEY (`blockId`) REFERENCES `block` (`blockId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cell`
--

LOCK TABLES `cell` WRITE;
/*!40000 ALTER TABLE `cell` DISABLE KEYS */;
INSERT INTO `cell` VALUES (1,5,1),(1,2,3),(3,5,1),(4,5,2),(5,2,2);
/*!40000 ALTER TABLE `cell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commits`
--

DROP TABLE IF EXISTS `commits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commits` (
  `prisonerId` int NOT NULL,
  `crimeId` int NOT NULL,
  `servingtime` int NOT NULL,
  KEY `FK_prisonerId` (`prisonerId`),
  KEY `FK_crimeId` (`crimeId`),
  CONSTRAINT `FK_crimeId` FOREIGN KEY (`crimeId`) REFERENCES `crime` (`crimeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prisonerId` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commits`
--

LOCK TABLES `commits` WRITE;
/*!40000 ALTER TABLE `commits` DISABLE KEYS */;
INSERT INTO `commits` VALUES (3,1,12),(3,2,10),(2,4,1),(5,6,1),(6,7,5),(6,3,5),(7,3,2),(8,10,15),(9,5,3),(11,5,3),(12,5,3),(13,4,3),(15,8,3),(15,8,3),(14,2,3),(10,7,3);
/*!40000 ALTER TABLE `commits` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `commits_insert` BEFORE INSERT ON `commits` FOR EACH ROW IF NEW.servingtime <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The serving time cannot be less than or equal to zero';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `consists`
--

DROP TABLE IF EXISTS `consists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consists` (
  `prisonerId` int DEFAULT NULL,
  `cellId` int DEFAULT NULL,
  `blockId` int DEFAULT NULL,
  KEY `FK_prisonerId4` (`prisonerId`),
  KEY `FK_cellId3` (`cellId`),
  KEY `FK_blockId2` (`blockId`),
  CONSTRAINT `FK_blockId2` FOREIGN KEY (`blockId`) REFERENCES `block` (`blockId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_cellId3` FOREIGN KEY (`cellId`) REFERENCES `cell` (`cellId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prisonerId4` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consists`
--

LOCK TABLES `consists` WRITE;
/*!40000 ALTER TABLE `consists` DISABLE KEYS */;
INSERT INTO `consists` VALUES (2,1,1),(3,1,1),(5,1,1),(6,1,1),(7,1,1),(11,1,3),(10,1,3),(12,4,2),(13,4,2),(15,4,2),(16,4,2),(17,4,2),(18,3,1),(19,3,1),(20,3,1);
/*!40000 ALTER TABLE `consists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crime` (
  `crimeId` int NOT NULL AUTO_INCREMENT,
  `crimeName` varchar(50) NOT NULL,
  PRIMARY KEY (`crimeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES (1,'Homicide'),(2,'Assault'),(3,'Criminal sexual conduct'),(4,'Robbery'),(5,'First degree burglary'),(6,'Second degree residential burglar'),(7,'Sexual assault'),(8,'Sexual predators'),(9,'Sex trafficking'),(10,'Child Abuse');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guard`
--

DROP TABLE IF EXISTS `guard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guard` (
  `guardId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(10) DEFAULT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `Dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `servEdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`guardId`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `FK_AddresssId3` (`addrId`),
  KEY `FK_Supervisor` (`supervisorId`),
  CONSTRAINT `FK_AddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Supervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guard`
--

LOCK TABLES `guard` WRITE;
/*!40000 ALTER TABLE `guard` DISABLE KEYS */;
INSERT INTO `guard` VALUES (1,'0203040506','Bob','Monty','Male','1980-03-24','2010-03-24','2025-03-24',1,1,10000),(4,'1203040566','Greg','Thakur','Male','2000-03-04','2022-04-04','2060-04-04',32,1,20000),(5,'1203040666','Bob','Monty','Male','1980-03-24','2010-03-24','2025-03-24',23,1,10000),(6,'1253040666','Jake','Miner','Male','1980-03-24','2010-03-24','2025-03-24',24,1,10000),(12,'3490869403','Rodrigo','De Paul','Male','1995-04-04','2021-04-04','2040-03-03',45,1,12000);
/*!40000 ALTER TABLE `guard` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guard_insert` BEFORE INSERT ON `guard` FOR EACH ROW IF NEW.servEdate < NEW.servSdate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The entered guard start and end service dates are invalid';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guard_insert_salary` BEFORE INSERT ON `guard` FOR EACH ROW IF NEW.salary < 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The guard salary cannot be less than or equal to zero';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guard_insert_dateOfBirth` BEFORE INSERT ON `guard` FOR EACH ROW IF NEW.Dob >= NEW.servSDate or NEW.Dob >= NEW.servEDate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The guard cannot have a date of birth after his service started';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `guard_insert_name` BEFORE INSERT ON `guard` FOR EACH ROW IF length(NEW.firstName) <= 0 or length(NEW.lastName) <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The guard cannot have empty last and first names';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `guards`
--

DROP TABLE IF EXISTS `guards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guards` (
  `guardId` int NOT NULL,
  `blockId` int NOT NULL,
  PRIMARY KEY (`guardId`,`blockId`),
  KEY `FK_block` (`blockId`),
  CONSTRAINT `FK_block` FOREIGN KEY (`blockId`) REFERENCES `block` (`blockId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_guard` FOREIGN KEY (`guardId`) REFERENCES `guard` (`guardId`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guards`
--

LOCK TABLES `guards` WRITE;
/*!40000 ALTER TABLE `guards` DISABLE KEYS */;
INSERT INTO `guards` VALUES (1,1),(6,1),(12,1),(4,2),(5,3);
/*!40000 ALTER TABLE `guards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labor`
--

DROP TABLE IF EXISTS `labor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labor` (
  `laborId` int NOT NULL,
  `laborName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`laborId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labor`
--

LOCK TABLES `labor` WRITE;
/*!40000 ALTER TABLE `labor` DISABLE KEYS */;
/*!40000 ALTER TABLE `labor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medStaff`
--

DROP TABLE IF EXISTS `medStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medStaff` (
  `staffId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(10) DEFAULT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `Dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `servEdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`staffId`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `FK_MedAddresssId3` (`addrId`),
  KEY `FK_MedSupervisor` (`supervisorId`),
  CONSTRAINT `FK_MedAddresssId3` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_MedSupervisor` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medStaff`
--

LOCK TABLES `medStaff` WRITE;
/*!40000 ALTER TABLE `medStaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `medStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performs`
--

DROP TABLE IF EXISTS `performs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performs` (
  `laborId` int NOT NULL,
  `prisonerId` int NOT NULL,
  `performedDate` date DEFAULT NULL,
  PRIMARY KEY (`laborId`,`prisonerId`),
  KEY `prisonerId` (`prisonerId`),
  CONSTRAINT `performs_ibfk_1` FOREIGN KEY (`laborId`) REFERENCES `labor` (`laborId`),
  CONSTRAINT `performs_ibfk_2` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performs`
--

LOCK TABLES `performs` WRITE;
/*!40000 ALTER TABLE `performs` DISABLE KEYS */;
/*!40000 ALTER TABLE `performs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisoner`
--

DROP TABLE IF EXISTS `prisoner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prisoner` (
  `prisonerId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(10) DEFAULT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `Dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `servEdate` date NOT NULL,
  `addrId` int DEFAULT NULL,
  `hasVistorprivelege` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`prisonerId`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `FK_AddresssId` (`addrId`),
  CONSTRAINT `FK_AddresssId` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner`
--

LOCK TABLES `prisoner` WRITE;
/*!40000 ALTER TABLE `prisoner` DISABLE KEYS */;
INSERT INTO `prisoner` VALUES (2,'1223040506','Cuti','Romero','Male','1995-05-05','2022-03-03','2025-04-04',37,1),(3,'1226040506','Enner ','Valencia','Male','1995-04-04','2020-04-04','2025-04-04',36,1),(5,'1226040556','Joe','Willock','Male','1982-05-24','2012-03-24','2025-03-24',33,0),(6,'2329040506','Jesse','Lingard','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(7,'2329040546','Jacob','Ramsey','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(8,'2326042546','Philip','Coutinho','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(9,'3490205068','Joe','Pelle','Male','1995-04-04','2020-03-03','2025-04-04',45,1),(10,'4534567819','James','Maddison','Male','1995-06-06','2020-04-04','2025-05-05',45,1),(11,'3427891030','Pablo','Torre','Male','2000-04-04','2021-04-05','2025-04-04',47,1),(12,'5678392010','Gabriel','Martinelli','Male','2001-02-02','2020-03-03','2022-03-03',48,1),(13,'1020304051','Guigi','Donnarumma','Male','2001-03-03','2020-03-03','2025-04-04',49,1),(14,'2390405060','Guigi','Buffon','Male','1970-04-04','2015-04-04','2023-05-05',50,1),(15,'1058394858','Ferland','Mendy','Male','1998-02-02','2020-03-03','2025-04-04',51,1),(16,'2903049658','Robbie','Van Persie','Male','1981-04-08','2019-03-03','2024-04-04',52,1),(17,'1096847302','Yoichi','Isagi','Female','2000-01-01','2020-03-03','2022-04-05',53,0),(18,'1029402950','Joao','Felix','Male','1999-04-04','2020-04-04','2040-03-03',54,1),(19,'3029697949','Sergio','Ramos','Male','1995-04-04','2020-03-03','2025-04-04',48,0),(20,'2905948950','Neymar','Santos Jr','Male','1995-04-04','2020-03-03','2022-12-09',45,1);
/*!40000 ALTER TABLE `prisoner` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert` BEFORE INSERT ON `prisoner` FOR EACH ROW IF NEW.servEdate < NEW.servSdate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The entered prisoner term start and end dates are invalid';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert_dateOfBirth` BEFORE INSERT ON `prisoner` FOR EACH ROW IF NEW.Dob >= NEW.servSDate or NEW.Dob >= NEW.servEDate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The prisoner cannot have a date of birth after his service started';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert_SSN` BEFORE INSERT ON `prisoner` FOR EACH ROW IF length(NEW.SSN) != 10 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid SSN entered for the prisoner';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert_name` BEFORE INSERT ON `prisoner` FOR EACH ROW IF length(NEW.firstName) <= 0 or length(NEW.lastName) <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The prisoner cannot have empty last and first names';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `prisonerId` int DEFAULT NULL,
  `visitorId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `visitTime` datetime NOT NULL,
  `visit_status` enum('0','1','2','3') DEFAULT '0',
  KEY `FK_prisonerId_requests` (`prisonerId`),
  KEY `FK_visitor_requests` (`visitorId`),
  KEY `FK_supervisor_requests` (`supervisorId`),
  CONSTRAINT `FK_prisonerId_requests` FOREIGN KEY (`prisonerId`) REFERENCES `prisoner` (`prisonerId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_supervisor_requests` FOREIGN KEY (`supervisorId`) REFERENCES `supervisor` (`supervisorId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_visitor_requests` FOREIGN KEY (`visitorId`) REFERENCES `visitor` (`visitorId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (13,3,1,'2022-11-04 00:00:00','0'),(12,3,1,'2022-05-03 00:00:00','1');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_archive`
--

DROP TABLE IF EXISTS `requests_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests_archive` (
  `prisonerId` int DEFAULT NULL,
  `visitorId` int DEFAULT NULL,
  `supervisorId` int DEFAULT NULL,
  `visitTime` datetime NOT NULL,
  `visit_status` enum('0','1','2','3') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_archive`
--

LOCK TABLES `requests_archive` WRITE;
/*!40000 ALTER TABLE `requests_archive` DISABLE KEYS */;
INSERT INTO `requests_archive` VALUES (3,1,1,'2022-10-10 10:10:10','2'),(3,1,1,'2021-10-10 10:10:10','2'),(3,1,1,'2022-10-10 10:10:10','2'),(3,1,1,'2021-10-10 10:10:10','2');
/*!40000 ALTER TABLE `requests_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisor` (
  `supervisorId` int NOT NULL AUTO_INCREMENT,
  `supervisor_username` varchar(30) DEFAULT NULL,
  `supervisor_password` varchar(30) NOT NULL,
  `SSN` varchar(10) DEFAULT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `Dob` date NOT NULL,
  `servSdate` date NOT NULL,
  `servEdate` date NOT NULL,
  `addrId` int NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`supervisorId`),
  UNIQUE KEY `supervisor_username` (`supervisor_username`),
  UNIQUE KEY `SSN` (`SSN`),
  KEY `FK_AddresssId2` (`addrId`),
  CONSTRAINT `FK_AddresssId2` FOREIGN KEY (`addrId`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisor`
--

LOCK TABLES `supervisor` WRITE;
/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
INSERT INTO `supervisor` VALUES (1,'kramer23','user123','3909587839','Kramer','James','Male','1980-02-03','0209-04-05','2025-03-30',2,10000),(9,'memphis34','memphis123','1335567801','sankar','sam','Male','2000-10-09','2022-10-09','2022-10-09',21,1000),(13,'joe234','joer344545','2345678910','Joe','Scott','Male','1999-02-02','2020-02-02','2040-04-04',45,10000);
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supervisor_insert_dateOfBirth` BEFORE INSERT ON `supervisor` FOR EACH ROW IF NEW.Dob >= NEW.servSDate or NEW.Dob >= NEW.servEDate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The supervisor cannot have a date of birth after his service started';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supervisor_insert` BEFORE INSERT ON `supervisor` FOR EACH ROW IF NEW.servEdate < NEW.servSdate  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The entered supervisor start and end service dates are invalid';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supervisor_insert_SSN` BEFORE INSERT ON `supervisor` FOR EACH ROW IF length(NEW.SSN) != 10 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Invalid SSN entered for the supervisor';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supervisor_insert_name` BEFORE INSERT ON `supervisor` FOR EACH ROW IF length(NEW.firstName) <= 0 or length(NEW.lastName) <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The supervisor cannot have empty last and first names';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supervisor_insert_login` BEFORE INSERT ON `supervisor` FOR EACH ROW IF length(NEW.supervisor_username)=0 or length(NEW.supervisor_password)=0 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The supervisor cannot have username and password of length 0 or less';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor` (
  `visitorId` int NOT NULL AUTO_INCREMENT,
  `SSN` varchar(10) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` int NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `visitor_username` varchar(30) NOT NULL,
  `visitor_password` varchar(30) NOT NULL,
  PRIMARY KEY (`visitorId`),
  UNIQUE KEY `visitor_username` (`visitor_username`),
  KEY `visitor_address` (`address`),
  CONSTRAINT `visitor_address` FOREIGN KEY (`address`) REFERENCES `address` (`addrId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'487257608','Mariah','Pike','Female','1990-03-24',1,'2536914926','mariah123','abcd1234*'),(2,'487265708','Luisa','Simon','Female','1998-03-24',1,'2596914926','luisa23','abcd1294*'),(3,'8911234567','sankar','sam','Male','2022-10-09',42,'6154735689','sam7908','sam1239'),(4,'1098473980','Frenkie','De Jong','Male','1997-04-04',58,'2980589348','frenkie123','frenkie23');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visitor_insert_name` BEFORE INSERT ON `visitor` FOR EACH ROW IF length(NEW.first_name) <= 0 or length(NEW.last_name) <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The visitor cannot have empty last and first names';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `visitor_insert_login` BEFORE INSERT ON `visitor` FOR EACH ROW IF length(NEW.visitor_username)<=0 or length(NEW.visitor_password)<=0 THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The visitor cannot have username and password of length 0 or less';
END IF */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'prisonmanagement'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `archiveEvent` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archiveEvent` ON SCHEDULE EVERY 30 DAY STARTS '2022-12-02 00:00:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
        INSERT INTO requests_archive (
            prisonerId,
            visitorId,
            supervisorId,
            visitTime,
            visit_status
        ) SELECT
            r.prisonerId,
            r.visitorId,
            r.supervisorId,
            r.visitTime,
            r.visit_status
        FROM
            requests r
        WHERE
            r.visitTime + INTERVAL 30 DAY <= current_time() 
            and (r.visit_status = "2" or r.visit_status = "3");

        DELETE
        FROM
            requests
        WHERE
            visitTime + INTERVAL 30 DAY <= current_time() 
            and (visitStatus = "2" or visitStatus = "3"); 
        END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'prisonmanagement'
--
/*!50003 DROP FUNCTION IF EXISTS `getApprovalRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getApprovalRate`(sid int) RETURNS float
    READS SQL DATA
    DETERMINISTIC
begin
declare accepted int default 0;
declare rejected int default 0;
declare percent float default 0;
declare total int default 1;

select sum(derived.cnt) into accepted from 
(
select supervisorId, count(*) as cnt 
from requests where visit_status = '1' group by supervisorId 
 union all 
select supervisorId, count(*) as cnt 
from requests_archive where visit_status = '1' 
group by supervisorId
) derived where derived.supervisorId = sid group by derived.supervisorId;


select sum(derived.cnt) into rejected from 
(
select supervisorId, count(*) as cnt 
from requests where visit_status = '2' group by supervisorId 
 union all 
select supervisorId, count(*) as cnt 
from requests_archive where visit_status = '2' 
group by supervisorId
) derived where derived.supervisorId = sid group by derived.supervisorId;

select rejected+accepted into total;
IF total != 0 THEN
select accepted/total into percent;
END IF;
return percent;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getBlockCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getBlockCapacity`( blockId int ) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin
declare CAP int;

BEGIN
Select sum(c.capacity) into CAP from block b, cell c where b.blockId = c.blockId group by b.blockId;
END;

return CAP;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getPrisonerId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getPrisonerId`( SSN varchar(10) ) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin
declare prisonerId int;

BEGIN
Select p.prisonerId into prisonerId from prisoner p where p.SSN = SSN;
END;

return prisonerId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUsedBlockCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getUsedBlockCapacity`(blockId int) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin
DECLARE used_capacity int;

select count(*) into used_capacity
from consists c, cell ce 
where c.cellId = ce.cellId and c.blockId = ce.blockId and c.blockId = blockId
group by c.blockId;

RETURN used_capacity;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getUsedCellCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getUsedCellCapacity`(blockId int, cellId int) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin
DECLARE used_capacity int default 0;

select count(*) into used_capacity
from consists c
where c.blockId = blockId and c.cellId = cellId
group by c.blockId, c.cellId;

RETURN used_capacity;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isUserPresent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isUserPresent`(
userN varchar(30),
usertype varchar(30)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
begin
declare STATUS boolean;

SET @STATUS = 0;

IF usertype = 'visitor' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.visitor WHERE visitor_username = userN;
END;
END IF;

IF usertype = 'admin' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.admin WHERE username = userN;
END;
END IF;

IF usertype = 'supervisor' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.supervisor WHERE supervisor_username = userN;
END;
END IF;

return STATUS;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `login`(
username varchar(30),
password varchar(30),
usertype varchar(30)) RETURNS tinyint(1)
    READS SQL DATA
    DETERMINISTIC
begin
declare STATUS boolean;

IF usertype = 'visitor' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.visitor WHERE visitor_username = username and visitor_password = password;
END;
END IF;

IF usertype = 'admin' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.admin a WHERE a.username = username and a.password = password;
END;
END IF;

IF usertype = 'supervisor' THEN
BEGIN
SELECT 1 INTO STATUS FROM prisonmanagement.supervisor WHERE supervisor_username = username and supervisor_password = password;
END;
END IF;

return STATUS;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addCell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addCell`(in capacity int,
in blockId int)
BEGIN
DECLARE blockCapacity int;
DECLARE blockFilled int;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 
IF capacity<=0 THEN 
	SIGNAL SQLSTATE '45003' SET MESSAGE_TEXT = 'The capacity given is invalid';
END IF;

SELECT b.numberCells into blockCapacity from block b where b.blockId = blockId;

SELECT count(c.cellId) into blockFilled from block b, cell c where b.blockId = 1 and c.blockId = 1 group by b.blockId;

IF blockFilled + 1 > blockCapacity THEN 
	SIGNAL SQLSTATE '45004' SET MESSAGE_TEXT = 'The block cannot have more cells';
END IF;

INSERT INTO cell(capacity, blockId) 
VALUES(capacity, blockId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addGuard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addGuard`(in SSN varchar(10), 
in firstName varchar(30), 
lastName varchar(30), 
sex ENUM ("Male","Female","Other"), 
Dob date, 
servSdate date, 
servEdate date, 
street VARCHAR(30),
city varchar(30),state varchar(30), 
supervisorName varchar(30), 
salary int)
BEGIN
declare addrFlag int default 0;
declare supervisorId int;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 IF EXISTS (SELECT g.SSN FROM guard g where g.SSN=SSN) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given guard is already present';
END IF;
 IF Dob NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date of birth must be from 1950 to today';
END IF;
IF servSdate NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Start Date of Employment must be from 1950 to today';
END IF;
IF servEdate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'End Date of Employment must be from 1950 to today';
END IF;
IF supervisorId NOT IN (SELECT supervisorId FROM supervisor) THEN 
	SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'The given supervisor does not exist';
END IF;
IF salary<=0 OR salary>1000000000 THEN 
	SIGNAL SQLSTATE '45003' SET MESSAGE_TEXT = 'The given salary value is not valid';
END IF;

select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;

select s.supervisorId into supervisorId from supervisor s where supervisorName = s.supervisor_username;

INSERT INTO guard(SSN, firstName, lastName, sex, Dob, servSdate, servEdate, addrId, supervisorId, salary) 
VALUES(SSN, firstName, lastName, sex, Dob, servSdate, servEdate, addrFlag, supervisorId, salary);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addPrisoner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPrisoner`(in SSN varchar(10), 
in firstName varchar(30), 
lastName varchar(30), 
sex ENUM ("Male","Female","Other"), 
Dob date, 
servSdate date, 
servEdate date, 
street varchar(30), 
city varchar(30), 
state varchar(30),
hasVistorprivelege bool)
BEGIN
declare addrFlag int default 0;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 IF EXISTS (SELECT p.SSN FROM prisoner p where p.SSN=SSN) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given prisoner is already present';
END IF;
 IF Dob NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date of birth must be from 1950 to today';
END IF;
IF servSdate NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Start Date of Employment must be from 1950 to today';
END IF;
IF servEdate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'End Date of Employment must be from 1950 to today';
END IF;

select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;


INSERT INTO prisoner(SSN, firstName, lastName, sex, Dob, servSdate, servEdate, addrId, hasVistorprivelege) 
VALUES(SSN, firstName, lastName, sex, Dob, servSdate, servEdate, addrFlag, hasVistorprivelege);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addPrisonerToCell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPrisonerToCell`(
in SSN varchar(10),
in cellId int, 
in blockId int)
BEGIN
DECLARE cellFilled int;
DECLARE cellCapacity int;
DECLARE prisonerId int;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 
IF NOT EXISTS (SELECT SSN FROM prisoner p where p.SSN=SSN) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The prisoner was not created';
END IF;
 
IF NOT EXISTS (SELECT blockId FROM block b where b.blockId=blockId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The block does not exist';
END IF;

IF NOT EXISTS (SELECT c.blockId, c.cellId FROM cell c where c.blockId=blockId and c.cellId = cellId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The cell does not exist in the block';
END IF;

SELECT getPrisonerId(SSN) into prisonerId;

SELECT c.capacity into cellCapacity from cell c where c.cellId = cellId and c.blockId = blockId;

SELECT count(c.prisonerId) into cellFilled 
from consists c 
where c.blockId = blockId and c.cellId = cellId 
group by c.blockId, c.cellId;


IF cellFilled + 1 > cellCapacity THEN 
	SIGNAL SQLSTATE '45004' SET MESSAGE_TEXT = 'The given cell is already full';
END IF;

insert into consists
values(prisonerId, cellId, blockId);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addSupervisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addSupervisor`(in supervisor_username varchar(30),
in supervisorPwd varchar(15),IN ssn varchar(10),IN firstname varchar(25),
IN lastname varchar(25),IN gender varchar(25),IN dob Date,IN servsdate Date,
In servedate date,IN street VARCHAR(30),In city varchar(30),In state varchar(30),IN salary int)
BEGIN
declare flag int default 0;
declare addrFlag int default 0;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

if length(supervisor_username) = 0 or  length(supervisor_username)<5 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'User name is of Invalid length please enter a valid username';
 end if;

 if length(supervisorPwd) = 0 or  length(supervisorPwd)<7 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Password is of Invalid length please enter a valid password.';
 end if;
 if length(firstname) = 0 or length(firstname) <3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'first name is of Invalid length.';
 end if;
 if length(lastname) = 0 or length(lastname) < 3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'last name is of Invalid length.';
 end if;
 if gender not in ("Male","Female","Other") then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid entry for sex';
 end if;
 if length(ssn) < 10 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid SSN';
 end if;
 if dob > CURDATE() THEN  
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid Date of birth';
 end if;
IF servsdate > CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid service end date';
END IF;
IF servedate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid service end date';
END IF;
IF salary < 0 THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
END IF;

select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;


IF EXISTS (SELECT s.supervisorId FROM supervisor s where s.supervisor_username=supervisor_username) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given supervisor is already present';
END IF;

Insert into supervisor(supervisor_username,supervisor_password,SSN,firstName,lastName,sex,Dob,servSdate,servEdate,addrId,salary) values
(supervisor_username,supervisorPwd,SSN,firstname,lastname,gender,dob,servSdate,servEdate,addrFlag,salary); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addvisitor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addvisitor`(in ssn varchar(30),in first_name varchar(30),IN last_name varchar(30),
IN gender varchar(5),IN dob date,IN street VARCHAR(30),In city varchar(30),In state varchar(30),
IN phone_number varchar(10),In visitor_username varchar(30),in visitor_password varchar(30))
BEGIN
declare flag int default 0;
declare addrFlag int default 0;

if length(visitor_username) = 0 or  length(visitor_username)<5 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'User name is of Invalid length please enter a valid username';
 end if;
 if length(visitor_password) = 0 or  length(visitor_password)<7 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Password is of Invalid length please enter a valid password.';
 end if;
 if length(first_name) = 0 or length(first_name) <3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'first name is of Invalid length.';
 end if;
 if length(last_name) = 0 or length(last_name) < 3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'last name is of Invalid length.';
 end if;
 if gender not in ("Male","Female","Other") then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid entry for sex';
 end if;
 if length(phone_number) != 10 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid Phone number';
 end if;
 
 if length(ssn) < 10 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid SSN';
 end if;
 
 if dob > CURDATE() THEN  
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid Date of birth';
 end if;

Insert into address(street,city,state) values(street,city,state);
set addrFlag = (select max(addrId) from address);

IF EXISTS (SELECT v.SSN FROM visitor v where v.SSN=ssn) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given visitor is already present';
END IF;

Insert into visitor(SSN,first_name,last_name,sex,date_of_birth,address,phone_number,visitor_username,visitor_password) values(ssn,first_name,last_name,gender,dob,addrFlag,phone_number,visitor_username,visitor_password); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteGuard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteGuard`(in guardId int)
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 
 IF NOT EXISTS (SELECT g.guardId FROM guard g where g.guardId=guardId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given guard does not exist';
END IF;

IF EXISTS (SELECT gs.guardId FROM guards gs where gs.guardId=guardId) THEN
	SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'The given guard is currently in guard duty';
END IF;

DELETE FROM guard g WHERE g.guardId = guardId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllApprovalRates` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllApprovalRates`()
begin
select supervisorId, 
(select getApprovalRate(supervisorId))
as approval_rate from supervisor;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllAvailableBlockCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllAvailableBlockCapacity`()
begin

select c.blockId, c.cellId, (sum(ce.capacity) / count(ce.capacity)) - count(ce.capacity) as available_capacity
from consists c, cell ce 
where c.cellId = ce.cellId and c.blockId = ce.blockId
group by c.blockId, c.cellId;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllBlockCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllBlockCapacity`()
    READS SQL DATA
    DETERMINISTIC
begin
Select b.blockId, sum(c.capacity) from block b, cell c where b.blockId = c.blockId group by b.blockId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllGuards` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllGuards`(in username varchar(30))
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

SELECT g.guardId, g.firstname, g.lastname from guard g, supervisor s where g.supervisorId = s.supervisorId and s.supervisor_username = username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPrisoners` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPrisoners`()
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

SELECT p.prisonerId, p.firstname, p.lastname from prisoner p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllSupervisors` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSupervisors`()
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

SELECT s.supervisorId, s.firstName, s.lastName from supervisor s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCellCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCellCapacity`(
in blockId int)
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

SELECT c.cellId, c.capacity from cell c where c.blockId = blockId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCellRemainingCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCellRemainingCapacity`(
in blockId int)
BEGIN
DECLARE cellFilled int;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 
select c.cellId, c.capacity - (select getUsedCellCapacity(c.blockId, c.cellId)) capacity
from cell c where c.blockId = blockId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCrimeStatsforBlock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCrimeStatsforBlock`()
begin
select cs.blockId,cr.crimeName,count(*) from commits c 
inner join crime cr on c.crimeId = cr.crimeId 
inner join consists cs on cs.prisonerId = c.prisonerId 
group by cs.blockId,c.crimeId order by cs.blockId; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getOccupiedBlocks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getOccupiedBlocks`()
begin
select b.blockId, getUsedBlockCapacity(blockId) as capacity_filled from block b;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRemainingBlockCapacity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getRemainingBlockCapacity`()
begin

select blockNo, sum(cap) - (select getUsedBlockCapacity(blockNo)) as capacity from (
select ce.blockId as blockNo, ce.cellId as cellNo, sum(ce.capacity)/count(ce.capacity) as cap
from consists c right join cell ce 
on c.cellId = ce.cellId and c.blockId = ce.blockId
group by ce.blockId, ce.cellId) T group by blockNo;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRequestForVisitor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getRequestForVisitor`(In  visitorUserName varchar(30))
begin
declare visitorIdval int;

select visitorId into visitorIdval FROM visitor v where v.visitor_username = visitorUserName;

select p.prisonerId, concat(p.firstName, ' ', p.lastname) as prisoner,r.visitorId as visitorId , concat(v.first_name, ' ', v.last_name) as visitor, 
visitTime as request_date,r.visit_status
from requests r inner join prisoner p on p.prisonerId = r.prisonerId
inner join visitor v on v.visitorId = r.visitorId 
where v.visitorId =  visitorIdval;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSupervisorforPrisoner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSupervisorforPrisoner`(in prisonerId int)
begin
select supervisorId from guard n inner join 
(select * from guards g natural join 
(select * from prisoner p natural join consists c where p.hasVistorprivelege = 1 and p.prisonerId = prisonerId) as k) as m 
on n.guardId = m.guardId limit 1 ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTotalAcceptedRequests` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTotalAcceptedRequests`(In supervisorId int)
begin
select derived.supervisorId, sum(derived.cnt) from 
(
select supervisorId, count(*) as cnt 
from requests where visit_status = '1' group by supervisorId 
 union all 
select supervisorId, count(*) as cnt 
from requests_archive where visit_status = '1' 
group by supervisorId
) derived where derived.supervisorId = supervisorId group by derived.supervisorId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `isUserPresent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `isUserPresent`(in username int,
in usertype varchar(30))
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 IF NOT EXISTS (SELECT p.prisonerId FROM prisoner p where p.prisonerId=prisonerId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given prisoner is not present';
END IF;
 IF Dob NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date of birth must be from 1950 to today';
END IF;
IF servSdate NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Start Date of Employment must be from 1950 to today';
END IF;
IF servEdate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'End Date of Employment must be from 1950 to today';
END IF;
IF addrId NOT IN (SELECT addrId FROM address) THEN 
	SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'The given address does not exist';
END IF;

UPDATE prisoner p SET p.firstName = firstName, p.lastName = lastName, p.sex = sex, 
p.Dob = Dob, p.servSdate = servSdate, p.servEdate = servEdate, p.addrId = addrId, p.hasVistorprivelege = hasVistorprivelege
where p.prisonerId = prisonerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prisonerAgeRange` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prisonerAgeRange`()
begin

SELECT
    SUM(IF(age < 20,1,0)) as 'Under 20',
    SUM(IF(age BETWEEN 20 and 29,1,0)) as '20 - 29',
    SUM(IF(age BETWEEN 30 and 39,1,0)) as '30 - 39',
    SUM(IF(age BETWEEN 40 and 49,1,0)) as '40 - 49',
    SUM(IF(age BETWEEN 50 and 59,1,0)) as '50 - 59',
    SUM(IF(age BETWEEN 60 and 69,1,0)) as '60 - 69',
    SUM(IF(age BETWEEN 70 and 79,1,0)) as '70 - 79',
    SUM(IF(age >=80, 1, 0)) as 'Over 80',
    SUM(IF(age IS NULL, 1, 0)) as 'Not Filled In (NULL)'

FROM (SELECT TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age FROM prisoner) as derived;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `releasePrisoner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `releasePrisoner`()
BEGIN
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;

SELECT p.prisonerId, p.firstName, p.lastName from prisoner p where p.servEdate = CURDATE();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeSupervisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeSupervisor`(in supervisorid int)
begin
delete from supervisor s where s.supervisorId = supervisorid;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `requestsForSupervisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `requestsForSupervisor`(In supervisorName varchar(30))
begin
declare superVisorId int;
IF not EXISTS (SELECT supervisorId FROM supervisor s where s.supervisor_username=supervisorName) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The supervisor does not exists';
end if;    

select s.supervisorId into superVisorId  FROM supervisor s where s.supervisor_username = supervisorName;


select p.prisonerId, concat(p.firstName, ' ', p.lastname) as prisoner,r.visitorId as visitorId , concat(v.first_name, ' ', v.last_name) as visitor, 
visitTime as request_date
from requests r inner join prisoner p on p.prisonerId = r.prisonerId
inner join visitor v on v.visitorId = r.visitorId 
where r.supervisorId = superVisorId and r.visit_status='0';



end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateGuard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateGuard`(in guardID int,
in firstName varchar(30), 
lastName varchar(30), 
sex ENUM ("Male","Female","Other"), 
Dob date, 
servSdate date, 
servEdate date, 
street varchar(30), 
city varchar(30), 
state varchar(30), 
supervisor_username varchar(30), 
salary int)
BEGIN
declare addrFlag int default 0;
declare supervisorId int;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 IF NOT EXISTS (SELECT g.guardId FROM guard g where g.guardId=guardId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given guard is not present';
END IF;
 IF Dob NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date of birth must be from 1950 to today';
END IF;
IF servSdate NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Start Date of Employment must be from 1950 to today';
END IF;
IF servEdate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'End Date of Employment must be from 1950 to today';
END IF;
IF salary<=0 OR salary>1000000000 THEN 
	SIGNAL SQLSTATE '45003' SET MESSAGE_TEXT = 'The given salary value is not valid';
END IF;
IF salary<=0 OR salary>1000000000 THEN 
	SIGNAL SQLSTATE '45004' SET MESSAGE_TEXT = 'The given salary is invalid';
END IF;
IF NOT EXISTS (SELECT s.supervisorId FROM supervisor s where s.supervisor_username=supervisor_username) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given supervisor is not present';
END IF;

select s.supervisorId into supervisorId from supervisor s where supervisor_username = s.supervisor_username;

select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;

UPDATE guard g SET g.firstName = firstName, g.lastName = lastName, g.sex = sex, 
g.Dob = Dob, g.servSdate = servSdate, g.servEdate = servEdate, g.addrId = addrFlag, g.supervisorId = supervisorId, g.salary = salary
where g.guardId = guardId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatePrisoner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatePrisoner`(in prisonerId int,
in firstName varchar(30), 
lastName varchar(30), 
sex ENUM ("Male","Female","Other"), 
Dob date, 
servSdate date, 
servEdate date, 
street varchar(30), 
city varchar(30), 
state varchar(30),
hasVistorprivelege bool)
BEGIN
declare addrFlag int default 0;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 IF NOT EXISTS (SELECT p.prisonerId FROM prisoner p where p.prisonerId=prisonerId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The given prisoner is not present';
END IF;
 IF Dob NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Date of birth must be from 1950 to today';
END IF;
IF servSdate NOT BETWEEN '1950-01-01 00:00:00' AND CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Start Date of Employment must be from 1950 to today';
END IF;
IF servEdate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'End Date of Employment must be from 1950 to today';
END IF;

select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;

UPDATE prisoner p SET p.firstName = firstName, p.lastName = lastName, p.sex = sex, 
p.Dob = Dob, p.servSdate = servSdate, p.servEdate = servEdate, p.addrId = addrFlag, p.hasVistorprivelege = hasVistorprivelege
where p.prisonerId = prisonerId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateRequest`(In requestVal enum('0','1','2','3'),In prisonerIdval int, in visitorIdVal int ,In visitDate varchar(30))
begin

update requests
set visit_status = requestVal where prisonerId = prisonerIdval and visitorId = visitorIdVal and visitTime = STR_TO_DATE(visitDate,"%Y-%m-%d");

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateSupervisor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSupervisor`(IN supervisorId int, IN ssn varchar(10),IN firstname varchar(25),
IN lastname varchar(25),IN gender varchar(25),IN dob Date,IN servsdate Date,
In servedate date,IN street VARCHAR(30),In city varchar(30),In state varchar(30),IN salary int)
BEGIN
declare addrFlag int default 0;
DECLARE exit handler for SQLEXCEPTION
 BEGIN
  GET DIAGNOSTICS CONDITION 1 @sqlstate = RETURNED_SQLSTATE, @errno = MYSQL_ERRNO, @text = MESSAGE_TEXT;
  SET @full_error = CONCAT("ERROR ", @errno, " (", @sqlstate, "): ", @text);
  SELECT @full_error;
 END;
 
 if length(firstname) = 0 or length(firstname) <3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'first name is of Invalid length.';
 end if;
 if length(lastname) = 0 or length(lastname) < 3 then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'last name is of Invalid length.';
 end if;
 if gender not in ("Male","Female","Other") then
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid entry for sex';
 end if;
if dob > CURDATE() THEN  
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid Date of birth';
 end if;
IF servsdate > CURDATE() THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid service end date';
END IF;
IF servedate < '1950-01-01 00:00:00' THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid service end date';
END IF;
IF salary < 0 THEN 
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary cannot be negative';
end if;
select a.addrid into addrFlag from address a where a.street = street and a.city = city and a.state = state limit 1;

IF addrFlag = 0 THEN
	Insert into address(street,city,state) values(street,city,state);
	set addrFlag = (select max(addrId) from address);
END IF;

UPDATE supervisor s SET s.firstName = firstName, s.lastName = lastName, s.sex = gender, s.SSN = SSN,
s.Dob = Dob, s.servSdate = servSdate, s.servEdate = servEdate, s.addrId = addrFlag, s.salary = salary
where s.supervisorId = supervisorId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `visitRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `visitRequest`(In prisonerId int,In visitorName varchar(30),In supervisorId int,In visitTime varchar(10),In visit_status varchar(2))
begin
declare visitorIdval int;
IF not EXISTS (SELECT prisonerId FROM prisoner p where p.prisonerId=prisonerId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The prisoner does not exists';
END IF;
IF not EXISTS (SELECT visitorId FROM visitor v where v.visitor_username = visitorName) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The visitor does not exixts';
END IF;
IF not EXISTS (SELECT supervisorId FROM supervisor s where s.supervisorId=supervisorId) THEN
	SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'The supervisor does not exists';
END IF;

if visit_status not in ("0","1","2","3") then
SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'Invalid status';
end if;

select visitorId into visitorIdval from visitor v where v.visitor_username = visitorName;

insert into requests values(prisonerId,visitorIdval,supervisorId,STR_TO_DATE(visitTime,"%Y-%m-%d"),visit_status);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-26 11:18:19
