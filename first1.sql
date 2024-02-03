-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalms
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `diagnosistbl`
--

DROP TABLE IF EXISTS `diagnosistbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosistbl` (
  `DiagnosisId` int NOT NULL,
  `PatientId` int NOT NULL,
  `PatientName` varchar(45) NOT NULL,
  `Symptoms` varchar(45) DEFAULT NULL,
  `DiagnosisTest` varchar(45) DEFAULT NULL,
  `Medicines` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DiagnosisId`,`PatientId`,`PatientName`),
  KEY `PatientId_idx` (`PatientId`),
  KEY `PatientName_idx` (`PatientName`),
  CONSTRAINT `PatientId` FOREIGN KEY (`PatientId`) REFERENCES `patienttbl` (`PatientId`),
  CONSTRAINT `PatientName` FOREIGN KEY (`PatientName`) REFERENCES `patienttbl` (`PatientName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosistbl`
--

LOCK TABLES `diagnosistbl` WRITE;
/*!40000 ALTER TABLE `diagnosistbl` DISABLE KEYS */;
INSERT INTO `diagnosistbl` VALUES (3,1,'Mohan','bonefacture','positive','none');
/*!40000 ALTER TABLE `diagnosistbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctortbl`
--

DROP TABLE IF EXISTS `doctortbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctortbl` (
  `DocId` int NOT NULL,
  `DocName` varchar(45) NOT NULL,
  `DocGen` varchar(45) NOT NULL,
  `Experience` varchar(45) NOT NULL,
  `Licensce` varchar(45) NOT NULL,
  PRIMARY KEY (`DocId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctortbl`
--

LOCK TABLES `doctortbl` WRITE;
/*!40000 ALTER TABLE `doctortbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctortbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patienttbl`
--

DROP TABLE IF EXISTS `patienttbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patienttbl` (
  `PatientId` int NOT NULL,
  `PatientName` varchar(45) NOT NULL,
  `Adderss` varchar(100) DEFAULT NULL,
  `Age` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `BloodGroup` varchar(10) DEFAULT NULL,
  `MajorDisease` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PatientId`,`PatientName`),
  KEY `idx_PatientName` (`PatientName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patienttbl`
--

LOCK TABLES `patienttbl` WRITE;
/*!40000 ALTER TABLE `patienttbl` DISABLE KEYS */;
INSERT INTO `patienttbl` VALUES (1,'Mohan','Eb cross street thanipadi thandrambattu thiruvannamalai ','21','6374057479','Male','O+','fever'),(2,' dass','thruvannamali',' 20',' 2345234534','Male','O+',' injur');
/*!40000 ALTER TABLE `patienttbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 17:48:47
