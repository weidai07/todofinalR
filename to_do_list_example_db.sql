-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: to_do_list
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

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `items` (
  `ItemId` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'qqqqq');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES 




CREATE TABLE restaurants (
  RestaurantId int(11) NOT NULL AUTO_INCREMENT,
  
  CuisineType varchar(255) DEFAULT NULL,
  RestaurantName varchar(45) DEFAULT NULL,
  Address varchar(45) DEFAULT NULL,
  Phone int (45) DEFAULT NULL,
  PRIMARY KEY (RestaurantId),
  FOREIGN KEY (FoodCuisineId) REFERENCES  FoodCuisineId FOREIGN KEY (FoodCuisineId) 
);
DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `RestaurantId` int(11) NOT NULL AUTO_INCREMENT,
  `CuisineType` varchar(255) DEFAULT NULL,
  `RestaurantName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` int(45) DEFAULT NULL,
  PRIMARY KEY (`RestaurantId`)
) 


DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    RestaurantId int(11) NOT NULL AUTO_INCREMENT,
    CuisineType varchar(255) DEFAULT NULL,
    RestaurantName varchar(45) DEFAULT NULL,
    Address varchar(45) DEFAULT NULL,
    Phone int (45) DEFAULT NULL,
    FoodCuisineId int(11),
    PRIMARY KEY (RestaurantId),
    FOREIGN KEY (FoodCuisineId) REFERENCES FoodCuisines(FoodCuisineId)
);
FK-works IDENTITY

DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    RestaurantId int(11) NOT NULL AUTO_INCREMENT,
    CuisineType varchar(255) DEFAULT NULL,
    RestaurantName varchar(45) DEFAULT NULL,
    Address varchar(45) DEFAULT NULL,
    Phone int (45) DEFAULT NULL,
    FoodCuisineId int(11),
    PRIMARY KEY (RestaurantId),
    FOREIGN KEY (FoodCuisineId) REFERENCES foodCuisines(FoodCuisineId)
);

CREATE TABLE `foodcuisines` (
  `FoodCuisineId` int(11) NOT NULL AUTO_INCREMENT,
  `CuisineType` varchar(255) DEFAULT NULL,
  `FoodCuisineName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FoodCuisineId`)
) 

DROP TABLE IF EXISTS foodcuisines;


CREATE TABLE foodcuisines (
  FoodCuisineId int(11) NOT NULL AUTO_INCREMENT,
  CuisineType varchar(255) DEFAULT NULL,
  FoodCuisineName varchar(45) DEFAULT NULL,
  PRIMARY KEY (FoodCuisineId),
  FOREIGN KEY (ResturantId) REFERENCES foodcuisines(ResturantId)
);
//
ALTER TABLE foodcuisines ADD RestaurantId int(11) NOT NULL;

ALTER TABLE foodcuisines ADD FOREIGN KEY ResturantId REFERENCES restaurants(RestaurantId);

*/;

-- Dump completed on 2020-01-14  9:35:34




/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `foodcuisines`
--****************************
-- THIS WORKS FOR FOREIGN KEYS ---
--****************************

DROP TABLE IF EXISTS `foodcuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `foodcuisines` (
  `FoodCuisineId` int(11) NOT NULL AUTO_INCREMENT,
  `CuisineType` varchar(255) DEFAULT NULL,
  `FoodCuisineName` varchar(45) DEFAULT NULL,
  `RestaurantId` int(11) NOT NULL,
  PRIMARY KEY (`FoodCuisineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodcuisines`
--

LOCK TABLES `foodcuisines` WRITE;
/*!40000 ALTER TABLE `foodcuisines` DISABLE KEYS */;
/*!40000 ALTER TABLE `foodcuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

/*DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client ;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restaurants` (
  `RestaurantId` int(11) NOT NULL AUTO_INCREMENT,
  `CuisineType` varchar(255) DEFAULT NULL,
  `RestaurantName` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` int(45) DEFAULT NULL,
  `FoodCuisineId` int(11) DEFAULT NULL,
  PRIMARY KEY (`RestaurantId`),
  KEY `FoodCuisineId` (`FoodCuisineId`),
  CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`FoodCuisineId`) REFERENCES `foodcuisines` (`FoodCuisineId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
!40101 SET character_set_client = @saved_cs_client ;


*****************************************************
identity to be determined.


DROP DATABASE IF EXISTS best_restaurant_db;
CREATE DATABASE best_restaurant_db;
USE best_restaurant_db;

DROP TABLE IF EXISTS foodcuisines;
CREATE TABLE foodcuisines (
  FoodCuisineId int PRIMARY KEY IDENTITY NOT NULL AUTO_INCREMENT,
  CuisineType varchar(255) DEFAULT NULL,
  FoodCuisineName varchar(45) DEFAULT NULL,
  RestaurantId int(11) NOT NULL,
  FOREIGN KEY (ResturantId) REFERENCES restaurants(ResturantId)
);

DROP TABLE IF EXISTS restaurants;
CREATE TABLE restaurants (
    RestaurantId int(11) NOT NULL AUTO_INCREMENT,
    CuisineType varchar(255) DEFAULT NULL,
    RestaurantName varchar(45) DEFAULT NULL,
    Address varchar(45) DEFAULT NULL,
    Phone int (45) DEFAULT NULL,
    FoodCuisineId int(11),
    PRIMARY KEY (RestaurantId),
    FOREIGN KEY (FoodCuisineId) REFERENCES foodCuisines(FoodCuisineId)
);*/