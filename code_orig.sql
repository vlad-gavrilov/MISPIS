-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: rating_skf
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `Auth`
--

DROP TABLE IF EXISTS `Auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Auth` (
  `teacher_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `Auth_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Auth`
--

LOCK TABLES `Auth` WRITE;
/*!40000 ALTER TABLE `Auth` DISABLE KEYS */;
INSERT INTO `Auth` VALUES (5,'sample1@mail.com','d8578edf8458ce06fbc5bb76a58c5ca4'),(6,'sample2@mail.com','a152e841783914146e4bcd4f39100686');
/*!40000 ALTER TABLE `Auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Degrees`
--

DROP TABLE IF EXISTS `Degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Degrees` (
  `degree_id` int(11) NOT NULL,
  `degree_title` varchar(60) NOT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Degrees`
--

LOCK TABLES `Degrees` WRITE;
/*!40000 ALTER TABLE `Degrees` DISABLE KEYS */;
INSERT INTO `Degrees` VALUES (1,'младший научный сотрудник'),(2,'старший научный сотрудник'),(3,'кандидат наук'),(4,'доктор наук'),(5,'член-корреспондент'),(6,'академик');
/*!40000 ALTER TABLE `Degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departments`
--

DROP TABLE IF EXISTS `Departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Departments` (
  `department_id` int(11) NOT NULL,
  `department_title` varchar(60) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departments`
--

LOCK TABLES `Departments` WRITE;
/*!40000 ALTER TABLE `Departments` DISABLE KEYS */;
INSERT INTO `Departments` VALUES (1,'инфокоммуникационных технологий и систем связи'),(2,'информатики и вычислительной техники'),(3,'общенаучной подготовки'),(4,'научно-исследовательской работы и инновационного развития');
/*!40000 ALTER TABLE `Departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ND_table`
--

DROP TABLE IF EXISTS `ND_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ND_table` (
  `teacher_id` int(11) NOT NULL,
  `nd1` int(11) DEFAULT '0',
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `ND_table_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ND_table`
--

LOCK TABLES `ND_table` WRITE;
/*!40000 ALTER TABLE `ND_table` DISABLE KEYS */;
INSERT INTO `ND_table` VALUES (5,4),(6,9);
/*!40000 ALTER TABLE `ND_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NP_table`
--

DROP TABLE IF EXISTS `NP_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NP_table` (
  `teacher_id` int(11) NOT NULL,
  `np1` int(11) DEFAULT '0',
  `np2` int(11) DEFAULT '0',
  `np3` int(11) DEFAULT '0',
  `np4` int(11) DEFAULT '0',
  `np5` int(11) DEFAULT '0',
  `np6` int(11) DEFAULT '0',
  `np7` int(11) DEFAULT '0',
  `np8` int(11) DEFAULT '0',
  `np9` int(11) DEFAULT '0',
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `NP_table_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NP_table`
--

LOCK TABLES `NP_table` WRITE;
/*!40000 ALTER TABLE `NP_table` DISABLE KEYS */;
INSERT INTO `NP_table` VALUES (5,3,1,2,0,4,7,0,9,0),(6,0,0,0,0,4,0,0,5,0);
/*!40000 ALTER TABLE `NP_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OD_table`
--

DROP TABLE IF EXISTS `OD_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OD_table` (
  `teacher_id` int(11) NOT NULL,
  `od1` int(11) DEFAULT '0',
  `od2` int(11) DEFAULT '0',
  `od3` int(11) DEFAULT '0',
  `od4` int(11) DEFAULT '0',
  `od5` int(11) DEFAULT '0',
  `od6` int(11) DEFAULT '0',
  `od7` int(11) DEFAULT '0',
  `od8` int(11) DEFAULT '0',
  `od9` int(11) DEFAULT '0',
  `od10` int(11) DEFAULT '0',
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `OD_table_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OD_table`
--

LOCK TABLES `OD_table` WRITE;
/*!40000 ALTER TABLE `OD_table` DISABLE KEYS */;
INSERT INTO `OD_table` VALUES (5,3,4,4,0,0,3,0,0,0,0),(6,10,4,0,0,0,0,5,4,10,0);
/*!40000 ALTER TABLE `OD_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OP_table`
--

DROP TABLE IF EXISTS `OP_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OP_table` (
  `teacher_id` int(11) NOT NULL,
  `op1` int(11) DEFAULT '0',
  `op2` int(11) DEFAULT '0',
  `op3` int(11) DEFAULT '0',
  `op4` int(11) DEFAULT '0',
  `op5` int(11) DEFAULT '0',
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `OP_table_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OP_table`
--

LOCK TABLES `OP_table` WRITE;
/*!40000 ALTER TABLE `OP_table` DISABLE KEYS */;
INSERT INTO `OP_table` VALUES (5,0,7,10,1,3),(6,5,8,3,10,8);
/*!40000 ALTER TABLE `OP_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positions`
--

DROP TABLE IF EXISTS `Positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Positions` (
  `position_id` int(11) NOT NULL,
  `position_title` varchar(60) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positions`
--

LOCK TABLES `Positions` WRITE;
/*!40000 ALTER TABLE `Positions` DISABLE KEYS */;
INSERT INTO `Positions` VALUES (1,'ассистент'),(2,'преподаватель'),(3,'старший преподаватель'),(4,'доцент'),(5,'профессор'),(6,'заведующий кафедрой'),(7,'декан факультета');
/*!40000 ALTER TABLE `Positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `R_table`
--

DROP TABLE IF EXISTS `R_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `R_table` (
  `teacher_id` int(11) NOT NULL,
  `r1` int(11) DEFAULT '0',
  `r2` int(11) DEFAULT '0',
  `r3` int(11) DEFAULT '0',
  PRIMARY KEY (`teacher_id`),
  CONSTRAINT `R_table_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `R_table`
--

LOCK TABLES `R_table` WRITE;
/*!40000 ALTER TABLE `R_table` DISABLE KEYS */;
INSERT INTO `R_table` VALUES (5,0,0,2),(6,10,10,10);
/*!40000 ALTER TABLE `R_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Statuses`
--

DROP TABLE IF EXISTS `Statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Statuses` (
  `status_id` int(11) NOT NULL,
  `status_title` varchar(60) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Statuses`
--

LOCK TABLES `Statuses` WRITE;
/*!40000 ALTER TABLE `Statuses` DISABLE KEYS */;
INSERT INTO `Statuses` VALUES (0,'пользователь'),(1,'администратор кафедры'),(2,'глобальный администратор');
/*!40000 ALTER TABLE `Statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(60) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `patronymic` varchar(60) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `academic_degree` int(11) NOT NULL DEFAULT '1',
  `academic_title` int(11) NOT NULL DEFAULT '1',
  `coefficient` int(11) NOT NULL DEFAULT '1',
  `department` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `department` (`department`),
  KEY `academic_degree` (`academic_degree`),
  KEY `academic_title` (`academic_title`),
  KEY `status` (`status`),
  CONSTRAINT `Teachers_ibfk_1` FOREIGN KEY (`position`) REFERENCES `Positions` (`position_id`),
  CONSTRAINT `Teachers_ibfk_2` FOREIGN KEY (`department`) REFERENCES `Departments` (`department_id`),
  CONSTRAINT `Teachers_ibfk_3` FOREIGN KEY (`academic_degree`) REFERENCES `Degrees` (`degree_id`),
  CONSTRAINT `Teachers_ibfk_4` FOREIGN KEY (`academic_title`) REFERENCES `Titles` (`title_id`),
  CONSTRAINT `Teachers_ibfk_5` FOREIGN KEY (`status`) REFERENCES `Statuses` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES (5,'Жуковский','Александр','Георгиевич',5,4,1,2,2,0),(6,'Шевчук','Петр','',5,3,2,1,1,0);
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Titles`
--

DROP TABLE IF EXISTS `Titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Titles` (
  `title_id` int(11) NOT NULL,
  `title_title` varchar(60) NOT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Titles`
--

LOCK TABLES `Titles` WRITE;
/*!40000 ALTER TABLE `Titles` DISABLE KEYS */;
INSERT INTO `Titles` VALUES (1,'доцент'),(2,'профессор');
/*!40000 ALTER TABLE `Titles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-12 19:28:30
