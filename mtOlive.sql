-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: scoutDB
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `Alliance_Data`
--

DROP TABLE IF EXISTS `Alliance_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alliance_Data` (
  `Team_Number` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alliance_Data`
--

LOCK TABLES `Alliance_Data` WRITE;
/*!40000 ALTER TABLE `Alliance_Data` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alliance_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `Username` varchar(20) NOT NULL,
  `Password` text,
  `Admin_Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('admin','$2y$10$LmEgptO3w66dY9R7LIK7OOehGuTUqML5Bo0w4sLNk6c8xx6/eIjGe',2),('robo','$2y$10$x99dgiK0A9tPxJ.ckNc44.y09OuZvz5xbEIGeq5HmruVDA.X00Zfe',0);
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Match_Data`
--

DROP TABLE IF EXISTS `Match_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Match_Data` (
  `Team_Number` int(5) NOT NULL,
  `Auton_Line` int(1) DEFAULT NULL,
  `Scale_Auton` int(1) DEFAULT NULL,
  `Switch_Auton` int(1) DEFAULT NULL,
  `Switch_Teleop` int(5) DEFAULT NULL,
  `Scale_Teleop` int(5) DEFAULT NULL,
  `Vault` int(5) DEFAULT NULL,
  `Climb_Teleop` int(1) DEFAULT NULL,
  `Speed` int(1) DEFAULT NULL,
  `Outcome` int(1) DEFAULT NULL,
  `Total_Game_Points` int(5) DEFAULT NULL,
  `Auton_Quest` int(1) DEFAULT NULL,
  `Final_Boss` int(1) DEFAULT NULL,
  `Foul_Points` int(5) DEFAULT NULL,
  `Number_Of_Fouls` int(2) DEFAULT NULL,
  `Notes` text,
  `Username` varchar(20) DEFAULT NULL,
  `Platform` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Match_Data`
--

LOCK TABLES `Match_Data` WRITE;
/*!40000 ALTER TABLE `Match_Data` DISABLE KEYS */;
INSERT INTO `Match_Data` VALUES (222,1,NULL,1,NULL,1,NULL,NULL,4,NULL,147,NULL,NULL,NULL,NULL,'Not consistent ','robo',1),(4361,1,NULL,NULL,4,NULL,NULL,NULL,2,2,402,NULL,1,NULL,NULL,NULL,'robo',1),(5438,1,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,147,NULL,NULL,45,9,'Cant keep hold of blocks and loads slow ','robo',1),(6943,1,NULL,NULL,NULL,NULL,6,NULL,2,NULL,147,NULL,NULL,NULL,NULL,'Not very good. Would not recommend due to inability to do anything but valut. ','Robo',NULL),(4575,1,NULL,NULL,2,NULL,NULL,1,1,NULL,98,NULL,NULL,NULL,NULL,NULL,'Robo',1),(1228,1,NULL,NULL,NULL,NULL,4,NULL,1,NULL,103,1,NULL,60,12,NULL,'robo',1),(4653,NULL,NULL,1,6,NULL,NULL,NULL,2,2,354,NULL,1,NULL,NULL,NULL,'robo',1),(2554,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,174,NULL,NULL,NULL,NULL,NULL,'Robo',1),(6016,1,NULL,NULL,1,NULL,3,NULL,2,2,333,NULL,1,NULL,NULL,NULL,'robo',1),(6860,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,174,1,NULL,35,7,NULL,'robo',1),(6203,1,NULL,NULL,NULL,2,NULL,2,2,NULL,174,NULL,NULL,NULL,NULL,'Carried its team but was inconsistent with scale attempts ','robo',NULL),(6203,1,NULL,NULL,NULL,2,NULL,2,2,NULL,174,NULL,NULL,NULL,NULL,'Carried its team but was inconsistent with scale attempts ','robo',NULL),(6203,1,NULL,NULL,NULL,2,NULL,2,2,NULL,174,NULL,NULL,NULL,NULL,'Carried its team but was inconsistent with scale attempts ','robo',NULL),(6203,1,NULL,NULL,NULL,2,NULL,2,2,NULL,174,NULL,NULL,NULL,NULL,'Carried its team but was inconsistent with scale attempts ','robo',NULL),(4652,1,NULL,NULL,3,NULL,NULL,NULL,2,NULL,173,NULL,NULL,NULL,NULL,NULL,'robo',1),(555,1,NULL,NULL,NULL,NULL,2,2,2,2,347,NULL,NULL,NULL,NULL,NULL,'Robo',1),(193,1,NULL,NULL,2,2,2,NULL,3,2,347,1,NULL,NULL,NULL,'Really good bot ','robo',1),(3637,1,NULL,NULL,2,2,NULL,NULL,3,2,347,NULL,NULL,NULL,NULL,'Really cosistent and fast thinking ','robo',1),(1228,NULL,NULL,NULL,NULL,NULL,4,NULL,2,NULL,307,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(2577,NULL,NULL,NULL,2,NULL,NULL,2,2,2,430,NULL,1,NULL,NULL,NULL,'Robo',1),(222,1,NULL,NULL,3,3,NULL,NULL,3,2,430,1,NULL,60,12,'Good bot ','robo',1),(2016,1,NULL,NULL,2,NULL,6,NULL,4,2,430,NULL,NULL,NULL,NULL,'Really fast and efficient ','robo',1),(5732,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Robo',NULL),(5732,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Robo',NULL),(5732,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,306,NULL,NULL,100,1,'Robot spun in circles the entire time','robo',1),(2495,NULL,NULL,NULL,1,1,NULL,2,2,2,353,NULL,NULL,NULL,NULL,NULL,'robo',1),(1143,1,NULL,NULL,NULL,4,NULL,NULL,2,NULL,306,NULL,NULL,NULL,NULL,NULL,'robo',1),(5310,1,NULL,NULL,1,NULL,NULL,NULL,3,2,353,NULL,1,NULL,NULL,'Team won for them, appeared to attack enemy team','robo',NULL),(1403,NULL,NULL,1,4,NULL,NULL,NULL,3,NULL,306,NULL,NULL,NULL,NULL,'Did not move for about 20 seconds in teleop','robo',1),(4575,1,NULL,NULL,1,NULL,NULL,NULL,2,2,334,NULL,NULL,NULL,NULL,NULL,'robo',1),(223,1,NULL,1,1,2,NULL,NULL,2,2,334,NULL,1,NULL,NULL,NULL,'robo',NULL),(4575,NULL,NULL,NULL,1,NULL,NULL,NULL,2,2,334,NULL,NULL,NULL,NULL,NULL,'robo',1),(2600,1,NULL,1,3,1,NULL,NULL,2,NULL,243,NULL,NULL,NULL,NULL,NULL,'robo',1),(1672,1,NULL,NULL,NULL,2,NULL,NULL,NULL,NULL,219,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(6945,NULL,NULL,NULL,2,NULL,5,NULL,1,NULL,219,NULL,NULL,NULL,NULL,NULL,'robo',1),(4653,NULL,NULL,NULL,3,NULL,NULL,NULL,2,1,219,NULL,NULL,NULL,NULL,NULL,'robo',1),(25,1,NULL,1,2,2,3,NULL,4,2,367,NULL,1,NULL,NULL,'Definitely consider to ally with','robo',NULL),(1923,1,1,1,1,2,3,NULL,3,2,367,1,NULL,NULL,NULL,'Froze for about 20 seconds in teleop','robo',NULL),(6945,1,NULL,NULL,2,NULL,5,NULL,NULL,NULL,219,NULL,NULL,NULL,NULL,'Also hey have a stupid name. Very slow mostly vault as long as no one is playing defense they should be a backup to a backup','robo',NULL),(1626,1,NULL,1,1,1,2,2,3,NULL,267,1,NULL,NULL,NULL,NULL,'robo',1),(3142,1,NULL,NULL,1,2,NULL,2,2,2,316,1,1,NULL,NULL,NULL,'Robo',1),(1989,1,NULL,1,NULL,2,3,NULL,3,2,316,1,1,NULL,NULL,NULL,'robo',1),(5438,1,NULL,NULL,1,NULL,NULL,NULL,1,NULL,267,1,NULL,NULL,NULL,'Intake does not work well','robo',1),(3142,1,NULL,NULL,4,NULL,NULL,2,2,2,316,1,1,NULL,NULL,'Good enough to win them the game. Definitely not end game material ','robo',1),(1089,1,NULL,NULL,NULL,NULL,4,NULL,1,NULL,267,1,NULL,5,1,NULL,'robo',1),(5310,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,316,1,NULL,NULL,NULL,'Questionable design doesnâ€™t really work that well. Very fast. If the goal is to draw fouls these guys are the 1st pick. Good at determining how long to foul for. Carried. GH','robo',NULL),(2600,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Takes about 30 sec to pick up 1 cube ','robo',NULL),(6203,1,NULL,NULL,NULL,NULL,6,2,2,2,399,1,1,NULL,NULL,NULL,'Robo',NULL),(1143,1,NULL,NULL,NULL,2,NULL,NULL,2,NULL,231,NULL,NULL,35,7,NULL,'robo',NULL),(2495,1,1,NULL,NULL,2,NULL,1,2,NULL,231,1,NULL,35,7,NULL,'robo',1),(6203,1,NULL,NULL,NULL,NULL,4,2,2,2,399,NULL,1,NULL,NULL,NULL,'robo',1),(1228,1,1,NULL,NULL,NULL,4,NULL,2,NULL,231,1,NULL,35,7,'Very wobbly and prone to fall over','robo',NULL),(2600,1,NULL,NULL,2,NULL,NULL,NULL,NULL,2,399,1,1,NULL,NULL,'Takes about 30 sec to pick up 1 cube. ','robo',1),(2495,1,NULL,1,3,NULL,NULL,NULL,NULL,NULL,231,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(1089,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(293,1,NULL,NULL,NULL,4,NULL,NULL,3,NULL,399,NULL,NULL,NULL,NULL,'Very very good great reliable intake high powered scale. Sometimes too overpowered . GH','robo',1),(1089,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(11,1,NULL,NULL,3,1,6,NULL,2,2,438,1,1,NULL,NULL,NULL,'Robo',1),(6945,1,NULL,NULL,1,NULL,NULL,NULL,1,NULL,438,NULL,NULL,50,1,'Fell over near end of natch and missed many shots on scale.','robo',NULL),(219,1,NULL,1,1,3,NULL,1,2,NULL,438,1,1,NULL,NULL,'Efficient on the field.','robo',1),(2070,1,NULL,NULL,NULL,NULL,2,NULL,2,NULL,94,NULL,NULL,25,5,NULL,'robo',1),(6945,1,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,94,1,NULL,50,10,NULL,'robo',NULL),(11,1,NULL,NULL,3,1,6,NULL,3,2,438,1,NULL,NULL,NULL,NULL,'robo',1),(2577,1,NULL,NULL,3,1,NULL,1,2,NULL,94,1,NULL,50,10,NULL,'robo',1),(555,1,1,NULL,NULL,NULL,1,NULL,2,NULL,438,NULL,NULL,NULL,NULL,'Shaky drivetrain and uneven weight distribution so itâ€™s very top heavy. No intake (genius right) soooo can maybe climb and thatâ€™s literally it. GH','robo',NULL),(4652,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL,2,402,NULL,NULL,NULL,NULL,NULL,'robo',1),(41,1,NULL,NULL,NULL,6,NULL,NULL,2,2,402,NULL,1,NULL,NULL,NULL,'robo',1),(6327,NULL,NULL,NULL,1,NULL,3,NULL,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'robo',1),(222,1,NULL,1,NULL,4,NULL,NULL,2,NULL,268,1,NULL,NULL,NULL,'Focused on scale. ','robo',1),(4652,NULL,NULL,NULL,3,NULL,NULL,NULL,1,2,402,NULL,NULL,NULL,NULL,'Very slow grabbing mechanism','robo',1),(3637,NULL,NULL,NULL,1,2,NULL,2,2,NULL,231,NULL,NULL,NULL,NULL,NULL,'robo',1),(193,1,NULL,1,1,2,1,NULL,2,2,264,1,NULL,NULL,NULL,NULL,'robo ',NULL),(1989,NULL,NULL,1,NULL,1,2,1,1,2,264,NULL,NULL,NULL,NULL,NULL,'robo',1),(6860,1,NULL,NULL,3,NULL,NULL,NULL,2,2,264,1,NULL,NULL,NULL,'No intake; can only take from vault','robo',1),(1672,NULL,NULL,NULL,1,1,NULL,NULL,1,NULL,231,1,NULL,NULL,NULL,'Looked wobbly when going for scale','robo',NULL),(6860,1,NULL,NULL,3,NULL,NULL,NULL,2,2,264,NULL,NULL,NULL,NULL,'Slow moving','robo',1),(4361,1,NULL,NULL,NULL,2,NULL,NULL,1,NULL,328,NULL,NULL,NULL,NULL,NULL,'robo ',1),(223,1,NULL,1,1,1,9,2,3,NULL,328,1,NULL,NULL,NULL,NULL,'robo',1),(2554,NULL,NULL,NULL,1,1,NULL,NULL,NULL,NULL,328,NULL,NULL,10,2,NULL,'robo',1),(1089,1,NULL,NULL,NULL,NULL,7,NULL,3,2,367,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(303,1,NULL,1,2,4,NULL,2,3,NULL,205,1,NULL,NULL,NULL,NULL,'robo',1),(4575,1,NULL,NULL,1,NULL,NULL,NULL,2,NULL,205,1,NULL,NULL,NULL,'Canâ€™t pick up cubes on its own','robo',1),(2016,1,1,NULL,2,NULL,8,NULL,3,2,396,NULL,NULL,NULL,NULL,NULL,'robo',1),(1403,1,NULL,NULL,NULL,NULL,2,NULL,3,NULL,205,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(25,1,NULL,1,5,5,NULL,NULL,3,NULL,396,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(3142,1,NULL,NULL,2,3,NULL,NULL,1,2,396,NULL,1,3,15,NULL,'robo',1),(6860,1,NULL,NULL,4,NULL,NULL,NULL,2,NULL,114,NULL,NULL,NULL,NULL,NULL,'robo',1),(6016,1,NULL,NULL,1,NULL,3,NULL,3,NULL,114,NULL,NULL,NULL,NULL,NULL,'robo',1),(4653,1,NULL,NULL,3,NULL,NULL,NULL,2,2,382,NULL,NULL,NULL,NULL,NULL,'robo',1),(5310,1,NULL,NULL,1,NULL,NULL,NULL,4,NULL,114,NULL,NULL,NULL,NULL,'Pickup mechanism seems to be broken; played defense ','robo',NULL),(1228,NULL,1,NULL,1,NULL,3,NULL,2,2,382,NULL,NULL,NULL,NULL,NULL,'robo',NULL),(5438,1,NULL,NULL,2,2,NULL,1,NULL,2,382,NULL,1,2,10,NULL,'robo',NULL),(6203,1,NULL,NULL,1,3,NULL,2,3,NULL,307,NULL,NULL,NULL,NULL,'Consistently gets scale. Reliable ','robo',1),(1089,NULL,NULL,NULL,NULL,NULL,8,NULL,3,NULL,307,NULL,NULL,NULL,NULL,NULL,'Robo',1),(5732,1,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,307,NULL,NULL,50,10,'Sporadic movement and speed ','robo',1),(1989,NULL,NULL,1,NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Robo',1),(6945,1,NULL,NULL,3,NULL,NULL,NULL,1,2,378,1,NULL,NULL,NULL,NULL,'robo',1),(2016,1,NULL,NULL,1,NULL,9,NULL,2,2,375,1,NULL,10,2,NULL,'robo',1),(6327,1,NULL,1,1,NULL,2,NULL,NULL,2,295,1,1,NULL,NULL,NULL,'robo',1),(303,1,NULL,NULL,NULL,3,NULL,2,3,2,295,NULL,NULL,NULL,NULL,'Every consistent ','robo',1),(4652,1,NULL,NULL,2,NULL,NULL,NULL,1,2,295,1,NULL,NULL,NULL,NULL,'robo',1),(5438,1,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,156,1,NULL,15,1,NULL,'robo',1),(1923,1,NULL,1,NULL,4,NULL,NULL,3,NULL,220,NULL,NULL,NULL,NULL,NULL,'robo',1),(219,1,NULL,NULL,1,1,NULL,NULL,3,NULL,220,1,NULL,NULL,NULL,'Team used flywheels and had a crippling hook-like climbing mechanism. Flywheels were not always accurate','robo',1);
/*!40000 ALTER TABLE `Match_Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pit_Data`
--

DROP TABLE IF EXISTS `Pit_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pit_Data` (
  `Team_Number` int(5) DEFAULT NULL,
  `Wheel_Base` varchar(10) DEFAULT NULL,
  `Wheel_Type` varchar(10) DEFAULT NULL,
  `Switch_Do` int(1) DEFAULT NULL,
  `Scale_Do` int(1) DEFAULT NULL,
  `Vault_Do` int(1) DEFAULT NULL,
  `Climb` int(1) DEFAULT NULL,
  `Image` mediumblob,
  `Notes` text,
  `Username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pit_Data`
--

LOCK TABLES `Pit_Data` WRITE;
/*!40000 ALTER TABLE `Pit_Data` DISABLE KEYS */;
INSERT INTO `Pit_Data` VALUES (1626,'tank','rubber',1,1,1,1,NULL,'Can do anything','robo'),(1626,'tank','rubber',1,1,1,1,NULL,'Can do anything','robo'),(6203,'tank','treads',1,1,NULL,1,NULL,NULL,'robo'),(3637,'tank','rubber',1,1,1,1,NULL,'\"Cannot take from vault exchange\" - guy who told us the info','robo');
/*!40000 ALTER TABLE `Pit_Data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-23 22:17:35
