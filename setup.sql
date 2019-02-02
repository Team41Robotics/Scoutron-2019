-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: scoutDB
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

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
-- Table structure for table `Login`
--

DROP TABLE IF EXISTS `Login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Login` (
  `Username` tinytext,
  `Password` tinytext,
  `Admin_Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Login`
--

LOCK TABLES `Login` WRITE;
/*!40000 ALTER TABLE `Login` DISABLE KEYS */;
INSERT INTO `Login` VALUES ('admin','$2y$10$9EMlS59fr1214BVW4l4FuOcGDnF4PR8cGU7SN.DWjRFPfUG2h3RzC',1);
/*!40000 ALTER TABLE `Login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Match_Input`
--

DROP TABLE IF EXISTS `Match_Input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Match_Input` (
  `Team_Number` int(11) DEFAULT NULL,
  `Auton_Line` int(11) DEFAULT NULL,
  `Hatch_Auton` int(11) DEFAULT NULL,
  `Cargo_Auton` int(11) DEFAULT NULL,
  `Hatch_Teleop` int(11) DEFAULT NULL,
  `Cargo_Teleop` int(11) DEFAULT NULL,
  `Climbing` int(11) DEFAULT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Outcome` int(11) DEFAULT NULL,
  `Total_Game_Points` int(11) DEFAULT NULL,
  `HAB_Docking` int(11) DEFAULT NULL,
  `Complete_Rocket` int(11) DEFAULT NULL,
  `Foul_Points` int(11) DEFAULT NULL,
  `Notes` text,
  `Username` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Match_Input`
--

LOCK TABLES `Match_Input` WRITE;
/*!40000 ALTER TABLE `Match_Input` DISABLE KEYS */;
INSERT INTO `Match_Input` VALUES (41,1,NULL,1,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hello','admin'),(50,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hello again','admin');
/*!40000 ALTER TABLE `Match_Input` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pit_Input`
--

DROP TABLE IF EXISTS `Pit_Input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pit_Input` (
  `Team_Number` int(11) DEFAULT NULL,
  `Wheel_Base` tinytext,
  `Wheel_Type` tinytext,
  `Hatch_Do` int(11) DEFAULT NULL,
  `Cargo_Do` int(11) DEFAULT NULL,
  `Climb1_Do` int(11) DEFAULT NULL,
  `Climb2_Do` int(11) DEFAULT NULL,
  `Climb3_Do` int(11) DEFAULT NULL,
  `Notes` text,
  `Image` blob,
  `Username` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pit_Input`
--

LOCK TABLES `Pit_Input` WRITE;
/*!40000 ALTER TABLE `Pit_Input` DISABLE KEYS */;
INSERT INTO `Pit_Input` VALUES (90,'none','none',NULL,NULL,NULL,NULL,NULL,'Blah',NULL,'admin');
/*!40000 ALTER TABLE `Pit_Input` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-02 11:01:02
