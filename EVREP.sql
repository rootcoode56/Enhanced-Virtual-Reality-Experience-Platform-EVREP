-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: evrep
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `community_id` int NOT NULL,
  `userID` int DEFAULT NULL,
  `Description_user` text,
  PRIMARY KEY (`community_id`),
  KEY `userID` (`userID`),
  CONSTRAINT `community_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `usertable` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (100,157501,'Lead Attributor'),(101,157502,'Lead Coordinator'),(102,157503,'Lead Communicator'),(103,157504,'Lead Attributor'),(104,157505,'Lead Coordinator'),(105,157506,'Lead Communicator'),(106,157507,'Lead Attributor'),(107,157508,'Lead Attributor'),(108,157509,'Lead Attributor'),(109,1575010,'Lead Communicator'),(110,1575011,'Lead Attributor'),(111,1575012,'Lead Communicator'),(112,1575013,'Lead Attributor'),(113,1575014,'Lead Attributor'),(114,1575015,'Lead Communicator'),(115,1575016,'Lead Communicator');
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device` (
  `device_id` int NOT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `compatibility` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES (1021,'Windows','YES'),(1022,'MAC','YES'),(1023,'Linux','YES'),(1024,'Android','NO'),(1025,'Apple','NO');
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacktable`
--

DROP TABLE IF EXISTS `feedbacktable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacktable` (
  `FeedbackID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ContentID` int DEFAULT NULL,
  `Feedback` text COLLATE utf8mb4_general_ci,
  `Rating` int DEFAULT NULL,
  `FeedbackTime` datetime DEFAULT NULL,
  PRIMARY KEY (`FeedbackID`),
  KEY `UserID` (`UserID`),
  KEY `ContentID` (`ContentID`),
  CONSTRAINT `FeedbackTable_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usertable` (`UserID`),
  CONSTRAINT `FeedbackTable_ibfk_2` FOREIGN KEY (`ContentID`) REFERENCES `vrcontenttable` (`ContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacktable`
--

LOCK TABLES `feedbacktable` WRITE;
/*!40000 ALTER TABLE `feedbacktable` DISABLE KEYS */;
INSERT INTO `feedbacktable` VALUES (230,157501,1,'Good',4,'2024-12-18 13:06:30'),(231,157502,1,'Average',3,'2024-12-18 13:11:51'),(232,157503,1,'Good',4,'2024-12-18 13:11:51'),(233,157504,3,'Bad',1,'2024-12-18 13:11:51'),(234,157505,2,'Good',4,'2024-12-18 13:11:51'),(235,157506,3,'Bad',1,'2024-12-18 13:11:51'),(236,157507,4,'Good',4,'2024-12-18 13:11:51'),(237,157508,4,'Bad',1,'2024-12-18 13:11:51'),(238,157509,3,'Good',3,'2024-12-18 13:11:51'),(239,1575010,5,'Good',3,'2024-12-18 13:11:51'),(240,1575011,6,'Good',4,'2024-12-18 13:11:51'),(241,1575012,6,'Good',3,'2024-12-18 13:11:51'),(242,1575013,7,'Bad',1,'2024-12-18 13:11:51'),(243,1575014,1,'Good',4,'2024-12-18 13:11:51'),(244,1575015,1,'Bad',2,'2024-12-18 13:11:51'),(245,1575016,7,'Good',4,'2024-12-18 13:11:51');
/*!40000 ALTER TABLE `feedbacktable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interactioninfotable`
--

DROP TABLE IF EXISTS `interactioninfotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interactioninfotable` (
  `AnalysisID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ContentID` int DEFAULT NULL,
  `InteractionDetails` text COLLATE utf8mb4_general_ci,
  `InteractionTime` datetime DEFAULT NULL,
  PRIMARY KEY (`AnalysisID`),
  KEY `UserID` (`UserID`),
  KEY `ContentID` (`ContentID`),
  CONSTRAINT `InteractionInfoTable_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usertable` (`UserID`),
  CONSTRAINT `InteractionInfoTable_ibfk_2` FOREIGN KEY (`ContentID`) REFERENCES `vrcontenttable` (`ContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=916 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interactioninfotable`
--

LOCK TABLES `interactioninfotable` WRITE;
/*!40000 ALTER TABLE `interactioninfotable` DISABLE KEYS */;
INSERT INTO `interactioninfotable` VALUES (900,157501,1,'Abide by Policy','2024-12-18 12:50:12'),(901,157502,2,'Abide by Policy','2024-12-18 12:59:53'),(902,157503,1,'Abide by Policy','2024-12-18 12:59:53'),(903,157504,3,'Abide by Policy','2024-12-18 12:59:53'),(904,157505,2,'Abide by Policy','2024-12-18 12:59:53'),(905,157506,3,'Abide by Policy','2024-12-18 12:59:53'),(906,157507,4,'Abide by Policy','2024-12-18 12:59:53'),(907,157508,4,'Abide by Policy','2024-12-18 12:59:53'),(908,157509,3,'Abide by Policy','2024-12-18 12:59:53'),(909,1575010,5,'Abide by Policy','2024-12-18 12:59:53'),(910,1575011,6,'Abide by Policy','2024-12-18 12:59:53'),(911,1575012,6,'Abide by Policy','2024-12-18 12:59:53'),(912,1575013,7,'Abide by Policy','2024-12-18 12:59:53'),(913,1575014,1,'Abide by Policy','2024-12-18 12:59:53'),(914,1575015,1,'Abide by Policy','2024-12-18 12:59:53'),(915,1575016,7,'Abide by Policy','2024-12-18 12:59:53');
/*!40000 ALTER TABLE `interactioninfotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_assuarance`
--

DROP TABLE IF EXISTS `quality_assuarance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quality_assuarance` (
  `QA_ID` int NOT NULL,
  `USER_ATTRIB` varchar(255) NOT NULL,
  `Result` varchar(255) NOT NULL,
  PRIMARY KEY (`QA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_assuarance`
--

LOCK TABLES `quality_assuarance` WRITE;
/*!40000 ALTER TABLE `quality_assuarance` DISABLE KEYS */;
INSERT INTO `quality_assuarance` VALUES (200,'Scalability','Satisfied'),(201,'Reliability','Unsatisfied'),(202,'Reliability','Satisfied'),(203,'Scalability','Unatisfied'),(204,'Usabiluty','Satisfied'),(205,'Security','Satisfied'),(206,'Scalability','Satisfied'),(207,'Usabiluty','Unsatisfied'),(208,'Scalability','Unsatisfied'),(209,'Reliability','Satisfied'),(210,'Usabiluty','Unsatisfied'),(211,'Security','Unsatisfied'),(212,'Security','Satisfied'),(213,'Usabiluty','Satisfied'),(214,'Usabiluty','Satisfied'),(215,'Security','Unsatisfied'),(216,'Usabiluty','Satisfied'),(217,'Scalability','Unsatisfied'),(218,'Usabiluty','Satisfied'),(219,'Security','Satisfied'),(220,'Scalability','Unsatisfied');
/*!40000 ALTER TABLE `quality_assuarance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendationtable`
--

DROP TABLE IF EXISTS `recommendationtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendationtable` (
  `RecommendID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `ContentID` int DEFAULT NULL,
  `RecommendDetails` text COLLATE utf8mb4_general_ci,
  `RecommendTime` datetime DEFAULT NULL,
  PRIMARY KEY (`RecommendID`),
  KEY `UserID` (`UserID`),
  KEY `ContentID` (`ContentID`),
  CONSTRAINT `RecommendationTable_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `usertable` (`UserID`),
  CONSTRAINT `RecommendationTable_ibfk_2` FOREIGN KEY (`ContentID`) REFERENCES `vrcontenttable` (`ContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=816 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendationtable`
--

LOCK TABLES `recommendationtable` WRITE;
/*!40000 ALTER TABLE `recommendationtable` DISABLE KEYS */;
INSERT INTO `recommendationtable` VALUES (800,157501,1,'User Preference','2024-12-18 13:20:47'),(801,157502,2,'User Preference','2024-12-18 13:23:42'),(802,157503,1,'User Preference','2024-12-18 13:23:42'),(803,157504,3,'User Preference','2024-12-18 13:23:42'),(804,157505,2,'system preferences','2024-12-18 13:23:42'),(805,157506,3,'User Preference','2024-12-18 13:23:42'),(806,157507,4,'system preferences','2024-12-18 13:23:42'),(807,157508,4,'User Preference','2024-12-18 13:23:42'),(808,157509,3,'User Preference','2024-12-18 13:23:42'),(809,1575010,5,'system preferences','2024-12-18 13:23:42'),(810,1575011,6,'User Preference','2024-12-18 13:23:42'),(811,1575012,6,'User Preference','2024-12-18 13:23:42'),(812,1575013,7,'system preferences','2024-12-18 13:23:42'),(813,1575014,1,'system preferences','2024-12-18 13:23:42'),(814,1575015,1,'User Preference','2024-12-18 13:23:42'),(815,1575016,7,'User Preference','2024-12-18 13:23:42');
/*!40000 ALTER TABLE `recommendationtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security_table`
--

DROP TABLE IF EXISTS `security_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security_table` (
  `S_id` int NOT NULL AUTO_INCREMENT,
  `protocol` text,
  `Description_tx` text,
  `priyority` enum('High','Low') DEFAULT NULL,
  PRIMARY KEY (`S_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4510 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security_table`
--

LOCK TABLES `security_table` WRITE;
/*!40000 ALTER TABLE `security_table` DISABLE KEYS */;
INSERT INTO `security_table` VALUES (4500,'IPsec','Internet Protocol Securuity','High'),(4501,'IPsec','Internet Protocol Securuity','Low'),(4502,'SSL','Secure Socket Layer','High'),(4503,'SSL','Secure Socket Layer','Low'),(4504,'HTTPS','HyperText Transfer Protocol Secure','High'),(4505,'HTTPS','HyperText Transfer Protocol Secure','Low'),(4506,'SSH','Secure Shell','High'),(4507,'SSH','Secure Shell','Low'),(4508,'OAuth','Open Authorization','High'),(4509,'OAuth','Open Authorization','Low');
/*!40000 ALTER TABLE `security_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorial` (
  `T_id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `contentID` int DEFAULT NULL,
  `content` text,
  `formate` text,
  PRIMARY KEY (`T_id`),
  KEY `contentID` (`contentID`),
  CONSTRAINT `tutorial_ibfk_1` FOREIGN KEY (`contentID`) REFERENCES `feedbacktable` (`ContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=1207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
INSERT INTO `tutorial` VALUES (1200,'Tutorial for Beat Saber',1,'Entertainment','Game'),(1201,'Tutorial for Half-Lyfe',2,'Entertainment','Game'),(1202,'Tutorial for VR Chat',3,'Entertainment','Community'),(1203,'Tutorial for The Walking Dead',4,'Entertainment','Game'),(1204,'Tutorial for Star Wars',5,'Entertainment','Game'),(1205,'Tutorial for Hajj',6,'Spiritual','Religius'),(1206,'Tutorial for REC-Room',7,'Construction','Architecture');
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertable` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ContentTitle` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `InteractionHistory` date DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=1575017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (157501,'@asiftanjim56','Beat Saber','2024-12-17'),(157502,'@hasammahmud71','Half-Lyfe','2024-12-17'),(157503,'@nowrenriya12','Beat Saber','2024-12-17'),(157504,'@riyadhhaq90','VR CHAT','2024-12-17'),(157505,'@lamyarahman43','Half-Lyfe','2024-12-17'),(157506,'@Alangkarroy78','VR CHAT','2024-12-17'),(157507,'@asifhassan88','The Walking Dead','2024-12-17'),(157508,'@polokhamid001','The Walking Dead','2024-12-17'),(157509,'@sheikhasan22','VR CHAT','2024-12-17'),(1575010,'@mahidhasan112','Star Wars','2024-12-17'),(1575011,'@mahmudullah167','Hajj','2024-12-17'),(1575012,'@safayetjabber66','Hajj','2024-12-17'),(1575013,'@tarinhaq69','REC-Room','2024-12-17'),(1575014,'@raisaahona113','Beat Saber','2024-12-17'),(1575015,'@ferdousmim23','Beat Saber','2024-12-17'),(1575016,'@naziatasmin90','REC-Room','2024-12-17');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrcontenttable`
--

DROP TABLE IF EXISTS `vrcontenttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vrcontenttable` (
  `ContentID` int NOT NULL AUTO_INCREMENT,
  `ContentTitle` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ContentType` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Description` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`ContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrcontenttable`
--

LOCK TABLES `vrcontenttable` WRITE;
/*!40000 ALTER TABLE `vrcontenttable` DISABLE KEYS */;
INSERT INTO `vrcontenttable` VALUES (1,'Beat Saber','Game','Tile games'),(2,'Half-Lyfe','Game','Shooting games'),(3,'VR Chat','Community','Social Media'),(4,'The Walking Dead','Game','Advanture games'),(5,'Star Wars','Game','Sci-Fi games'),(6,'Hajj','Religious','Spiritual Perform'),(7,'REC-Room','Archietecture','Construtction AR');
/*!40000 ALTER TABLE `vrcontenttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-18 18:42:46
