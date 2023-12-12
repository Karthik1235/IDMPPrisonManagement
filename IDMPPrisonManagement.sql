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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'345 Winchell Pl','Anderson','IN'),(2,'1298 E Smathers St','Benton','AR'),(3,'6925 N Parkland Ave','Puyallup','WA'),(4,'83 d\'Urberville Ln','Casterbridge','GA'),(5,'22717 E 73rd Ave','Dubuque','IA'),(6,'1778 N Bovine Ave','Peoria','IL'),(7,'1234 Main St','Normal','IL'),(8,'1877 Ete Ct','Frogtown','LA'),(9,'717 E Michigan Ave','Chicago','IL'),(10,'4562 Rt 78 E','Vancouver','WA'),(11,'2732 Baker Blvd.','Eugene','OR'),(12,'City Center Plaza 516 Main St.','Elgin','OR'),(13,'12 Orchestra Terrace','Walla Walla','WA'),(14,'87 Polk St. Suite 5','San Francisco','CA'),(15,'89 Chiaroscuro Rd.','Portland','OR'),(16,'2743 Bering St.','Anchorage','AK'),(17,'2817 Milton Dr.','Albuquerque','NM'),(18,'187 Suffolk Ln.','Boise','ID'),(19,'P.O. Box 555','Lander','WY'),(20,'89 Jefferson Way Suite 2','Providence','RI'),(21,'alvin','boston','MA'),(22,'12 Tremor Street','Boston','MA'),(23,'12 Tremor Street','Boston','MA'),(24,'12 Tremor Street','Boston','MA'),(25,'38295 John Wall Hill','Irving','TX'),(26,'22998 Knutson Pass','Hartford','CT'),(27,'48 Maywood Plaza','Atlanta','GA'),(28,'45','fgd','fd'),(29,'45 ABCD Street','Boston','MA'),(30,'45 ABCD Street','Boston','MA'),(31,'45 ABCD Street','Boston','MA'),(32,'245 Tremor Street','Cambridge','MA'),(33,'1453 ABC Street','Boston','MA'),(34,'23 B Street','NY','NY'),(35,'1209 Street','Boston','MA'),(36,'209 Street','Boston','MA'),(37,'30 Street','Boston','MA'),(38,'23 Beacon Street','Boston','MA'),(39,'ABC Street','Boston','MA'),(40,'alvin','boston','MA'),(41,'alvin','boston','MA'),(42,'alvin','boston','MA'),(43,'alvin','boston','MA'),(45,'29 Street','Boston','MA'),(46,'29 ABC Street','Cambridge','MA'),(47,'ABCD Street','Boston','MA'),(48,'29 ABC Street','Boston','MA'),(49,'24 Street','New York','NY'),(50,'29 Street','New York','NY'),(51,'40 Street','Brooklyn','NY'),(52,'34 Street','San Jose','CA'),(53,'45 Street','Boston','MA'),(54,'12 Street','Boston','MA'),(55,'29 Street','New Jersey','NJ'),(56,'34','Boston','MA'),(57,'Las Donna','Rio De Janeiro','BR'),(58,'Boston','29 Street','MA'),(59,'29 Street ','Boston','MA'),(60,'7274 Debs Crossing','Brooklyn','NY'),(61,'31569 Atwood Pass','Washington','DC'),(62,'8560 Autumn Leaf Way','North Little Rock','AR'),(63,'19427 Jay Avenue','Montgomery','AL'),(64,'38817 Northridge Parkway','Houston','TX'),(65,'09143 Fieldstone Hill','Ridgely','MD'),(66,'17888 Harbort Drive','Phoenix','AZ'),(67,'8 Kensington Lane','Saint Paul','MN'),(68,'39504 Briar Crest Way','Yonkers','NY'),(69,'8 Farragut Drive','Saint Louis','MO'),(70,'5 Kennedy Pass','Washington','DC'),(71,'115 Hagan Avenue','Denver','CO'),(72,'046 Columbus Way','Saint Paul','MN'),(73,'4551 Lakewood Gardens Parkway','Montgomery','AL'),(74,'51788 Mayer Court','Vancouver','WA'),(75,'9568 Portage Point','Wilkes Barre','PA'),(76,'76151 Sage Place','Garden Grove','CA'),(77,'414 Rieder Road','Reading','PA'),(78,'71107 Merry Junction','Santa Rosa','CA'),(79,'44212 Lawn Street','Winter Haven','FL'),(80,'9 Eastwood Junction','Waterbury','CT'),(81,'019 Roth Way','Washington','DC'),(82,'97 Becker Way','Philadelphia','PA'),(83,'5564 Kim Road','Omaha','NE'),(84,'881 Bunting Alley','El Paso','TX'),(85,'2 Magdeline Junction','Moreno Valley','CA'),(86,'6 Butterfield Center','Anchorage','AK'),(87,'12467 Calypso Junction','Riverside','CA'),(88,'96289 Maryland Park','Houston','TX'),(89,'3202 Lukken Drive','Los Angeles','CA'),(90,'2 Elmside Junction','Reno','NV'),(91,'045 Glendale Avenue','Oklahoma City','OK'),(92,'057 Sutherland Terrace','Miami','FL'),(93,'501 Oak Way','Saint Petersburg','FL'),(94,'01373 3rd Park','Erie','PA'),(95,'56428 Corben Street','Fort Lauderdale','FL'),(96,'95143 Dahle Park','Wichita','KS'),(97,'576 Kenwood Terrace','Fort Worth','TX'),(98,'03249 Alpine Avenue','Gilbert','AZ'),(99,'96943 Waxwing Street','Cedar Rapids','IA'),(100,'735 Linden Avenue','San Angelo','TX'),(101,'92 Eastlawn Terrace','Buffalo','NY'),(102,'64776 Del Sol Crossing','Lexington','KY'),(103,'58672 Sage Parkway','Miami','FL'),(104,'4088 Algoma Parkway','Racine','WI'),(105,'6715 Corry Avenue','Columbia','SC'),(106,'97 Stoughton Junction','Winter Haven','FL'),(107,'85 Del Sol Center','Idaho Falls','ID'),(108,'072 Nobel Avenue','Irvine','CA'),(109,'3 Longview Circle','Washington','DC'),(110,'9836 Center Point','Amarillo','TX'),(111,'4 Welch Alley','Bethlehem','PA'),(112,'9316 Buena Vista Lane','Denton','TX'),(113,'5342 Thompson Lane','Tacoma','WA'),(114,'6 Armistice Drive','Richmond','VA'),(115,'42 Rigney Trail','Van Nuys','CA'),(116,'8984 Mcguire Lane','Decatur','GA'),(117,'9 Susan Avenue','Miami','FL'),(118,'7355 Lakeland Court','Los Angeles','CA'),(119,'592 Atwood Hill','Salt Lake City','UT'),(120,'434 Westerfield Drive','Rochester','NY'),(121,'835 Coolidge Circle','Toledo','OH'),(122,'849 Mallory Alley','Chicago','IL'),(123,'69 Karstens Park','Springfield','IL'),(124,'543 Florence Parkway','Lubbock','TX'),(125,'758 Lake View Lane','Springfield','MA'),(126,'405 1st Trail','New York City','NY'),(127,'4 Butterfield Drive','El Paso','TX'),(128,'2 Grasskamp Parkway','Cedar Rapids','IA'),(129,'4294 Porter Junction','Lincoln','NE'),(130,'90 Springview Way','Des Moines','IA'),(131,'762 Hoffman Place','Clearwater','FL'),(132,'57 American Ash Terrace','New York City','NY'),(133,'9 Elmside Crossing','Toledo','OH'),(134,'6 Towne Road','Jacksonville','FL'),(135,'0940 Mcguire Plaza','Brooklyn','NY'),(136,'6497 Holy Cross Center','Pittsburgh','PA'),(137,'421 North Crossing','Tampa','FL'),(138,'0 Stoughton Crossing','Brea','CA'),(139,'3727 Corscot Circle','Albuquerque','NM'),(140,'4 Thierer Alley','Baton Rouge','LA'),(141,'89145 Center Drive','Memphis','TN'),(142,'700 Sauthoff Crossing','Washington','DC'),(143,'6 Arapahoe Junction','Frederick','MD'),(144,'8 Shasta Junction','Cleveland','OH'),(145,'7 Bashford Place','Trenton','NJ'),(146,'8536 Dwight Court','Detroit','MI'),(147,'29991 Fordem Trail','Detroit','MI'),(148,'295 Gale Drive','San Francisco','CA'),(149,'14 Sullivan Road','Fort Myers','FL'),(150,'9215 Ridgeway Circle','Kansas City','MO'),(151,'747 Westend Center','Springfield','MA'),(152,'163 Nelson Junction','Lubbock','TX'),(153,'0 Gateway Way','Pittsburgh','PA'),(154,'34 Moland Drive','Sioux City','IA'),(155,'88 Independence Street','Wilkes Barre','PA'),(156,'93800 Straubel Park','Riverside','CA'),(157,'35230 Garrison Crossing','Columbus','OH'),(158,'640 Algoma Center','Ogden','UT'),(159,'8504 Packers Terrace','Jefferson City','MO'),(160,'40695 Badeau Junction','Shawnee Mission','KS'),(161,'8 Basil Road','Birmingham','AL'),(162,'224 Westerfield Lane','Woburn','MA'),(163,'78113 Fairfield Alley','Anchorage','AK'),(164,'9 Duke Crossing','Camden','NJ'),(165,'987 Moland Terrace','Winston Salem','NC'),(166,'67115 Donald Terrace','Jacksonville','FL'),(167,'1067 Ludington Road','Memphis','TN'),(168,'84 Oxford Center','Hartford','CT'),(169,'443 Havey Alley','Charlotte','NC'),(170,'4788 Warner Hill','San Antonio','TX'),(171,'366 Buhler Crossing','Knoxville','TN'),(172,'3998 Forest Run Alley','Charlotte','NC'),(173,'394 Morningstar Trail','Santa Ana','CA'),(174,'947 Bay Plaza','Dallas','TX'),(175,'9 Ruskin Place','Conroe','TX'),(176,'705 Delaware Court','Portsmouth','NH'),(177,'9173 Everett Drive','Naples','FL'),(178,'2896 Fordem Terrace','Hyattsville','MD'),(179,'98 Ryan Way','Minneapolis','MN'),(180,'807 Kenwood Circle','Akron','OH'),(181,'58241 Esch Point','Miami','FL'),(182,'39 Hauk Place','Toledo','OH'),(183,'5941 Eastwood Place','Sarasota','FL'),(184,'91936 Oneill Way','Cincinnati','OH'),(185,'26274 North Court','Salt Lake City','UT'),(186,'4 Mayer Court','Albuquerque','NM'),(187,'0 7th Alley','Orlando','FL'),(188,'5109 Aberg Terrace','Delray Beach','FL'),(189,'164 Novick Drive','Saint Cloud','MN'),(190,'76 Quincy Court','Monticello','MN'),(191,'9 Barby Street','Aiken','SC'),(192,'38 Steensland Trail','Tampa','FL'),(193,'4720 Evergreen Plaza','Sioux Falls','SD'),(194,'28 Fisk Street','Arlington','VA'),(195,'05 Carey Street','Bethesda','MD'),(196,'94436 Pennsylvania Trail','Meridian','MS'),(197,'3 Barnett Lane','Chicago','IL'),(198,'516 Schurz Way','Humble','TX'),(199,'0006 Waubesa Parkway','El Paso','TX'),(200,'52907 Huxley Hill','Salem','OR');
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
INSERT INTO `admin` VALUES ('admin','admin123'),('cgozard1','fK8)|{'),('mhinks0','pX9=|oN|aE_$'),('sfylan2','mL7u0=bfb');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
INSERT INTO `commits` VALUES (3,1,12),(3,2,10),(2,4,1),(5,6,1),(6,7,5),(6,3,5),(7,3,2),(8,10,15),(9,5,3),(11,5,3),(12,5,3),(13,4,3),(15,8,3),(15,8,3),(14,2,3),(10,7,3),(16,3,25),(17,4,15),(18,10,26),(19,9,17),(20,7,22),(21,1,9),(22,10,9),(23,5,27),(24,3,19),(25,2,23),(26,6,14),(27,10,18),(28,1,30),(29,10,21),(30,10,29),(31,3,6),(32,10,11),(33,8,22),(34,2,23),(35,10,7),(36,9,6),(37,2,16),(38,9,14),(39,10,20),(40,3,29),(41,10,13),(42,3,28),(43,5,5),(45,5,19),(46,8,6),(47,5,11),(48,10,11),(49,4,23),(50,8,25),(51,8,24),(52,2,16),(53,2,19),(54,1,21),(55,7,14),(56,3,29),(57,7,24),(58,2,11),(59,10,9),(60,1,5),(61,1,15),(62,8,30),(63,6,15),(64,4,13),(65,4,13),(66,8,7),(67,8,15),(68,1,30),(69,1,17),(70,2,30),(71,9,27),(72,8,17),(73,7,15),(74,3,13),(75,5,7),(76,9,11),(77,1,27),(78,8,27),(79,7,10),(80,8,7),(81,2,19),(82,9,25),(83,10,26),(84,6,25),(85,5,12),(86,2,16),(87,6,5),(88,3,17),(89,3,19),(90,10,15),(91,5,29),(92,10,7),(93,2,9),(94,7,21),(95,10,12),(96,1,13),(97,9,19),(98,2,16),(99,1,20),(100,5,20),(101,3,16),(102,1,27),(103,3,6),(104,8,14),(105,2,27),(106,9,7),(107,5,29),(108,6,7),(109,3,6),(110,7,25),(111,10,26),(112,9,28),(113,10,20),(114,3,28),(115,1,5),(116,7,16),(117,1,8),(118,5,19),(119,1,9),(120,8,22),(121,1,23),(122,5,24),(123,10,22),(124,5,16),(125,8,5),(126,7,16),(127,2,28),(128,3,12),(129,2,17),(130,9,20),(131,5,28),(132,7,6),(133,6,19),(134,6,14),(135,1,9),(136,7,8),(137,9,30),(138,10,24),(139,7,18),(140,6,15),(141,1,16),(142,6,10),(143,6,11),(144,1,6),(145,9,23),(146,4,23),(147,5,20),(148,1,16),(149,4,27),(150,3,8),(151,3,10),(152,2,23),(153,6,19),(154,7,14),(155,6,9),(156,3,7),(157,9,6),(158,5,8),(159,10,21),(160,8,18),(161,5,19),(162,1,21),(163,4,7),(164,3,11),(165,5,6),(166,9,30),(167,1,18),(168,4,30),(169,8,14),(170,6,19),(171,9,13),(172,10,13),(173,8,27),(174,5,23),(175,8,8),(176,2,9),(177,3,11),(178,3,23),(179,3,26),(180,7,23),(181,8,26),(182,3,16),(183,9,8),(184,8,22),(185,6,12),(186,4,26),(187,8,27),(188,10,19),(189,3,22),(190,1,27),(191,9,7),(192,10,24),(193,4,18),(194,3,28),(195,10,26),(196,10,24),(197,7,22),(198,10,21),(199,5,13),(200,3,26),(201,7,13),(202,2,7),(203,7,11),(204,8,24),(205,6,7),(206,8,22),(207,8,28),(208,10,26),(209,10,5),(210,5,29),(211,4,20),(212,3,28),(213,4,30),(214,9,24),(215,9,24),(216,1,22),(217,3,10),(218,3,15),(219,3,20),(220,7,11),(221,8,18),(222,3,29),(223,3,28),(224,10,19),(225,4,13),(226,8,13),(227,5,20),(228,8,14),(229,5,22),(230,2,29),(231,5,24),(232,1,8),(233,2,25),(234,4,11),(235,4,8),(236,10,21),(237,1,8),(238,2,11),(239,7,5),(240,8,10),(241,6,12),(242,5,27),(243,1,30),(245,10,19),(246,1,17),(247,5,22),(248,9,5),(249,5,18),(250,8,13),(251,10,17),(252,1,18),(253,9,12),(254,10,17),(255,4,20),(256,8,15),(257,1,8),(258,2,19),(259,3,14),(260,9,7),(261,3,26),(262,3,19),(263,9,19),(264,9,9),(265,4,15),(266,8,25),(267,1,20),(268,8,5),(269,4,5),(270,7,29),(271,4,24),(272,4,19),(273,3,28),(274,9,25),(275,3,23),(276,6,14),(277,9,19),(278,9,8),(279,10,21),(280,7,6),(281,9,17),(282,1,11),(283,9,12),(284,3,30),(285,3,10),(286,1,22),(287,6,19),(288,5,29),(289,6,6),(290,10,26),(291,3,12),(292,8,6),(293,8,9),(294,6,27),(295,3,8),(296,1,19),(297,6,10),(298,10,9),(299,2,8),(300,6,15),(301,4,26),(302,10,14),(303,2,11),(304,6,9),(305,6,15),(306,3,14),(307,1,22),(308,6,17),(309,4,5),(310,8,16),(311,6,13),(312,8,21),(313,6,24),(314,5,28),(315,5,13),(316,8,18),(317,8,15),(318,8,7),(319,4,6),(320,10,6),(321,6,22),(322,6,7),(323,7,30),(324,3,26),(325,2,20),(326,8,12),(327,7,11),(328,4,9),(329,8,5),(330,1,12),(331,9,6),(332,2,8),(333,5,30),(334,2,14),(335,2,13),(336,10,5),(337,9,8),(338,7,11),(339,8,21),(340,4,17),(341,1,12),(342,4,23),(343,4,22),(344,8,17),(345,5,17),(346,7,19),(347,2,16),(348,6,17),(349,8,15),(350,6,27),(351,2,9),(352,6,16),(353,4,11),(354,5,6),(355,3,29),(356,8,24),(357,4,6),(358,7,26),(359,4,18),(360,8,10),(361,2,21),(362,10,27),(363,9,26),(364,10,8),(365,7,25),(366,2,30),(367,5,14),(368,10,19),(369,8,14),(370,7,16),(371,9,17),(372,3,12),(373,6,16),(374,1,27),(375,1,30),(376,2,8),(377,5,7),(378,4,16),(379,1,26),(380,7,30),(381,4,19),(382,10,10),(383,10,7),(384,8,16),(385,4,6),(386,1,20),(387,3,7),(388,3,26),(389,6,18),(390,10,27),(391,4,17),(392,4,28),(393,9,5),(394,3,27),(395,6,21),(396,7,17),(397,6,9),(398,7,6),(399,6,20),(400,6,20),(401,10,16),(402,7,17),(403,2,12),(404,4,10),(405,1,23),(406,2,14),(407,7,26),(407,7,26);
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
  `SSN` varchar(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guard`
--

LOCK TABLES `guard` WRITE;
/*!40000 ALTER TABLE `guard` DISABLE KEYS */;
INSERT INTO `guard` VALUES (1,'175-04-2452','Axel','Bahia','Other','1979-08-12','2011-12-18','2028-08-06',1,2,35000),(2,'346-18-8630','Ora','Blakesley','Female','1977-09-29','2007-04-19','2027-09-22',2,2,30000),(3,'680-64-5648','Rustin','Heinlein','Other','1986-12-07','2009-12-24','2025-05-30',3,3,55000),(4,'752-60-4219','Raychel','Phipps','Other','1946-11-27','2017-11-22','2028-01-20',4,1,30000),(5,'448-56-1322','Maxi','Pesik','Other','1929-12-06','2018-03-05','2029-04-11',5,3,55000),(6,'629-24-8838','Inglis','Winstone','Male','1964-04-26','2007-02-27','2024-04-20',6,3,30000),(7,'541-38-4325','Madel','Frend','Female','1983-03-20','2015-11-16','2025-02-26',7,2,35000),(8,'430-69-3227','Rubin','Hanney','Male','1966-11-27','2013-09-05','2029-01-22',8,3,40000),(9,'595-42-8065','Tyson','Munnings','Male','1973-04-01','2009-09-09','2027-09-26',9,1,60000),(10,'756-60-5718','Miquela','Janz','Female','1970-07-29','2017-01-15','2024-03-23',10,3,60000),(11,'297-84-0819','Matthew','Schowenburg','Female','1961-04-11','2017-10-15','2026-09-28',11,1,60000),(12,'769-82-0219','Sara','Caney','Male','1980-12-04','2019-05-12','2024-06-24',12,2,30000),(13,'859-01-8772','Malissa','Bortoluzzi','Other','1975-10-21','2007-08-25','2026-07-24',13,1,45000),(14,'592-95-6953','Kain','Merriton','Other','1925-06-01','2010-03-03','2026-02-26',14,1,55000),(15,'645-21-9877','Margarita','Askin','Other','1971-04-27','2017-11-30','2028-04-26',15,2,40000),(16,'745-07-0673','Pebrook','Dymocke','Other','1928-11-06','2013-08-19','2026-04-10',16,3,60000),(17,'671-68-2457','Sampson','Saleway','Male','1969-11-15','2012-10-01','2025-02-09',17,2,30000),(18,'618-08-9819','Jeffrey','Shier','Male','1976-03-20','2011-06-23','2025-05-27',18,2,60000),(19,'435-50-8295','Sandor','Dunnett','Other','1942-01-26','2013-12-23','2026-01-07',19,1,30000),(20,'138-97-9735','Davin','Seagar','Male','1933-07-05','2010-11-01','2028-03-19',20,3,30000),(21,'355-77-0675','Florance','McNeachtain','Other','1954-02-09','2013-03-22','2026-03-26',21,2,50000),(22,'209-29-5979','Ches','Josskovitz','Female','1947-10-04','2016-11-09','2029-02-16',22,3,55000),(23,'712-27-1155','Ax','Hissie','Male','1939-07-06','2012-02-23','2026-02-27',23,2,45000),(24,'501-10-5389','Falito','Crookes','Female','1949-07-13','2017-09-01','2025-06-13',24,3,60000),(25,'322-92-8048','Hortensia','Lingner','Male','1962-08-13','2017-06-21','2025-02-04',25,3,45000),(26,'567-43-5202','Cori','Solman','Female','1966-01-02','2013-10-04','2029-07-31',26,3,40000),(27,'529-88-0617','Mortie','Farre','Other','1976-05-08','2018-05-14','2027-10-04',27,1,60000),(28,'290-06-9980','Marguerite','Rushmare','Other','1938-01-25','2010-11-17','2028-01-18',28,3,60000),(29,'446-85-8466','Julie','Lamar','Male','1957-09-05','2017-06-12','2029-09-23',29,3,30000),(30,'287-41-4268','Melodee','Phelp','Other','1941-02-19','2010-07-13','2024-03-06',30,1,55000),(31,'299-27-3736','Waylin','Odlin','Male','1953-07-22','2017-06-27','2024-02-18',31,2,45000),(32,'568-27-1277','Rainer','Egdal','Male','1937-05-29','2019-07-08','2026-06-02',32,3,30000),(33,'455-55-9575','Gayle','Waldram','Male','1965-11-07','2016-02-12','2028-03-09',33,3,40000),(34,'339-36-6444','Maximo','Officer','Male','1943-12-18','2016-01-06','2024-11-14',34,2,40000),(35,'512-43-1609','Annnora','Dyball','Male','1950-11-27','2008-11-15','2024-03-29',35,3,40000),(36,'743-62-5690','Stormi','Stothart','Other','1969-12-09','2008-02-17','2024-10-27',36,3,35000),(37,'571-44-4391','Joelly','Wibberley','Other','1968-05-26','2014-04-14','2026-08-30',37,3,50000),(38,'186-71-4271','Nicolle','Lere','Other','1959-05-14','2015-03-26','2026-11-06',38,3,30000),(39,'586-40-6331','Bearnard','Egger','Male','1953-03-12','2017-12-02','2026-05-14',39,2,30000),(40,'298-87-1933','Henrietta','Baudi','Female','1982-02-20','2015-08-28','2028-06-11',40,3,55000),(41,'614-95-4268','Brunhilda','Troman','Female','1979-10-15','2007-09-03','2028-03-17',41,3,60000),(42,'848-92-7070','Andeee','Henricsson','Other','1957-08-29','2010-10-06','2027-12-21',42,2,50000),(43,'139-68-8033','Arnaldo','Geerdts','Male','1983-02-12','2017-04-12','2029-02-10',43,1,45000),(45,'371-13-8481','Niccolo','Sparham','Male','1986-10-28','2012-11-23','2025-02-03',45,1,35000);
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
-- Temporary view structure for view `guard_view`
--

DROP TABLE IF EXISTS `guard_view`;
/*!50001 DROP VIEW IF EXISTS `guard_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `guard_view` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `sex`,
 1 AS `Dob`,
 1 AS `servSdate`,
 1 AS `servEdate`,
 1 AS `addrId`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `labor` VALUES (1,'gardening'),(2,'cleaning'),(3,'construction'),(4,'carpentry'),(5,'plumbing');
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
-- Temporary view structure for view `medstaff_view`
--

DROP TABLE IF EXISTS `medstaff_view`;
/*!50001 DROP VIEW IF EXISTS `medstaff_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `medstaff_view` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `sex`,
 1 AS `Dob`,
 1 AS `servSdate`,
 1 AS `servEdate`,
 1 AS `addrId`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `performs`
--

DROP TABLE IF EXISTS `performs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performs` (
  `laborId` int NOT NULL,
  `prisonerId` int NOT NULL,
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
INSERT INTO `performs` VALUES (2,2),(1,3),(1,15),(3,16),(3,17),(1,18),(1,19),(2,20),(3,21),(4,22),(1,23),(3,24),(1,25),(3,26),(1,27),(3,28),(2,29),(4,30),(1,31),(5,32),(2,33),(2,34),(1,35),(5,36),(3,37),(2,38),(5,39),(1,40),(5,41),(1,42),(5,43),(4,59),(1,60),(2,61),(1,62),(2,63),(2,64),(3,65),(5,66),(1,67),(1,68),(3,69),(3,70),(4,71),(2,72),(2,73),(4,74),(2,75),(5,76),(3,77),(4,78),(3,79),(3,80),(3,81),(4,82),(4,83),(3,84),(4,85),(2,86),(3,87),(3,88),(4,89),(5,90),(5,91),(3,92),(3,93),(5,94),(2,95),(5,96),(3,97),(2,98),(3,99),(1,100),(1,101),(2,102),(4,103),(4,104),(2,105),(2,106),(4,107),(5,108),(2,109),(4,110),(3,111),(4,112),(4,113),(4,114),(5,115),(1,116),(5,117),(3,118),(5,119),(4,120),(5,121),(5,122),(2,123),(5,124),(1,125),(4,126),(5,127),(2,128),(4,129),(4,130),(1,131),(3,132),(4,133),(1,134),(4,135),(5,136),(5,137),(5,138),(2,139),(2,140),(5,141),(4,142),(3,143),(3,144),(5,145),(3,146),(2,147),(3,148),(2,149),(2,150),(2,151),(5,152),(2,153),(3,154),(2,155),(4,156),(2,157),(3,158),(2,159),(1,160),(5,161),(5,162),(1,163),(1,164),(4,165),(5,166),(5,167),(5,168),(2,169),(3,170),(1,171),(5,172),(5,173),(1,174),(1,175),(4,176),(1,177),(5,178),(4,179),(1,180),(2,181),(1,182),(1,183),(1,184),(1,185),(5,186),(2,187),(2,188),(5,189),(4,190),(1,191),(4,192),(1,193),(2,194),(3,195),(1,196),(3,197),(3,198),(5,199),(1,200),(5,201),(2,202),(5,203),(2,204),(2,205),(2,206),(5,207),(4,208),(1,209),(3,210),(2,211),(1,212),(5,213),(4,214),(5,215),(1,216),(4,217),(5,218),(3,219),(3,220),(1,221),(1,222),(2,223),(3,224),(1,225),(4,226),(2,227),(5,228),(5,229),(1,230),(2,231),(1,232),(3,233),(1,234),(2,235),(2,236),(3,237),(5,238),(3,239),(3,240),(5,241),(3,242),(5,243),(5,280),(5,281),(3,282),(1,283),(3,284),(5,285),(2,286),(2,287),(5,288),(1,289),(4,290),(3,291),(5,292),(2,293),(1,294),(1,295),(1,296),(4,297),(3,298),(3,299),(5,300),(1,301),(3,302),(4,303),(4,304),(3,305),(2,306),(2,307),(3,308),(2,309),(3,310),(4,311),(5,312),(5,313),(2,314),(1,315),(4,316),(1,317),(1,318),(4,319),(2,320),(2,321),(3,322),(2,323),(4,324),(3,325),(3,326),(3,327),(4,328),(1,329),(1,330),(5,331),(3,332),(2,333),(2,334),(4,335),(4,336),(5,337),(3,338),(4,339),(3,340),(2,341),(3,342),(1,343),(4,344),(4,345),(4,346),(2,347),(1,348),(2,349),(2,350),(5,351),(3,352),(5,353),(5,354),(1,355),(3,356),(3,357),(4,358),(1,359),(3,360),(2,361),(3,362),(2,363),(3,364),(5,365),(5,366),(3,367),(5,368),(5,369),(4,370),(2,371),(1,372),(3,373);
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
  `SSN` varchar(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner`
--

LOCK TABLES `prisoner` WRITE;
/*!40000 ALTER TABLE `prisoner` DISABLE KEYS */;
INSERT INTO `prisoner` VALUES (2,'1223040506','Cuti','Romero','Male','1995-05-05','2022-03-03','2025-04-04',37,1),(3,'1226040506','Enner ','Valencia','Male','1995-04-04','2020-04-04','2025-04-04',36,1),(5,'1226040556','Joe','Willock','Male','1982-05-24','2012-03-24','2025-03-24',33,0),(6,'2329040506','Jesse','Lingard','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(7,'2329040546','Jacob','Ramsey','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(8,'2326042546','Philip','Coutinho','Male','1980-03-24','2010-03-24','2025-03-24',33,0),(9,'3490205068','Joe','Pelle','Male','1995-04-04','2020-03-03','2025-04-04',45,1),(10,'4534567819','James','Maddison','Male','1995-06-06','2020-04-04','2025-05-05',45,1),(11,'3427891030','Pablo','Torre','Male','2000-04-04','2021-04-05','2025-04-04',47,1),(12,'5678392010','Gabriel','Martinelli','Male','2001-02-02','2020-03-03','2022-03-03',48,1),(13,'1020304051','Guigi','Donnarumma','Male','2001-03-03','2020-03-03','2025-04-04',49,1),(14,'2390405060','Guigi','Buffon','Male','1970-04-04','2015-04-04','2023-05-05',50,1),(15,'1058394858','Ferland','Mendy','Male','1998-02-02','2020-03-03','2025-04-04',51,1),(16,'2903049658','Robbie','Van Persie','Male','1981-04-08','2019-03-03','2024-04-04',52,1),(17,'1096847302','Yoichi','Isagi','Female','2000-01-01','2020-03-03','2022-04-05',53,0),(18,'1029402950','Joao','Felix','Male','1999-04-04','2020-04-04','2040-03-03',54,1),(19,'3029697949','Sergio','Ramos','Male','1995-04-04','2020-03-03','2025-04-04',48,0),(20,'2905948950','Neymar','Santos Jr','Male','1995-04-04','2020-03-03','2022-12-09',45,1),(21,'297-28-1364','Catherine','Shinn','Other','1951-11-07','2020-03-01','2028-09-08',21,0),(22,'737-32-0022','Ray','Horche','Other','1941-08-19','2015-11-24','2031-10-13',22,1),(23,'847-50-8712','Kalil','Alfonso','Female','1927-04-23','2021-12-02','2045-03-01',23,1),(24,'261-57-2667','Piper','Gheraldi','Male','1967-12-17','2006-11-29','2042-10-14',24,1),(25,'397-72-5150','Kaylyn','Tampling','Male','1930-03-03','2006-05-04','2028-02-03',25,0),(26,'439-78-2356','Ralph','Shinner','Female','1962-07-04','2009-01-06','2041-04-15',26,1),(27,'537-23-2804','Peyter','Roper','Other','1959-04-06','2015-10-08','2024-08-04',27,0),(28,'382-21-2498','Betteann','Kinzett','Other','1967-08-24','2007-02-13','2033-08-14',28,1),(29,'400-84-7746','Rahel','Reddings','Female','1942-10-10','2022-01-02','2049-01-26',29,0),(30,'474-20-1985','Tallulah','Krienke','Female','1965-09-20','2012-07-06','2027-05-27',30,0),(31,'518-62-4123','Lola','Jeste','Female','1983-01-12','2009-01-27','2035-03-01',31,0),(32,'322-81-7223','Patti','Rummer','Female','1987-08-18','2011-11-03','2048-08-06',32,1),(33,'604-16-9102','Bendicty','Beddon','Other','1927-07-12','2014-06-20','2047-10-13',33,0),(34,'822-81-4532','Briggs','McCrackan','Female','1938-03-16','2018-07-29','2033-10-21',34,1),(35,'204-91-0677','Ferdinanda','Caccavale','Other','1961-04-24','2010-12-12','2031-03-20',35,1),(36,'783-57-0260','Joey','Rymour','Other','1933-07-11','2008-07-02','2038-09-17',36,0),(37,'406-62-1499','Ignaz','Castella','Female','1950-05-11','2020-04-07','2035-05-31',37,0),(38,'212-19-4459','Lemar','Kiss','Female','1949-05-14','2020-10-22','2047-01-09',38,1),(39,'206-22-3893','Merwin','Stringman','Female','1962-03-02','2007-03-11','2043-01-05',39,0),(40,'663-98-1378','Serena','Cliffe','Female','1936-04-18','2021-03-12','2025-10-15',40,0),(41,'598-83-3958','Petronella','Forlonge','Other','1945-06-20','2019-03-09','2043-10-08',41,0),(42,'817-83-6110','Kare','Jimes','Other','1976-01-01','2010-08-06','2026-10-20',42,0),(43,'822-61-1278','Mimi','Reder','Other','1977-12-26','2010-11-07','2027-02-27',43,0),(45,'722-55-1554','Nevins','MacFadin','Other','1973-01-20','2006-01-02','2038-10-26',45,1),(46,'127-19-2355','Ailbert','Cassley','Male','1950-05-13','2018-03-26','2047-07-15',46,1),(47,'366-85-2239','Silvie','Pringle','Male','1943-03-23','2015-01-18','2030-08-03',47,1),(48,'268-71-5082','Giraldo','Malter','Other','1944-10-10','2016-11-22','2038-02-14',48,0),(49,'361-79-7701','Lefty','Ridewood','Other','1928-10-04','2018-07-12','2024-08-29',49,1),(50,'175-76-8404','Englebert','Mathivon','Female','1948-11-10','2013-08-13','2042-08-18',50,1),(51,'304-47-1621','Rebekkah','Bassilashvili','Male','1924-04-25','2012-11-11','2044-10-22',51,0),(52,'372-30-0001','Kynthia','Decruse','Male','1927-07-02','2009-05-19','2034-09-28',52,0),(53,'567-14-9744','Domingo','Bossons','Male','1933-05-15','2020-07-05','2041-09-22',53,0),(54,'323-59-8797','Ardella','Stokes','Female','1977-01-22','2016-11-17','2031-06-22',54,0),(55,'205-82-9710','Jack','Fere','Other','1967-06-30','2008-03-07','2024-10-09',55,1),(56,'737-34-1254','Binky','Storkes','Other','1948-01-13','2020-02-02','2033-01-14',56,0),(57,'516-40-5069','Ariela','McAlinden','Male','1983-04-27','2013-12-01','2047-05-17',57,1),(58,'824-01-2999','Justine','Slorance','Female','1938-04-10','2021-11-16','2043-07-31',58,0),(59,'669-82-5226','Kellsie','Stagg','Male','1931-05-29','2014-12-22','2044-06-24',59,0),(60,'719-29-7522','Adaline','Ayree','Male','1975-10-04','2016-04-18','2046-01-05',60,0),(61,'348-90-2614','Fair','Franceschino','Male','1942-01-09','2018-10-24','2035-02-19',61,0),(62,'717-87-2301','Penelope','Quincey','Female','1930-08-30','2016-11-27','2027-04-15',62,1),(63,'296-14-5478','Gordy','Southwick','Male','1972-06-30','2022-09-07','2029-09-25',63,0),(64,'647-97-7344','Jim','Filyushkin','Male','1976-03-18','2009-09-23','2041-02-02',64,1),(65,'207-02-0656','Sly','Fontanet','Male','1939-09-19','2019-10-24','2028-04-06',65,1),(66,'101-83-2183','Edwina','Mulqueen','Female','1951-07-12','2013-05-01','2039-03-24',66,0),(67,'451-44-1082','Randi','Windrum','Male','1954-12-28','2018-11-07','2041-05-05',67,0),(68,'482-94-4439','Mariele','Shakeshaft','Female','1977-11-07','2022-11-17','2032-02-16',68,1),(69,'596-19-8920','Zak','Stivens','Other','1979-06-09','2016-01-13','2033-01-04',69,1),(70,'330-07-2793','Jereme','Seston','Other','1947-12-10','2022-05-26','2037-08-20',70,0),(71,'856-56-6853','Mahmud','Waye','Female','1950-01-31','2009-10-21','2044-01-04',71,1),(72,'554-44-4301','Lynna','Broom','Female','1937-04-16','2006-03-04','2041-12-20',72,1),(73,'621-34-7663','Constantino','Swinbourne','Other','1924-08-16','2021-12-05','2043-12-28',73,0),(74,'848-85-2392','Wylie','Beasant','Female','1951-11-01','2008-07-30','2033-06-04',74,1),(75,'877-47-4756','Benoite','Hadley','Male','1928-12-08','2009-04-28','2034-01-19',75,0),(76,'203-88-8614','Cate','Maryott','Other','1986-06-14','2014-05-22','2032-02-22',76,1),(77,'267-12-2031','Mora','Pick','Other','1962-06-02','2016-06-12','2042-07-13',77,1),(78,'587-01-3844','Nicky','Streather','Male','1984-01-01','2021-09-21','2036-06-27',78,1),(79,'825-31-6695','Frasier','Caress','Female','1948-01-30','2022-04-29','2027-06-06',79,0),(80,'357-52-7531','Alisha','Spennock','Male','1935-06-12','2016-09-23','2045-10-09',80,0),(81,'264-16-2501','Karoly','Coull','Male','1939-01-17','2009-01-10','2046-01-05',81,1),(82,'861-32-2302','Montgomery','Golder','Other','1987-07-16','2013-09-23','2024-05-17',82,0),(83,'550-46-3004','Blaire','Spurier','Female','1970-10-06','2021-10-11','2044-12-24',83,1),(84,'574-17-0487','Christophe','Gair','Other','1930-03-10','2018-10-31','2024-01-25',84,0),(85,'243-07-1074','Sollie','O\'Sherin','Male','1943-09-27','2015-06-20','2024-09-22',85,1),(86,'189-63-1386','Jim','Santi','Other','1937-01-03','2020-09-21','2047-05-25',86,0),(87,'172-69-8291','Natalee','Roussell','Other','1975-07-19','2021-12-22','2030-08-05',87,1),(88,'732-97-2579','Pierson','Reddan','Female','1983-03-09','2010-11-21','2027-09-09',88,0),(89,'204-08-6400','Jarrid','Pavis','Male','1970-12-20','2021-08-18','2029-06-30',89,0),(90,'396-98-0871','Stanislas','Caghy','Male','1972-08-16','2022-12-23','2049-01-31',90,1),(91,'394-25-8731','Elwin','Munnings','Male','1931-02-06','2018-10-27','2037-01-06',91,1),(92,'652-38-9996','Billie','Moulding','Other','1948-05-07','2018-08-03','2039-10-11',92,0),(93,'701-98-1467','Mitchel','Wyard','Male','1972-12-19','2013-11-18','2048-04-01',93,0),(94,'608-93-7841','Clara','Rosendorf','Male','1975-12-03','2022-11-29','2049-12-19',94,1),(95,'791-28-1784','Gunter','Buckston','Other','1928-08-11','2008-08-08','2049-07-03',95,0),(96,'100-76-3982','Dasie','Sidaway','Other','1924-02-03','2009-06-05','2041-01-12',96,1),(97,'405-03-6777','Marven','Mathivon','Female','1934-06-23','2007-05-31','2026-09-01',97,1),(98,'350-37-8666','Todd','Duguid','Male','1932-09-13','2016-06-02','2040-05-21',98,1),(99,'274-52-2885','Forster','Baudrey','Other','1938-04-27','2017-04-26','2031-06-27',99,0),(100,'478-90-3487','Bertina','Biss','Male','1940-05-15','2019-10-26','2033-09-08',100,0),(101,'301-74-4360','Jerrilyn','Ruilton','Female','1983-11-30','2019-03-01','2030-01-13',101,0),(102,'796-90-8586','Dorice','Bunyard','Female','1960-03-30','2006-03-31','2049-05-10',102,1),(103,'137-62-5117','Hesther','Matyas','Male','1970-08-03','2019-07-29','2035-05-25',103,0),(104,'210-61-0027','Nydia','Handrock','Other','1946-02-05','2021-02-25','2036-03-14',104,0),(105,'429-29-6034','Heddie','Fairest','Male','1944-11-10','2008-11-16','2024-10-12',105,1),(106,'329-45-0791','Ben','Garforth','Other','1982-02-03','2009-09-29','2037-04-23',106,1),(107,'167-97-9067','Ruby','Ruthen','Other','1934-06-07','2011-12-19','2043-03-01',107,1),(108,'479-33-1309','Herbie','Higgonet','Male','1943-12-18','2017-07-15','2029-08-21',108,0),(109,'735-58-3949','Nickolaus','Benadette','Female','1927-11-08','2019-12-15','2037-01-05',109,0),(110,'507-21-8866','Atalanta','Stephenson','Other','1948-12-08','2008-04-17','2030-06-29',110,0),(111,'596-51-7060','Sheila','Askam','Other','1928-09-01','2006-03-16','2042-12-26',111,1),(112,'877-31-8575','Amory','Dreger','Female','1943-08-01','2021-08-08','2028-07-03',112,0),(113,'677-81-8457','Frederik','Dutt','Other','1944-01-05','2009-12-08','2039-06-22',113,1),(114,'121-61-5253','Leela','Gumly','Male','1924-03-24','2022-11-20','2033-02-14',114,1),(115,'263-55-2900','Waldo','Senescall','Male','1926-06-27','2022-05-29','2044-10-21',115,1),(116,'164-95-4121','Joelly','Kinnerk','Male','1932-02-01','2006-12-12','2031-06-26',116,1),(117,'641-84-8952','Romeo','Criple','Male','1955-01-16','2018-02-04','2030-11-25',117,0),(118,'479-68-0930','Fawne','O\'Carney','Female','1957-06-25','2015-03-11','2024-11-08',118,1),(119,'540-64-9028','Garvy','Oaten','Female','1925-07-24','2009-10-05','2048-11-20',119,0),(120,'651-12-8978','Janina','Russo','Other','1938-05-16','2020-01-28','2048-09-29',120,1),(121,'178-43-9562','Waite','Shortcliffe','Other','1956-09-28','2020-12-08','2036-01-08',121,0),(122,'609-80-4495','Micheal','Matley','Female','1981-12-05','2014-10-17','2042-04-17',122,0),(123,'538-14-1962','Arabelle','Schuricke','Female','1952-02-25','2006-02-08','2034-01-19',123,0),(124,'577-43-8082','Edee','Buckerfield','Other','1955-01-08','2015-11-29','2045-08-09',124,0),(125,'573-37-2651','Ozzie','Alflat','Male','1974-03-04','2021-03-10','2033-05-14',125,0),(126,'203-02-6702','Elvina','Pavia','Female','1960-12-05','2010-01-14','2037-06-21',126,0),(127,'115-96-5923','Townsend','Arnao','Male','1981-03-17','2017-06-20','2029-05-27',127,1),(128,'199-78-0095','Marcy','Comins','Female','1928-11-12','2014-08-22','2040-12-07',128,0),(129,'748-58-3403','Philomena','Stonman','Male','1949-12-19','2006-06-30','2029-12-31',129,0),(130,'428-27-1292','Consolata','Vampouille','Other','1966-08-19','2006-01-05','2044-01-09',130,0),(131,'718-88-0260','Frederick','Goodreid','Other','1986-10-01','2019-05-21','2026-08-24',131,0),(132,'261-48-2753','Aurie','Bolus','Female','1961-06-19','2015-07-10','2031-03-14',132,1),(133,'316-67-0573','Eryn','Claus','Female','1956-03-27','2010-11-23','2027-07-06',133,0),(134,'288-49-1192','Silvan','Leil','Other','1927-04-06','2020-03-18','2024-02-25',134,0),(135,'399-27-5265','Wallis','Tesauro','Other','1935-10-08','2018-06-12','2033-08-22',135,1),(136,'489-16-5575','Griffith','O\'Crowley','Other','1959-03-15','2007-03-02','2027-05-03',136,1),(137,'711-19-8361','Winona','Caulliere','Male','1953-05-15','2008-04-29','2029-03-19',137,0),(138,'503-88-6629','Malanie','Weagener','Female','1954-05-03','2010-01-12','2030-02-04',138,1),(139,'371-42-0336','Toinette','Wearn','Other','1962-05-25','2007-04-03','2030-11-02',139,0),(140,'546-34-5465','Emery','Rustedge','Female','1936-08-11','2019-09-13','2024-01-01',140,0),(141,'151-53-0754','Ofella','Wenderott','Female','1952-02-09','2021-06-18','2040-06-12',141,0),(142,'588-58-4232','Hobey','Banfield','Other','1924-05-11','2013-10-25','2048-01-08',142,0),(143,'805-04-9230','Jayne','Addenbrooke','Other','1942-12-21','2006-06-16','2036-02-20',143,0),(144,'394-46-6128','Emmett','Clutterbuck','Male','1975-07-11','2007-01-19','2029-10-17',144,0),(145,'648-07-4324','Wolf','Thaim','Other','1954-03-04','2019-07-25','2038-01-29',145,0),(146,'123-26-4973','Amargo','Seabrook','Other','1969-08-24','2018-08-27','2029-01-23',146,1),(147,'110-64-9252','Fidel','Pusey','Other','1963-10-22','2016-11-05','2040-03-21',147,1),(148,'226-62-9483','Courtenay','Betton','Female','1937-03-10','2018-03-26','2030-11-22',148,1),(149,'494-13-7936','Lavena','Fanshawe','Female','1978-01-18','2019-04-10','2039-11-17',149,1),(150,'804-51-6346','Anetta','O\'Dowgaine','Other','1968-04-06','2021-08-07','2042-03-09',150,0),(151,'742-84-8671','Mordy','Soanes','Female','1956-02-12','2019-08-28','2035-03-08',151,0),(152,'300-57-7182','Alisa','Yukhnov','Other','1962-06-29','2013-10-09','2038-10-19',152,0),(153,'209-56-2850','Rhett','Stroband','Other','1968-03-19','2009-06-25','2029-10-21',153,1),(154,'246-42-9085','Aland','Jobson','Female','1984-02-24','2012-02-27','2039-09-12',154,0),(155,'712-70-6565','Kerrie','Van Velde','Female','1984-07-18','2014-02-26','2030-11-15',155,1),(156,'441-74-4511','Lavinie','Blanch','Other','1934-08-26','2015-11-02','2024-05-09',156,0),(157,'695-17-4923','Toiboid','Pleaden','Female','1970-01-21','2022-02-08','2034-12-02',157,1),(158,'547-53-4916','Muire','Dainton','Other','1932-12-17','2008-03-12','2034-08-30',158,1),(159,'521-24-4302','Melisent','Muck','Female','1985-09-22','2017-02-12','2031-04-23',159,0),(160,'513-93-4459','Judye','Saurat','Other','1953-06-13','2019-09-05','2038-01-13',160,0),(161,'775-74-3074','Sonny','Gouldbourn','Female','1966-06-24','2022-07-23','2039-10-08',161,0),(162,'881-82-8361','Emmott','Linzey','Female','1951-03-01','2022-01-25','2029-10-15',162,1),(163,'567-24-4082','Goldarina','Gossington','Other','1928-01-01','2022-02-25','2033-03-08',163,0),(164,'895-64-0903','Amalle','Seabridge','Other','1981-05-07','2011-05-27','2049-06-10',164,1),(165,'522-50-0065','Jordon','Falshaw','Female','1958-06-21','2018-02-21','2035-03-21',165,1),(166,'683-27-0949','Melinda','Aymerich','Male','1925-02-11','2008-01-03','2041-04-23',166,0),(167,'896-98-4201','Nertie','Corbett','Male','1924-12-14','2014-09-02','2040-12-29',167,0),(168,'438-24-7676','Clemence','OIlier','Other','1936-07-22','2008-02-07','2046-11-18',168,0),(169,'852-28-7332','Wernher','Santello','Male','1973-01-25','2015-12-21','2034-10-11',169,0),(170,'833-32-3122','Creight','Merwood','Male','1950-07-21','2016-06-24','2026-01-04',170,1),(171,'380-36-6643','Robby','Tureville','Other','1935-04-21','2020-09-21','2044-03-02',171,0),(172,'260-33-0271','Augustine','De Freyne','Female','1971-10-28','2016-01-06','2039-07-06',172,0),(173,'101-56-1449','Emelyne','Rettie','Other','1926-09-07','2006-09-17','2032-11-20',173,1),(174,'519-50-0099','Cory','Govenlock','Male','1980-10-05','2012-05-07','2024-03-29',174,0),(175,'191-23-6314','Harriet','McWhin','Female','1987-10-09','2012-05-06','2038-04-24',175,1),(176,'307-52-0839','Hardy','Baber','Other','1944-07-26','2020-09-13','2024-07-14',176,0),(177,'357-38-8327','Claudetta','Bulloch','Female','1985-02-25','2017-11-20','2024-10-28',177,0),(178,'819-64-3049','Tabitha','Croome','Male','1965-03-19','2017-02-11','2034-04-11',178,0),(179,'788-10-1009','Remus','Minister','Other','1939-07-14','2006-12-17','2033-08-08',179,0),(180,'303-77-2344','Odelinda','Gott','Other','1940-01-11','2019-07-21','2025-04-26',180,1),(181,'892-52-7095','Tallou','January 1st','Female','1927-10-15','2011-01-04','2049-05-14',181,1),(182,'675-50-7444','Welch','Lewtey','Female','1968-02-24','2020-06-26','2033-11-01',182,0),(183,'210-89-5093','Emelia','Huttley','Male','1972-08-29','2016-10-12','2033-02-22',183,0),(184,'371-74-1628','Charmion','Canellas','Other','1982-08-09','2008-11-09','2027-12-26',184,0),(185,'316-58-9915','Waite','Steiner','Other','1970-10-11','2008-10-06','2031-10-01',185,0),(186,'455-18-0509','Barnett','Kase','Other','1978-10-26','2022-01-13','2025-08-15',186,1),(187,'159-84-5663','Tracee','Dickson','Male','1966-02-04','2021-09-28','2047-11-29',187,0),(188,'481-72-2207','Tera','Quantrell','Other','1926-07-24','2009-12-01','2028-11-11',188,1),(189,'407-90-6440','Jelene','Levene','Male','1943-12-24','2014-04-17','2040-07-25',189,1),(190,'581-21-8848','Major','Di Dello','Female','1959-05-17','2008-02-29','2025-08-06',190,0),(191,'503-35-5595','Jesus','Cheel','Other','1968-04-13','2008-10-18','2039-12-13',191,0),(192,'610-44-5994','Theo','Brewerton','Other','1945-09-19','2012-01-06','2033-09-07',192,1),(193,'626-52-2179','Percy','Sommerscales','Male','1966-10-29','2006-01-12','2046-05-30',193,1),(194,'293-19-5589','Jerri','Toman','Male','1961-09-24','2022-12-21','2035-12-29',194,0),(195,'135-28-2393','Lavina','Ruddell','Male','1925-07-21','2010-06-10','2036-08-09',195,1),(196,'307-49-2373','Gay','Frye','Female','1948-04-04','2015-02-14','2035-10-01',196,0),(197,'862-43-5610','Ursuline','Dorin','Male','1925-04-01','2020-07-13','2049-11-16',197,0),(198,'348-19-4394','Huntlee','Cliff','Other','1982-05-22','2012-01-02','2035-01-12',198,0),(199,'526-07-5389','Ernst','Swyer','Female','1955-12-30','2015-07-29','2028-05-12',199,1),(200,'854-58-4884','Julienne','Rameaux','Female','1948-12-22','2011-12-04','2042-11-18',200,1),(201,'732-51-4620','Gelya','Harse','Other','1961-03-29','2012-01-02','2032-11-01',1,1),(202,'489-92-0523','Curr','Sturley','Female','1985-05-27','2019-11-21','2029-06-27',2,1),(203,'178-88-5068','Vanya','Kahn','Female','1945-05-22','2014-03-28','2033-09-03',3,0),(204,'895-90-3511','Gustavo','Feltham','Male','1930-11-06','2022-12-19','2027-06-08',4,1),(205,'702-55-7384','Carma','Haggus','Female','1927-01-08','2011-06-01','2036-06-20',5,1),(206,'447-03-3825','Ruddy','Maharry','Female','1944-09-30','2008-11-26','2047-05-29',6,0),(207,'386-02-3741','Roseanna','Burghall','Male','1933-12-12','2014-06-28','2046-11-16',7,1),(208,'556-45-9843','Waverly','Sharpin','Male','1926-01-03','2014-03-03','2039-10-27',8,1),(209,'255-33-4378','Balduin','Oen','Male','1938-03-12','2008-12-25','2046-04-05',9,0),(210,'322-34-0728','Carling','Saywell','Female','1925-04-02','2019-11-08','2049-11-08',10,1),(211,'397-92-6152','Vida','Jenks','Male','1934-11-27','2021-12-09','2033-07-05',11,1),(212,'512-49-7068','Keri','Elwel','Other','1929-03-07','2013-01-02','2038-12-15',12,1),(213,'117-73-8720','Chrystel','Free','Male','1965-12-27','2009-12-04','2046-09-10',13,0),(214,'513-25-1111','Chance','Condy','Other','1959-11-22','2010-08-29','2036-02-14',14,1),(215,'549-11-6486','Rowan','Jenicke','Female','1929-03-23','2015-10-15','2042-10-03',15,1),(216,'653-56-9115','Koren','Kilbane','Male','1935-08-30','2007-06-28','2029-02-07',16,1),(217,'714-15-6406','Balduin','Brayford','Female','1984-05-16','2016-09-02','2024-02-15',17,1),(218,'700-14-2483','Bernardine','People','Female','1941-07-30','2020-11-02','2031-05-20',18,0),(219,'474-08-9427','Cullan','Mortel','Other','1929-01-05','2013-02-21','2041-06-09',19,1),(220,'589-58-2026','Leslie','Tawn','Other','1960-04-09','2011-02-06','2041-01-02',20,0),(221,'265-40-2567','Nicholas','Aldridge','Other','1944-04-09','2013-06-20','2046-10-01',21,1),(222,'526-18-6560','Kari','Stallebrass','Male','1975-01-28','2006-11-19','2033-09-06',22,1),(223,'325-64-2218','Stephen','Smetoun','Male','1943-01-06','2009-06-21','2026-02-18',23,0),(224,'645-54-8015','Barry','Doleman','Female','1953-03-08','2009-01-10','2048-08-31',24,1),(225,'406-14-3641','Currey','Menere','Other','1941-10-08','2017-07-05','2040-01-21',25,1),(226,'865-09-3920','Vasilis','Charlet','Male','1945-01-25','2014-02-28','2037-09-10',26,1),(227,'242-07-4064','Jay','Bento','Other','1934-01-21','2010-08-22','2025-04-14',27,0),(228,'729-41-8420','Gavin','Brickner','Female','1965-08-14','2010-05-17','2046-04-19',28,0),(229,'843-14-0713','Immanuel','Frere','Female','1944-12-29','2018-03-23','2047-02-03',29,1),(230,'758-45-4138','Angelico','Persent','Other','1940-04-24','2014-10-10','2037-07-24',30,0),(231,'518-78-1525','Wilma','Jillions','Other','1935-01-10','2009-04-21','2024-01-05',31,1),(232,'577-61-4645','Odilia','Vicioso','Male','1974-01-31','2017-05-26','2043-08-12',32,0),(233,'216-94-9087','Mario','Comiam','Other','1984-01-21','2018-11-22','2027-07-25',33,1),(234,'579-60-5418','Pamela','Crates','Female','1926-10-17','2008-03-17','2032-05-09',34,1),(235,'135-65-9904','Priscilla','Hartegan','Other','1950-04-16','2007-11-13','2047-04-12',35,1),(236,'358-07-9326','Norry','Whapham','Female','1980-12-04','2015-12-25','2046-05-31',36,0),(237,'402-99-5508','Shantee','Patrickson','Male','1924-03-04','2021-02-21','2049-10-21',37,1),(238,'685-03-2879','Allan','Larraway','Other','1973-05-19','2011-07-28','2038-08-15',38,0),(239,'564-86-0961','Margy','Deavin','Male','1963-03-26','2022-01-09','2042-08-12',39,0),(240,'775-93-0576','Brodie','Nudd','Other','1982-09-14','2018-09-20','2024-07-02',40,1),(241,'274-42-9215','Maggee','Dragonette','Male','1929-07-11','2016-03-26','2031-08-06',41,1),(242,'477-87-2599','Jordain','Longega','Male','1943-04-20','2016-06-23','2049-08-05',42,1),(243,'334-96-5175','Andra','Gerrell','Male','1924-08-25','2022-08-05','2024-04-27',43,0),(245,'759-88-2867','Cheryl','Dayment','Female','1940-09-30','2021-10-06','2031-11-13',45,1),(246,'614-29-6830','Leontyne','Scotson','Female','1927-11-04','2012-07-31','2043-04-09',46,1),(247,'572-94-6194','Donn','Handes','Other','1952-07-01','2020-02-09','2040-10-13',47,0),(248,'826-43-6899','Ruthie','Tassell','Other','1971-10-11','2017-01-29','2041-05-23',48,1),(249,'451-52-4694','Vite','Procter','Female','1973-10-26','2015-06-18','2045-09-18',49,1),(250,'162-85-7195','Hubie','Cordier','Other','1981-06-16','2006-07-10','2030-05-25',50,1),(251,'398-40-3660','Mary','Ellam','Female','1936-02-12','2020-09-22','2028-03-13',51,0),(252,'395-59-0888','Bennett','Paintain','Male','1944-04-06','2018-05-26','2025-10-14',52,1),(253,'538-15-7258','Pegeen','Gwin','Other','1937-12-20','2009-11-01','2030-11-04',53,1),(254,'699-48-2920','Kare','Walkington','Other','1926-06-05','2014-01-16','2030-03-26',54,1),(255,'589-49-1466','Torrie','Readings','Female','1956-11-24','2018-11-03','2033-03-04',55,0),(256,'109-71-3110','Paco','McGinlay','Female','1978-01-28','2016-08-02','2036-06-27',56,1),(257,'409-31-0485','Merrill','Rosevear','Male','1967-12-10','2014-05-15','2041-05-28',57,1),(258,'565-76-8883','Karlik','Warde','Other','1980-10-22','2019-04-09','2046-07-11',58,1),(259,'546-64-6512','Cointon','Diamond','Male','1967-10-24','2019-08-29','2042-02-01',59,0),(260,'702-12-7481','Bruce','Bilt','Male','1929-02-23','2022-03-08','2025-04-29',60,1),(261,'624-81-7875','Johann','Barrett','Other','1981-02-25','2011-08-02','2028-02-19',61,0),(262,'307-32-4313','Kinnie','Judgkins','Male','1956-01-03','2011-07-16','2046-07-28',62,1),(263,'513-21-1483','Dayle','Peete','Other','1984-07-30','2007-04-16','2044-07-31',63,0),(264,'667-19-3307','Frasquito','Witling','Female','1928-01-08','2017-09-15','2026-06-22',64,1),(265,'398-75-3113','Tybi','Valentim','Other','1930-05-26','2008-04-16','2037-09-15',65,1),(266,'635-48-6959','Mandel','Lacoste','Male','1978-03-22','2017-09-24','2025-04-23',66,1),(267,'177-67-3566','Trumann','Rispine','Other','1978-11-18','2014-06-08','2024-06-30',67,0),(268,'521-86-5194','Maxy','Snufflebottom','Female','1986-04-28','2009-06-24','2025-10-31',68,1),(269,'320-25-0143','Robinet','Kiessel','Male','1954-05-17','2020-01-06','2049-01-22',69,1),(270,'279-45-0018','Jeff','Pischof','Male','1936-06-03','2017-02-19','2027-05-01',70,1),(271,'422-59-2001','Kelly','Brixey','Other','1953-11-06','2020-03-31','2026-03-17',71,0),(272,'646-28-5391','Nicolina','Sugge','Male','1967-08-11','2008-08-05','2028-03-01',72,1),(273,'445-44-0215','Elset','Fellis','Female','1957-03-24','2015-04-26','2041-08-15',73,1),(274,'419-38-6140','Pattie','Rupprecht','Male','1950-03-04','2021-01-22','2038-08-19',74,1),(275,'838-28-8553','Byran','Cridlan','Female','1936-06-15','2011-12-30','2028-01-29',75,0),(276,'183-06-7556','Grayce','Rousel','Male','1927-11-15','2009-04-27','2029-09-03',76,0),(277,'387-45-3272','Mame','Vedeneev','Male','1955-12-21','2013-07-14','2033-06-12',77,1),(278,'149-13-9594','Michal','Virgo','Male','1963-09-22','2019-03-11','2044-12-29',78,0),(279,'152-77-9192','Jeanie','Blencowe','Female','1939-02-15','2014-10-13','2040-11-24',79,1),(280,'727-86-0412','Brose','Kesten','Female','1949-04-26','2020-09-11','2032-02-08',80,1),(281,'315-53-8933','Lurleen','Treherne','Male','1941-08-31','2013-06-19','2027-03-26',81,1),(282,'411-08-0325','Theodor','Baus','Other','1950-03-24','2018-11-15','2029-11-27',82,1),(283,'307-71-4818','Miriam','Becaris','Male','1934-07-02','2018-04-28','2043-12-29',83,1),(284,'835-54-7628','Astrix','Teeney','Female','1962-02-02','2008-04-24','2041-10-20',84,0),(285,'439-70-2693','Ulrica','Janssen','Other','1972-11-15','2017-03-20','2026-08-22',85,0),(286,'785-40-9245','Tamma','Clemson','Other','1954-10-14','2009-04-29','2048-07-27',86,1),(287,'360-72-7870','Bay','Stronach','Other','1966-07-01','2010-09-16','2027-07-12',87,1),(288,'235-61-4593','Rori','Lyst','Female','1970-10-03','2015-01-14','2048-12-08',88,0),(289,'491-52-0457','Micaela','Sandys','Female','1955-11-24','2012-01-23','2039-06-30',89,1),(290,'475-16-7823','Kimmie','Le Blond','Female','1964-12-26','2008-10-22','2048-01-06',90,0),(291,'612-93-3240','Augustus','Gunthorp','Male','1953-04-19','2006-11-27','2026-01-24',91,0),(292,'496-35-4283','Sayre','Bertenshaw','Male','1953-01-17','2015-10-06','2042-06-28',92,0),(293,'527-92-5423','Morgen','Chifney','Male','1944-08-14','2012-09-22','2039-09-06',93,0),(294,'404-42-1175','Leontyne','Aharoni','Female','1952-05-20','2014-12-09','2029-08-18',94,1),(295,'409-51-4153','Bonny','Pakeman','Other','1971-11-03','2017-10-08','2024-11-24',95,0),(296,'712-56-6974','Tiffy','Fountaine','Male','1968-04-05','2015-01-07','2047-09-18',96,0),(297,'231-75-9459','Clarey','Dumbarton','Female','1946-01-31','2021-03-18','2045-08-15',97,1),(298,'340-26-3317','Darrell','Chettle','Other','1955-06-07','2015-10-06','2042-09-18',98,0),(299,'523-37-9295','Lizzy','Housbey','Other','1925-06-29','2016-04-19','2027-11-30',99,1),(300,'591-61-9138','Bobbie','Quinnelly','Other','1964-04-19','2013-01-15','2044-07-07',100,1),(301,'241-66-1908','Denna','Tremmel','Female','1963-05-05','2010-12-25','2024-10-30',101,0),(302,'191-48-1254','Elston','Baselli','Other','1985-08-17','2007-11-09','2040-05-13',102,0),(303,'303-47-1940','Kristin','Atrill','Other','1952-02-18','2009-03-21','2045-08-19',103,0),(304,'767-53-0622','Ira','Brookesbie','Male','1940-08-01','2022-11-30','2040-01-11',104,0),(305,'406-62-0817','Corry','McKeown','Male','1947-02-06','2017-04-26','2024-10-11',105,1),(306,'745-21-2581','Ketti','Hailston','Other','1955-12-18','2019-08-05','2024-01-31',106,1),(307,'638-03-0351','Wilbert','Lingner','Male','1977-04-26','2007-11-06','2039-03-01',107,1),(308,'606-05-6221','Prudy','Eberts','Male','1967-01-13','2011-03-31','2032-10-19',108,1),(309,'139-37-4540','Amaleta','Gercke','Female','1976-02-04','2022-03-30','2038-06-08',109,1),(310,'391-75-0063','Marga','McFayden','Female','1982-07-07','2008-09-06','2038-01-09',110,1),(311,'201-16-4128','Shadow','Toal','Other','1970-11-02','2021-07-05','2041-02-28',111,1),(312,'174-47-3581','Marcile','Earlam','Male','1954-02-04','2007-04-16','2027-02-04',112,0),(313,'767-23-9379','Carmela','Battin','Male','1925-08-03','2007-04-29','2029-05-05',113,1),(314,'507-32-3013','Yehudi','De Gregario','Male','1971-10-04','2020-07-13','2032-07-02',114,1),(315,'744-88-8472','Lem','Wiles','Male','1933-02-13','2020-07-13','2028-06-07',115,0),(316,'241-12-1917','Alta','Skaif','Male','1934-05-19','2021-04-25','2035-02-19',116,0),(317,'183-14-8412','Antonio','Denisovo','Female','1954-01-30','2012-03-30','2035-01-07',117,1),(318,'864-26-1731','Patrick','MacElharge','Female','1959-06-30','2020-05-30','2027-08-14',118,1),(319,'833-90-1126','Adrian','MacConnulty','Male','1983-12-08','2010-11-21','2035-09-14',119,0),(320,'467-87-6093','Em','Downing','Other','1985-12-27','2015-08-19','2026-06-08',120,1),(321,'488-29-0933','Carny','Birds','Other','1935-04-10','2012-02-26','2045-08-19',121,0),(322,'476-07-1525','Renie','Riehm','Other','1948-01-27','2018-11-18','2032-01-23',122,1),(323,'389-71-2807','Rodger','Maryan','Other','1938-01-21','2012-05-25','2024-02-04',123,1),(324,'290-02-9666','Silva','Lowy','Male','1932-04-20','2006-03-02','2034-08-14',124,1),(325,'393-50-1430','Hanni','Courtier','Male','1983-01-18','2020-12-31','2039-04-13',125,1),(326,'873-47-9718','Shawn','Clougher','Female','1942-03-26','2006-03-04','2029-08-17',126,0),(327,'561-20-5722','Sephira','Crum','Other','1955-02-08','2018-10-17','2045-07-07',127,0),(328,'245-38-2928','Lonee','MacPeake','Male','1969-11-29','2013-08-03','2033-03-03',128,0),(329,'200-18-4861','Shanie','Masden','Male','1979-11-25','2012-04-26','2039-09-15',129,1),(330,'814-47-7331','Nels','Boot','Other','1972-01-09','2010-09-12','2042-05-06',130,0),(331,'862-32-4032','Bernelle','Cutmere','Other','1950-06-30','2011-07-23','2027-12-21',131,0),(332,'883-87-0619','Eli','Kersting','Female','1951-12-28','2021-02-27','2048-09-22',132,1),(333,'469-98-5347','Terrence','Ellsom','Female','1977-02-18','2022-11-27','2029-11-10',133,0),(334,'140-51-7070','Pammy','Scotchmore','Male','1958-10-08','2011-04-30','2026-09-16',134,0),(335,'754-82-5674','Brynne','Leward','Female','1984-05-01','2018-04-17','2037-12-19',135,1),(336,'733-71-1957','Darn','Kubasek','Other','1975-09-30','2009-01-14','2031-12-28',136,1),(337,'256-12-0411','Omar','Jime','Male','1951-09-07','2009-04-22','2045-02-23',137,1),(338,'294-98-9302','Lambert','Hanington','Female','1977-01-10','2021-12-24','2026-03-10',138,0),(339,'150-94-1071','Bondie','Matthiae','Other','1968-02-11','2018-12-17','2042-06-16',139,1),(340,'379-15-8996','Joella','Reyson','Male','1974-04-02','2013-06-19','2047-04-30',140,0),(341,'744-16-5334','Talyah','Morilla','Male','1982-04-18','2011-09-10','2040-11-16',141,0),(342,'242-10-4276','Vinnie','Dumbrell','Female','1959-09-30','2018-04-21','2047-10-20',142,0),(343,'152-62-5290','Kelci','Pinard','Other','1958-09-16','2021-04-12','2029-09-14',143,1),(344,'142-79-5423','Delmore','Achrameev','Male','1977-12-31','2008-02-24','2026-11-26',144,0),(345,'680-94-5539','Dulciana','Langhor','Female','1924-09-03','2019-08-08','2039-08-29',145,1),(346,'658-49-4036','Eloise','Dellar','Female','1929-09-01','2006-05-24','2040-01-11',146,0),(347,'348-16-4129','Lynne','Wisdom','Other','1986-09-25','2012-07-22','2045-12-22',147,0),(348,'306-27-5890','Normand','Lebreton','Other','1940-06-08','2022-05-11','2035-06-18',148,0),(349,'243-70-0501','Alida','Robertshaw','Female','1927-05-03','2009-12-07','2027-02-11',149,1),(350,'273-49-9644','Celeste','Bradtke','Female','1931-01-23','2014-10-22','2029-06-05',150,0),(351,'418-69-9440','Dennet','Adamthwaite','Female','1939-06-30','2021-11-08','2034-05-18',151,1),(352,'304-19-5367','Moishe','Rosenblad','Female','1939-08-22','2015-09-11','2030-03-16',152,1),(353,'270-66-8750','Linnie','Wilkie','Other','1938-02-08','2012-11-30','2028-03-28',153,0),(354,'555-73-4240','Crissie','Durand','Female','1958-07-12','2012-11-16','2040-07-02',154,0),(355,'895-14-7921','Georgiana','Buffin','Female','1970-03-24','2018-12-11','2029-07-18',155,0),(356,'285-86-8176','Franzen','Benck','Female','1947-06-22','2008-08-13','2047-03-09',156,0),(357,'459-88-0837','Eward','Headey','Male','1964-04-04','2015-04-27','2037-04-08',157,1),(358,'833-88-3225','Ransom','MacParlan','Male','1970-10-16','2020-01-01','2043-12-30',158,0),(359,'611-10-1710','Cortney','Flipek','Other','1937-07-15','2017-10-31','2046-11-15',159,0),(360,'790-55-2527','Kellen','Staning','Female','1960-05-14','2016-04-19','2048-01-12',160,1),(361,'857-72-0601','Dagny','Gosnay','Male','1946-02-23','2019-05-10','2045-01-16',161,0),(362,'363-17-3747','Tobie','Wellman','Male','1971-12-12','2012-11-18','2025-05-21',162,0),(363,'846-32-0232','Silvanus','Gabbitus','Other','1938-02-25','2010-11-03','2024-09-30',163,0),(364,'487-51-0962','Sam','Graveney','Other','1957-09-06','2020-07-25','2027-06-06',164,1),(365,'343-10-5712','Reuven','Wilkins','Female','1954-05-19','2008-12-25','2041-08-17',165,1),(366,'540-19-2870','Holly','Jellett','Male','1952-02-20','2021-05-30','2044-07-25',166,0),(367,'260-16-4023','Erinna','Bowdidge','Male','1979-06-12','2014-02-11','2033-04-02',167,0),(368,'556-10-5196','Melisande','O\'Driscole','Other','1985-07-22','2007-11-14','2042-09-18',168,0),(369,'606-48-0931','Gus','Casement','Male','1945-09-22','2020-06-10','2031-09-01',169,0),(370,'466-08-2908','Jeremiah','Lamzed','Male','1925-01-21','2019-11-14','2045-12-10',170,1),(371,'390-58-1143','Flori','Posnett','Female','1949-07-25','2013-07-16','2031-11-08',171,1),(372,'672-47-9171','Annmarie','Grindell','Female','1927-01-24','2019-06-09','2025-06-17',172,1),(373,'512-51-3181','Field','Wakenshaw','Female','1960-10-21','2018-04-22','2036-05-27',173,1),(374,'532-59-6584','Dasha','Spenceley','Other','1945-03-26','2019-09-27','2029-08-11',174,1),(375,'458-35-0836','Sheffy','Lowndesbrough','Male','1980-02-25','2021-02-25','2044-10-28',175,1),(376,'163-51-7617','Cos','Steptowe','Other','1940-06-04','2018-12-10','2031-08-03',176,1),(377,'894-38-1491','Meagan','Goodbody','Male','1941-11-26','2019-01-26','2044-08-30',177,0),(378,'567-42-5226','Rufus','Lideard','Male','1931-12-09','2008-04-23','2027-01-06',178,0),(379,'702-66-2339','Jere','Cradick','Female','1972-06-05','2021-02-12','2038-03-28',179,0),(380,'145-31-6305','Annabelle','Smitten','Female','1972-06-21','2008-09-04','2029-09-05',180,0),(381,'424-84-4235','Wilfrid','McGavin','Male','1930-04-19','2010-05-07','2028-10-23',181,1),(382,'873-67-2021','Stormi','Fife','Other','1924-10-19','2009-08-18','2035-04-14',182,1),(383,'836-89-5204','Darcy','Golthorpp','Male','1975-08-24','2008-02-16','2030-05-08',183,1),(384,'667-51-0130','Dixie','Catto','Other','1963-06-12','2010-04-02','2047-01-30',184,1),(385,'575-11-3888','Melisenda','Moehle','Other','1971-05-27','2016-08-03','2036-05-02',185,1),(386,'763-80-6327','Ashley','Wolver','Other','1930-11-29','2020-09-11','2041-10-21',186,1),(387,'558-80-7207','Gayle','Darbon','Male','1965-10-31','2016-07-25','2039-05-12',187,0),(388,'410-72-1689','Alexander','Gussie','Female','1940-12-24','2019-02-12','2036-08-25',188,0),(389,'257-54-1401','Robb','Clinning','Male','1977-10-18','2014-04-19','2028-10-08',189,0),(390,'765-65-5606','Oates','Drinkhill','Other','1953-11-28','2010-05-06','2028-05-11',190,0),(391,'558-48-2699','Mireielle','Witherup','Other','1930-07-16','2008-08-14','2048-06-15',191,1),(392,'627-57-5231','Leta','Routham','Male','1969-01-17','2019-04-17','2033-10-08',192,1),(393,'771-82-7218','Neron','Ridgewell','Other','1975-03-06','2020-03-22','2044-03-07',193,0),(394,'440-44-8363','Hyman','Coate','Male','1969-04-12','2007-12-18','2040-09-10',194,0),(395,'791-92-6964','Gelya','Possek','Other','1943-01-27','2013-09-04','2033-05-16',195,0),(396,'731-97-7235','Saunders','Theyer','Other','1938-05-30','2018-05-06','2041-09-17',196,0),(397,'229-09-2928','Bren','Sinkings','Male','1955-10-11','2007-11-15','2035-11-16',197,0),(398,'240-10-0200','Agace','Luckwell','Male','1975-05-03','2014-06-13','2043-01-01',198,0),(399,'870-59-3611','Raynell','Fishley','Female','1962-04-25','2013-12-27','2033-12-12',199,1),(400,'363-62-5439','Brig','Mantrip','Male','1935-06-08','2020-07-10','2033-12-19',200,0),(401,'500-91-8158','Sawyer','Haggard','Other','1961-08-04','2011-11-22','2024-07-05',1,0),(402,'751-03-8034','Stace','Rangell','Female','1924-08-24','2011-06-16','2025-01-09',2,1),(403,'555-10-4712','Nappy','Muncaster','Other','1943-09-14','2013-10-15','2038-11-09',3,0),(404,'850-81-2420','Rafi','Atkinson','Female','1929-09-20','2006-06-15','2036-01-05',4,0),(405,'228-20-2176','Selinda','Hardinge','Male','1949-12-10','2022-04-28','2038-06-25',5,0),(406,'845-66-4617','Patricio','O\'Sheilds','Male','1928-02-13','2022-10-29','2041-09-29',6,1),(407,'140-83-7081','Jill','Fakes','Other','1975-04-04','2018-10-30','2024-05-01',7,0),(408,'489-97-9008','Vincents','Warnock','Other','1927-09-26','2009-02-28','2024-08-18',8,1),(409,'404-70-4577','Anallise','Tomasek','Male','1981-08-22','2006-03-13','2025-03-07',9,1),(410,'284-85-7319','Riley','Garwill','Male','1948-08-09','2017-07-25','2038-12-17',10,0),(411,'476-83-7465','Rudolfo','Thams','Other','1979-11-16','2020-06-08','2048-09-05',11,1),(412,'387-59-8332','Maible','Middle','Male','1985-11-16','2008-01-19','2047-04-17',12,1),(413,'178-37-4812','Tobe','Crichton','Female','1966-05-20','2016-09-10','2047-10-15',13,1),(414,'115-55-8242','Gabriel','Coggon','Female','1981-11-10','2007-05-28','2044-07-30',14,0),(415,'526-71-0067','Mellicent','Absolom','Female','1939-11-22','2021-02-01','2045-08-22',15,0),(416,'326-54-9754','Feodora','Challoner','Male','1924-05-19','2013-11-26','2036-08-17',16,1),(417,'883-68-5279','Janey','Vitall','Other','1934-11-13','2011-07-12','2040-10-08',17,1),(418,'130-34-3907','Gaylene','Fores','Other','1930-04-10','2022-01-27','2032-05-17',18,0),(419,'496-56-5105','Kev','Guillford','Male','1945-01-22','2012-04-05','2030-05-24',19,0),(420,'163-41-6514','Vidovik','Lohrensen','Male','1925-02-10','2012-02-28','2046-02-27',20,0),(421,'319-61-9624','Thedric','Abbati','Female','1965-11-10','2008-07-21','2036-06-04',21,1),(422,'865-38-6342','Fulvia','Tetlow','Male','1983-11-10','2015-03-10','2039-09-08',22,1),(423,'653-01-6271','Jenifer','Abrey','Female','1929-07-22','2008-04-24','2037-11-30',23,0),(424,'840-40-1119','Ted','Coonihan','Other','1966-08-15','2013-01-20','2046-04-22',24,1),(425,'475-60-1268','Eryn','Ucchino','Female','1924-04-28','2019-02-02','2033-09-25',25,1),(426,'302-81-8629','Dionne','Bole','Female','1953-10-05','2017-07-06','2034-12-06',26,0),(427,'500-03-7014','Nollie','Hein','Other','1961-03-20','2009-07-17','2038-02-24',27,0),(428,'861-53-7327','Jim','Carbine','Female','1946-06-02','2015-09-30','2030-05-01',28,1),(429,'488-19-2281','Faunie','Crowden','Other','1966-10-09','2021-12-24','2038-09-22',29,1),(430,'603-21-5869','Ceil','Danilchev','Other','1926-08-31','2019-09-07','2042-04-14',30,1),(431,'875-74-1359','Kip','Lewnden','Male','1980-03-29','2015-09-06','2040-10-24',31,0),(432,'630-99-3992','Reidar','Drysdale','Other','1986-07-25','2015-01-28','2043-07-26',32,0),(433,'572-95-8925','Charline','Lyst','Female','1961-10-06','2018-01-18','2045-11-03',33,0),(434,'781-82-5987','Domenic','Flute','Female','1970-03-14','2007-10-27','2042-05-20',34,0),(435,'757-97-5107','Louisette','Champerlen','Female','1932-06-26','2007-07-23','2029-01-23',35,0),(436,'302-90-5572','Emmalee','Heggadon','Female','1940-02-01','2017-10-18','2029-08-16',36,0),(437,'643-44-9469','Vassili','Dable','Other','1949-09-19','2019-07-16','2026-11-25',37,0),(438,'425-30-0277','Ennis','Bottlestone','Other','1949-02-16','2016-02-11','2041-12-11',38,0),(439,'296-63-9792','Dorine','Mirralls','Female','1987-03-18','2009-12-19','2043-03-21',39,1),(440,'729-51-3991','Blair','Yes','Other','1932-03-05','2007-07-13','2034-02-02',40,1),(441,'722-70-2575','Garald','Henrys','Male','1941-02-07','2022-08-27','2030-08-13',41,1),(442,'627-46-7688','Chelsey','Huddles','Male','1972-07-31','2019-11-21','2036-02-13',42,1),(443,'110-96-8310','Goddard','Salliere','Male','1956-10-11','2012-03-14','2048-11-20',43,1);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert_name` BEFORE INSERT ON `prisoner` FOR EACH ROW IF length(NEW.firstName) <= 0 or length(NEW.lastName) <= 0  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The prisoner cannot have empty last and first names';
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prisoner_insert_SSN` BEFORE INSERT ON `prisoner` FOR EACH ROW BEGIN
    IF LENGTH(NEW.SSN) != 11 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid SSN entered for the prisoner';
    END IF;
END */;;
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
INSERT INTO `requests` VALUES (12,3,1,'2022-05-03 00:00:00','1'),(412,9,3,'2023-08-16 12:46:29','1'),(237,6,3,'2022-11-30 08:42:03','1'),(73,24,3,'2023-03-30 22:18:19','0'),(162,2,1,'2023-08-20 17:12:11','1'),(426,16,1,'2023-05-17 13:21:12','0'),(418,9,1,'2022-12-24 18:52:14','1'),(380,24,2,'2023-11-02 16:48:57','0'),(161,23,1,'2023-10-16 13:53:00','1'),(2,17,1,'2023-08-05 00:18:34','1'),(13,3,1,'2024-02-10 00:00:00','1'),(13,3,1,'2024-02-11 00:00:00','1');
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
INSERT INTO `requests_archive` VALUES (3,1,1,'2022-10-10 10:10:10','2'),(3,1,1,'2021-10-10 10:10:10','2'),(3,1,1,'2022-10-10 10:10:10','2'),(3,1,1,'2021-10-10 10:10:10','2'),(4,2,1,'2015-12-24 15:50:48','0'),(4,2,1,'2015-12-24 15:50:48','0'),(5,20,1,'2011-08-26 23:53:35','1'),(13,2,2,'2021-05-06 17:00:56','0'),(16,19,1,'2016-12-23 04:02:39','0'),(20,17,2,'2014-05-14 20:32:10','0'),(23,2,2,'2020-12-18 08:11:19','1'),(23,18,1,'2019-07-25 14:52:03','1'),(27,4,2,'2016-12-29 19:56:27','0'),(28,5,2,'2021-10-20 01:10:05','0'),(36,18,2,'2022-08-23 11:42:51','0'),(40,16,1,'2016-05-16 17:48:22','0'),(43,12,2,'2015-08-06 21:46:36','0'),(46,13,3,'2013-04-07 22:15:34','0'),(51,9,1,'2017-12-06 08:18:46','0'),(52,25,1,'2014-02-24 13:50:42','1'),(53,17,3,'2021-05-18 03:20:12','1'),(55,5,1,'2012-12-15 19:07:12','1'),(57,6,2,'2017-05-26 03:47:02','1'),(59,27,1,'2021-07-16 19:24:51','0'),(63,19,3,'2018-05-09 23:55:05','1'),(68,11,3,'2014-12-26 03:46:30','0'),(70,14,2,'2019-09-24 19:46:27','0'),(71,14,1,'2021-07-25 18:09:39','0'),(73,24,3,'2020-08-31 12:33:12','1'),(81,14,1,'2016-11-24 02:41:30','0'),(82,6,3,'2017-01-14 06:06:39','1'),(86,28,1,'2013-02-21 15:40:04','0'),(87,18,1,'2018-07-20 03:14:17','0'),(93,13,3,'2013-12-08 12:26:27','1'),(95,20,1,'2022-10-15 07:15:22','1'),(105,23,1,'2012-04-21 06:11:09','1'),(109,18,2,'2013-11-11 03:58:26','0'),(110,2,1,'2015-07-28 22:43:38','0'),(117,28,2,'2015-06-27 10:52:52','1'),(124,3,1,'2019-07-03 10:36:59','1'),(127,24,1,'2012-05-21 00:54:59','0'),(135,17,2,'2015-04-23 04:44:42','1'),(136,22,1,'2013-02-08 22:34:40','0'),(138,21,1,'2014-07-30 01:17:23','1'),(143,18,2,'2019-12-28 01:05:26','0'),(147,22,1,'2021-08-21 02:59:00','0'),(161,23,1,'2018-09-02 05:36:41','0'),(162,2,1,'2019-05-28 17:11:10','1'),(173,29,3,'2015-12-29 06:37:50','0'),(176,8,3,'2017-01-20 20:29:56','0'),(180,17,2,'2018-08-20 14:16:40','1'),(184,2,3,'2011-01-22 23:06:06','1'),(189,7,1,'2012-03-03 02:30:02','0'),(199,29,2,'2012-02-01 16:35:36','1'),(202,20,3,'2021-01-10 23:46:59','1'),(210,29,3,'2011-04-05 17:56:20','1'),(220,3,2,'2016-01-06 10:30:07','0'),(229,20,2,'2011-05-10 11:02:02','1'),(237,6,3,'2013-03-01 20:22:47','1'),(245,20,2,'2021-06-24 12:03:31','0'),(250,6,2,'2020-11-24 04:10:48','0'),(250,25,3,'2011-01-10 10:27:07','0'),(251,16,1,'2022-09-30 06:29:14','0'),(255,19,3,'2010-12-15 08:29:45','0'),(256,12,1,'2013-06-05 15:46:23','1'),(256,15,2,'2021-08-29 18:58:38','0'),(265,12,3,'2016-10-09 02:43:52','1'),(270,21,3,'2013-10-06 07:05:25','0'),(274,5,1,'2019-08-29 16:48:44','1'),(279,29,2,'2016-01-02 09:26:22','0'),(303,13,3,'2017-12-12 17:13:48','0'),(304,9,2,'2020-02-28 00:36:20','0'),(305,27,2,'2012-06-30 16:08:28','0'),(312,14,1,'2020-07-20 05:15:16','0'),(318,2,3,'2019-10-04 20:12:13','0'),(325,29,1,'2012-01-28 20:56:08','0'),(327,8,2,'2010-12-14 02:01:17','0'),(328,2,1,'2018-06-19 03:13:46','1'),(341,4,2,'2015-03-22 10:36:23','1'),(349,27,1,'2016-06-09 01:04:15','0'),(353,24,2,'2021-08-26 19:59:01','0'),(354,3,1,'2014-03-10 14:52:52','1'),(356,4,1,'2018-06-18 07:57:39','0'),(371,30,1,'2011-03-15 02:19:00','1'),(375,19,2,'2017-04-19 06:28:15','1'),(379,28,3,'2011-06-27 21:32:35','1'),(380,24,2,'2017-08-22 04:32:22','0'),(394,7,2,'2010-12-02 01:07:42','1'),(405,25,3,'2012-03-15 12:17:11','0'),(412,9,3,'2022-02-21 15:59:21','0'),(418,9,1,'2022-06-20 11:50:03','0'),(422,15,1,'2015-12-21 16:16:53','1'),(424,1,3,'2020-11-26 19:13:02','1'),(426,16,1,'2011-04-11 21:55:32','0'),(435,26,2,'2021-01-13 03:13:47','0'),(437,4,2,'2012-04-07 15:31:48','0'),(449,7,1,'2015-04-12 18:59:16','0'),(464,7,2,'2022-09-11 14:53:26','1'),(471,5,3,'2012-01-19 12:53:48','1'),(474,17,3,'2019-10-01 15:33:52','0'),(481,24,1,'2018-01-06 02:36:00','0'),(484,22,1,'2018-03-28 23:46:27','0'),(491,3,2,'2013-09-11 00:27:46','0'),(499,26,3,'2015-04-17 08:45:36','0'),(2,17,1,'2010-12-10 05:44:56','1'),(4,2,1,'2017-09-16 15:37:12','0'),(5,20,1,'2011-07-15 10:06:24','0'),(13,2,2,'2022-10-28 12:32:28','0'),(16,19,1,'2017-08-10 21:53:03','1'),(20,17,2,'2014-09-28 10:37:18','1'),(23,2,2,'2022-07-21 13:29:18','0'),(23,18,1,'2016-10-01 17:02:33','0'),(27,4,2,'2012-04-19 21:15:23','1'),(28,5,2,'2018-10-20 02:15:28','0'),(36,18,2,'2012-01-23 05:40:50','0'),(40,16,1,'2017-02-18 19:39:38','0'),(43,12,2,'2011-12-30 18:47:36','1'),(46,13,3,'2018-11-08 00:59:00','1'),(51,9,1,'2011-04-30 09:22:39','0'),(52,25,1,'2012-10-13 03:24:06','1'),(53,17,3,'2021-01-19 12:26:17','0'),(55,5,1,'2013-07-01 02:15:31','0'),(57,6,2,'2017-03-27 23:43:02','1'),(59,27,1,'2011-03-21 12:47:41','0'),(63,19,3,'2017-03-30 23:19:05','0'),(68,11,3,'2013-06-16 02:54:07','1'),(70,14,2,'2013-03-09 17:05:44','0'),(71,14,1,'2016-10-04 15:11:06','0'),(73,24,3,'2012-12-29 15:06:15','1'),(81,14,1,'2014-04-24 02:46:50','0'),(82,6,3,'2018-01-26 19:43:54','1'),(86,28,1,'2015-01-07 08:11:17','0'),(87,18,1,'2016-08-10 22:20:16','1'),(93,13,3,'2019-10-17 18:58:03','1'),(95,20,1,'2013-09-04 18:05:39','1'),(105,23,1,'2011-04-06 10:26:08','1'),(109,18,2,'2019-10-13 00:08:19','0'),(110,2,1,'2016-06-15 20:07:54','1'),(117,28,2,'2012-05-22 12:15:39','1'),(124,3,1,'2017-09-03 13:37:51','1'),(127,24,1,'2019-01-28 02:59:27','0'),(135,17,2,'2019-10-20 20:51:59','0'),(136,22,1,'2016-01-16 03:52:41','0'),(138,21,1,'2021-07-23 05:45:49','1'),(143,18,2,'2021-06-01 10:36:47','1'),(147,22,1,'2016-07-01 01:51:00','0'),(161,23,1,'2014-12-08 04:09:30','0'),(162,2,1,'2012-01-13 04:42:05','1'),(173,29,3,'2020-10-04 04:48:19','1'),(176,8,3,'2020-05-12 23:37:19','1'),(180,17,2,'2015-12-03 19:50:01','0'),(184,2,3,'2021-03-15 20:13:02','1'),(189,7,1,'2015-01-27 01:55:10','0'),(199,29,2,'2018-11-25 06:41:42','0'),(202,20,3,'2012-10-16 16:48:10','0'),(210,29,3,'2017-12-12 13:14:47','1'),(220,3,2,'2015-03-12 21:21:54','0'),(229,20,2,'2020-07-31 07:02:08','0'),(237,6,3,'2022-03-16 04:27:08','0'),(245,20,2,'2013-11-17 11:19:30','0'),(250,6,2,'2018-02-15 07:14:01','1'),(250,25,3,'2015-11-02 01:14:09','0'),(251,16,1,'2012-10-10 21:55:44','1'),(255,19,3,'2020-04-06 06:47:29','1'),(256,12,1,'2022-09-22 10:22:21','0'),(256,15,2,'2014-01-05 03:15:22','1'),(265,12,3,'2021-08-08 07:59:10','1'),(270,21,3,'2018-02-09 04:22:15','0'),(274,5,1,'2013-01-20 21:42:53','1'),(279,29,2,'2020-03-22 21:27:14','1'),(303,13,3,'2018-06-29 04:51:44','1'),(304,9,2,'2012-11-08 02:05:17','0'),(305,27,2,'2021-04-01 23:53:05','0'),(312,14,1,'2012-03-10 05:13:54','0'),(318,2,3,'2020-08-14 05:49:54','0'),(325,29,1,'2015-12-07 15:10:50','1'),(327,8,2,'2012-10-07 02:08:39','1'),(328,2,1,'2012-01-01 20:23:39','0'),(341,4,2,'2018-05-17 00:40:04','0'),(349,27,1,'2020-04-06 19:12:34','0'),(353,24,2,'2022-05-18 05:04:30','0'),(354,3,1,'2018-09-22 21:42:20','1'),(356,4,1,'2014-05-24 17:10:40','1'),(371,30,1,'2012-11-15 22:31:17','1'),(375,19,2,'2012-09-04 02:18:58','1'),(379,28,3,'2018-05-01 02:21:04','1'),(380,24,2,'2020-10-29 14:30:44','0'),(394,7,2,'2018-05-10 21:26:22','0'),(405,25,3,'2018-05-01 10:06:33','1'),(412,9,3,'2012-07-06 15:40:11','0'),(418,9,1,'2022-01-30 03:23:07','0'),(422,15,1,'2015-09-02 03:51:37','1'),(424,1,3,'2012-07-04 21:36:50','1'),(426,16,1,'2022-07-17 14:03:02','0'),(435,26,2,'2017-12-02 16:19:15','0'),(437,4,2,'2016-04-05 09:50:02','1'),(449,7,1,'2017-06-22 01:09:01','0'),(464,7,2,'2012-02-04 17:10:05','0'),(471,5,3,'2020-09-06 18:58:56','1'),(474,17,3,'2021-05-20 11:03:05','1'),(481,24,1,'2016-09-17 07:23:59','0'),(484,22,1,'2022-01-02 20:48:07','0'),(491,3,2,'2018-03-31 07:20:16','1'),(499,26,3,'2015-06-27 20:56:09','1'),(2,17,1,'2015-06-07 21:59:23','1'),(4,2,1,'2021-07-31 23:24:55','0'),(5,20,1,'2019-04-17 12:16:28','0'),(13,2,2,'2020-09-08 05:46:07','1'),(16,19,1,'2013-07-15 20:02:39','1'),(20,17,2,'2019-12-31 19:42:33','0'),(23,2,2,'2012-06-04 19:10:22','1'),(23,18,1,'2019-10-17 04:37:55','0'),(27,4,2,'2022-03-05 12:42:55','1'),(28,5,2,'2022-09-11 10:27:58','1'),(36,18,2,'2020-06-27 20:49:11','0'),(40,16,1,'2012-02-03 18:21:13','0'),(43,12,2,'2012-06-03 08:51:32','0'),(46,13,3,'2022-09-26 03:07:27','0'),(51,9,1,'2013-07-13 19:03:40','1'),(52,25,1,'2020-05-26 05:54:24','1'),(53,17,3,'2020-07-30 16:48:58','0'),(55,5,1,'2012-05-04 21:28:21','1'),(57,6,2,'2022-08-02 08:37:41','1'),(59,27,1,'2016-06-05 13:28:12','1'),(63,19,3,'2016-12-28 08:35:55','0'),(68,11,3,'2012-12-17 15:10:08','0'),(70,14,2,'2013-01-05 14:33:31','0'),(71,14,1,'2020-05-18 23:11:35','0'),(73,24,3,'2013-01-28 04:42:01','1'),(81,14,1,'2020-06-08 03:06:39','0'),(82,6,3,'2017-03-25 17:23:46','1'),(86,28,1,'2020-01-03 04:17:48','1'),(87,18,1,'2014-12-11 01:53:01','0'),(93,13,3,'2015-06-13 12:03:17','0'),(95,20,1,'2019-06-13 07:53:57','1'),(105,23,1,'2014-11-23 15:11:20','1'),(109,18,2,'2013-02-07 15:40:03','1'),(110,2,1,'2022-04-24 15:59:56','1'),(117,28,2,'2019-08-26 09:35:03','0'),(124,3,1,'2016-11-23 23:27:28','1'),(127,24,1,'2017-12-20 04:17:15','0'),(135,17,2,'2017-01-16 16:28:00','0'),(136,22,1,'2017-04-22 19:15:37','1'),(138,21,1,'2013-05-14 15:19:05','1'),(143,18,2,'2019-02-11 11:00:12','1'),(147,22,1,'2011-09-06 01:53:55','0'),(161,23,1,'2022-05-16 18:45:05','1'),(162,2,1,'2014-03-11 00:15:26','0'),(173,29,3,'2015-09-27 16:27:30','1'),(176,8,3,'2019-06-10 20:33:15','1'),(180,17,2,'2019-02-19 09:23:02','1'),(184,2,3,'2016-04-12 04:14:15','1'),(189,7,1,'2021-08-29 00:03:01','1'),(199,29,2,'2014-08-06 09:26:49','0');
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
INSERT INTO `supervisor` VALUES (1,'kramer23','user123','3909587839','Kramer','James','Male','1980-02-03','0209-04-05','2025-03-30',2,10000),(2,'egiannini1','eT4,b#aqA_O1f8Z','1933992079','Emmalynn','Giannini','Other','1960-12-20','2017-08-05','2044-08-26',2,90000),(3,'hklauber2','aTq(Lpa','6012107109','Hamilton','Klauber','Male','1935-04-16','2022-09-18','2027-06-26',3,65000),(9,'memphis34','memphis123','1335567801','sankar','sam','Male','2000-10-09','2022-10-09','2022-10-09',21,1000),(13,'joe234','joer344545','2345678910','Joe','Scott','Male','1999-02-02','2020-02-02','2040-04-04',45,10000);
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
-- Temporary view structure for view `supervisor_view`
--

DROP TABLE IF EXISTS `supervisor_view`;
/*!50001 DROP VIEW IF EXISTS `supervisor_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supervisor_view` AS SELECT 
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `sex`,
 1 AS `Dob`,
 1 AS `servSdate`,
 1 AS `servEdate`,
 1 AS `addrId`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES (1,'487257608','Mariah','Pike','Female','1990-03-24',1,'2536914926','mariah123','abcd1234*'),(2,'487265708','Luisa','Simon','Female','1998-03-24',1,'2596914926','luisa23','abcd1294*'),(3,'8911234567','sankar','sam','Male','2022-10-09',42,'6154735689','sam7908','sam1239'),(4,'1098473980','Frenkie','De Jong','Male','1997-04-04',58,'2980589348','frenkie123','frenkie23'),(5,'534274608','Elisa','Errichiello','Other','1948-10-08',5,'8326964180','eerrichiello4','hoiuwehjrgf98'),(6,'565714253','Jerrie','Donat','Male','1999-01-17',6,'9108599681','jdonat5','03842oiufhewr'),(7,'885435367','Eward','Cobello','Female','1944-05-10',7,'2093590460','ecobello6','*Y@G#B(U$@'),(8,'897118143','Clarance','Slatten','Female','1989-02-01',8,'5446972258','cslatten7','@#$GUHou39'),(9,'290118529','Jacky','Reeveley','Female','1994-03-14',9,'9161814664','jreeveley8','NU(&G#97hg93ui'),(10,'548522917','Hana','McQuilkin','Other','1978-05-24',10,'4215618140','hmcquilkin9','J*H98h98h98'),(11,'536283353','Georgina','Varnam','Female','1933-10-05',11,'3667804171','gvarnama','UHDSF*H(89hsd'),(12,'814649781','Alta','Margrie','Male','2015-08-15',12,'8312761853','amargrieb','SDiuhS89y9@#$'),(13,'857611605','Alick','Potts','Other','1975-09-29',13,'2368990580','apottsc','SDFKJH98ysdifu898I*@)'),(14,'746130154','Cookie','Gayler','Female','1988-08-13',14,'2008264446','cgaylerd','(*Ysdfkjz98(8h'),(15,'638425639','Christos','Cloney','Other','1974-04-09',15,'1591737266','ccloneye','&G7g9&G97g(&&'),(16,'682339239','Shalna','McCaughey','Female','1950-05-22',16,'8322662672','smccaugheyf','IUHI*Y98(*YG9g9&('),(17,'419774814','Jeane','Feedome','Other','1946-04-28',17,'1733232110','jfeedomeg','IUHiug(98G(0('),(18,'848815705','Iggie','Malkinson','Other','1957-01-10',18,'2183950374','imalkinsonh','UHIuh98y(UI'),(19,'101931543','Gloriana','Still','Other','2017-02-13',19,'7521881782','gstilli','JHFDJg86A%^ft'),(20,'777671569','Giustina','Lamping','Female','2014-04-03',20,'8483831463','glampingj','*&G8yg*&g7gG'),(21,'607180341','Lissi','Dinis','Other','1935-01-25',21,'1283339292','ldinisk','ZTFFC765r%^Z'),(22,'117320888','Vladimir','Ollenbuttel','Male','2016-12-17',22,'8806029156','vollenbuttell','G*7g8g97g98((8'),(23,'782513226','Lorri','Barbier','Female','1983-11-16',23,'6751701450','lbarbierm','!@YGuy2@'),(24,'179127481','Marianne','Clamp','Other','1983-02-01',24,'6221724997','mclampn','*&g87*78!@#^f'),(25,'864302427','Salem','Keightley','Female','1957-09-23',25,'8437583944','skeightleyo','I&Y87y8Ughg'),(26,'356405259','Amberly','Baake','Other','1953-11-12',26,'6482176598','abaakep','JHhgiug(*79&87gyb'),(27,'678426122','Vanya','Guild','Female','1944-06-16',27,'7668208281','vguildq','%^&BNAI&Gy8fy'),(28,'379724705','Earl','Pearle','Other','2022-05-26',28,'6255886267','epearler','@#$%^fcgvb'),(29,'803085006','Joelie','Harsum','Male','1959-05-17',29,'2286717124','jharsums','KHVYHFCGV786547ghn*&'),(30,'355087732','Van','Blacktin','Male','1960-06-06',30,'1292856407','vblacktint','UYG75f6YT^F');
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
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `archiveEvent` ON SCHEDULE EVERY 30 DAY STARTS '2022-12-02 10:30:00' ON COMPLETION PRESERVE ENABLE DO BEGIN
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

--
-- Final view structure for view `guard_view`
--

/*!50001 DROP VIEW IF EXISTS `guard_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `guard_view` AS select `guard`.`firstName` AS `firstName`,`guard`.`lastName` AS `lastName`,`guard`.`sex` AS `sex`,`guard`.`Dob` AS `Dob`,`guard`.`servSdate` AS `servSdate`,`guard`.`servEdate` AS `servEdate`,`guard`.`addrId` AS `addrId`,`guard`.`salary` AS `salary` from `guard` where (`guard`.`servSdate` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `medstaff_view`
--

/*!50001 DROP VIEW IF EXISTS `medstaff_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `medstaff_view` AS select `medstaff`.`firstName` AS `firstName`,`medstaff`.`lastName` AS `lastName`,`medstaff`.`sex` AS `sex`,`medstaff`.`Dob` AS `Dob`,`medstaff`.`servSdate` AS `servSdate`,`medstaff`.`servEdate` AS `servEdate`,`medstaff`.`addrId` AS `addrId`,`medstaff`.`salary` AS `salary` from `medstaff` where (`medstaff`.`servSdate` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supervisor_view`
--

/*!50001 DROP VIEW IF EXISTS `supervisor_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supervisor_view` AS select `supervisor`.`firstName` AS `firstName`,`supervisor`.`lastName` AS `lastName`,`supervisor`.`sex` AS `sex`,`supervisor`.`Dob` AS `Dob`,`supervisor`.`servSdate` AS `servSdate`,`supervisor`.`servEdate` AS `servEdate`,`supervisor`.`addrId` AS `addrId`,`supervisor`.`salary` AS `salary` from `supervisor` where (`supervisor`.`servSdate` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12  7:36:09
