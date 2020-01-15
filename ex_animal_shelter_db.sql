-- DROP DATABASE IF EXISTS `animal_shelter_db`;
-- CREATE DATABASE `animal_shelter_db`;
-- USE `animal_shelter_db`;

-- DROP TABLE IF EXISTS `animals`;

-- CREATE TABLE `animals` (`AnimalId` int(11) NOT NULL AUTO_INCREMENT,   `Type` varchar(255) NOT NULL ASC,   `Name` varchar(45) DEFAULT NULL,    `ADate` datetime DEFAULT NULL,    `Gender` varchar(45) DEFAULT NULL,   `Breed` varchar(45) DEFAULT NULL,   PRIMARY KEY (`AnimalId`) );

-- SELECT`type` FROM `animals` ORDER BY `type` ASC;

-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: animal_shelter_db.sql
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--USE animal_shelter_db;
-- Table structure for table `new_table`
--
-- DROP DATABASE IF EXISTS `animal_shelter_db`;
-- CREATE DATABASE `animal_shelter_db`;
-- USE `animal_shelter_db`;

-- DROP TABLE IF EXISTS `animals`;
-- /*!40101 SET @saved_cs_client     = @@character_set_client */;
--  SET character_set_client = utf8mb4 ;
-- CREATE TABLE `animals` (
--   `AnimalId` int(11) NOT NULL AUTO_INCREMENT,
--   `Type` varchar(255) NOT NULL ASC, /* ASC*/
--   `Name` varchar(45) DEFAULT NULL,
--   `Date` datetime DEFAULT NULL, /* DESC*/
--   `Gender` varchar(45) DEFAULT NULL,
--   `Breed` varchar(45) DEFAULT NULL,
--   PRIMARY KEY (`AnimalId`)
-- ) 
DROP DATABASE IF EXISTS `animal_shelter_db`;
CREATE DATABASE `animal_shelter_db`;
USE `animal_shelter_db`;
DROP TABLE IF EXISTS `animals`;
CREATE TABLE `animals` (`AnimalId` int(11) NOT NULL AUTO_INCREMENT, 
    `Type` varchar(255) NOT NULL ,
    `Name` varchar(45) DEFAULT NULL,
    `Date` datetime DEFAULT NULL,
    `Gender` varchar(45) DEFAULT NULL,
    `Breed` varchar(45) DEFAULT NULL, 
    PRIMARY KEY (`AnimalId`) ); 
    
)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--
SELECT * FROM animals ORDER BY `type` ASC;
LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-14 11:49:25
