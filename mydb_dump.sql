-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cart` (
  `CartID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `BasePriceBill` decimal(10,2) DEFAULT '0.00',
  `TaxBill` decimal(10,2) DEFAULT '0.00',
  `TotalBill` decimal(10,2) DEFAULT '0.00',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CartID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `Cart_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
INSERT INTO `Cart` VALUES (1,18,18.85,1.89,20.74,'2025-01-22 06:15:04'),(2,10,0.00,0.00,0.00,'2025-01-22 06:15:04'),(5,1,67.50,69.20,136.70,'2025-01-22 06:15:04'),(11,8,0.00,0.00,0.00,'2025-01-22 06:15:04'),(12,9,0.00,0.00,0.00,'2025-01-22 06:15:04'),(16,19,0.00,0.00,0.00,'2025-01-22 11:27:50'),(17,20,0.00,0.00,0.00,'2025-01-22 11:33:12'),(18,21,30.85,3.08,33.93,'2025-01-23 10:20:01'),(20,23,0.00,0.00,0.00,'2025-01-29 03:51:55'),(21,26,0.00,0.00,0.00,'2025-01-29 12:06:30'),(22,27,0.00,0.00,0.00,'2025-01-29 18:45:11'),(23,28,0.00,0.00,0.00,'2025-01-30 17:50:04'),(24,31,0.00,0.00,0.00,'2025-01-31 23:53:26'),(25,32,0.00,0.00,0.00,'2025-02-01 06:38:54'),(26,33,0.00,0.00,0.00,'2025-02-01 06:47:08'),(27,34,0.00,0.00,0.00,'2025-02-01 06:52:21'),(28,35,0.00,0.00,0.00,'2025-02-01 06:54:56'),(29,36,0.00,0.00,0.00,'2025-02-01 07:24:39'),(30,37,0.00,0.00,0.00,'2025-02-02 16:12:53'),(31,38,0.00,0.00,0.00,'2025-02-04 06:11:57'),(32,39,0.00,0.00,0.00,'2025-02-08 11:05:22'),(33,40,0.00,0.00,0.00,'2025-02-08 11:45:55'),(34,41,0.00,0.00,0.00,'2025-02-09 03:52:53'),(35,42,0.00,0.00,0.00,'2025-02-09 19:09:55'),(37,45,0.00,0.00,0.00,'2025-02-12 16:27:25'),(38,46,0.00,0.00,0.00,'2025-02-12 16:39:09'),(54,62,0.00,0.00,0.00,'2025-02-15 20:15:40'),(56,64,0.00,0.00,0.00,'2025-02-18 06:01:26'),(57,65,0.00,0.00,0.00,'2025-02-18 06:02:08'),(58,66,0.00,0.00,0.00,'2025-02-19 17:43:39'),(59,67,0.00,0.00,0.00,'2025-02-21 15:49:35'),(60,68,0.00,0.00,0.00,'2025-02-23 12:02:38'),(61,69,0.00,0.00,0.00,'2025-02-23 16:44:17'),(62,70,0.00,0.00,0.00,'2025-02-24 19:13:45'),(63,71,0.00,0.00,0.00,'2025-02-25 09:44:33'),(64,72,0.00,0.00,0.00,'2025-02-27 22:21:38'),(65,73,0.00,0.00,0.00,'2025-03-11 06:10:45'),(66,74,0.00,0.00,0.00,'2025-03-14 00:27:11'),(67,75,0.00,0.00,0.00,'2025-03-21 14:09:10'),(68,76,0.00,0.00,0.00,'2025-03-21 14:40:38'),(69,77,0.00,0.00,0.00,'2025-03-22 07:56:42'),(70,78,0.00,0.00,0.00,'2025-03-22 10:48:51');
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CartItems`
--

DROP TABLE IF EXISTS `CartItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CartItems` (
  `CartElementID` int NOT NULL AUTO_INCREMENT,
  `CartID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Quantity` int NOT NULL DEFAULT '1',
  `Options` json DEFAULT NULL,
  `BasePrice` decimal(10,2) NOT NULL,
  `CartItemId` varchar(200) NOT NULL,
  `AddedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SpiceLevel` int DEFAULT NULL,
  PRIMARY KEY (`CartElementID`),
  UNIQUE KEY `CartID` (`CartID`,`ItemID`,`CartItemId`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `CartItems_ibfk_1` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`CartID`) ON DELETE CASCADE,
  CONSTRAINT `CartItems_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `MenuItems` (`ItemID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CartItems`
--

LOCK TABLES `CartItems` WRITE;
/*!40000 ALTER TABLE `CartItems` DISABLE KEYS */;
INSERT INTO `CartItems` VALUES (49,1,1,2,NULL,5.95,'1-','2025-01-23 06:12:20',NULL),(50,1,2,1,NULL,6.95,'2-','2025-01-23 06:12:20',NULL),(52,18,1,1,NULL,5.95,'1-','2025-01-23 10:21:12',NULL),(53,18,2,1,NULL,6.95,'2-','2025-01-23 10:21:12',NULL),(54,18,8,4,NULL,6.95,'8-','2025-01-23 11:11:51',NULL),(55,18,6,1,NULL,6.95,'6-','2025-01-23 11:11:51',NULL),(57,18,10,1,NULL,17.95,'10-','2025-01-23 12:45:19',NULL),(58,18,5,1,NULL,6.95,'5-','2025-01-23 13:17:07',NULL),(61,5,2,5,NULL,6.95,'2-','2025-01-28 15:28:35',5),(62,5,6,6,NULL,6.95,'6-','2025-01-28 15:28:35',1),(63,5,3,4,'[{\"name\": \"Plain\", \"price\": \"4.95\"}, {\"name\": \"With chicken\", \"price\": \"6.95\"}]',11.90,'3-Plain-With chicken','2025-01-28 15:28:35',1),(64,5,7,2,NULL,5.95,'7-','2025-01-28 15:28:35',1),(65,5,10,1,NULL,17.95,'10-','2025-01-28 15:28:35',1),(66,5,9,1,NULL,11.95,'9-','2025-01-28 15:28:35',2),(67,5,1,1,NULL,5.95,'1-','2025-01-28 15:28:35',3),(68,5,8,2,NULL,6.95,'8-','2025-01-28 15:28:35',1),(69,5,11,1,NULL,3.95,'11-','2025-01-28 15:28:35',1),(70,5,14,5,NULL,13.50,'14-','2025-02-07 17:45:16',1);
/*!40000 ALTER TABLE `CartItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `CategoryOrderCounts`
--

DROP TABLE IF EXISTS `CategoryOrderCounts`;
/*!50001 DROP VIEW IF EXISTS `CategoryOrderCounts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CategoryOrderCounts` AS SELECT 
 1 AS `CategoryID`,
 1 AS `CategoryName`,
 1 AS `TotalOrderCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CustomerAnalytics`
--

DROP TABLE IF EXISTS `CustomerAnalytics`;
/*!50001 DROP VIEW IF EXISTS `CustomerAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CustomerAnalytics` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `CustomerEmail`,
 1 AS `TotalOrders`,
 1 AS `TotalSpend`,
 1 AS `TotalBasicSpend`,
 1 AS `LoyaltyPoints`,
 1 AS `TotalOrderItems`,
 1 AS `DistinctOrders`,
 1 AS `FrequentlyOrderedItems`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CustomerFinancialAnalytics`
--

DROP TABLE IF EXISTS `CustomerFinancialAnalytics`;
/*!50001 DROP VIEW IF EXISTS `CustomerFinancialAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CustomerFinancialAnalytics` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `CustomerEmail`,
 1 AS `TotalOrders`,
 1 AS `TotalSpend`,
 1 AS `TotalBasicSpend`,
 1 AS `AverageOrderValue`,
 1 AS `LoyaltyPoints`,
 1 AS `TotalOrderItems`,
 1 AS `DistinctOrders`,
 1 AS `RepeatOrders`,
 1 AS `FrequentlyOrderedItems`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `CustomerLoyaltyPoints`
--

DROP TABLE IF EXISTS `CustomerLoyaltyPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerLoyaltyPoints` (
  `LoyaltyID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `LoyaltyPoints` int DEFAULT '0',
  `TotalLoyaltyPoints` int DEFAULT '0',
  `TotalUsedLoyaltyPoints` int DEFAULT '0',
  `WalletBalance` decimal(10,2) DEFAULT '0.00',
  `LastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`LoyaltyID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `CustomerLoyaltyPoints_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerLoyaltyPoints`
--

LOCK TABLES `CustomerLoyaltyPoints` WRITE;
/*!40000 ALTER TABLE `CustomerLoyaltyPoints` DISABLE KEYS */;
INSERT INTO `CustomerLoyaltyPoints` VALUES (1,34,0,0,0,0.00,'2025-02-06 19:22:56'),(2,19,0,0,0,0.00,'2025-02-06 19:22:56'),(3,27,0,0,0,0.00,'2025-02-06 19:22:56'),(4,20,0,0,0,0.00,'2025-02-06 19:22:56'),(5,35,0,0,0,0.00,'2025-02-06 19:22:56'),(6,37,0,0,0,0.00,'2025-02-06 19:22:56'),(7,18,0,0,0,0.00,'2025-02-06 19:22:56'),(8,33,0,0,0,0.00,'2025-02-06 19:22:56'),(9,28,0,0,0,0.00,'2025-02-06 19:22:56'),(10,36,0,0,0,0.00,'2025-02-06 19:22:56'),(11,10,0,0,0,0.00,'2025-02-06 19:22:56'),(12,38,0,0,0,0.00,'2025-02-06 19:22:56'),(13,26,0,0,0,0.00,'2025-02-06 19:22:56'),(14,21,0,0,0,0.00,'2025-02-06 19:22:56'),(15,1,5,5,0,0.00,'2025-02-06 21:40:05'),(16,23,0,0,0,0.00,'2025-02-06 19:22:56'),(17,31,0,0,0,0.00,'2025-02-06 19:22:56'),(18,8,0,0,0,0.00,'2025-02-06 19:22:56'),(19,9,0,0,0,0.00,'2025-02-06 19:22:56'),(20,32,0,0,0,0.00,'2025-02-06 19:22:56');
/*!40000 ALTER TABLE `CustomerLoyaltyPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `CustomerOrdersWithMenuView`
--

DROP TABLE IF EXISTS `CustomerOrdersWithMenuView`;
/*!50001 DROP VIEW IF EXISTS `CustomerOrdersWithMenuView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CustomerOrdersWithMenuView` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `CustomerEmail`,
 1 AS `Phone`,
 1 AS `OrderID`,
 1 AS `OrderDate`,
 1 AS `TotalBill`,
 1 AS `OrderStatus`,
 1 AS `OrderItemID`,
 1 AS `Quantity`,
 1 AS `Price`,
 1 AS `ItemOptions`,
 1 AS `SelectedSpiceLevel`,
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `ItemDescription`,
 1 AS `ItemPrice`,
 1 AS `AvailableOptions`,
 1 AS `ItemImage`,
 1 AS `DefaultSpiceLevel`,
 1 AS `ShortCode`,
 1 AS `ItemOrderCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CustomerReservationAnalytics`
--

DROP TABLE IF EXISTS `CustomerReservationAnalytics`;
/*!50001 DROP VIEW IF EXISTS `CustomerReservationAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CustomerReservationAnalytics` AS SELECT 
 1 AS `CustomerID`,
 1 AS `CustomerName`,
 1 AS `CustomerEmail`,
 1 AS `TotalReservations`,
 1 AS `TotalGuestsBooked`,
 1 AS `CancelledReservations`,
 1 AS `CompletedReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `CustomerSpendingBehavior`
--

DROP TABLE IF EXISTS `CustomerSpendingBehavior`;
/*!50001 DROP VIEW IF EXISTS `CustomerSpendingBehavior`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `CustomerSpendingBehavior` AS SELECT 
 1 AS `CustomerID`,
 1 AS `TotalOrders`,
 1 AS `TotalSpend`,
 1 AS `BaseSpend`,
 1 AS `TotalTax`,
 1 AS `DiningOrders`,
 1 AS `TakeawayOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerEmail` varchar(100) DEFAULT NULL,
  `Customer_Password` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `JoinDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LoyaltyPoints` int DEFAULT '0',
  `WalletBalance` decimal(10,2) DEFAULT '0.00',
  `IsActive` tinyint(1) DEFAULT '1',
  `order_count` int DEFAULT '0',
  `total_spend` int DEFAULT '0',
  `total_basic_spend` int DEFAULT '0',
  `total_used_loyaltyPoints` int DEFAULT '0',
  `totalloyaltyPoints` int DEFAULT '0',
  `JoiningDate` varchar(10) GENERATED ALWAYS AS (
    CONCAT(
      LPAD(DAY(`JoinDate`), 2, '0'), '-',
      LPAD(MONTH(`JoinDate`), 2, '0'), '-',
      YEAR(`JoinDate`)
    )
  ) STORED,
  `JoiningTime` varchar(5) GENERATED ALWAYS AS (
    CONCAT(
      LPAD(HOUR(`JoinDate`), 2, '0'), ':',
      LPAD(MINUTE(`JoinDate`), 2, '0')
    )
  ) STORED,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerEmail` (`CustomerEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` (`CustomerID`, `CustomerName`, `CustomerEmail`, `Customer_Password`, `Phone`, `Address`, `DateOfBirth`, `JoinDate`, `LoyaltyPoints`, `WalletBalance`, `IsActive`, `order_count`, `total_spend`, `total_basic_spend`, `total_used_loyaltyPoints`, `totalloyaltyPoints`) VALUES (1,'John Doe','tnmpant02@gmail.com','TropicalCafe7890','1234567890','nagpur india 440021',NULL,'2025-01-18 15:42:51',4,0.00,1,96,7360,6104,580,345),(8,'om 2','tnmpant08@gmail.com','TropicalCafe7348','734857657uu',NULL,NULL,'2025-01-19 07:12:00',34,0.00,1,0,0,0,0,0),(9,'om 3','tnmpant09@gmail.com','TropicalCafe7348','7348','Bradford',NULL,'2025-01-19 07:20:48',0,0.00,1,0,0,0,0,0),(10,'nirmal','shreyash@gmail.com','TropicalCafe7657','7348657657',NULL,NULL,'2025-01-19 09:38:24',0,76578.00,1,0,0,0,0,0),(18,'Pratik Kankarej','pratikkankarej18@gmail.com','Pratik2211','08805579968',NULL,NULL,'2025-01-22 05:07:40',12,0.00,1,2,126,93,0,0),(19,'Vedant','bhosalevedant14@gmail.com','123456','8055565963',NULL,NULL,'2025-01-22 11:27:50',0,0.00,1,0,0,0,0,0),(20,'Vedant','bvedantuiux@gmail.com','123456789','8055565963',NULL,NULL,'2025-01-22 11:33:12',0,0.00,1,0,0,0,0,0),(21,'Sagar Surase','swsurase@gmail.com','123456','08459039893',NULL,NULL,'2025-01-23 10:20:01',10,0.00,1,2,98,93,0,0),(23,'tanmay','tnmpant04@gmail.com','TropicalCafe5720','08975805720',NULL,NULL,'2025-01-29 03:51:55',0,0.00,1,0,0,0,0,0),(26,'Shreyash','shreyashnirmal20@gmail.com','Snmb@202002','7304037041',NULL,NULL,'2025-01-29 12:06:30',0,318.77,1,29,2065,1787,328,135),(27,'Vedant','bvedant14@gmail.com','123456789','8055565963',NULL,NULL,'2025-01-29 18:45:11',0,0.00,1,0,0,0,0,0),(28,'Robert Marriner','robmarriner@gmail.com','TropicalCafe9540','07909119540',NULL,NULL,'2025-01-30 17:50:04',0,0.00,1,0,0,0,0,0),(31,'monali','tnmpant06@gmail.com','TropicalCafe5720','08975805720',NULL,NULL,'2025-01-31 23:53:26',0,0.00,1,0,0,0,0,0),(32,'Yash','yash@gorillatrend.in','TropicalCafe7119','9022067119',NULL,NULL,'2025-02-01 06:38:54',0,0.00,1,0,0,0,0,0),(33,'rahul','rahul@gorillatrend.in','TropicalCafe2323','7302392323',NULL,NULL,'2025-02-01 06:47:08',0,0.00,1,0,0,0,0,0),(34,'Ayush','ayush@gorillatrend.in','TropicalCafe3233','2939323233',NULL,NULL,'2025-02-01 06:52:21',0,0.00,1,0,0,0,0,0),(35,'JIKIJ','jiku@jshds.in','TropicalCafe7041','07304037041',NULL,NULL,'2025-02-01 06:54:56',0,0.00,1,0,0,0,0,0),(36,'Shrey','sdsdd','TropicalCafe2332','329232332',NULL,NULL,'2025-02-01 07:24:39',0,0.00,1,0,0,0,0,0),(37,'James Tessier','mrjames82@hotmail.com','TropicalCafe7203','07368337203',NULL,NULL,'2025-02-02 16:12:53',0,0.00,1,0,0,0,0,0),(38,'shreyash','shreyash@gorillatrend.in','TropicalCafe7041','7304037041',NULL,NULL,'2025-02-04 06:11:57',0,0.00,1,0,0,0,0,0),(39,'Pratik Kankarej','abc@gmail.com','TropicalCafe9968','08805579968',NULL,NULL,'2025-02-08 11:05:22',0,0.00,1,0,0,0,0,0),(40,'sagar sir','sagar@gmail.com','TropicalCafe1111','11111111',NULL,NULL,'2025-02-08 11:45:55',6,10.00,1,4,414,307,29,0),(41,'John Doe','johndoe@example.com','hashed_password','9876543210','123 Main St, City, Country','1990-05-15','2025-02-09 03:52:53',100,500.00,1,5,2000,1800,50,150),(42,'sagar Surase','swsuraselenovo@gmail.com','12345678','8459039893',NULL,NULL,'2025-02-09 19:09:55',8,10.00,1,23,2542,2310,64,0),(45,'xyz','xyz@mail.com','','6',NULL,NULL,'2025-02-12 16:27:25',0,0.00,1,1,28,27,0,0),(46,'','xyz1@mail.com','hh','9',NULL,NULL,'2025-02-12 16:39:09',0,0.00,1,0,0,0,0,0),(62,'tanmay','tnmpant@gmail.com','Tropical2002','08975805720',NULL,NULL,'2025-02-15 20:15:40',0,0.00,1,0,0,0,0,0),(64,'Shrey','shrey@gorillatrend.in','TropicalCafe6478','9653136478',NULL,NULL,'2025-02-18 06:01:26',0,0.00,1,0,0,0,0,0),(65,'Shreyash','shreyashnirmal7@gmail.com','TropicalCafe1541','8828241541',NULL,NULL,'2025-02-18 06:02:08',0,0.00,1,0,0,0,0,0),(66,'Michael ','hawk_invitee_1s@icloud.com','TropicalCafe4751','7771784751',NULL,NULL,'2025-02-19 17:43:39',0,0.00,1,0,0,0,0,0),(67,'Dawn Giblin','dawnlauragiblin@hotmail.com','TropicalCafe4653','07968994653',NULL,NULL,'2025-02-21 15:49:35',0,0.00,1,0,0,0,0,0),(68,'Doreen','doreenkreslins@hotmail.com','Presley717','07796225146',NULL,NULL,'2025-02-23 12:02:38',0,0.00,1,0,0,0,0,0),(69,'Ross Hendry','rosshendry14@gmail.com','TropicalCafe2878','07730392878',NULL,NULL,'2025-02-23 16:44:17',0,0.00,1,0,0,0,0,0),(70,'Courtney Tinegate','courtneytinegate@hotmail.co.uk','TropicalCafe0907','07946760907',NULL,NULL,'2025-02-24 19:13:45',0,0.00,1,0,0,0,0,0),(71,'A','hemantanik@gmail.com','TropicalCafe7899','1234567899',NULL,NULL,'2025-02-25 09:44:33',9,50.00,1,1,91,43,0,0),(72,'Oliver','oliverbradley77@gmail.com','TropicalCafe4798','07526724798',NULL,NULL,'2025-02-27 22:21:38',0,0.00,1,0,0,0,0,0),(73,'ssssss','sss@gm.ccom','TropicalCafe5727','3257245727',NULL,NULL,'2025-03-11 06:10:45',0,0.00,1,0,0,0,0,0),(74,'Elizabeth McColl','emccoll08@yahoo.com','Mcateer@157','7724096171',NULL,NULL,'2025-03-14 00:27:11',0,0.00,1,0,0,0,0,0),(75,'Billy ','billymcginty2023@gmail.com','Rangersfc1872#','07522749314',NULL,NULL,'2025-03-21 14:09:10',0,0.00,1,0,0,0,0,0),(76,'Billy McGinty','billymcginty2023@outlook.com','Rangersfc1872#','07522749314',NULL,NULL,'2025-03-21 14:40:38',0,0.00,1,0,0,0,0,0),(77,'usama altaf','usamaaltaf379@gmail.com','TropicalCafe8019','03014228019',NULL,NULL,'2025-03-22 07:56:42',0,0.00,1,0,0,0,0,0),(78,'Jill Morton','jillmorton50@icloud.com','TropicalCafe4943','07984714943',NULL,NULL,'2025-03-22 10:48:51',0,0.00,1,0,0,0,0,0);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `before_customer_insert` BEFORE INSERT ON `Customers` FOR EACH ROW BEGIN
    DECLARE last4_digits VARCHAR(4);

    -- Check if Customer_Password is provided in the insert query
    IF NEW.Customer_Password IS NULL OR NEW.Customer_Password = '' THEN
        -- Extract the last 4 digits of the phone number
        SET last4_digits = RIGHT(NEW.Phone, 4);

        -- Generate the password only if it's not provided
        SET NEW.Customer_Password = CONCAT('TropicalCafe', last4_digits);
    END IF;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_customer_insert` AFTER INSERT ON `Customers` FOR EACH ROW BEGIN
    -- Insert a new cart for the newly added customer
    INSERT INTO Cart (CustomerID, BasePriceBill, TaxBill, TotalBill)
    VALUES (NEW.CustomerID, 0, 0, 0);
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `before_customer_delete` BEFORE DELETE ON `Customers` FOR EACH ROW BEGIN
    -- Delete the cart for the customer being deleted
    DELETE FROM Cart WHERE CustomerID = OLD.CustomerID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `DashboardSummary`
--

DROP TABLE IF EXISTS `DashboardSummary`;
/*!50001 DROP VIEW IF EXISTS `DashboardSummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DashboardSummary` AS SELECT 
 1 AS `TotalMenuItems`,
 1 AS `TotalOrders`,
 1 AS `TotalCustomers`,
 1 AS `TotalReservations`,
 1 AS `TotalTables`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `DashboardSummaryByMonth`
--

DROP TABLE IF EXISTS `DashboardSummaryByMonth`;
/*!50001 DROP VIEW IF EXISTS `DashboardSummaryByMonth`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `DashboardSummaryByMonth` AS SELECT 
 1 AS `Month`,
 1 AS `TotalOrders`,
 1 AS `TotalCustomers`,
 1 AS `TotalReservations`,
 1 AS `TotalMenuItems`,
 1 AS `TotalTables`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `FinanceDashboard`
--

DROP TABLE IF EXISTS `FinanceDashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FinanceDashboard` (
  `FinanceID` int NOT NULL AUTO_INCREMENT,
  `LoyaltyPointsPercentage` decimal(5,2) NOT NULL DEFAULT '0.00',
  `LoyaltyRedeemingRequirement` int NOT NULL DEFAULT '100',
  `TableReservationFee` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`FinanceID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FinanceDashboard`
--

LOCK TABLES `FinanceDashboard` WRITE;
/*!40000 ALTER TABLE `FinanceDashboard` DISABLE KEYS */;
INSERT INTO `FinanceDashboard` VALUES (1,10.00,20,10.00);
/*!40000 ALTER TABLE `FinanceDashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Images` (
  `ImageID` int NOT NULL AUTO_INCREMENT,
  `ImageType` enum('Gallery','MenuItem') NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Active` tinyint(1) DEFAULT '1',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoyaltyPoints_Log`
--

DROP TABLE IF EXISTS `LoyaltyPoints_Log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LoyaltyPoints_Log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `OldLoyaltyPoints` int NOT NULL,
  `NewLoyaltyPoints` int NOT NULL,
  `RedeemedPoints` int DEFAULT '0',
  `RemainingLoyaltyPoints` int DEFAULT '0',
  `WalletBalanceChange` decimal(10,2) DEFAULT '0.00',
  `LogTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LogID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `LoyaltyPoints_Log_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoyaltyPoints_Log`
--

LOCK TABLES `LoyaltyPoints_Log` WRITE;
/*!40000 ALTER TABLE `LoyaltyPoints_Log` DISABLE KEYS */;
INSERT INTO `LoyaltyPoints_Log` VALUES (1,1,51,51,0,51,0.00,'2025-02-06 19:02:44');
/*!40000 ALTER TABLE `LoyaltyPoints_Log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuCategories`
--

DROP TABLE IF EXISTS `MenuCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuCategories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) NOT NULL,
  `Description` text,
  `MenuTypeID` int DEFAULT NULL,
  `dishes_count` int DEFAULT '0',
  PRIMARY KEY (`CategoryID`),
  KEY `FK_MenuTypeID` (`MenuTypeID`),
  CONSTRAINT `FK_MenuTypeID` FOREIGN KEY (`MenuTypeID`) REFERENCES `MenuTypes` (`MenuTypeID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuCategories`
--

LOCK TABLES `MenuCategories` WRITE;
/*!40000 ALTER TABLE `MenuCategories` DISABLE KEYS */;
INSERT INTO `MenuCategories` VALUES (1,'Starters   ','Appetizers to start your meal.',1,13),(2,'Mains','Hearty main course meals.',1,9),(3,'Burgers with Spicy Chips','Delicious burgers served with spicy chips.',1,3),(4,'Salads','Fresh salads with Caribbean flavors.',1,1),(5,'Sides','Tasty sides to complement your meals.',1,10),(6,'Sauces','Flavorful sauces for your dishes.',1,4),(7,'Classic Cocktails',NULL,2,8),(8,'Signature Cocktails',NULL,2,6),(9,'Sharer Cocktails',NULL,2,2),(10,'Shots',NULL,2,6),(11,'Draught',NULL,2,4),(12,'Bottles',NULL,2,8),(13,'Wine',NULL,2,6),(14,'Spirits',NULL,2,15),(15,'Fizz',NULL,2,3),(16,'Packages',NULL,2,3),(17,'Softs',NULL,2,6),(18,'Dash',NULL,2,2);
/*!40000 ALTER TABLE `MenuCategories` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `trg_update_categories_count_insert` AFTER INSERT ON `MenuCategories` FOR EACH ROW BEGIN
		update MenuTypes
        set categories_count = categories_count + 1
        where MenuTypeID = NEW.MenuTypeID;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `trg_update_categories_count_update` AFTER UPDATE ON `MenuCategories` FOR EACH ROW BEGIN 
		if old.MenuTypeID != new.MenuTypeID then
        UPDATE MenuTypes
        set categories_count = categories_count - 1
        where MenuTypeID = old.MenuTypeID;
        
        update MenuTypes
        set categories_count = categories_count + 1
        where MenuTypeID = new.MenuTypeID;
	END IF;
	END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `trg_update_categories_count_delete` AFTER DELETE ON `MenuCategories` FOR EACH ROW BEGIN
		UPDATE MenuTypes
        set categories_count = categories_count-1
        where MenuTypeID = OLD.MenuTypeID;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `CategoryID` int NOT NULL,
  `ItemName` varchar(100) NOT NULL,
  `Description` text,
  `Price` decimal(10,2) DEFAULT NULL,
  `Options` json DEFAULT NULL,
  `ImageURL` text,
  `IsAvailable` tinyint(1) DEFAULT '1',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SpiceLevel` int DEFAULT NULL,
  `ShortCode` varchar(50) DEFAULT NULL,
  `order_count` int DEFAULT '0',
  `ImagePublicID` text,
  PRIMARY KEY (`ItemID`),
  KEY `FK_CategoryID` (`CategoryID`),
  CONSTRAINT `FK_CategoryID` FOREIGN KEY (`CategoryID`) REFERENCES `MenuCategories` (`CategoryID`) ON DELETE CASCADE,
  CONSTRAINT `CHK_SpiceLevel` CHECK ((`SpiceLevel` between 0 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES (1,1,'Soup of the Day  ','Freshly made soup of the day.',5.95,NULL,'https://t4.ftcdn.net/jpg/09/27/43/43/360_F_927434390_SJmQ53EKQnXguT45FK1eW4Rgzajtvsqg.jpg',1,'2025-01-06 19:01:09','2025-03-04 06:35:29',3,'SotD1',74,'menuItems/bl4jjc6ohyba6maiqmfe'),(2,1,'Fish Goujons','Crispy fried fish fingers.',6.95,NULL,'https://res.cloudinary.com/djgvlggwk/image/upload/v1739947641/menuItems/movwaugegzs0zwurvo5k.jpg',1,'2025-01-06 19:01:09','2025-02-21 15:09:32',5,'FG2',89,'menuItems/movwaugegzs0zwurvo5k'),(3,1,'Doubles','Bara, Curried Channa, Tamarind Sauce, Pepper Sauce.',NULL,'[{\"name\": \"Plain\", \"price\": \"4.95\"}, {\"name\": \"With chicken\", \"price\": \"6.95\"}, {\"name\": \"With Goat\", \"price\": \"7.95\"}]',NULL,1,'2025-01-06 19:01:09','2025-02-21 14:53:48',1,'D3',45,NULL),(4,1,'Calypso Spicy Prawns','Prawns, Calypso Sauce, Pickled Vegetables.',6.95,NULL,NULL,1,'2025-01-06 19:01:09','2025-03-04 06:29:01',1,'CSP4',10,NULL),(5,1,'Jerk Chicken Bao Buns','Boneless Jerk Chicken, Caramelised Onions, Coriander.',6.95,NULL,NULL,1,'2025-01-06 19:01:09','2025-02-18 05:14:47',1,'JCBB5',3,NULL),(6,1,'Fish Cakes with Jerk Mayo','Crispy fish cakes served with jerk mayo.',6.95,NULL,NULL,1,'2025-01-06 19:01:09','2025-03-04 06:29:01',1,'FCwJM6',110,NULL),(7,1,'Chicken Tenders','Crispy fried chicken tenders.',5.95,NULL,NULL,1,'2025-01-06 19:01:09','2025-02-18 05:14:47',1,'CT7',42,NULL),(8,1,'5 Caribbean Wings','Five juicy Caribbean chicken wings.',6.95,NULL,NULL,1,'2025-01-06 19:02:03','2025-02-14 10:02:47',1,'5CW8',30,NULL),(9,1,'10 Caribbean Wings','Ten juicy Caribbean chicken wings.',11.95,NULL,NULL,1,'2025-01-06 19:02:03','2025-02-18 05:14:47',2,'1CW9',29,NULL),(10,1,'15 Caribbean Wings','Fifteen juicy Caribbean chicken wings.',17.95,NULL,NULL,1,'2025-01-06 19:02:03','2025-02-18 05:14:47',1,'1CW10',23,NULL),(11,1,'Extra Add Tropical Spicy Fries','Add a side of tropical spicy fries.',3.95,NULL,NULL,1,'2025-01-06 19:02:03','2025-02-18 05:14:47',1,'EATSF11',17,NULL),(12,2,'Chicken Roti','Chicken served with your choice of Dalpuri, Paratha Roti, or Rice.',9.65,'[{\"name\": \"Pumpkin\", \"price\": 1.95}, {\"name\": \"Spinach\", \"price\": 1.95}, {\"name\": \"Apple Chutney\", \"price\": 1.95}]',NULL,1,'2025-01-06 19:03:13','2025-02-17 18:23:47',1,'CR12',17,NULL),(13,2,'Beef Roti','Beef served with your choice of Dalpuri, Paratha Roti, or Rice.',11.95,NULL,NULL,0,'2025-01-06 19:03:13','2025-02-12 05:22:30',1,'BR13',74,NULL),(14,2,'Goat Roti','Goat served with your choice of Dalpuri, Paratha Roti, or Rice.',13.50,NULL,NULL,1,'2025-01-06 19:03:13','2025-03-20 02:07:23',5,'GR14',84,NULL),(15,2,'Shrimp Roti','Shrimp served with your choice of Dalpuri, Paratha Roti, or Rice.',13.50,NULL,NULL,1,'2025-01-06 19:03:13','2025-03-21 11:48:04',1,'SR15',86,NULL),(16,2,'Soca Grilled Chicken','24-hour marinated Caribbean seasoned grilled chicken.',NULL,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]',NULL,1,'2025-01-06 19:03:13','2025-02-22 02:11:11',1,'SGC16',16,NULL),(17,2,'Jerk Chicken and Rice and Peas','Jerk chicken served with rice and peas.',15.95,NULL,NULL,1,'2025-01-06 19:03:13','2025-03-21 11:48:04',1,'JCaRa17',31,NULL),(18,2,'Caribbean Fish and Chips','Crispy fried fish with a side of chips.',14.95,NULL,NULL,1,'2025-01-06 19:03:13','2025-02-22 02:11:11',1,'CFaC18',68,NULL),(19,2,'Catch of the Day','Fresh catch of the day served with one side and salad.',21.95,NULL,NULL,1,'2025-01-06 19:03:13','2025-02-21 15:05:51',1,'CotD19',36,NULL),(20,2,'Trinbago Curried Whole Lobster','Whole lobster prepared in a Trinbago curry. Market price, ask staff for details.',0.00,NULL,NULL,1,'2025-01-06 19:03:13','2025-02-14 10:02:47',1,'TCWL20',5,NULL),(21,3,'Calypso Chicken Burger','Juicy chicken burger with tropical flavors.',9.95,NULL,NULL,1,'2025-01-06 19:04:17','2025-02-18 05:14:47',1,'CCB21',3,NULL),(22,3,'Handcrafted Beef Burger','Delicious handcrafted beef burger.',11.50,NULL,NULL,1,'2025-01-06 19:04:17','2025-02-18 05:14:47',1,'HBB22',4,NULL),(23,3,'Calypso Vegie Burger','Tropical vegetarian burger.',9.50,'[{\"name\": \"Cheddar Cheese\", \"price\": 1.00}, {\"name\": \"Vegan Cheese\", \"price\": 1.00}, {\"name\": \"Tomato\", \"price\": 0.50}, {\"name\": \"Pineapple\", \"price\": 0.50}]',NULL,1,'2025-01-06 19:04:17','2025-02-18 05:14:47',1,'CVB23',6,NULL),(24,4,'Soca Salad','Mixed leaf lettuce, roasted sweet potatoes, avocado, sweet peppers, sweet corn, cherry tomatoes, cucumber, Calypso vinaigrette.',11.95,'[{\"name\": \"Chicken\", \"price\": 3.00}, {\"name\": \"Prawns\", \"price\": 4.95}]',NULL,1,'2025-01-06 19:05:22','2025-03-20 02:07:23',1,'SS24',4,NULL),(25,5,'Tropical Spicy Chips','Crispy spicy chips.',3.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'TSC25',0,NULL),(26,5,'Sweet Potato Chips','Delicious sweet potato chips.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-17 19:25:31',1,'SPC26',2,NULL),(27,5,'Caribbean Spanish Rice','Flavored Caribbean rice.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'CSR27',0,NULL),(28,5,'Basmati Rice','Plain basmati rice.',2.00,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'BR28',0,NULL),(29,5,'Rice and Peas','Caribbean rice and peas.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'RaP29',0,NULL),(30,5,'Potato Salad','Creamy potato salad.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'PS30',0,NULL),(31,5,'Macaroni Pie','Cheesy Caribbean macaroni pie.',3.50,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'MP31',0,NULL),(32,5,'Tropical Mash Potato','Creamy mashed potatoes with a tropical twist.',3.50,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-17 19:25:31',1,'TMP32',2,NULL),(33,5,'Tropical Salad','Fresh salad with tropical fruits and vegetables.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'TS33',0,NULL),(34,5,'Fried Plantain','Golden-fried sweet plantain slices.',4.95,NULL,NULL,1,'2025-01-06 19:07:55','2025-02-14 10:02:47',1,'FP34',0,NULL),(35,6,'BBQ Sauce','Classic BBQ sauce.',1.50,NULL,NULL,1,'2025-01-06 19:11:07','2025-03-20 02:07:23',1,'BS35',3,NULL),(36,6,'Mango Sauce','Sweet and tangy mango sauce.',2.00,NULL,NULL,1,'2025-01-06 19:11:07','2025-03-20 02:07:23',1,'MS36',4,NULL),(37,6,'Jerk Sauce','Spicy Caribbean jerk sauce.',2.00,NULL,NULL,1,'2025-01-06 19:11:07','2025-02-28 08:40:40',1,'JS37',1,NULL),(38,6,'Calypso Spicy Signature Pepper Sauce','Signature spicy pepper sauce.',3.00,NULL,NULL,1,'2025-01-06 19:11:07','2025-02-14 10:02:47',1,'CSSPS38',0,NULL),(39,7,'Passionfruit Martini','Classic cocktail with a tropical twist of passionfruit.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-03-04 06:34:13',0,'PM39',0,NULL),(40,7,'Mai Tai','A refreshing blend of rum, lime, and almond syrup.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-02-15 19:42:12',NULL,'MT40',2,NULL),(41,7,'Bramble','A gin-based cocktail with blackberry and citrus flavors.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-01-20 04:30:23',NULL,'B41',0,NULL),(42,7,'Mojito','Mint, lime, and rum combined for a refreshing cocktail. Add Flavour syrup (no cost).',14.00,'[{\"name\": \"Flavour syrup\", \"price\": 0}]',NULL,1,'2025-01-09 19:54:48','2025-01-20 04:30:23',NULL,'M42',0,NULL),(43,7,'Pina Colada','Tropical cocktail with rum, coconut cream, and pineapple.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-02-10 05:49:51',NULL,'PC43',1,NULL),(44,7,'Bacardi Punch','A fruity punch made with Bacardi rum.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-02-15 19:42:12',NULL,'BP44',1,NULL),(45,7,'Dark n Stormy','A ginger beer and rum cocktail with a tangy kick.',14.00,NULL,NULL,1,'2025-01-09 19:54:48','2025-01-20 04:30:23',NULL,'DnS45',0,NULL),(46,7,'Daiquiri','Classic rum cocktail with lime and sugar. Add Flavour syrup (no cost).',14.00,'[{\"name\": \"Flavour syrup\", \"price\": 0}]',NULL,1,'2025-01-09 19:54:48','2025-01-20 04:30:23',NULL,'D46',0,NULL),(47,8,'Ariba Aruba','A fruity and rum-based cocktail that transports you to a tropical paradise.',14.00,NULL,'https://res.cloudinary.com/djgvlggwk/image/upload/v1741069959/menuItems/r1lzluksbw7ry6fh4apt.jpg',1,'2025-01-09 19:55:25','2025-03-04 06:32:41',NULL,'AA47',0,'menuItems/r1lzluksbw7ry6fh4apt'),(48,8,'Rum n Red Bull','Rum combined with the energy boost of Red Bull.',8.00,NULL,NULL,1,'2025-01-09 19:55:25','2025-02-12 07:37:41',NULL,'RnRB48',3,NULL),(49,8,'Aperol Spritz','Crisp and refreshing cocktail with Aperol, prosecco, and soda.',10.00,NULL,NULL,1,'2025-01-09 19:55:25','2025-01-20 04:30:23',NULL,'AS49',0,NULL),(50,8,'Tiki Tango','Exotic mix of rum and tropical flavors for a vibrant experience.',15.00,NULL,NULL,1,'2025-01-09 19:55:25','2025-01-20 04:30:23',NULL,'TT50',0,NULL),(51,8,'Zombie','A potent and flavorful cocktail with a mix of rum and fruit juices.',15.00,NULL,NULL,1,'2025-01-09 19:55:25','2025-01-20 04:30:23',NULL,'Z51',0,NULL),(52,8,'Rum Sour','A twist on the classic whiskey sour, using rum for a tropical variation.',14.00,NULL,NULL,1,'2025-01-09 19:55:25','2025-01-20 04:30:23',NULL,'RS52',0,NULL),(53,9,'Bacardi Punch','A large shareable punch made with Bacardi rum.',120.00,NULL,NULL,1,'2025-01-09 19:55:54','2025-01-20 04:30:23',NULL,'BP53',0,NULL),(54,9,'Tiki Tango','A shareable version of the exotic Tiki Tango cocktail.',100.00,NULL,NULL,1,'2025-01-09 19:55:54','2025-02-10 05:22:13',NULL,'TT54',2,NULL),(55,10,'Dead Mans Raspberry Cream','Sweet and creamy raspberry-flavored shot.',4.50,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'DMRC55',0,NULL),(56,10,'Dead Mans Mango Cream','Tropical mango-flavored creamy shot.',4.50,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'DMMC56',0,NULL),(57,10,'Dead Mans Blue Raspberry Cream','A vibrant blue raspberry-flavored creamy shot.',4.50,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'DMBRC57',0,NULL),(58,10,'Dead Mans Black Cherry Cream','Rich and creamy black cherry-flavored shot.',4.50,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'DMBCC58',0,NULL),(59,10,'Dead Mans Strawberry Cream','Sweet strawberry-flavored creamy shot.',4.50,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'DMSC59',0,NULL),(60,10,'Wray Nephew','High-proof rum shot with a bold flavor.',8.00,NULL,NULL,1,'2025-01-09 19:56:16','2025-01-20 04:30:23',NULL,'WN60',0,NULL),(61,11,'Tennents','Classic lager with a crisp, refreshing taste.',5.75,NULL,NULL,1,'2025-01-09 20:00:03','2025-01-20 04:30:23',NULL,'T61',0,NULL),(62,11,'Heineken','Popular pale lager with a smooth finish.',5.75,NULL,NULL,1,'2025-01-09 20:00:03','2025-02-10 05:22:13',NULL,'H62',1,NULL),(63,11,'Guinness','Rich and smooth stout with a creamy texture.',5.75,NULL,NULL,1,'2025-01-09 20:00:03','2025-01-20 04:30:23',NULL,'G63',0,NULL),(64,11,'Red Stripe','Jamaican lager with a crisp, light taste.',5.75,NULL,NULL,1,'2025-01-09 20:00:03','2025-01-20 04:30:23',NULL,'RS64',0,NULL),(65,12,'Corona','Light and crisp Mexican lager, perfect for any occasion.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'C65',0,NULL),(66,12,'Budweiser','Classic American lager with a smooth, balanced flavor.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-02-11 14:13:21',NULL,'B66',2,NULL),(67,12,'Carib','Refreshing Caribbean lager with a light, crisp taste.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'C67',0,NULL),(68,12,'Carib Shandy','Caribbean lager with a lemony twist.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'CS68',0,NULL),(69,12,'Stag','Full-bodied Jamaican lager with a malty flavor.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-02-11 14:13:21',NULL,'S69',1,NULL),(70,12,'Banks','Barbadian lager with a smooth, easy-drinking flavor.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'B70',0,NULL),(71,12,'Heineken 0%','Non-alcoholic version of the classic Heineken lager.',4.00,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'H071',0,NULL),(72,12,'Rekorderlig Wild Berries','Swedish cider with a sweet and fruity wild berries flavor.',5.50,NULL,NULL,1,'2025-01-09 20:00:28','2025-01-20 04:30:23',NULL,'RWB72',0,NULL),(73,13,'White - Chardonnay','Crisp and fresh white wine with fruity notes. Small - £9 / Large £11 / Btl £32',NULL,'[{\"name\": \"Small\", \"price\": 9}, {\"name\": \"Large\", \"price\": 11}, {\"name\": \"Bottle\", \"price\": 32}]',NULL,1,'2025-01-09 20:01:08','2025-02-15 19:55:44',NULL,'W-C73',11,NULL),(74,13,'White House - Pinot Grigio','Light, refreshing white wine with citrus and apple flavors. Small - £7 / Large £9 / Btl £25',NULL,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]',NULL,1,'2025-01-09 20:01:08','2025-02-10 05:39:41',NULL,'WH-PG74',2,NULL),(75,13,'Red House - Merlot','Smooth and soft red wine with rich berry flavors. Small - £7 / Large £9 / Btl £25',NULL,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]',NULL,1,'2025-01-09 20:01:08','2025-02-28 09:07:37',NULL,'RH-M75',7,NULL),(76,13,'Red - Shiraz','Bold red wine with peppery and smoky flavors. Btl - £35',NULL,'[{\"name\": \"Bottle\", \"price\": 35}]',NULL,1,'2025-01-09 20:01:08','2025-02-14 10:10:50',0,'R-S76',8,NULL),(77,13,'Rose House - Pinot Grigio Rose','Light, crisp rose wine with floral and citrus notes. Small - £7 / Large £9 / Btl £25',NULL,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]',NULL,1,'2025-01-09 20:01:08','2025-02-10 05:32:22',NULL,'RH-PG77',2,NULL),(78,13,'Rose - Whispering Angel','Premium rose wine with subtle peach and citrus notes. Bottle - £60',NULL,'[{\"name\": \"Bottle\", \"price\": 60}]',NULL,1,'2025-01-09 20:01:08','2025-02-15 19:55:44',NULL,'R-WA78',11,NULL),(83,14,'Au Vodka','Premium vodka with a smooth finish. Add dash option +60p.',5.90,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'AV83',0,NULL),(84,14,'Absolout','Classic vodka for versatile cocktails. Add dash option +60p.',5.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-02-10 05:22:13',NULL,'A84',1,NULL),(85,14,'Aperol','Bitter-sweet Italian aperitif. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'A85',0,NULL),(86,14,'Chambord','Rich black raspberry liqueur. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'C86',0,NULL),(87,14,'Midori','Sweet melon liqueur. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-02-10 05:22:13',NULL,'M87',1,NULL),(88,14,'Passoa','Tropical passion fruit liqueur. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-02-10 05:22:13',NULL,'P88',1,NULL),(89,14,'Bombay Saphire','Elegant gin with botanical notes. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BS89',0,NULL),(90,14,'Tanquary','Classic gin with a crisp flavor. Add dash option +60p.',5.90,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'T90',0,NULL),(91,14,'Reaper\'s','Bold and smoky spirit. Add dash option +60p.',6.00,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'R91',0,NULL),(92,14,'Bumbu','Smooth rum with a tropical twist. Add dash option +60p.',6.20,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'B92',0,NULL),(93,14,'Bullion Spiced','Richly spiced spirit. Add dash option +60p.',6.40,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BS93',0,NULL),(94,14,'Bullion Coconut','Tropical coconut-flavored spirit. Add dash option +60p.',6.40,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BC94',0,NULL),(95,14,'Bullion Cherry','Cherry-flavored spirit with a sweet finish. Add dash option +60p.',6.40,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BC95',0,NULL),(96,14,'Bullion Passion Fruit','Exotic passion fruit spirit. Add dash option +60p.',6.40,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BPF96',0,NULL),(97,14,'Bullion Java','Coffee-flavored spirit for a unique taste. Add dash option +60p.',6.40,'[{\"name\": \"Add dash\", \"price\": 0.60}]',NULL,1,'2025-01-09 20:04:21','2025-01-20 04:30:23',NULL,'BJ97',0,NULL),(98,15,'Prosecco','Sparkling Italian wine.',NULL,'[{\"name\": \"Glass\", \"price\": 6.00}, {\"name\": \"Bottle\", \"price\": 30.00}]',NULL,1,'2025-01-09 20:05:29','2025-01-20 04:30:23',NULL,'P98',0,NULL),(99,15,'Moet','Premium French champagne.',100.00,NULL,NULL,1,'2025-01-09 20:05:29','2025-02-10 05:22:13',NULL,'M99',1,NULL),(100,15,'Moet Rose','Luxurious rose champagne.',130.00,NULL,NULL,1,'2025-01-09 20:05:29','2025-01-20 04:30:23',NULL,'MR100',0,NULL),(101,16,'Prosecco Package 1','Perfect for small gatherings. Includes 2 bottles of Prosecco.',50.00,NULL,NULL,1,'2025-01-09 20:05:44','2025-01-20 04:30:23',NULL,'PP1101',0,NULL),(102,16,'Prosecco Package 2','Ideal for celebrations. Includes 3 bottles of Prosecco.',70.00,NULL,NULL,1,'2025-01-09 20:05:44','2025-02-10 05:22:13',NULL,'PP2102',1,NULL),(103,16,'Prosecco Package 3','Great for large parties. Includes 5 bottles of Prosecco.',100.00,NULL,NULL,1,'2025-01-09 20:05:44','2025-01-20 04:30:23',NULL,'PP3103',0,NULL),(104,17,'Red Bull','Classic energy drink to keep you energized.',3.50,NULL,NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'RB104',0,NULL),(105,17,'Red Bull SF','Sugar-free version of the classic energy drink.',3.50,NULL,NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'RBS105',0,NULL),(106,17,'Red Bull Tropical','A tropical twist on the classic energy drink.',3.50,NULL,NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'RBT106',0,NULL),(107,17,'Red Bull Watermelon','A refreshing watermelon flavor energy drink.',3.50,NULL,NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'RBW107',0,NULL),(108,17,'Cola','Classic cola beverage to pair with your meals.',NULL,'[{\"name\": \"Glass\", \"price\": 2.50}, {\"name\": \"Pint\", \"price\": 3.50}]',NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'C108',0,NULL),(109,17,'Orange Juice','Freshly squeezed orange juice for a refreshing taste.',NULL,'[{\"name\": \"Glass\", \"price\": 2.00}, {\"name\": \"Pint\", \"price\": 3.50}]',NULL,1,'2025-01-09 20:06:07','2025-01-20 04:30:23',NULL,'OJ109',0,NULL),(110,18,'Post mix Dash','Dash of post mix to complement your drink.',0.60,NULL,NULL,1,'2025-01-09 20:06:35','2025-02-10 05:22:13',NULL,'PmD110',1,NULL),(111,18,'Cordial Dash','Dash of cordial to add a sweet touch.',0.60,NULL,NULL,1,'2025-01-09 20:06:35','2025-01-20 04:30:23',NULL,'CD111',0,NULL);
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_menuitem_insert` AFTER INSERT ON `MenuItems` FOR EACH ROW BEGIN
    UPDATE MenuCategories
    SET dishes_count = dishes_count + 1
    WHERE CategoryID = NEW.CategoryID;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_menuitem_update` AFTER UPDATE ON `MenuItems` FOR EACH ROW BEGIN 
		if old.CategoryID <> new.CategoryID then 
        update MenuCategories 
        set dishes_count = dishes_count + 1
        where CategoryId = old.CategoryID;
        
        update MenuCategories  
        set dishes_count = dishes_count + 1
        where CategoryID = new.CategoryID;
	END IF;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_menuitem_delete` AFTER DELETE ON `MenuItems` FOR EACH ROW BEGIN
    -- Ensure that dishes_count doesn't go below zero
    IF (SELECT dishes_count FROM MenuCategories WHERE CategoryID = OLD.CategoryID) > 0 THEN
        UPDATE MenuCategories
        SET dishes_count = dishes_count - 1
        WHERE CategoryID = OLD.CategoryID;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `MenuTypes`
--

DROP TABLE IF EXISTS `MenuTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuTypes` (
  `MenuTypeID` int NOT NULL AUTO_INCREMENT,
  `MenuTypeName` varchar(50) NOT NULL,
  `categories_count` int DEFAULT '0',
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MenuTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuTypes`
--

LOCK TABLES `MenuTypes` WRITE;
/*!40000 ALTER TABLE `MenuTypes` DISABLE KEYS */;
INSERT INTO `MenuTypes` VALUES (1,'Restaurant Menu',6,'RestaurantMenu'),(2,'Drink Menu',12,'DrinkMenu');
/*!40000 ALTER TABLE `MenuTypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `before_insert_menutype` BEFORE INSERT ON `MenuTypes` FOR EACH ROW BEGIN
    SET NEW.slug = REPLACE(NEW.MenuTypeName, ' ', '');
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `before_update_menutype` BEFORE UPDATE ON `MenuTypes` FOR EACH ROW BEGIN
    IF OLD.MenuTypeName <> NEW.MenuTypeName THEN
        SET NEW.slug = REPLACE(NEW.MenuTypeName, ' ', '');
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `MonthlyAnalytics`
--

DROP TABLE IF EXISTS `MonthlyAnalytics`;
/*!50001 DROP VIEW IF EXISTS `MonthlyAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyAnalytics` AS SELECT 
 1 AS `Month`,
 1 AS `TotalOrders`,
 1 AS `TotalBaseRevenue`,
 1 AS `TotalTaxCollected`,
 1 AS `TotalRevenue`,
 1 AS `TotalPendingLoyaltyPoints`,
 1 AS `PendingOrders`,
 1 AS `PreparingOrders`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyAnalyticsExtended`
--

DROP TABLE IF EXISTS `MonthlyAnalyticsExtended`;
/*!50001 DROP VIEW IF EXISTS `MonthlyAnalyticsExtended`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyAnalyticsExtended` AS SELECT 
 1 AS `Month`,
 1 AS `TotalOrders`,
 1 AS `TotalBaseRevenue`,
 1 AS `TotalTaxCollected`,
 1 AS `TotalRevenue`,
 1 AS `AvgOrderValue`,
 1 AS `UniqueCustomers`,
 1 AS `NewCustomers`,
 1 AS `AvgOrdersPerCustomer`,
 1 AS `TotalPendingLoyaltyPoints`,
 1 AS `TotalLoyaltyPointsRedeemed`,
 1 AS `PendingOrders`,
 1 AS `PreparingOrders`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`,
 1 AS `WalletPayments`,
 1 AS `NormalPayments`,
 1 AS `DineInOrders`,
 1 AS `TakeawayOrders`,
 1 AS `TotalReservations`,
 1 AS `PendingReservations`,
 1 AS `ConfirmedReservations`,
 1 AS `CancelledReservations`,
 1 AS `CompletedReservations`,
 1 AS `TotalGuests`,
 1 AS `CustomersWithReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyCategoryOrderCounts`
--

DROP TABLE IF EXISTS `MonthlyCategoryOrderCounts`;
/*!50001 DROP VIEW IF EXISTS `MonthlyCategoryOrderCounts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyCategoryOrderCounts` AS SELECT 
 1 AS `Month`,
 1 AS `CategoryID`,
 1 AS `CategoryName`,
 1 AS `TotalOrderCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyOrderModeAnalytics`
--

DROP TABLE IF EXISTS `MonthlyOrderModeAnalytics`;
/*!50001 DROP VIEW IF EXISTS `MonthlyOrderModeAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyOrderModeAnalytics` AS SELECT 
 1 AS `Month`,
 1 AS `TableMode`,
 1 AS `OrderCount`,
 1 AS `RevenueGenerated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyOrderOverview`
--

DROP TABLE IF EXISTS `MonthlyOrderOverview`;
/*!50001 DROP VIEW IF EXISTS `MonthlyOrderOverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyOrderOverview` AS SELECT 
 1 AS `Month`,
 1 AS `TotalOrders`,
 1 AS `TotalBaseRevenue`,
 1 AS `TotalTaxCollected`,
 1 AS `TotalRevenue`,
 1 AS `PendingOrders`,
 1 AS `PreparingOrders`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `MonthlyTopSellingItems`
--

DROP TABLE IF EXISTS `MonthlyTopSellingItems`;
/*!50001 DROP VIEW IF EXISTS `MonthlyTopSellingItems`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `MonthlyTopSellingItems` AS SELECT 
 1 AS `Month`,
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `TotalTimesOrdered`,
 1 AS `TotalQuantitySold`,
 1 AS `TotalRevenueGenerated`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OrderItems`
--

DROP TABLE IF EXISTS `OrderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItems` (
  `OrderItemID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ItemID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Options` json DEFAULT NULL,
  `ItemOptionsId` varchar(200) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `SpiceLevel` int DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `OrderID` (`OrderID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `OrderItems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE,
  CONSTRAINT `OrderItems_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `MenuItems` (`ItemID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItems`
--

LOCK TABLES `OrderItems` WRITE;
/*!40000 ALTER TABLE `OrderItems` DISABLE KEYS */;
INSERT INTO `OrderItems` VALUES (40,38,1,1,NULL,'1-',5.95,3),(41,38,2,1,NULL,'2-',6.95,5),(42,38,4,1,NULL,'4-',6.95,1),(43,38,7,1,NULL,'7-',5.95,1),(44,38,1,1,NULL,'1-',5.95,3),(45,38,2,1,NULL,'2-',6.95,5),(46,38,4,1,NULL,'4-',6.95,1),(47,38,7,1,NULL,'7-',5.95,1),(211,57,1,1,NULL,'1-',5.95,3),(212,57,2,1,NULL,'2-',6.95,5),(213,57,6,1,NULL,'6-',6.95,1),(214,58,1,1,NULL,'1-',5.95,3),(215,58,6,1,NULL,'6-',6.95,1),(216,58,1,1,NULL,'1-',5.95,3),(217,58,6,3,NULL,'6-',6.95,1),(218,60,1,1,NULL,'1-',5.95,3),(219,60,6,3,NULL,'6-',6.95,1),(220,60,4,1,NULL,'4-',6.95,1),(221,60,7,1,NULL,'7-',5.95,1),(222,61,1,1,NULL,'1-',5.95,3),(223,61,6,3,NULL,'6-',6.95,1),(224,61,7,1,NULL,'7-',5.95,1),(225,62,4,1,NULL,'4-',6.95,1),(226,62,7,2,NULL,'7-',5.95,1),(227,62,6,1,NULL,'6-',6.95,1),(228,62,7,2,NULL,'7-',5.95,1),(229,62,4,1,NULL,'4-',6.95,1),(230,62,7,1,NULL,'7-',5.95,4),(231,62,6,1,NULL,'6-',6.95,5),(232,62,6,1,NULL,'6-',6.95,5),(233,62,7,1,NULL,'7-',5.95,1),(234,62,2,1,NULL,'2-',6.95,5),(235,62,6,2,NULL,'6-',6.95,1),(236,62,4,2,NULL,'4-',6.95,1),(237,71,2,1,NULL,'2-',6.95,5),(238,71,6,1,NULL,'6-',6.95,1),(239,72,1,41,NULL,'1-',5.95,3),(240,72,2,2,NULL,'2-',6.95,5),(241,72,6,1,NULL,'6-',6.95,1),(242,75,24,2,NULL,'24-',11.95,3),(243,75,23,1,NULL,'23-',9.50,1),(244,75,21,1,NULL,'21-',9.95,3),(245,75,13,1,NULL,'13-',11.95,3),(246,76,3,1,'[{\"name\": \"With chicken\", \"price\": \"6.95\"}]','3-With chicken',6.95,1),(247,76,10,1,NULL,'10-',17.95,1),(248,77,1,1,NULL,'1-',5.95,3),(249,77,2,1,NULL,'2-',6.95,5),(250,80,10,1,NULL,'10-',17.95,1),(251,80,9,1,NULL,'9-',11.95,2),(252,80,3,1,'[{\"name\": \"Plain\", \"price\": \"4.95\"}]','3-Plain',4.95,1),(253,81,14,2,NULL,'14-',13.50,1),(254,81,18,1,NULL,'18-',14.95,1),(255,81,15,1,NULL,'15-',13.50,1),(256,81,48,1,NULL,'48-',8.00,NULL),(257,81,54,1,NULL,'54-',100.00,NULL),(258,82,14,1,NULL,'14-',13.50,1),(259,82,1,1,NULL,'1-',5.95,1),(260,82,6,1,NULL,'6-',6.95,1),(261,82,9,1,NULL,'9-',11.95,1),(262,83,14,1,NULL,'14-',13.50,1),(263,83,15,1,NULL,'15-',13.50,1),(264,83,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}, {\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}]','16-¼ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips-½ Soca Grilled Chicken',29.85,1),(265,84,14,1,NULL,'14-',13.50,1),(266,84,2,1,NULL,'2-',6.95,1),(267,84,4,1,NULL,'4-',6.95,5),(268,84,7,1,NULL,'7-',5.95,3),(269,85,18,1,NULL,'18-',14.95,1),(270,85,12,1,NULL,'12-',9.65,1),(271,85,20,1,NULL,'20-',0.00,1),(272,86,14,1,NULL,'14-',13.50,1),(273,86,18,8,NULL,'18-',14.95,1),(274,87,14,2,NULL,'14-',13.50,1),(275,87,18,3,NULL,'18-',14.95,1),(276,87,12,1,NULL,'12-',9.65,1),(277,88,14,1,NULL,'14-',13.50,1),(278,88,15,3,NULL,'15-',13.50,1),(279,89,14,1,NULL,'14-',13.50,1),(280,89,18,3,NULL,'18-',14.95,1),(281,90,13,7,NULL,'13-',11.95,1),(282,91,17,7,NULL,'17-',15.95,1),(283,92,18,2,NULL,'18-',14.95,1),(284,92,12,1,NULL,'12-',9.65,1),(285,93,17,3,NULL,'17-',15.95,1),(286,94,14,7,NULL,'14-',13.50,1),(287,95,14,1,NULL,'14-',13.50,1),(288,95,18,1,NULL,'18-',14.95,1),(289,95,19,1,NULL,'19-',21.95,5),(290,96,14,1,NULL,'14-',13.50,1),(291,96,18,5,NULL,'18-',14.95,1),(292,97,18,1,NULL,'18-',14.95,1),(293,97,12,1,NULL,'12-',9.65,1),(294,97,19,3,NULL,'19-',21.95,1),(295,98,13,1,NULL,'13-',11.95,1),(296,98,17,5,NULL,'17-',15.95,1),(297,99,12,1,NULL,'12-',9.65,1),(298,99,20,1,NULL,'20-',0.00,1),(299,99,17,1,NULL,'17-',15.95,4),(300,100,18,19,NULL,'18-',14.95,5),(301,101,14,1,NULL,'14-',13.50,1),(302,101,18,1,NULL,'18-',14.95,1),(303,101,19,4,NULL,'19-',21.95,5),(304,102,14,1,NULL,'14-',13.50,1),(305,102,18,1,NULL,'18-',14.95,1),(306,102,19,1,NULL,'19-',21.95,1),(307,102,14,1,NULL,'14-',13.50,1),(308,102,18,1,NULL,'18-',14.95,1),(309,102,15,1,NULL,'15-',13.50,5),(310,102,12,1,NULL,'12-',9.65,1),(311,102,73,1,'[{\"name\": \"Large\", \"price\": 11}, {\"name\": \"Bottle\", \"price\": 32}]','73-Large-Bottle',43.00,NULL),(312,102,14,1,NULL,'14-',13.50,1),(313,102,18,1,NULL,'18-',14.95,1),(314,102,14,1,NULL,'14-',13.50,1),(315,102,15,5,NULL,'15-',13.50,5),(316,102,14,1,NULL,'14-',13.50,1),(317,102,18,1,NULL,'18-',14.95,1),(318,102,15,1,NULL,'15-',13.50,1),(319,109,13,15,NULL,'13-',11.95,1),(320,110,13,4,NULL,'13-',11.95,1),(321,111,14,7,NULL,'14-',13.50,5),(322,112,13,24,NULL,'13-',11.95,1),(323,113,13,7,NULL,'13-',11.95,1),(324,113,14,7,NULL,'14-',13.50,1),(325,114,14,1,NULL,'14-',13.50,1),(326,114,15,15,NULL,'15-',13.50,1),(327,115,13,1,NULL,'13-',11.95,1),(328,116,14,1,NULL,'14-',13.50,1),(329,116,18,1,NULL,'18-',14.95,1),(330,116,19,1,NULL,'19-',21.95,5),(331,117,13,1,NULL,'13-',11.95,1),(332,117,14,1,NULL,'14-',13.50,1),(333,117,18,1,NULL,'18-',14.95,1),(334,117,15,1,NULL,'15-',13.50,1),(335,117,13,1,NULL,'13-',11.95,1),(336,117,14,1,NULL,'14-',13.50,1),(337,117,15,1,NULL,'15-',13.50,1),(338,119,13,1,NULL,'13-',11.95,1),(339,119,15,15,NULL,'15-',13.50,1),(340,119,19,2,NULL,'19-',21.95,1),(341,119,13,4,NULL,'13-',11.95,1),(342,123,13,1,NULL,'13-',11.95,1),(343,123,18,1,NULL,'18-',14.95,1),(344,123,5,1,NULL,'5-',6.95,1),(345,123,9,2,NULL,'9-',11.95,1),(346,124,13,1,NULL,'13-',11.95,1),(347,124,14,4,NULL,'14-',13.50,5),(348,124,12,1,NULL,'12-',9.65,1),(349,124,20,1,NULL,'20-',0.00,1),(350,124,17,1,NULL,'17-',15.95,5),(351,124,18,1,NULL,'18-',14.95,1),(352,124,14,1,NULL,'14-',13.50,1),(353,126,13,1,NULL,'13-',11.95,1),(354,126,14,1,NULL,'14-',13.50,1),(355,126,12,1,NULL,'12-',9.65,1),(356,126,20,1,NULL,'20-',0.00,1),(357,126,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(358,126,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(359,126,99,1,'[{\"name\": \"Bottle\", \"price\": 35}]','99-Bottle',135.00,NULL),(360,126,110,1,'[{\"name\": \"Bottle\", \"price\": 35}]','110-Bottle',35.60,NULL),(361,126,62,1,'[{\"name\": \"Bottle\", \"price\": 60}]','62-Bottle',65.75,NULL),(362,126,66,1,'[{\"name\": \"Bottle\", \"price\": 60}]','66-Bottle',65.50,NULL),(363,126,84,1,'[{\"name\": \"Bottle\", \"price\": 60}, {\"name\": \"Add dash\", \"price\": 0.6}]','84-Bottle-Add dash',65.60,NULL),(364,126,87,1,'[{\"name\": \"Add dash\", \"price\": 0.6}]','87-Add dash',6.60,NULL),(365,126,88,1,'[{\"name\": \"Add dash\", \"price\": 0.6}]','88-Add dash',6.60,NULL),(366,126,102,1,'[{\"name\": \"Bottle\", \"price\": 60}, {\"name\": \"Add dash\", \"price\": 0.6}]','102-Bottle-Add dash',130.60,NULL),(367,126,54,1,'[{\"name\": \"Bottle\", \"price\": 60}, {\"name\": \"Add dash\", \"price\": 0.6}]','54-Bottle-Add dash',160.60,NULL),(368,126,40,1,'[{\"name\": \"Bottle\", \"price\": 60}, {\"name\": \"Add dash\", \"price\": 0.6}]','40-Bottle-Add dash',74.60,NULL),(369,126,48,1,'[{\"name\": \"Bottle\", \"price\": 60}, {\"name\": \"Add dash\", \"price\": 0.6}]','48-Bottle-Add dash',68.60,NULL),(370,126,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(371,126,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(372,126,73,1,'[{\"name\": \"Small\", \"price\": 9}]','73-Small',9.00,NULL),(373,126,77,1,'[{\"name\": \"Bottle\", \"price\": 25}]','77-Bottle',25.00,NULL),(374,126,13,1,NULL,'13-',11.95,1),(375,126,23,1,NULL,'23-',9.50,1),(376,130,12,1,NULL,'12-',9.65,1),(377,130,18,1,NULL,'18-',14.95,1),(378,130,75,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]','75-Small-Large-Bottle',41.00,NULL),(379,130,77,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}]','77-Small-Large',16.00,NULL),(380,126,13,1,NULL,'13-',11.95,1),(381,126,21,1,NULL,'21-',9.95,1),(382,126,23,1,'[{\"name\": \"Tomato\", \"price\": 0.5}, {\"name\": \"Vegan Cheese\", \"price\": 1}]','23-Tomato-Vegan Cheese',11.00,1),(383,130,75,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]','75-Small-Large-Bottle',41.00,NULL),(384,130,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(385,130,14,1,NULL,'14-',13.50,1),(386,130,75,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}]','75-Small-Large',16.00,NULL),(387,126,76,1,NULL,'76-',0.00,NULL),(388,126,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(389,126,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(390,126,73,1,'[{\"name\": \"Large\", \"price\": 11}, {\"name\": \"Bottle\", \"price\": 32}]','73-Large-Bottle',43.00,NULL),(391,136,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(392,130,74,1,NULL,'74-',0.00,NULL),(393,130,74,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Bottle\", \"price\": 25}]','74-Small-Bottle',32.00,NULL),(394,130,14,1,NULL,'14-',13.50,1),(395,130,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(396,139,14,1,NULL,'14-',13.50,1),(397,139,78,1,NULL,'78-',0.00,NULL),(398,126,43,1,NULL,'43-',14.00,NULL),(399,126,20,1,NULL,'20-',0.00,1),(400,126,12,1,'[{\"name\": \"Spinach\", \"price\": 1.95}]','12-Spinach',11.60,1),(401,126,18,1,NULL,'18-',14.95,1),(402,126,12,1,'[{\"name\": \"Pumpkin\", \"price\": 1.95}]','12-Pumpkin',11.60,1),(403,144,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',0.00,NULL),(404,126,14,1,NULL,'14-',13.50,1),(405,146,76,1,'[{\"name\": \"Bottle\", \"price\": 35}]','76-Bottle',35.00,NULL),(406,130,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(407,126,15,1,NULL,'15-',13.50,4),(408,130,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}]','16-¼ Soca Grilled Chicken-½ Soca Grilled Chicken',19.90,1),(409,150,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(410,150,73,1,'[{\"name\": \"Small\", \"price\": 9}]','73-Small',9.00,NULL),(411,151,12,1,'[{\"name\": \"Pumpkin\", \"price\": 1.95}, {\"name\": \"Spinach\", \"price\": 1.95}]','12-Pumpkin-Spinach',13.55,1),(412,151,73,1,'[{\"name\": \"Small\", \"price\": 9}, {\"name\": \"Large\", \"price\": 11}]','73-Small-Large',20.00,NULL),(413,152,13,1,NULL,'13-',11.95,1),(414,152,14,1,NULL,'14-',13.50,1),(415,152,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(416,153,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(417,153,73,1,'[{\"name\": \"Small\", \"price\": 9}, {\"name\": \"Large\", \"price\": 11}]','73-Small-Large',20.00,NULL),(418,154,14,1,NULL,'14-',13.50,1),(419,155,13,1,NULL,'13-',11.95,1),(420,155,14,1,NULL,'14-',13.50,1),(421,156,14,1,NULL,'14-',13.50,1),(422,156,18,1,NULL,'18-',14.95,1),(423,157,66,1,NULL,'66-',5.50,NULL),(424,157,69,1,NULL,'69-',5.50,NULL),(425,158,14,1,NULL,'14-',13.50,1),(426,158,18,1,NULL,'18-',14.95,1),(427,158,19,1,NULL,'19-',21.95,5),(428,159,18,1,NULL,'18-',14.95,1),(429,159,14,1,NULL,'14-',13.50,1),(430,160,14,1,NULL,'14-',13.50,1),(431,160,15,1,NULL,'15-',13.50,1),(432,161,14,1,NULL,'14-',13.50,1),(433,162,22,1,NULL,'22-',11.50,5),(434,163,73,1,'[{\"name\": \"Large\", \"price\": 11}]','73-Large',11.00,NULL),(436,165,14,1,NULL,'14-',13.50,1),(437,165,18,1,NULL,'18-',14.95,1),(438,165,12,1,'[{\"name\": \"Pumpkin\", \"price\": 1.95}]','12-Pumpkin',11.60,1),(439,165,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}]','16-¼ Soca Grilled Chicken',7.95,1),(440,165,22,1,NULL,'22-',11.50,1),(441,165,23,1,'[{\"name\": \"Vegan Cheese\", \"price\": 1}]','23-Vegan Cheese',10.50,1),(442,166,14,1,NULL,'14-',13.50,1),(443,166,15,1,NULL,'15-',13.50,1),(444,167,15,1,NULL,'15-',13.50,4),(445,168,14,1,NULL,'14-',13.50,1),(466,177,48,1,NULL,'48-',8.00,NULL),(467,177,15,1,NULL,'15-',13.50,1),(468,177,19,1,NULL,'19-',21.95,1),(478,184,14,1,NULL,'14-',13.50,1),(479,184,15,1,NULL,'15-',13.50,1),(480,185,12,1,'[{\"name\": \"Spinach\", \"price\": 1.95}, {\"name\": \"Apple Chutney\", \"price\": 1.95}]','12-Spinach-Apple Chutney',13.55,1),(481,185,15,1,NULL,'15-',13.50,1),(482,186,15,1,NULL,'15-',13.50,1),(483,186,17,3,NULL,'17-',15.95,5),(484,187,16,1,'[{\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}, {\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}]','16-2 Boneless Soca Grilled Thighs with Spicy Chips-¼ Soca Grilled Chicken',17.90,1),(485,188,19,1,NULL,'19-',21.95,1),(486,189,14,1,NULL,'14-',13.50,5),(487,189,15,1,NULL,'15-',13.50,5),(488,189,73,1,'[{\"name\": \"Large\", \"price\": 11}, {\"name\": \"Small\", \"price\": 9}]','73-Large-Small',20.00,NULL),(489,190,15,1,NULL,'15-',13.50,5),(490,190,17,1,NULL,'17-',15.95,5),(491,190,75,1,'[{\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]','75-Large-Bottle',34.00,NULL),(492,191,15,1,NULL,'15-',13.50,5),(493,191,17,1,NULL,'17-',15.95,5),(494,191,75,1,'[{\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]','75-Large-Bottle',34.00,NULL),(495,192,15,1,NULL,'15-',13.50,5),(496,192,17,1,NULL,'17-',15.95,1),(497,192,75,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Bottle\", \"price\": 25}]','75-Small-Bottle',32.00,NULL),(498,192,73,1,'[{\"name\": \"Small\", \"price\": 9}]','73-Small',9.00,NULL),(499,193,19,1,NULL,'19-',21.95,1),(500,193,16,1,'[{\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-½ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',21.90,1),(501,193,18,1,NULL,'18-',14.95,1),(502,193,15,1,NULL,'15-',13.50,5),(503,194,19,1,NULL,'19-',21.95,1),(504,194,16,1,'[{\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-½ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',21.90,1),(505,194,18,1,NULL,'18-',14.95,1),(506,194,15,1,NULL,'15-',13.50,5),(507,195,19,1,NULL,'19-',21.95,1),(508,195,16,1,'[{\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-½ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',21.90,1),(509,195,18,1,NULL,'18-',14.95,1),(510,195,15,1,NULL,'15-',13.50,5),(511,196,19,1,NULL,'19-',21.95,1),(512,196,16,1,'[{\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-½ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',21.90,1),(513,196,18,1,NULL,'18-',14.95,1),(514,196,15,1,NULL,'15-',13.50,5),(515,197,19,1,NULL,'19-',21.95,1),(516,197,16,1,'[{\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-½ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',21.90,1),(517,197,18,1,NULL,'18-',14.95,1),(518,197,15,1,NULL,'15-',13.50,5),(519,198,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(520,198,73,1,'[{\"name\": \"Small\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 32}]','73-Small-Bottle',41.00,NULL),(521,198,44,1,NULL,'44-',14.00,NULL),(522,198,40,1,'[{\"name\": \"Bottle\", \"price\": 60}]','40-Bottle',74.00,NULL),(523,199,15,1,NULL,'15-',13.50,1),(524,199,17,1,NULL,'17-',15.95,5),(525,199,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"½ Soca Grilled Chicken\", \"price\": 11.95}]','16-¼ Soca Grilled Chicken-½ Soca Grilled Chicken',19.90,1),(526,200,19,1,NULL,'19-',21.95,1),(527,200,17,1,NULL,'17-',15.95,5),(528,201,73,1,'[{\"name\": \"Bottle\", \"price\": 32}, {\"name\": \"Small\", \"price\": 9}]','73-Bottle-Small',41.00,NULL),(529,201,78,1,'[{\"name\": \"Bottle\", \"price\": 60}]','78-Bottle',60.00,NULL),(530,202,12,2,'[{\"name\": \"Spinach\", \"price\": 1.95}]','12-Spinach',11.60,1),(531,202,15,1,NULL,'15-',13.50,4),(532,202,17,1,NULL,'17-',15.95,1),(533,203,14,1,NULL,'14-',13.50,5),(534,203,15,1,NULL,'15-',13.50,5),(535,203,24,1,'[{\"name\": \"Prawns\", \"price\": 4.95}]','24-Prawns',16.90,5),(536,203,3,1,'[{\"name\": \"With chicken\", \"price\": \"6.95\"}]','3-With chicken',6.95,4),(546,205,15,10,NULL,'15-',13.50,4),(547,205,19,12,NULL,'19-',21.95,4),(548,205,9,9,NULL,'9-',11.95,1),(549,205,11,1,NULL,'11-',3.95,1),(550,205,10,1,NULL,'10-',17.95,1),(551,205,4,2,NULL,'4-',6.95,1),(552,205,5,1,NULL,'5-',6.95,1),(553,205,6,1,NULL,'6-',6.95,4),(554,205,7,1,NULL,'7-',5.95,5),(555,205,23,1,'[{\"name\": \"Pineapple\", \"price\": 0.5}, {\"name\": \"Cheddar Cheese\", \"price\": 1}]','23-Pineapple-Cheddar Cheese',11.00,1),(556,205,22,1,NULL,'22-',11.50,4),(557,205,21,1,NULL,'21-',9.95,5),(558,206,14,1,NULL,'14-',13.50,5),(559,206,18,1,NULL,'18-',14.95,1),(560,207,6,1,NULL,'6-',6.95,4),(561,207,1,7,NULL,'1-',5.95,5),(562,207,3,1,'[{\"name\": \"With Goat\", \"price\": \"7.95\"}, {\"name\": \"With chicken\", \"price\": \"6.95\"}]','3-With Goat-With chicken',14.90,1),(563,208,15,1,NULL,'15-',13.50,5),(564,208,19,1,NULL,'19-',21.95,1),(565,208,17,1,NULL,'17-',15.95,1),(566,209,14,1,NULL,'14-',13.50,5),(567,209,1,1,NULL,'1-',5.95,5),(568,209,2,1,NULL,'2-',6.95,1),(569,210,15,1,NULL,'15-',13.50,4),(570,210,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-¼ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',17.90,1),(571,210,18,1,NULL,'18-',14.95,1),(572,210,36,1,NULL,'36-',2.00,4),(573,210,1,1,NULL,'1-',5.95,5),(574,210,15,1,NULL,'15-',13.50,4),(575,210,16,1,'[{\"name\": \"¼ Soca Grilled Chicken\", \"price\": 7.95}, {\"name\": \"2 Boneless Soca Grilled Thighs with Spicy Chips\", \"price\": 9.95}]','16-¼ Soca Grilled Chicken-2 Boneless Soca Grilled Thighs with Spicy Chips',17.90,1),(576,210,18,1,NULL,'18-',14.95,1),(577,210,36,1,NULL,'36-',2.00,4),(578,210,1,1,NULL,'1-',5.95,5),(579,212,14,1,NULL,'14-',13.50,5),(580,212,15,1,NULL,'15-',13.50,1),(581,212,17,1,NULL,'17-',15.95,1),(582,213,36,1,NULL,'36-',2.00,1),(583,213,37,1,NULL,'37-',2.00,1),(584,214,75,1,'[{\"name\": \"Small\", \"price\": 7}, {\"name\": \"Large\", \"price\": 9}, {\"name\": \"Bottle\", \"price\": 25}]','75-Small-Large-Bottle',41.00,NULL),(585,215,6,4,NULL,'6-',6.95,1),(586,215,4,1,NULL,'4-',6.95,4),(587,216,14,1,NULL,'14-',13.50,3),(588,216,24,1,'[{\"name\": \"Chicken\", \"price\": 3}]','24-Chicken',14.95,3),(589,216,35,1,'[{\"name\": \"Chicken\", \"price\": 3}]','35-Chicken',4.50,3),(590,216,36,1,NULL,'36-',2.00,3),(591,217,15,1,NULL,'15-',13.50,1),(592,217,17,1,NULL,'17-',15.95,1);
/*!40000 ALTER TABLE `OrderItems` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_orderitem_insert` AFTER INSERT ON `OrderItems` FOR EACH ROW BEGIN
    -- Increment the order_count in the MenuItems table
    UPDATE MenuItems
    SET order_count = order_count + NEW.Quantity
    WHERE ItemID = NEW.ItemID;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_orderitem_delete` AFTER DELETE ON `OrderItems` FOR EACH ROW BEGIN
    -- Decrement the order_count in the MenuItems table
    UPDATE MenuItems
    SET order_count = order_count - OLD.Quantity
    WHERE ItemID = OLD.ItemID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `OrderModeAnalytics`
--

DROP TABLE IF EXISTS `OrderModeAnalytics`;
/*!50001 DROP VIEW IF EXISTS `OrderModeAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderModeAnalytics` AS SELECT 
 1 AS `TableMode`,
 1 AS `OrderCount`,
 1 AS `RevenueGenerated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrderOverview`
--

DROP TABLE IF EXISTS `OrderOverview`;
/*!50001 DROP VIEW IF EXISTS `OrderOverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderOverview` AS SELECT 
 1 AS `TotalOrders`,
 1 AS `TotalBaseRevenue`,
 1 AS `TotalTaxCollected`,
 1 AS `TotalRevenue`,
 1 AS `PendingOrders`,
 1 AS `PreparingOrders`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrderSummary`
--

DROP TABLE IF EXISTS `OrderSummary`;
/*!50001 DROP VIEW IF EXISTS `OrderSummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderSummary` AS SELECT 
 1 AS `OrdersToday`,
 1 AS `TotalOrders`,
 1 AS `TotalBaseRevenue`,
 1 AS `TotalTaxCollected`,
 1 AS `TotalRevenue`,
 1 AS `PendingOrders`,
 1 AS `PreparingOrders`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrderTrendsByDate`
--

DROP TABLE IF EXISTS `OrderTrendsByDate`;
/*!50001 DROP VIEW IF EXISTS `OrderTrendsByDate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderTrendsByDate` AS SELECT 
 1 AS `OrderDate`,
 1 AS `DailyOrderCount`,
 1 AS `DailyRevenue`,
 1 AS `DailyBaseRevenue`,
 1 AS `DailyTaxCollected`,
 1 AS `CompletedOrders`,
 1 AS `CancelledOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrderTrendsByTime`
--

DROP TABLE IF EXISTS `OrderTrendsByTime`;
/*!50001 DROP VIEW IF EXISTS `OrderTrendsByTime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderTrendsByTime` AS SELECT 
 1 AS `OrderHour`,
 1 AS `OrdersCount`,
 1 AS `HourlyRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrderTrendsByTimeMonthly`
--

DROP TABLE IF EXISTS `OrderTrendsByTimeMonthly`;
/*!50001 DROP VIEW IF EXISTS `OrderTrendsByTimeMonthly`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrderTrendsByTimeMonthly` AS SELECT 
 1 AS `Month`,
 1 AS `OrderHour`,
 1 AS `TotalOrders`,
 1 AS `TotalRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `CartID` int DEFAULT NULL,
  `OrderDateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `BasePriceBill` decimal(10,2) NOT NULL,
  `TaxBill` decimal(10,2) NOT NULL,
  `TotalBill` decimal(10,2) NOT NULL,
  `OrderStatus` enum('Pending','Preparing','Completed','Cancelled') DEFAULT 'Pending',
  `TableMode` enum('Dining','Takeaway') NOT NULL,
  `PickupTime` time DEFAULT NULL,
  `OrderPlacedBy` enum('Customer','Employee') DEFAULT 'Customer',
  `OrderNote` varchar(200) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `OrderTime` time DEFAULT NULL,
  `pendingLoyaltyPoints` int DEFAULT '0',
  `PaymentMode` enum('Normal','Wallet','Partial') DEFAULT 'Normal',
  `WalletPayment` decimal(10,2) DEFAULT '0.00',
  `NormalPayment` decimal(10,2) DEFAULT '0.00',
  `ReservationID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CartID` (`CartID`),
  KEY `FK_ReservationID` (`ReservationID`),
  CONSTRAINT `FK_ReservationID` FOREIGN KEY (`ReservationID`) REFERENCES `Reservations` (`ReservationID`) ON DELETE SET NULL,
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE,
  CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`CartID`) REFERENCES `Cart` (`CartID`) ON DELETE CASCADE,
  CONSTRAINT `Orders_chk_1` CHECK (((`TableMode` = _utf8mb4'Dining') or ((`TableMode` = _utf8mb4'Takeaway') and (`PickupTime` is not null))))
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (38,18,1,'2025-01-26 01:14:57',25.80,2.58,28.38,'Completed','Dining',NULL,'Customer','','2025-01-26','06:45:00',0,'Normal',0.00,0.00,NULL),(57,26,21,'2025-01-31 06:26:25',19.85,1.99,21.84,'Preparing','Dining',NULL,'Customer','','2025-01-31','11:56:00',0,'Normal',0.00,0.00,NULL),(58,1,5,'2025-02-02 00:36:42',12.90,1.29,14.19,'Preparing','Dining',NULL,'Customer','','2025-02-02','06:06:00',0,'Normal',0.00,0.00,NULL),(60,1,5,'2025-02-02 01:29:06',39.70,3.97,43.67,'Pending','Dining',NULL,'Customer','','2025-02-02','06:59:00',0,'Normal',0.00,0.00,NULL),(61,1,5,'2025-02-02 01:30:59',32.75,3.27,36.02,'Pending','Dining',NULL,'Customer','','2025-02-02','07:00:00',0,'Normal',0.00,0.00,NULL),(62,1,5,'2025-02-03 00:24:50',18.85,1.89,20.74,'Pending','Dining',NULL,'Customer','','2025-02-03','05:54:00',0,'Normal',0.00,0.00,NULL),(71,1,5,'2025-02-03 02:49:28',13.90,1.53,15.43,'Pending','Dining',NULL,'Customer','','2025-02-03','08:19:00',0,'Normal',0.00,0.00,NULL),(72,26,21,'2025-02-03 05:28:56',264.80,-15.89,248.91,'Pending','Dining',NULL,'Customer','','2025-02-03','10:58:00',0,'Normal',0.00,0.00,NULL),(73,26,21,'2025-02-03 06:03:20',34.95,4.19,39.14,'Pending','Dining',NULL,'Customer','','2025-02-03','11:33:00',0,'Normal',0.00,0.00,NULL),(74,26,21,'2025-02-03 06:16:12',28.00,3.36,31.36,'Pending','Dining',NULL,'Customer','','2025-02-03','11:46:00',0,'Normal',0.00,0.00,NULL),(75,1,5,'2025-02-03 19:12:37',55.30,6.64,61.94,'Pending','Dining',NULL,'Customer','hgcv','2025-02-03','00:42:00',0,'Normal',0.00,0.00,NULL),(76,1,5,'2025-02-03 19:23:16',24.90,2.99,27.89,'Pending','Dining',NULL,'Customer','','2025-02-03','00:53:00',0,'Normal',0.00,0.00,NULL),(77,26,21,'2025-02-04 06:10:11',12.90,1.55,14.45,'Pending','Dining',NULL,'Customer','','2025-02-04','11:40:00',0,'Normal',0.00,0.00,NULL),(78,26,21,'2025-02-04 06:10:25',0.00,0.00,0.00,'Preparing','Takeaway','13:42:00','Customer','','2025-02-04','11:40:00',0,'Normal',0.00,0.00,NULL),(79,26,21,'2025-02-04 06:10:45',0.00,0.00,0.00,'Cancelled','Dining',NULL,'Customer','No Spicy','2025-02-04','11:40:00',0,'Normal',0.00,0.00,NULL),(80,1,5,'2025-02-05 16:44:49',34.85,1.74,36.59,'Cancelled','Dining',NULL,'Customer','','2025-02-05','22:14:00',0,'Normal',0.00,0.00,NULL),(81,1,5,'2025-02-06 17:03:40',163.45,8.17,171.62,'Completed','Dining',NULL,'Customer','','2025-02-06','22:33:00',16,'Normal',0.00,0.00,NULL),(82,1,5,'2025-02-06 17:12:01',38.35,1.92,40.27,'Completed','Dining',NULL,'Customer','','2025-02-06','22:42:00',4,'Normal',0.00,0.00,NULL),(83,1,5,'2025-02-06 17:52:27',56.85,2.84,59.69,'Completed','Dining',NULL,'Customer','','2025-02-06','23:22:00',6,'Normal',0.00,0.00,NULL),(84,1,5,'2025-02-06 17:57:11',33.35,1.67,35.02,'Completed','Dining',NULL,'Customer','','2025-02-06','23:27:00',3,'Normal',0.00,0.00,NULL),(85,1,5,'2025-02-06 17:58:43',24.60,1.23,25.83,'Completed','Dining',NULL,'Customer','','2025-02-06','23:28:00',2,'Normal',0.00,0.00,NULL),(86,1,5,'2025-02-06 18:15:45',133.10,6.66,139.76,'Completed','Dining',NULL,'Customer','','2025-02-06','23:45:00',13,'Normal',0.00,0.00,NULL),(87,1,5,'2025-02-06 18:22:52',81.50,4.08,85.58,'Completed','Dining',NULL,'Customer','','2025-02-06','23:52:00',8,'Normal',0.00,0.00,NULL),(88,1,5,'2025-02-06 18:26:57',54.00,2.70,56.70,'Completed','Dining',NULL,'Customer','','2025-02-06','23:56:00',5,'Normal',0.00,0.00,NULL),(89,1,5,'2025-02-06 18:30:50',58.35,2.92,61.27,'Completed','Dining',NULL,'Customer','jchgvhchgjv','2025-02-06','00:00:00',6,'Normal',0.00,0.00,NULL),(90,1,5,'2025-02-06 18:35:36',83.65,4.18,87.83,'Completed','Dining',NULL,'Customer','','2025-02-06','00:05:00',8,'Normal',0.00,0.00,NULL),(91,1,5,'2025-02-06 18:36:33',111.65,5.58,117.23,'Completed','Dining',NULL,'Customer','','2025-02-06','00:06:00',11,'Normal',0.00,0.00,NULL),(92,1,5,'2025-02-06 18:39:37',39.55,1.98,41.53,'Completed','Dining',NULL,'Customer','','2025-02-06','00:09:00',4,'Normal',0.00,0.00,NULL),(93,1,5,'2025-02-06 18:40:23',47.85,2.39,50.24,'Completed','Dining',NULL,'Customer','','2025-02-06','00:10:00',5,'Normal',0.00,0.00,NULL),(94,1,5,'2025-02-06 19:02:44',94.50,4.72,99.22,'Completed','Dining',NULL,'Customer','','2025-02-06','00:32:00',9,'Normal',0.00,0.00,NULL),(95,1,5,'2025-02-06 21:33:26',50.40,2.52,52.92,'Completed','Dining',NULL,'Customer','','2025-02-06','03:03:00',5,'Normal',0.00,0.00,NULL),(96,1,5,'2025-02-06 21:45:37',88.25,4.41,92.66,'Completed','Dining',NULL,'Customer','','2025-02-06','03:15:00',9,'Normal',0.00,0.00,NULL),(97,1,5,'2025-02-06 21:50:28',90.45,4.52,94.97,'Completed','Dining',NULL,'Customer','','2025-02-06','03:20:00',9,'Normal',0.00,0.00,NULL),(98,1,5,'2025-02-06 21:54:44',91.70,4.58,96.28,'Completed','Dining',NULL,'Customer','','2025-02-06','03:24:00',9,'Normal',0.00,0.00,NULL),(99,1,5,'2025-02-06 21:58:13',25.60,1.28,26.88,'Completed','Dining',NULL,'Customer','','2025-02-06','03:28:00',3,'Normal',0.00,0.00,NULL),(100,1,5,'2025-02-06 21:59:31',284.05,14.20,298.25,'Completed','Dining',NULL,'Customer','','2025-02-06','03:29:00',28,'Normal',0.00,0.00,NULL),(101,1,5,'2025-02-06 23:33:08',116.25,5.81,122.06,'Completed','Dining',NULL,'Customer','','2025-02-06','05:03:00',0,'Wallet',0.00,0.00,NULL),(102,1,5,'2025-02-07 09:33:19',50.40,17.89,68.29,'Pending','Dining',NULL,'Customer','','2025-02-07','15:03:00',5,'Normal',0.00,0.00,NULL),(103,1,5,'2025-02-07 10:02:34',41.95,14.89,56.84,'Cancelled','Dining',NULL,'Customer','','2025-02-07','15:32:00',4,'Normal',0.00,0.00,NULL),(104,1,5,'2025-02-07 10:03:07',9.65,3.43,13.08,'Preparing','Dining',NULL,'Customer','','2025-02-07','15:33:00',1,'Normal',0.00,0.00,NULL),(105,1,5,'2025-02-07 10:03:34',43.00,15.27,58.27,'Completed','Dining',NULL,'Customer','','2025-02-07','15:33:00',4,'Normal',0.00,0.00,NULL),(106,1,5,'2025-02-07 17:08:16',28.45,29.16,57.61,'Completed','Dining',NULL,'Customer','','2025-02-07','22:38:00',0,'Wallet',0.00,0.00,NULL),(109,1,5,'2025-02-08 07:42:02',179.25,63.64,242.89,'Completed','Dining',NULL,'Customer','','2025-02-08','13:12:00',0,'Wallet',177.33,65.56,NULL),(110,1,5,'2025-02-08 08:09:39',47.80,16.96,64.76,'Completed','Dining',NULL,'Customer','','2025-02-08','13:39:00',6,'Normal',0.00,64.76,NULL),(111,1,5,'2025-02-08 08:11:09',94.50,33.54,128.04,'Completed','Dining',NULL,'Customer','','2025-02-08','13:41:00',0,'Wallet',128.04,0.00,NULL),(112,26,21,'2025-02-08 08:55:07',286.80,101.81,388.61,'Completed','Dining',NULL,'Customer','','2025-02-08','14:25:00',39,'Normal',0.00,388.61,NULL),(113,26,21,'2025-02-08 08:56:37',178.15,63.25,241.40,'Completed','Dining',NULL,'Customer','','2025-02-08','14:26:00',24,'Normal',0.00,241.40,NULL),(114,26,21,'2025-02-08 09:00:14',216.00,76.68,292.68,'Completed','Dining',NULL,'Customer','','2025-02-08','14:30:00',29,'Normal',0.00,292.68,NULL),(115,26,21,'2025-02-08 09:01:20',11.95,4.24,16.19,'Completed','Dining',NULL,'Customer','','2025-02-08','14:31:00',2,'Normal',0.00,16.19,NULL),(116,1,5,'2025-02-08 09:08:20',50.40,17.89,68.29,'Completed','Dining',NULL,'Customer','','2025-02-08','14:38:00',0,'Wallet',49.29,19.00,NULL),(117,18,1,'2025-02-08 11:32:31',53.90,19.13,73.03,'Completed','Takeaway','08:03:00','Customer','','2025-02-08','17:02:00',7,'Normal',0.00,73.03,NULL),(118,18,1,'2025-02-08 11:37:09',38.95,13.83,52.78,'Completed','Dining',NULL,'Customer','','2025-02-08','17:07:00',5,'Normal',0.00,52.78,NULL),(119,40,33,'2025-02-08 11:47:45',11.95,4.24,16.19,'Completed','Dining',NULL,'Customer','','2025-02-08','17:17:00',2,'Normal',0.00,16.19,NULL),(120,40,33,'2025-02-08 11:53:32',202.50,71.89,274.39,'Completed','Dining',NULL,'Customer','','2025-02-08','17:23:00',27,'Normal',0.00,274.39,NULL),(121,40,33,'2025-02-08 12:03:02',43.90,15.58,59.48,'Completed','Dining',NULL,'Customer','','2025-02-08','17:33:00',0,'Wallet',29.00,30.48,NULL),(122,40,33,'2025-02-08 12:06:14',47.80,16.96,64.76,'Completed','Dining',NULL,'Customer','','2025-02-08','17:36:00',6,'Normal',0.00,64.76,NULL),(123,21,18,'2025-02-08 21:32:44',57.75,2.89,60.64,'Completed','Takeaway','15:00:00','Customer','ojpoj','2025-02-08','03:02:00',6,'Normal',0.00,60.64,NULL),(124,1,5,'2025-02-09 07:59:44',106.50,5.33,111.83,'Completed','Takeaway','01:34:00','Customer','','2025-02-09','13:29:00',11,'Normal',0.00,111.83,NULL),(125,1,5,'2025-02-09 15:58:09',13.50,0.68,14.18,'Pending','Dining',NULL,'Customer','','2025-02-09','21:28:00',1,'Normal',0.00,14.18,NULL),(126,42,35,'2025-02-10 04:54:52',35.10,1.75,36.85,'Completed','Dining',NULL,'Customer','I am allergic to XYZ','2025-02-10','10:24:00',4,'Normal',0.00,36.85,NULL),(127,42,35,'2025-02-10 05:22:12',910.05,45.50,955.55,'Completed','Dining',NULL,'Customer','','2025-02-10','10:52:00',0,'Wallet',100.00,855.55,NULL),(128,42,35,'2025-02-10 05:24:00',129.00,6.45,135.45,'Completed','Dining',NULL,'Customer','','2025-02-10','10:53:00',14,'Normal',0.00,135.45,NULL),(129,42,35,'2025-02-10 05:24:47',21.45,1.07,22.52,'Completed','Dining',NULL,'Customer','','2025-02-10','10:54:00',2,'Normal',0.00,22.52,NULL),(130,26,21,'2025-02-10 05:30:48',24.60,1.23,25.83,'Pending','Dining',NULL,'Customer','','2025-02-10','11:00:00',3,'Normal',0.00,25.83,NULL),(131,26,21,'2025-02-10 05:32:21',57.00,2.85,59.85,'Pending','Dining',NULL,'Customer','','2025-02-10','11:02:00',0,'Wallet',59.85,0.00,NULL),(132,42,35,'2025-02-10 05:34:18',32.90,1.65,34.55,'Completed','Dining',NULL,'Customer','','2025-02-10','11:04:00',3,'Normal',0.00,34.55,NULL),(133,26,21,'2025-02-10 05:36:18',76.00,3.80,79.80,'Pending','Dining',NULL,'Customer','','2025-02-10','11:06:00',8,'Normal',0.00,79.80,NULL),(134,26,21,'2025-02-10 05:37:10',29.50,1.48,30.98,'Pending','Dining',NULL,'Customer','','2025-02-10','11:07:00',3,'Normal',0.00,30.98,NULL),(135,42,35,'2025-02-10 05:37:13',138.00,6.90,144.90,'Completed','Takeaway','12:30:00','Customer','','2025-02-10','11:07:00',14,'Normal',0.00,144.90,NULL),(136,1,5,'2025-02-10 05:37:35',35.00,1.75,36.75,'Pending','Dining',NULL,'Customer','','2025-02-10','11:07:00',4,'Normal',0.00,36.75,NULL),(137,26,21,'2025-02-10 05:39:40',32.00,1.60,33.60,'Pending','Dining',NULL,'Customer','','2025-02-10','11:09:00',3,'Normal',0.00,33.60,NULL),(138,26,21,'2025-02-10 05:41:27',73.50,3.67,77.17,'Cancelled','Dining',NULL,'Customer','','2025-02-10','11:11:00',8,'Normal',0.00,77.17,NULL),(139,1,5,'2025-02-10 05:42:41',13.50,0.68,14.18,'Pending','Dining',NULL,'Customer','','2025-02-10','11:12:00',1,'Normal',0.00,14.18,NULL),(140,42,35,'2025-02-10 05:49:50',14.00,0.70,14.70,'Completed','Takeaway','11:20:00','Customer','','2025-02-10','11:19:00',1,'Normal',0.00,14.70,NULL),(141,42,35,'2025-02-10 06:09:15',11.60,0.58,12.18,'Completed','Dining',NULL,'Customer','','2025-02-10','11:39:00',1,'Normal',0.00,12.18,NULL),(142,1,5,'2025-02-10 06:14:33',35.00,1.75,36.75,'Pending','Dining',NULL,'Customer','','2025-02-10','11:44:00',4,'Normal',0.00,36.75,NULL),(143,42,35,'2025-02-10 06:16:28',26.55,1.33,27.88,'Completed','Takeaway','12:45:00','Customer','','2025-02-10','11:46:00',0,'Wallet',21.00,6.88,NULL),(144,1,5,'2025-02-10 06:17:11',35.00,1.75,36.75,'Pending','Dining',NULL,'Customer','','2025-02-10','11:47:00',4,'Normal',0.00,36.75,NULL),(145,42,35,'2025-02-10 06:19:02',13.50,0.68,14.18,'Completed','Dining',NULL,'Customer','','2025-02-10','11:49:00',1,'Normal',0.00,14.18,NULL),(146,1,5,'2025-02-10 06:26:03',35.00,1.75,36.75,'Pending','Dining',NULL,'Customer','','2025-02-10','11:56:00',4,'Normal',0.00,36.75,NULL),(147,26,21,'2025-02-10 06:45:00',60.00,3.00,63.00,'Pending','Dining',NULL,'Customer','','2025-02-10','12:14:00',6,'Normal',0.00,63.00,NULL),(148,42,35,'2025-02-10 06:47:02',13.50,0.68,14.18,'Completed','Dining',NULL,'Customer','','2025-02-10','12:17:00',1,'Normal',0.00,14.18,NULL),(149,26,21,'2025-02-10 06:47:06',19.90,0.99,20.89,'Pending','Dining',NULL,'Customer','','2025-02-10','12:17:00',2,'Normal',0.00,20.89,NULL),(150,1,5,'2025-02-10 07:06:06',69.00,3.45,72.45,'Pending','Dining',NULL,'Customer','','2025-02-10','12:36:00',7,'Normal',0.00,72.45,NULL),(151,1,5,'2025-02-10 13:55:06',33.55,1.68,35.23,'Completed','Dining',NULL,'Customer','','2025-02-10','19:25:00',4,'Normal',0.00,35.23,NULL),(152,26,21,'2025-02-10 15:03:42',85.45,4.27,89.72,'Pending','Dining',NULL,'Customer','','2025-02-10','20:33:00',9,'Normal',0.00,89.72,NULL),(153,26,21,'2025-02-10 15:11:10',80.00,4.00,84.00,'Pending','Dining',NULL,'Customer','','2025-02-10','20:41:00',8,'Normal',0.00,84.00,NULL),(154,1,5,'2025-02-11 01:42:35',13.50,0.68,14.18,'Cancelled','Dining',NULL,'Customer','','2025-02-11','07:12:00',1,'Normal',0.00,14.18,106),(155,26,21,'2025-02-11 08:22:59',25.45,1.27,26.72,'Pending','Dining',NULL,'Customer','','2025-02-11','13:52:00',3,'Normal',0.00,26.72,NULL),(156,1,5,'2025-02-11 12:05:56',28.45,1.42,29.87,'Pending','Dining',NULL,'Customer','','2025-02-11','17:35:00',3,'Normal',0.00,29.87,NULL),(157,1,5,'2025-02-11 14:13:20',11.00,0.55,11.55,'Pending','Takeaway','19:45:00','Customer','','2025-02-11','19:43:00',1,'Normal',0.00,11.55,NULL),(158,1,5,'2025-02-11 15:05:24',50.40,2.52,52.92,'Pending','Dining',NULL,'Customer','','2025-02-11','20:35:00',5,'Normal',0.00,52.92,109),(159,1,5,'2025-02-11 15:42:22',28.45,1.42,29.87,'Pending','Dining',NULL,'Customer','jsvdkusvdfckusyvcusukcyvsuycvsucvlsUYCVksucvksvcksuvcuvcukvjsvdkusvdfckusyvcusukcyvsuycvsucvlsUYCVksucvksvcksuvcuvcukvjsvdkusvdfckusyvcusukcyvsuycvsucvlsUYCVksucvksvcksuvcuvcukvjsvdkusvdfckusyvcusukcy','2025-02-11','21:12:00',3,'Normal',0.00,29.87,106),(160,26,21,'2025-02-11 19:03:57',27.00,1.35,28.35,'Pending','Dining',NULL,'Customer','','2025-02-11','00:33:00',3,'Normal',0.00,28.35,113),(161,26,21,'2025-02-11 19:26:03',13.50,0.68,14.18,'Pending','Dining',NULL,'Customer','','2025-02-11','00:55:00',0,'Wallet',14.18,0.00,NULL),(162,1,5,'2025-02-11 20:26:37',11.50,0.57,12.07,'Pending','Dining',NULL,'Customer','','2025-02-12','01:56:00',1,'Normal',0.00,12.07,114),(163,1,5,'2025-02-11 20:34:30',11.00,0.55,11.55,'Pending','Dining',NULL,'Customer','','2025-02-12','02:04:00',1,'Normal',0.00,11.55,114),(164,42,35,'2025-02-12 04:54:26',13.45,0.67,14.12,'Completed','Takeaway','12:24:00','Customer','','2025-02-12','10:24:00',1,'Normal',0.00,14.12,NULL),(165,42,35,'2025-02-12 05:00:02',70.00,3.50,73.50,'Cancelled','Takeaway','11:29:00','Customer','','2025-02-12','10:30:00',0,'Wallet',20.00,53.50,NULL),(166,26,21,'2025-02-12 05:28:45',27.00,1.35,28.35,'Pending','Dining',NULL,'Customer','','2025-02-12','10:58:00',3,'Normal',0.00,28.35,113),(167,42,35,'2025-02-12 05:29:41',13.50,2.43,15.93,'Completed','Takeaway','12:59:00','Customer','','2025-02-12','10:59:00',2,'Normal',0.00,15.93,NULL),(168,42,35,'2025-02-12 05:50:38',13.50,2.43,15.93,'Completed','Dining',NULL,'Customer','','2025-02-12','11:20:00',2,'Normal',0.00,15.93,118),(177,42,35,'2025-02-12 07:37:40',43.45,7.82,51.27,'Completed','Takeaway','14:07:00','Customer','','2025-02-12','13:07:00',5,'Normal',0.00,51.27,NULL),(184,45,37,'2025-02-12 16:35:45',27.00,1.35,28.35,'Pending','Takeaway','16:05:00','Customer','Xyz','2025-02-12','22:05:00',3,'Normal',0.00,28.35,NULL),(185,1,5,'2025-02-12 18:23:39',27.05,1.35,28.40,'Pending','Dining',NULL,'Customer','','2025-02-12','23:53:00',0,'Wallet',21.00,7.40,116),(186,1,5,'2025-02-13 05:09:35',61.35,14.11,75.46,'Completed','Dining',NULL,'Customer','','2025-02-13','10:39:00',8,'Normal',0.00,75.46,129),(187,1,5,'2025-02-13 08:20:00',17.90,4.12,22.02,'Preparing','Dining',NULL,'Customer','','2025-02-13','13:49:00',2,'Normal',0.00,22.02,128),(188,1,5,'2025-02-13 11:40:52',21.95,5.05,27.00,'Completed','Dining',NULL,'Customer','','2025-02-13','17:10:00',3,'Normal',0.00,27.00,NULL),(189,1,5,'2025-02-15 18:42:55',47.00,8.46,55.46,'Pending','Dining',NULL,'Customer','','2025-02-16','00:12:00',6,'Normal',0.00,55.46,162),(190,1,5,'2025-02-15 19:11:31',63.45,11.42,74.87,'Pending','Dining',NULL,'Customer','','2025-02-16','00:41:00',7,'Normal',0.00,74.87,162),(191,1,5,'2025-02-15 19:16:27',63.45,11.42,74.87,'Pending','Dining',NULL,'Customer','','2025-02-16','00:46:00',7,'Normal',0.00,74.87,NULL),(192,1,5,'2025-02-15 19:20:13',70.45,12.68,83.13,'Pending','Dining',NULL,'Customer','','2025-02-16','00:50:00',8,'Normal',0.00,83.13,162),(193,1,5,'2025-02-15 19:21:03',72.30,13.01,85.31,'Pending','Dining',NULL,'Customer','','2025-02-16','00:51:00',9,'Normal',0.00,85.31,162),(194,1,5,'2025-02-15 19:28:54',72.30,13.01,85.31,'Pending','Dining',NULL,'Customer','','2025-02-16','00:58:00',9,'Normal',0.00,85.31,162),(195,1,5,'2025-02-15 19:30:56',72.30,13.01,85.31,'Pending','Dining',NULL,'Customer','','2025-02-16','01:00:00',9,'Normal',0.00,85.31,162),(196,1,5,'2025-02-15 19:33:18',72.30,13.01,85.31,'Pending','Dining',NULL,'Customer','','2025-02-16','01:03:00',9,'Normal',0.00,85.31,162),(197,1,5,'2025-02-15 19:37:37',72.30,13.01,85.31,'Pending','Dining',NULL,'Customer','','2025-02-16','01:07:00',9,'Normal',0.00,85.31,162),(198,1,5,'2025-02-15 19:42:12',189.00,34.02,223.02,'Pending','Dining',NULL,'Customer','','2025-02-16','01:12:00',22,'Normal',0.00,223.02,162),(199,1,5,'2025-02-15 19:47:32',49.35,8.88,58.23,'Pending','Dining',NULL,'Customer','','2025-02-16','01:17:00',6,'Normal',0.00,58.23,162),(200,1,5,'2025-02-15 19:51:42',37.90,6.82,44.72,'Pending','Dining',NULL,'Customer','','2025-02-16','01:21:00',4,'Normal',0.00,44.72,162),(201,1,5,'2025-02-15 19:55:44',101.00,18.18,119.18,'Pending','Dining',NULL,'Customer','','2025-02-16','01:25:00',12,'Normal',0.00,119.18,162),(202,42,35,'2025-02-17 18:23:46',52.65,9.48,62.13,'Completed','Takeaway','02:53:00','Customer','','2025-02-17','23:53:00',0,'Wallet',23.00,39.13,NULL),(203,42,35,'2025-02-17 18:34:22',50.85,9.15,60.00,'Completed','Takeaway','03:04:00','Customer','','2025-02-18','00:04:00',6,'Normal',0.00,60.00,NULL),(205,42,35,'2025-02-18 05:14:47',594.05,106.93,700.98,'Completed','Takeaway','14:50:00','Customer','','2025-02-18','10:44:00',0,'Wallet',300.00,400.98,NULL),(206,26,21,'2025-02-18 06:07:15',28.45,1.42,29.87,'Completed','Dining',NULL,'Customer','','2025-02-18','11:37:00',3,'Normal',0.00,29.87,169),(207,1,5,'2025-02-21 14:53:48',63.50,3.17,66.67,'Completed','Dining',NULL,'Customer','','2025-02-21','20:23:00',7,'Normal',0.00,66.67,174),(208,1,5,'2025-02-21 15:05:50',51.40,58.08,109.48,'Completed','Dining',NULL,'Customer','i like pakoda','2025-02-21','20:35:00',11,'Normal',0.00,109.48,174),(209,1,5,'2025-02-21 15:09:32',26.40,29.83,56.23,'Pending','Dining',NULL,'Customer','','2025-02-21','20:39:00',0,'Wallet',29.00,27.23,174),(210,1,5,'2025-02-22 02:11:11',54.30,61.35,115.65,'Pending','Takeaway','07:43:00','Customer','','2025-02-22','07:41:00',12,'Normal',0.00,115.65,NULL),(212,71,63,'2025-02-25 09:47:19',42.95,48.54,91.49,'Completed','Dining',NULL,'Customer','','2025-02-25','15:17:00',9,'Normal',0.00,91.49,179),(213,26,21,'2025-02-28 08:40:39',4.00,0.20,4.20,'Completed','Takeaway','19:15:00','Customer','','2025-02-28','14:10:00',0,'Wallet',4.20,0.00,NULL),(214,26,21,'2025-02-28 09:07:36',41.00,2.05,43.05,'Preparing','Dining',NULL,'Customer','','2025-02-28','14:37:00',4,'Normal',0.00,43.05,184),(215,1,5,'2025-03-04 06:29:00',34.75,1.74,36.49,'Preparing','Dining',NULL,'Customer','i have peanut allergy','2025-03-04','11:59:00',4,'Normal',0.00,36.49,185),(216,21,18,'2025-03-20 02:07:22',34.95,1.75,36.70,'Completed','Takeaway','11:40:00','Customer','','2025-03-20','07:37:00',4,'Normal',0.00,36.70,NULL),(217,26,21,'2025-03-21 11:48:03',29.45,1.47,30.92,'Pending','Takeaway','20:17:00','Customer','','2025-03-21','17:17:00',3,'Normal',0.00,30.92,NULL);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_update_order_status` AFTER UPDATE ON `Orders` FOR EACH ROW BEGIN
    DECLARE redeem_requirement INT;
    DECLARE total_loyalty INT;

    -- Check if the status is updated to "Completed"
    IF OLD.OrderStatus <> 'Completed' AND NEW.OrderStatus = 'Completed' THEN
        
        -- Fetch the loyalty redeeming requirement
        SELECT LoyaltyRedeemingRequirement INTO redeem_requirement 
        FROM FinanceDashboard WHERE FinanceID = 1;

        -- Calculate total loyalty points (existing + pending from order)
        SELECT LoyaltyPoints + NEW.pendingLoyaltyPoints INTO total_loyalty
        FROM Customers WHERE CustomerID = NEW.CustomerID;

        -- If total loyalty meets or exceeds requirement, transfer to wallet
        IF total_loyalty >= redeem_requirement THEN
            UPDATE Customers 
            SET 
                WalletBalance = WalletBalance + total_loyalty,
                total_used_loyaltyPoints = total_used_loyaltyPoints + total_loyalty,
                LoyaltyPoints = 0 -- Reset loyalty points after transfer
            WHERE CustomerID = NEW.CustomerID;
        ELSE
            -- Otherwise, just add pending points to loyalty balance
            UPDATE Customers 
            SET LoyaltyPoints = total_loyalty
            WHERE CustomerID = NEW.CustomerID;
        END IF;

    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `PeakBookingDays`
--

DROP TABLE IF EXISTS `PeakBookingDays`;
/*!50001 DROP VIEW IF EXISTS `PeakBookingDays`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PeakBookingDays` AS SELECT 
 1 AS `BookingDay`,
 1 AS `TotalReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `PickupTimeAnalytics`
--

DROP TABLE IF EXISTS `PickupTimeAnalytics`;
/*!50001 DROP VIEW IF EXISTS `PickupTimeAnalytics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `PickupTimeAnalytics` AS SELECT 
 1 AS `PickupHour`,
 1 AS `TakeawayOrders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ReservationOverview`
--

DROP TABLE IF EXISTS `ReservationOverview`;
/*!50001 DROP VIEW IF EXISTS `ReservationOverview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ReservationOverview` AS SELECT 
 1 AS `TotalReservations`,
 1 AS `TotalGuestsServed`,
 1 AS `PendingReservations`,
 1 AS `ConfirmedReservations`,
 1 AS `CancelledReservations`,
 1 AS `CompletedReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ReservationSummary`
--

DROP TABLE IF EXISTS `ReservationSummary`;
/*!50001 DROP VIEW IF EXISTS `ReservationSummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ReservationSummary` AS SELECT 
 1 AS `ReservationsToday`,
 1 AS `TotalReservations`,
 1 AS `TotalGuests`,
 1 AS `OngoingReservations`,
 1 AS `CancelledReservations`,
 1 AS `CompletedReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ReservationTrendsByDate`
--

DROP TABLE IF EXISTS `ReservationTrendsByDate`;
/*!50001 DROP VIEW IF EXISTS `ReservationTrendsByDate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ReservationTrendsByDate` AS SELECT 
 1 AS `ReservationDate`,
 1 AS `DailyReservations`,
 1 AS `DailyGuests`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ReservationTrendsByTime`
--

DROP TABLE IF EXISTS `ReservationTrendsByTime`;
/*!50001 DROP VIEW IF EXISTS `ReservationTrendsByTime`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ReservationTrendsByTime` AS SELECT 
 1 AS `ReservationHour`,
 1 AS `TotalReservations`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Reservations`
--

DROP TABLE IF EXISTS `Reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservations` (
  `ReservationID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int DEFAULT NULL,
  `ReservationDate` date DEFAULT NULL,
  `ReservationTime` time DEFAULT NULL,
  `NumberOfGuests` int DEFAULT NULL,
  `TableID_list` json DEFAULT NULL,
  `Preferences` text,
  `Status` enum('Pending','Confirmed','Cancelled','Completed') DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Reservation_type` varchar(50) DEFAULT 'walk-in',
  `Reservation_Status` enum('ongoing','Cancelled','Completed') NOT NULL DEFAULT 'ongoing',
  `TempReservationDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `Reservations_ibfk_1` (`CustomerID`),
  CONSTRAINT `Reservations_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservations`
--

LOCK TABLES `Reservations` WRITE;
/*!40000 ALTER TABLE `Reservations` DISABLE KEYS */;
INSERT INTO `Reservations` VALUES (2,1,'2025-01-29','11:00:00',5,'[12]',NULL,NULL,'2025-01-29 05:31:01','reserved','ongoing',NULL),(3,1,'2025-01-29','01:01:00',2,'[1]',NULL,NULL,'2025-01-29 05:35:34','reserved','ongoing',NULL),(4,1,'2025-01-29','11:05:00',6,'[8, 10]',NULL,NULL,'2025-01-29 05:37:55','reserved','ongoing',NULL),(5,1,'2025-01-29','11:07:00',3,'[2, 9]',NULL,NULL,'2025-01-29 05:38:13','reserved','ongoing',NULL),(6,23,'2025-01-29','11:55:00',5,'[3]',NULL,NULL,'2025-01-29 06:25:31','reserved','ongoing',NULL),(7,10,'2025-01-29','13:55:00',6,'[5]',NULL,NULL,'2025-01-29 06:28:08','reserved','ongoing',NULL),(8,23,'2025-01-29','13:11:00',3,'[6]',NULL,NULL,'2025-01-29 07:42:05','reserved','ongoing',NULL),(9,1,'2025-01-29','13:12:00',5,'[5]',NULL,NULL,'2025-01-29 07:43:07','reserved','ongoing',NULL),(10,1,'2025-01-29','15:31:00',2,'[7, 2]',NULL,NULL,'2025-01-29 10:00:38','reserved','ongoing',NULL),(11,1,'2025-01-30','17:05:00',4,'[4]',NULL,NULL,'2025-01-30 11:43:19','reserved','ongoing',NULL),(12,1,'2025-01-30','17:05:00',4,'[4]',NULL,NULL,'2025-01-30 11:44:02','reserved','ongoing',NULL),(13,1,'2025-01-30','17:14:00',4,'[10, 8]',NULL,NULL,'2025-01-30 11:44:48','reserved','ongoing',NULL),(14,1,'2025-01-30','17:43:00',5,'[9, 7]',NULL,NULL,'2025-01-30 12:15:01','reserved','ongoing',NULL),(19,1,'2025-01-30','17:56:00',5,'[2, 12]',NULL,NULL,'2025-01-30 12:26:55','reserved','ongoing',NULL),(23,28,'2025-01-31','17:15:00',2,'[13]',NULL,NULL,'2025-01-30 18:11:01','reserved','ongoing',NULL),(24,1,'2025-01-30','00:11:00',2,'[10]',NULL,NULL,'2025-01-30 18:41:42','reserved','ongoing',NULL),(27,1,'2025-01-30','00:14:00',2,'[5]',NULL,NULL,'2025-01-30 18:45:26','reserved','ongoing',NULL),(28,1,'2025-01-30','00:36:00',2,'[8, 2]',NULL,NULL,'2025-01-30 19:07:08','reserved','ongoing',NULL),(29,1,'2025-01-30','00:37:00',2,'[14, 15]',NULL,NULL,'2025-01-30 19:07:21','reserved','ongoing',NULL),(30,1,'2025-01-30','00:37:00',2,'[6, 13]',NULL,NULL,'2025-01-30 19:10:52','reserved','ongoing',NULL),(31,1,'2025-01-30','00:42:00',2,'[7]',NULL,NULL,'2025-01-30 19:12:22','reserved','ongoing',NULL),(32,1,'2025-01-30','00:49:00',2,'[12]',NULL,NULL,'2025-01-30 19:19:24','reserved','ongoing',NULL),(33,1,'2025-01-30','00:50:00',2,'[9]',NULL,NULL,'2025-01-30 19:20:28','reserved','ongoing',NULL),(34,1,'2025-01-30','00:50:00',2,'[9]',NULL,NULL,'2025-01-30 19:23:01','reserved','ongoing',NULL),(35,1,'2025-01-30','00:50:00',2,'[9]',NULL,NULL,'2025-01-30 19:28:28','reserved','ongoing',NULL),(36,1,'2025-01-30','01:19:00',2,'[3]',NULL,NULL,'2025-01-30 19:50:35','reserved','ongoing',NULL),(37,1,'2025-01-30','01:20:00',2,'[1]',NULL,NULL,'2025-01-30 19:51:06','reserved','ongoing',NULL),(38,1,'2025-01-31','09:44:00',2,'[8]',NULL,NULL,'2025-01-31 04:16:56','reserved','ongoing',NULL),(39,1,'2025-01-31','09:44:00',2,'[8]',NULL,NULL,'2025-01-31 04:16:57','reserved','ongoing',NULL),(41,1,'2025-01-31','23:28:00',2,'[8]',NULL,NULL,'2025-01-31 17:59:06','reserved','ongoing',NULL),(42,10,'2025-01-31','04:42:00',2,'[8, 10]',NULL,NULL,'2025-01-31 23:13:14','reserved','ongoing',NULL),(43,23,'2025-01-31','04:44:00',2,'[9]',NULL,NULL,'2025-01-31 23:14:43','reserved','ongoing',NULL),(44,31,'2025-01-31','05:23:00',2,'[16]',NULL,NULL,'2025-01-31 23:53:27','reserved','ongoing',NULL),(45,1,'2025-02-01','05:43:00',3,'[16]',NULL,NULL,'2025-02-01 00:21:11','reserved','Cancelled',NULL),(46,1,'2025-01-31','05:51:00',3,'[5]',NULL,NULL,'2025-02-01 00:22:57','reserved','ongoing',NULL),(47,1,'2025-02-01','06:17:00',3,'[7, 5, 8]',NULL,'Confirmed','2025-02-01 00:47:46','reserved','Completed',NULL),(50,1,'2025-02-01','06:33:00',3,'[9, 10]',NULL,'Cancelled','2025-02-01 01:03:57','reserved','Completed',NULL),(51,1,'2025-02-01','06:47:00',3,'[12]',NULL,'Confirmed','2025-02-01 01:17:48','reserved','Completed',NULL),(54,32,'2025-02-01','17:20:00',4,'[1, 15]',NULL,NULL,'2025-02-01 06:46:03','reserved','ongoing',NULL),(55,33,'2025-02-01','17:22:00',2,'[9, 10, 3, 5]',NULL,NULL,'2025-02-01 06:47:09','reserved','ongoing',NULL),(56,34,'2025-02-01','17:21:00',2,'[8, 10]',NULL,NULL,'2025-02-01 06:52:22','reserved','ongoing',NULL),(57,35,'2025-02-01','17:26:00',2,'[7, 2]',NULL,NULL,'2025-02-01 06:54:57','reserved','ongoing',NULL),(58,36,'2025-02-01','17:26:00',2,'[6]',NULL,NULL,'2025-02-01 07:24:41','reserved','Completed',NULL),(59,10,'2025-02-01','21:56:00',2,'[10, 8]',NULL,NULL,'2025-02-01 16:26:58','reserved','Completed',NULL),(60,23,'2025-02-01','21:57:00',2,'[1]',NULL,NULL,'2025-02-01 16:30:31','reserved','Completed',NULL),(61,1,'2025-02-01','22:13:00',2,'[10, 8]',NULL,NULL,'2025-02-01 16:43:57','reserved','Completed',NULL),(62,10,'2025-02-01','23:34:00',2,'[9, 10]',NULL,NULL,'2025-02-01 18:11:41','reserved','Completed',NULL),(63,1,'2025-02-01','23:43:00',2,'[9, 10]',NULL,NULL,'2025-02-01 18:14:06','reserved','Completed',NULL),(64,10,'2025-02-01','23:57:00',3,'[9]',NULL,NULL,'2025-02-01 18:28:00','reserved','Completed',NULL),(65,23,'2025-02-01','00:31:00',2,'[10, 8, 5, 7, 3, 2, 6, 15, 13]',NULL,NULL,'2025-02-01 19:05:53','reserved','Completed',NULL),(66,10,'2025-02-01','00:47:00',3,'[8, 7, 3]',NULL,NULL,'2025-02-01 19:28:38','reserved','ongoing',NULL),(67,10,'2025-02-01','11:57:00',2,'[5, 8]',NULL,NULL,'2025-02-01 19:30:01','reserved','ongoing',NULL),(68,23,'2025-02-01','23:57:00',4,'[9, 10]',NULL,NULL,'2025-02-01 19:31:48','reserved','Completed',NULL),(69,10,'2025-02-01','23:16:00',2,'[10, 9]',NULL,NULL,'2025-02-01 19:46:48','reserved','ongoing',NULL),(70,1,'2025-02-02','07:28:00',2,'[8]',NULL,NULL,'2025-02-02 01:59:42','reserved','ongoing',NULL),(71,1,'2025-02-02','07:39:00',2,'[10, 5]',NULL,NULL,'2025-02-02 02:09:56','reserved','ongoing',NULL),(72,1,'2025-02-02','07:39:00',2,'[3, 7]',NULL,NULL,'2025-02-02 02:11:16','reserved','ongoing',NULL),(73,1,'2025-02-02','07:41:00',2,'[2, 1]',NULL,NULL,'2025-02-02 02:12:45','reserved','ongoing',NULL),(74,1,'2025-02-02','07:44:00',2,'[6]',NULL,NULL,'2025-02-02 02:22:34','reserved','ongoing',NULL),(75,1,'2025-02-02','07:54:00',2,'[15]',NULL,NULL,'2025-02-02 02:25:00','reserved','ongoing',NULL),(76,1,'2025-02-02','07:59:00',2,'[9]','Yo note check',NULL,'2025-02-02 02:29:55','reserved','Completed',NULL),(77,1,'2025-02-02','08:25:00',2,'[13]','ghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvttttttghthchchcfjyguyfuyvtttttt',NULL,'2025-02-02 02:56:36','reserved','ongoing',NULL),(78,1,'2025-02-02','08:43:00',6,'[13]','mhvfykjtycjyv',NULL,'2025-02-02 03:16:23','reserved','Completed',NULL),(79,1,'2025-02-02','09:01:00',2,'[8]','utfytf',NULL,'2025-02-02 03:32:50','reserved','ongoing',NULL),(80,1,'2025-02-02','09:03:00',2,'[16]',NULL,NULL,'2025-02-02 03:33:48','reserved','ongoing',NULL),(81,1,'2025-02-02','09:18:00',2,'[10, 3]',NULL,NULL,'2025-02-02 03:48:09','reserved','ongoing',NULL),(82,1,'2025-02-02','09:20:00',2,'[5]','hk',NULL,'2025-02-02 03:50:23','reserved','Completed',NULL),(83,1,'2025-02-02','09:20:00',2,'[7]',NULL,NULL,'2025-02-02 03:50:59','reserved','Completed',NULL),(84,1,'2025-02-02','20:59:00',2,'[8, 5]',NULL,NULL,'2025-02-02 15:30:20','reserved','Completed',NULL),(85,37,'2025-03-01','12:00:00',2,'[]',NULL,NULL,'2025-02-02 16:12:54','reserved','ongoing',NULL),(86,26,'2025-02-03','18:34:00',2,'[6, 10]',NULL,NULL,'2025-02-03 13:04:39','reserved','Completed',NULL),(87,10,'2025-02-03','23:38:00',6,'[8, 7]',NULL,NULL,'2025-02-03 18:09:26','reserved','Completed',NULL),(88,38,'2025-02-04','17:46:00',2,'[5, 10, 16]','Coming soon',NULL,'2025-02-04 06:11:59','reserved','Completed',NULL),(89,39,'2025-02-08','16:33:00',3,'[10, 9]','abc',NULL,'2025-02-08 11:05:23','reserved','Completed',NULL),(90,39,'2025-02-08','16:42:00',3,'[5, 1]','aaa',NULL,'2025-02-08 11:13:20','reserved','Completed',NULL),(91,39,'2025-02-08','16:47:00',2,'[5, 3]',NULL,NULL,'2025-02-08 11:18:11','reserved','Completed',NULL),(92,18,'2025-02-08','16:48:00',3,'[1, 15]',NULL,NULL,'2025-02-08 11:18:56','reserved','Completed',NULL),(93,26,'2025-02-08','16:48:00',2,'[1]',NULL,NULL,'2025-02-08 11:19:00','reserved','Completed',NULL),(94,40,'2025-02-08','17:31:00',1,'[6]',NULL,NULL,'2025-02-08 11:45:56','reserved','Completed',NULL),(95,21,'2025-02-09','14:22:00',5,'[13, 15]','hjhkjhkh',NULL,'2025-02-08 21:31:00','reserved','Completed',NULL),(96,26,'2025-02-09','23:43:00',2,'[]',NULL,NULL,'2025-02-09 17:14:09','reserved','ongoing',NULL),(97,42,'2025-02-10','14:33:00',6,'[1, 13]','we want table near the window',NULL,'2025-02-10 05:04:05','reserved','Cancelled',NULL),(98,42,'2025-02-10','14:33:00',6,'[1, 13]','abc',NULL,'2025-02-10 05:08:52','reserved','Cancelled',NULL),(99,26,'2025-02-10','11:43:00',2,'[15, 9]',NULL,NULL,'2025-02-10 06:13:58','reserved','Completed',NULL),(100,42,'2025-02-10','12:57:00',12,'[7, 1, 13]','abc',NULL,'2025-02-10 06:28:05','reserved','Completed',NULL),(101,1,'2025-02-10','17:19:00',3,'[1, 9]',NULL,NULL,'2025-02-10 11:49:51','reserved','Completed',NULL),(102,1,'2025-02-10','03:16:00',7,'[5, 8, 10]',NULL,NULL,'2025-02-10 21:47:16','reserved','Completed',NULL),(103,1,'2025-02-10','03:46:00',4,'[7]',NULL,NULL,'2025-02-10 22:16:42','reserved','Completed',NULL),(104,1,'2025-02-11','03:46:00',6,'[3, 5, 10]',NULL,NULL,'2025-02-10 22:24:41','reserved','Cancelled',NULL),(105,1,'2025-02-11','05:51:00',6,'[10, 3, 5]',NULL,NULL,'2025-02-11 00:21:57','reserved','Completed',NULL),(106,1,'2025-02-11','06:43:00',7,'[8, 7]',NULL,NULL,'2025-02-11 01:15:24','reserved','Completed',NULL),(107,26,'2025-02-11','15:58:00',2,'[3]',NULL,NULL,'2025-02-11 08:30:11','reserved','Completed',NULL),(108,26,'2025-02-11','20:08:00',2,'[10]',NULL,NULL,'2025-02-11 08:33:58','reserved','Completed',NULL),(109,1,'2025-02-11','20:32:00',6,'[15, 13, 2, 1, 6, 9, 3, 5, 7]',NULL,NULL,'2025-02-11 15:03:54','reserved','Completed',NULL),(110,26,'2025-02-11','15:57:00',2,'[10, 20]',NULL,NULL,'2025-02-11 18:32:25','reserved','Completed',NULL),(111,26,'2025-02-11','00:10:00',2,'[9]',NULL,NULL,'2025-02-11 18:40:47','reserved','Completed',NULL),(112,26,'2025-02-12','00:16:00',3,'[5, 10]',NULL,NULL,'2025-02-11 18:55:59','reserved','Completed',NULL),(113,26,'2025-02-12','00:31:00',2,'[1]',NULL,NULL,'2025-02-11 19:02:13','reserved','Completed',NULL),(114,1,'2025-02-12','01:48:00',2,'[9, 7]',NULL,NULL,'2025-02-11 20:19:40','reserved','ongoing',NULL),(115,42,'2025-02-12','10:30:00',4,'[1]','Hello ',NULL,'2025-02-12 04:56:41','reserved','Cancelled',NULL),(116,1,'2025-02-12','10:53:00',3,'[20, 19]','ngdyhdjyfjy',NULL,'2025-02-12 05:24:31','reserved','ongoing',NULL),(117,1,'2025-02-12','11:01:00',2,'[1, 15, 9]',NULL,NULL,'2025-02-12 05:31:38','reserved','ongoing',NULL),(118,42,'2025-02-12','11:15:00',4,'[3]',NULL,NULL,'2025-02-12 05:46:42','reserved','Completed',NULL),(119,42,'2025-02-12','12:24:00',3,'[13]','hgh',NULL,'2025-02-12 06:56:48','reserved','Completed',NULL),(121,45,'2025-02-12','22:00:00',0,'[7]','Give ',NULL,'2025-02-12 16:31:10','reserved','Completed',NULL),(122,45,'2025-02-12','19:10:00',0,'[]','Iglxitz',NULL,'2025-02-12 16:32:48','reserved','ongoing',NULL),(123,45,'2025-02-12','16:02:00',0,'[]',NULL,NULL,'2025-02-12 16:33:09','reserved','ongoing',NULL),(124,46,'2025-02-12','22:12:00',-1,'[3]','Gh',NULL,'2025-02-12 16:42:41','reserved','Completed',NULL),(125,1,'2025-02-12','23:20:00',6,'[10]',NULL,NULL,'2025-02-12 17:51:24','reserved','Completed',NULL),(126,1,'2025-02-12','03:24:00',2,'[3, 10]',NULL,NULL,'2025-02-12 21:55:02','reserved','Completed',NULL),(127,1,'2025-02-13','03:27:00',3,'[8]',NULL,NULL,'2025-02-12 21:58:49','reserved','ongoing',NULL),(128,1,'2025-02-13','03:54:00',6,'[3, 1]',NULL,NULL,'2025-02-12 22:24:58','reserved','ongoing',NULL),(129,1,'2025-02-13','04:02:00',4,'[9]',NULL,NULL,'2025-02-12 22:33:41','reserved','ongoing',NULL),(162,1,'2025-02-16','00:12:00',2,'[10]',NULL,NULL,'2025-02-15 18:42:38','reserved','ongoing',NULL),(163,42,'2025-02-17','23:01:00',4,'[3]',NULL,NULL,'2025-02-17 17:32:22','reserved','Completed',NULL),(164,40,'2025-02-18','00:10:00',2,'[13]','testing',NULL,'2025-02-17 18:41:33','reserved','Completed',NULL),(165,40,'2025-02-18','00:10:00',2,'[13]','testing',NULL,'2025-02-17 18:41:36','reserved','Cancelled',NULL),(166,21,'2025-02-18','00:12:00',3,'[3]','testing',NULL,'2025-02-17 18:42:50','reserved','Completed',NULL),(167,42,'2025-02-18','00:14:00',3,'[10]','hello ',NULL,'2025-02-17 18:45:32','reserved','Completed',NULL),(169,26,'2025-02-18','13:30:00',2,'[3]',NULL,NULL,'2025-02-18 05:59:14','reserved','ongoing',NULL),(170,64,'2025-02-18','16:35:00',2,'[3]',NULL,NULL,'2025-02-18 06:01:27','reserved','ongoing',NULL),(171,65,'2025-02-18','11:31:00',2,'[3]',NULL,NULL,'2025-02-18 06:02:09','reserved','ongoing',NULL),(172,66,'2025-02-19','19:00:00',1,'[2]',NULL,NULL,'2025-02-19 17:43:40','reserved','ongoing',NULL),(173,62,'2025-02-21','20:12:00',2,'[1, 9, 3]',NULL,NULL,'2025-02-21 14:43:47','reserved','ongoing',NULL),(174,1,'2025-02-21','20:22:00',3,'[7, 5]',NULL,NULL,'2025-02-21 14:53:19','reserved','ongoing',NULL),(175,67,'2025-02-22','14:00:00',5,'[3]',NULL,NULL,'2025-02-21 15:49:36','reserved','ongoing',NULL),(176,1,'2025-02-22','07:42:00',7,'[3, 9, 1]',NULL,NULL,'2025-02-22 02:12:53','reserved','ongoing',NULL),(177,69,'2025-02-24','18:45:00',2,'[2]',NULL,NULL,'2025-02-23 16:44:18','reserved','ongoing',NULL),(178,70,'2025-03-01','17:30:00',2,'[6]',NULL,NULL,'2025-02-24 19:13:46','reserved','ongoing',NULL),(179,71,'2025-02-25','17:15:00',5,'[1, 9]','Test Booking',NULL,'2025-02-25 09:44:35','reserved','Completed',NULL),(180,62,'2025-02-28','01:20:00',7,'[3, 5, 7, 6, 8]',NULL,NULL,'2025-02-27 19:51:09','reserved','ongoing',NULL),(181,72,'2025-02-28','19:00:00',2,'[8]',NULL,NULL,'2025-02-27 22:21:39','reserved','ongoing',NULL),(182,62,'2025-02-28','09:58:00',7,'[3, 5, 15, 6, 8, 10]',NULL,NULL,'2025-02-28 04:28:31','reserved','ongoing',NULL),(183,62,'2025-02-28','13:31:00',7,'[3, 5]',NULL,NULL,'2025-02-28 08:01:47','reserved','Cancelled',NULL),(184,26,'2025-02-28','14:36:00',2,'[13]',NULL,NULL,'2025-02-28 09:06:47','reserved','Completed',NULL),(185,1,'2025-03-04','11:54:00',7,'[3, 8, 7, 19]','I have peanut allergy',NULL,'2025-03-04 06:25:58','reserved','ongoing',NULL),(186,1,'2025-03-09','20:51:00',5,'[8, 3]',NULL,NULL,'2025-03-09 15:22:22','reserved','Completed',NULL),(187,73,'2025-03-11','12:40:00',3,'[3]','asfdgfhjkjlk;l',NULL,'2025-03-11 06:10:47','reserved','Cancelled',NULL),(188,75,'2025-03-21','18:30:00',2,'[10]',NULL,NULL,'2025-03-21 14:10:47','reserved','ongoing',NULL),(189,77,'2025-03-22','12:56:00',5,'[2]',NULL,NULL,'2025-03-22 07:56:45','reserved','ongoing',NULL),(190,78,'2025-04-11','17:33:00',4,'[1]','\n',NULL,'2025-03-22 10:48:52','reserved','ongoing',NULL),(191,1,'2025-03-23','13:31:00',6,'[8, 15]',NULL,NULL,'2025-03-23 08:01:56','reserved','ongoing',NULL),(192,1,'2025-03-23','13:34:00',6,'[9]',NULL,NULL,'2025-03-23 08:04:46','reserved','ongoing',NULL),(193,1,'2025-03-23','13:36:00',6,'[10]',NULL,NULL,'2025-03-23 08:06:11','reserved','ongoing',NULL),(194,1,'2025-03-23','14:29:00',6,'[1]',NULL,NULL,'2025-03-23 08:59:15','reserved','ongoing',NULL);
/*!40000 ALTER TABLE `Reservations` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_reservation_insert` AFTER INSERT ON `Reservations` FOR EACH ROW BEGIN
    DECLARE table_id INT;
    DECLARE reservation_end_time TIME;
    DECLARE reservation_end_date DATE;
    DECLARE idx INT DEFAULT 0;

    -- Loop through TableID_list (JSON array) and insert entries into ReservedTables
    read_loop: LOOP
        -- Extract table_id from JSON array
        SET table_id = CAST(json_unquote(json_extract(NEW.TableID_list, CONCAT('$[', idx, ']'))) AS UNSIGNED);

        -- Exit loop when no more tables exist
        IF table_id IS NULL THEN
            LEAVE read_loop;
        END IF;

        -- Calculate ReservationEndTime (90 minutes after ReservationTime)
        SET reservation_end_time = ADDTIME(NEW.ReservationTime, '01:30:00');

        -- Ensure the time does not exceed 24:00:00
        IF HOUR(reservation_end_time) >= 24 THEN
            SET reservation_end_time = SEC_TO_TIME(TIME_TO_SEC(reservation_end_time) - 86400); -- Adjust back to valid time
            SET reservation_end_date = DATE_ADD(NEW.ReservationDate, INTERVAL 1 DAY);
        ELSE
            SET reservation_end_date = NEW.ReservationDate;
        END IF;

        -- Insert into ReservedTables with adjusted ReservationEndDate
        INSERT INTO ReservedTables (ReservationID, TableID, ReservationDate, ReservationEndDate, 
                                    ReservationStartTime, ReservationEndTime, ReservationStatus, CustomerID)
        VALUES (NEW.ReservationID, table_id, NEW.ReservationDate, reservation_end_date, 
                NEW.ReservationTime, reservation_end_time, 
                CASE 
                    WHEN NEW.Reservation_Status IN ('Cancelled', 'Completed') THEN 'Available'
                    ELSE 'Reserved'
                END, 
                NEW.CustomerID);

        -- Move to the next index in the JSON array
        SET idx = idx + 1;
    END LOOP;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dev`@`%`*/ /*!50003 TRIGGER `after_reservation_table_update` AFTER UPDATE ON `Reservations` FOR EACH ROW BEGIN
    DECLARE table_id INT;
    DECLARE reservation_end_time TIME;
    DECLARE idx INT DEFAULT 0;

    -- Remove old reserved tables for this reservation before adding updated ones
    DELETE FROM ReservedTables WHERE ReservationID = NEW.ReservationID;

    -- Loop through the updated TableID_list and insert new records
    read_loop: LOOP
        SET table_id = CAST(json_unquote(json_extract(NEW.TableID_list, CONCAT('$[', idx, ']'))) AS UNSIGNED);

        IF table_id IS NULL THEN
            LEAVE read_loop;
        END IF;

        SET reservation_end_time = ADDTIME(NEW.ReservationTime, '01:30:00');

        -- Insert into ReservedTables with updated status based on ReservationStatus
        INSERT INTO ReservedTables (ReservationID, TableID, ReservationDate, ReservationStartTime, ReservationEndTime, ReservationStatus, CustomerID)
        VALUES (NEW.ReservationID, table_id, NEW.ReservationDate, NEW.ReservationTime, reservation_end_time, 
                CASE 
                    WHEN NEW.Reservation_Status = 'Cancelled' THEN 'Available'
                    WHEN NEW.Reservation_Status = 'Completed' THEN 'Available'
                    ELSE 'Reserved'
                END, 
                NEW.CustomerID);

        SET idx = idx + 1;
    END LOOP;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Reservations_Backup`
--

DROP TABLE IF EXISTS `Reservations_Backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservations_Backup` (
  `ReservationID` int NOT NULL DEFAULT '0',
  `CustomerID` int DEFAULT NULL,
  `ReservationDate` date DEFAULT NULL,
  `ReservationTime` time DEFAULT NULL,
  `NumberOfGuests` int DEFAULT NULL,
  `TableID_list` json DEFAULT NULL,
  `Preferences` varchar(255) DEFAULT NULL,
  `Status` enum('Pending','Confirmed','Cancelled','Completed') DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Reservation_type` varchar(50) DEFAULT 'walk-in',
  `Reservation_Status` varchar(50) DEFAULT 'ongoing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservations_Backup`
--

LOCK TABLES `Reservations_Backup` WRITE;
/*!40000 ALTER TABLE `Reservations_Backup` DISABLE KEYS */;
INSERT INTO `Reservations_Backup` VALUES (1,NULL,'2025-01-18','20:40:00',6,'[]',NULL,NULL,'2025-01-18 15:11:38','walk-in','ongoing'),(2,NULL,'2025-01-18','20:40:00',6,'[1]',NULL,NULL,'2025-01-18 15:12:03','walk-in','ongoing'),(3,NULL,'2025-01-18','21:07:00',6,'[]',NULL,NULL,'2025-01-18 15:37:18','walk-in','ongoing'),(4,NULL,'2025-01-18','21:07:00',6,'[]',NULL,NULL,'2025-01-18 15:37:45','walk-in','ongoing'),(5,NULL,'2025-01-18','21:09:00',6,'[]',NULL,NULL,'2025-01-18 15:39:10','walk-in','ongoing'),(6,4,'2025-01-18','22:04:00',5,'[]',NULL,NULL,'2025-01-18 16:35:07','walk-in','ongoing'),(7,4,'2025-01-18','22:04:00',5,'[2, 7]',NULL,NULL,'2025-01-18 16:35:22','walk-in','ongoing'),(8,4,'2025-01-18','23:19:00',4,'[2, 7]',NULL,NULL,'2025-01-18 17:49:35','walk-in','ongoing'),(10,4,'2025-01-18','23:23:00',6,'[1]',NULL,NULL,'2025-01-18 17:59:24','walk-in','ongoing'),(11,4,'2025-01-18','23:23:00',6,'[2]',NULL,NULL,'2025-01-18 17:59:55','walk-in','ongoing'),(12,4,'2025-01-18','23:23:00',6,'[2, 7]',NULL,NULL,'2025-01-18 18:00:11','walk-in','ongoing'),(13,4,'2025-01-18','23:39:00',4,'[10]',NULL,NULL,'2025-01-18 18:12:52','walk-in','ongoing'),(14,4,'2025-01-18','23:44:00',5,'[8]',NULL,NULL,'2025-01-18 18:15:04','walk-in','ongoing'),(15,4,'2025-01-18','23:46:00',4,'[]',NULL,NULL,'2025-01-18 18:16:30','walk-in','ongoing'),(16,4,'2025-01-18','23:47:00',4,'[]',NULL,NULL,'2025-01-18 18:17:34','walk-in','ongoing'),(17,4,'2025-01-18','23:48:00',5,'[]',NULL,NULL,'2025-01-18 18:18:35','walk-in','ongoing'),(18,4,'2025-01-18','23:48:00',5,'[]',NULL,NULL,'2025-01-18 18:18:51','walk-in','ongoing'),(19,4,'2025-01-18','23:49:00',5,'[7]',NULL,NULL,'2025-01-18 18:19:45','walk-in','ongoing'),(20,4,'2025-01-18','23:50:00',6,'[]',NULL,NULL,'2025-01-18 18:20:08','walk-in','ongoing'),(21,4,'2025-01-18','23:51:00',5,'[]',NULL,NULL,'2025-01-18 18:21:39','walk-in','ongoing'),(22,4,'2025-01-18','23:51:00',5,'[4]',NULL,NULL,'2025-01-18 18:21:48','walk-in','ongoing'),(23,4,'2025-01-18','23:51:00',5,'[4]',NULL,NULL,'2025-01-18 18:28:10','walk-in','ongoing'),(24,4,'2025-01-18','23:58:00',5,'[]',NULL,NULL,'2025-01-18 18:28:22','walk-in','ongoing'),(25,1,'2025-01-18','02:04:00',6,'[]',NULL,NULL,'2025-01-18 20:34:56','reserved','ongoing'),(26,1,'2025-01-18','02:05:00',6,'[5]',NULL,NULL,'2025-01-18 20:36:08','reserved','ongoing'),(27,1,'2025-01-18','02:06:00',6,'[]',NULL,NULL,'2025-01-18 20:36:51','reserved','ongoing'),(28,1,'2025-01-18','02:07:00',6,'[]',NULL,NULL,'2025-01-18 20:37:20','reserved','ongoing'),(29,1,'2025-01-18','02:07:00',6,'[6]',NULL,NULL,'2025-01-18 20:37:37','reserved','ongoing'),(30,5,'2025-01-18','02:07:00',7,'[]',NULL,NULL,'2025-01-18 20:38:43','reserved','ongoing'),(31,5,'2025-01-18','02:08:00',6,'[9]',NULL,NULL,'2025-01-18 20:44:32','reserved','ongoing'),(32,6,'2025-01-19','08:25:00',6,'[]',NULL,NULL,'2025-01-19 02:58:05','reserved','ongoing'),(33,6,'2025-01-19','08:28:00',7,'[1]',NULL,NULL,'2025-01-19 02:58:44','reserved','ongoing'),(34,6,'2025-01-19','08:28:00',6,'[1, 8, 2, 7, 5, 6]',NULL,NULL,'2025-01-19 02:59:39','reserved','ongoing'),(35,6,'2025-01-19','08:30:00',6,'[9, 6, 4, 5, 10, 7, 2, 8, 1]',NULL,NULL,'2025-01-19 03:02:46','reserved','completed'),(36,7,'2025-01-17','09:35:00',7,'[10]',NULL,NULL,'2025-01-19 05:35:52','reserved','ongoing'),(37,7,'2025-01-19','05:35:00',7,'[]',NULL,NULL,'2025-01-19 05:36:56','reserved','ongoing'),(38,7,'2025-01-19','05:36:00',7,'[4]',NULL,NULL,'2025-01-19 05:37:10','reserved','ongoing'),(39,7,'2025-01-19','05:37:00',8,'[9]',NULL,NULL,'2025-01-19 05:37:43','reserved','completed'),(40,7,'2025-01-19','06:11:00',12,'[9]',NULL,NULL,'2025-01-19 06:11:24','reserved','completed'),(41,7,'2025-01-20','11:57:00',6,'[9]',NULL,NULL,'2025-01-19 06:27:58','reserved','completed'),(42,7,'2025-01-07','23:57:00',5,'[9]',NULL,NULL,'2025-01-19 06:30:05','reserved','completed'),(43,7,'2025-01-19','12:05:00',6,'[]',NULL,NULL,'2025-01-19 06:35:29','reserved','ongoing'),(44,7,'2025-01-19','12:06:00',6,'[9]',NULL,NULL,'2025-01-19 06:36:17','reserved','completed'),(45,7,'2025-01-19','06:41:00',12,'[9]',NULL,NULL,'2025-01-19 06:41:39','reserved','completed'),(46,7,'2025-01-19','12:17:00',13,'[9]',NULL,NULL,'2025-01-19 06:48:51','reserved','completed'),(47,8,'2025-01-21','12:41:00',14,'[9]',NULL,NULL,'2025-01-19 07:12:01','reserved','ongoing');
/*!40000 ALTER TABLE `Reservations_Backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReservedTables`
--

DROP TABLE IF EXISTS `ReservedTables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReservedTables` (
  `ReservedTableID` int NOT NULL AUTO_INCREMENT,
  `TableID` int NOT NULL,
  `ReservationDate` date NOT NULL,
  `ReservationEndDate` date DEFAULT NULL,
  `ReservationStartTime` time NOT NULL,
  `ReservationEndTime` time NOT NULL,
  `ReservationStatus` enum('Reserved','Available','Cancelled') DEFAULT 'Available',
  `CustomerID` int DEFAULT NULL,
  `ReservationID` int DEFAULT NULL,
  PRIMARY KEY (`ReservedTableID`),
  KEY `TableID` (`TableID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `fk_reservation` (`ReservationID`),
  CONSTRAINT `fk_reservation` FOREIGN KEY (`ReservationID`) REFERENCES `Reservations` (`ReservationID`) ON DELETE CASCADE,
  CONSTRAINT `ReservedTables_ibfk_1` FOREIGN KEY (`TableID`) REFERENCES `Tables` (`TableID`) ON DELETE CASCADE,
  CONSTRAINT `ReservedTables_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55687 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReservedTables`
--

LOCK TABLES `ReservedTables` WRITE;
/*!40000 ALTER TABLE `ReservedTables` DISABLE KEYS */;
INSERT INTO `ReservedTables` VALUES (202,8,'2025-02-02','2025-02-02','07:28:00','08:58:00','Available',1,70),(203,10,'2025-02-02','2025-02-02','07:39:00','09:09:00','Available',1,71),(204,5,'2025-02-02','2025-02-02','07:39:00','09:09:00','Available',1,71),(205,3,'2025-02-02','2025-02-02','07:39:00','09:09:00','Available',1,72),(206,7,'2025-02-02','2025-02-02','07:39:00','09:09:00','Available',1,72),(207,2,'2025-02-02','2025-02-02','07:41:00','09:11:00','Available',1,73),(208,1,'2025-02-02','2025-02-02','07:41:00','09:11:00','Available',1,73),(209,6,'2025-02-02','2025-02-02','07:44:00','09:14:00','Available',1,74),(210,15,'2025-02-02','2025-02-02','07:54:00','09:24:00','Available',1,75),(215,8,'2025-02-02','2025-02-02','09:01:00','10:31:00','Available',1,79),(216,16,'2025-02-02','2025-02-02','09:03:00','10:33:00','Available',1,80),(219,10,'2025-02-02','2025-02-02','09:18:00','10:48:00','Available',1,81),(220,3,'2025-02-02','2025-02-02','09:18:00','10:48:00','Available',1,81),(405,9,'2025-02-12','2025-02-12','01:48:00','03:18:00','Available',1,114),(406,7,'2025-02-12','2025-02-12','01:48:00','03:18:00','Available',1,114),(409,20,'2025-02-12','2025-02-12','10:53:00','12:23:00','Available',1,116),(410,19,'2025-02-12','2025-02-12','10:53:00','12:23:00','Available',1,116),(411,1,'2025-02-12','2025-02-12','11:01:00','12:31:00','Available',1,117),(412,15,'2025-02-12','2025-02-12','11:01:00','12:31:00','Available',1,117),(413,9,'2025-02-12','2025-02-12','11:01:00','12:31:00','Available',1,117),(446,3,'2025-02-13','2025-02-13','03:54:00','05:24:00','Available',1,128),(447,1,'2025-02-13','2025-02-13','03:54:00','05:24:00','Available',1,128),(449,9,'2025-02-13','2025-02-13','04:02:00','05:32:00','Available',1,129),(2834,10,'2025-02-16','2025-02-16','00:12:00','01:42:00','Reserved',1,162),(5696,3,'2025-02-17',NULL,'23:01:00','24:31:00','Available',42,163),(5718,13,'2025-02-18',NULL,'00:10:00','01:40:00','Available',40,164),(5720,13,'2025-02-18',NULL,'00:10:00','01:40:00','Available',40,165),(5725,3,'2025-02-18',NULL,'00:12:00','01:42:00','Available',21,166),(5729,10,'2025-02-18',NULL,'00:14:00','01:44:00','Available',42,167),(6404,3,'2025-02-18','2025-02-18','13:30:00','15:00:00','Reserved',26,169),(6407,3,'2025-02-18','2025-02-18','16:35:00','18:05:00','Reserved',64,170),(6409,3,'2025-02-18','2025-02-18','11:31:00','13:01:00','Reserved',65,171),(8551,2,'2025-02-19','2025-02-19','19:00:00','20:30:00','Reserved',66,172),(11252,1,'2025-02-21','2025-02-21','20:12:00','21:42:00','Reserved',62,173),(11253,9,'2025-02-21','2025-02-21','20:12:00','21:42:00','Reserved',62,173),(11254,3,'2025-02-21','2025-02-21','20:12:00','21:42:00','Reserved',62,173),(11265,7,'2025-02-21','2025-02-21','20:22:00','21:52:00','Reserved',1,174),(11266,5,'2025-02-21','2025-02-21','20:22:00','21:52:00','Reserved',1,174),(11323,3,'2025-02-22','2025-02-22','14:00:00','15:30:00','Reserved',67,175),(11947,3,'2025-02-22','2025-02-22','07:42:00','09:12:00','Reserved',1,176),(11948,9,'2025-02-22','2025-02-22','07:42:00','09:12:00','Reserved',1,176),(11949,1,'2025-02-22','2025-02-22','07:42:00','09:12:00','Reserved',1,176),(14244,2,'2025-02-24','2025-02-24','18:45:00','20:15:00','Reserved',69,177),(15834,6,'2025-03-01','2025-03-01','17:30:00','19:00:00','Reserved',70,178),(16716,1,'2025-02-25',NULL,'17:15:00','18:45:00','Available',71,179),(16717,9,'2025-02-25',NULL,'17:15:00','18:45:00','Available',71,179),(20197,3,'2025-02-28','2025-02-28','01:20:00','02:50:00','Reserved',62,180),(20198,5,'2025-02-28','2025-02-28','01:20:00','02:50:00','Reserved',62,180),(20199,7,'2025-02-28','2025-02-28','01:20:00','02:50:00','Reserved',62,180),(20200,6,'2025-02-28','2025-02-28','01:20:00','02:50:00','Reserved',62,180),(20201,8,'2025-02-28','2025-02-28','01:20:00','02:50:00','Reserved',62,180),(20352,8,'2025-02-28','2025-02-28','19:00:00','20:30:00','Reserved',72,181),(20720,3,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20721,5,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20722,15,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20723,6,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20724,8,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20725,10,'2025-02-28','2025-02-28','09:58:00','11:28:00','Reserved',62,182),(20964,3,'2025-02-28',NULL,'13:31:00','15:01:00','Available',62,183),(20965,5,'2025-02-28',NULL,'13:31:00','15:01:00','Available',62,183),(21409,13,'2025-02-28',NULL,'14:36:00','16:06:00','Available',26,184),(26612,3,'2025-03-04','2025-03-04','11:54:00','13:24:00','Reserved',1,185),(26613,8,'2025-03-04','2025-03-04','11:54:00','13:24:00','Reserved',1,185),(26614,7,'2025-03-04','2025-03-04','11:54:00','13:24:00','Reserved',1,185),(26615,19,'2025-03-04','2025-03-04','11:54:00','13:24:00','Reserved',1,185),(36710,3,'2025-03-11',NULL,'12:40:00','14:10:00','Available',73,187),(43935,8,'2025-03-09',NULL,'20:51:00','22:21:00','Available',1,186),(43936,3,'2025-03-09',NULL,'20:51:00','22:21:00','Available',1,186),(51517,10,'2025-03-21','2025-03-21','18:30:00','20:00:00','Reserved',75,188),(52584,2,'2025-03-22','2025-03-22','12:56:00','14:26:00','Reserved',77,189),(52757,1,'2025-04-11','2025-04-11','17:33:00','19:03:00','Reserved',78,190),(54031,8,'2025-03-23','2025-03-23','13:31:00','15:01:00','Reserved',1,191),(54032,15,'2025-03-23','2025-03-23','13:31:00','15:01:00','Reserved',1,191),(54036,9,'2025-03-23','2025-03-23','13:34:00','15:04:00','Reserved',1,192),(54039,10,'2025-03-23','2025-03-23','13:36:00','15:06:00','Reserved',1,193),(54093,1,'2025-03-23','2025-03-23','14:29:00','15:59:00','Reserved',1,194);
/*!40000 ALTER TABLE `ReservedTables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Roles`
--

DROP TABLE IF EXISTS `Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Roles`
--

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;
INSERT INTO `Roles` VALUES (27,'Accountant'),(7,'admin'),(3,'chef'),(5,'manager'),(1,'owner'),(2,'reception'),(29,'receptionist-1'),(28,'Table Reservation'),(26,'Testing');
/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ShowRoutePaths`
--

DROP TABLE IF EXISTS `ShowRoutePaths`;
/*!50001 DROP VIEW IF EXISTS `ShowRoutePaths`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ShowRoutePaths` AS SELECT 
 1 AS `user_email`,
 1 AS `pathName`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Tables`
--

DROP TABLE IF EXISTS `Tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tables` (
  `TableID` int NOT NULL AUTO_INCREMENT,
  `TableName` varchar(40) DEFAULT NULL,
  `Floor_Value` int DEFAULT '1',
  `X_Coordinate` int DEFAULT '0',
  `Y_Coordinate` int DEFAULT '0',
  `ChairSize` int DEFAULT '0',
  `ChairCount` int GENERATED ALWAYS AS (((`ChairSize` * 2) + 2)) STORED,
  `OrderCounts` int DEFAULT '0',
  `ChairOrientation` int DEFAULT '0',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tables`
--

LOCK TABLES `Tables` WRITE;
/*!40000 ALTER TABLE `Tables` DISABLE KEYS */;
INSERT INTO `Tables` (`TableID`, `TableName`, `Floor_Value`, `X_Coordinate`, `Y_Coordinate`, `ChairSize`, `OrderCounts`, `ChairOrientation`, `CreatedAt`) VALUES (1,'T-1',1,173,574,1,0,0,'2025-02-09 00:17:36'),(2,'T-4',1,149,61,7,0,0,'2025-02-09 00:17:36'),(3,'T-3',1,285,695,3,0,0,'2025-02-09 00:17:36'),(5,'T-5',1,751,168,0,0,90,'2025-02-09 00:17:36'),(6,'T-6',1,396,170,0,0,90,'2025-02-09 00:17:36'),(7,'T-7',1,510,61,4,0,0,'2025-02-09 00:17:36'),(8,'T-9',1,469,352,3,0,0,'2025-02-09 00:17:36'),(9,'T-10',1,208,376,0,0,90,'2025-02-09 00:17:36'),(10,'T-12',1,500,617,0,0,90,'2025-02-09 00:17:36'),(13,'T-8',1,23,230,5,0,90,'2025-02-09 00:17:36'),(15,'T-2',1,372,229,0,0,90,'2025-02-09 00:17:36'),(16,'T-20',2,145,70,1,0,0,'2025-02-09 00:17:36'),(19,'T-10',2,302,163,1,0,0,'2025-02-09 00:17:36'),(20,'T-13',2,439,57,1,0,0,'2025-02-09 00:17:36'),(21,'T-14',2,624,52,1,0,0,'2025-02-09 00:17:36'),(23,'T-45',3,334,178,0,0,0,'2025-03-04 06:38:15');
/*!40000 ALTER TABLE `Tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Taxes`
--

DROP TABLE IF EXISTS `Taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Taxes` (
  `TaxID` int NOT NULL AUTO_INCREMENT,
  `TaxName` varchar(100) NOT NULL,
  `TaxPercentage` decimal(5,2) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`TaxID`),
  UNIQUE KEY `TaxName` (`TaxName`),
  CONSTRAINT `Taxes_chk_1` CHECK ((`TaxPercentage` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxes`
--

LOCK TABLES `Taxes` WRITE;
/*!40000 ALTER TABLE `Taxes` DISABLE KEYS */;
INSERT INTO `Taxes` VALUES (2,'VAT',5.00,'2025-02-06 23:53:42','2025-02-18 05:59:55',1);
/*!40000 ALTER TABLE `Taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `TopSellingItems`
--

DROP TABLE IF EXISTS `TopSellingItems`;
/*!50001 DROP VIEW IF EXISTS `TopSellingItems`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `TopSellingItems` AS SELECT 
 1 AS `Month`,
 1 AS `ItemID`,
 1 AS `ItemName`,
 1 AS `TotalTimesOrdered`,
 1 AS `TotalQuantitySold`,
 1 AS `TotalRevenueGenerated`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `IsActive` tinyint(1) DEFAULT '1',
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `role_id` int DEFAULT NULL,
  `mutable` tinyint(1) DEFAULT '1',
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email` (`Email`),
  KEY `fk_role` (`role_id`),
  CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `Roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Owner User','owner@tropicalcafe.com','hashed_password_1',1,'2025-01-21 12:37:11','2025-01-28 11:18:29',7,0,'admin'),(17,'Testing','testing@gorillatrend.com','Testing1234',1,'2025-02-01 06:58:19','2025-02-12 20:04:49',26,1,NULL),(21,'shrey','shrey@tropicalcafe.com','1234',1,'2025-02-08 09:47:57','2025-02-08 09:56:22',5,1,NULL),(22,'yash','yash@tropicalacafe.com','Tropical123',1,'2025-02-08 09:48:49','2025-02-21 15:00:13',3,1,NULL),(23,'Sagar Surase','sagar@tropicalcafe.co.uk','1234',1,'2025-02-08 12:32:24','2025-02-09 14:56:40',7,1,NULL),(24,'Suyogmuley','Suyogmuley@tropicalcafe.com','123456A',1,'2025-02-28 09:03:57','2025-02-28 09:03:57',28,1,NULL);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paths`
--

DROP TABLE IF EXISTS `paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paths` (
  `pathID` int NOT NULL AUTO_INCREMENT,
  `pathName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pathID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paths`
--

LOCK TABLES `paths` WRITE;
/*!40000 ALTER TABLE `paths` DISABLE KEYS */;
INSERT INTO `paths` VALUES (1,'/admin/dashboard','Dashboard'),(2,'/admin/orders','Orders'),(3,'/admin/menus','Menus'),(4,'/admin/reservations','Reservations'),(5,'/admin/customers','Customers'),(6,'/admin/analytics','Analytics'),(7,'/admin/users','Users'),(16,'/admin/finance','Finance'),(17,'/admin/gallery','Gallery');
/*!40000 ALTER TABLE `paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `can_access` tinyint(1) DEFAULT '0',
  `path_id` int DEFAULT NULL,
  `mutable` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`permission_id`),
  UNIQUE KEY `unique_role_path` (`role_id`,`path_id`),
  KEY `fk_permissions_paths` (`path_id`),
  CONSTRAINT `fk_permissions_paths` FOREIGN KEY (`path_id`) REFERENCES `paths` (`pathID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_permissions_roles` FOREIGN KEY (`role_id`) REFERENCES `Roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,7,1,1,0),(2,7,1,7,0),(3,7,1,4,0),(4,7,1,5,0),(5,7,1,6,0),(6,3,0,1,1),(7,3,1,2,1),(10,7,1,2,0),(11,7,1,3,0),(14,3,1,4,1),(22,3,1,5,1),(67,3,0,3,1),(72,3,0,6,1),(78,2,1,4,1),(79,2,1,2,1),(80,5,1,2,1),(81,5,1,3,1),(83,5,1,5,1),(86,2,1,3,1),(89,1,1,2,1),(90,1,1,4,1),(263,3,0,7,1),(291,1,1,3,1),(292,1,1,1,1),(298,5,1,4,1),(302,5,0,6,1),(332,5,1,1,1),(374,26,1,4,1),(375,26,1,5,1),(391,27,1,1,1),(392,27,0,7,1),(393,27,0,4,1),(394,27,0,5,1),(395,27,0,6,1),(396,27,0,2,1),(397,27,0,3,1),(405,7,1,16,0),(406,3,0,16,1),(412,5,1,16,1),(413,5,0,7,1),(435,1,1,5,1),(436,1,1,6,1),(437,1,1,7,1),(438,1,1,16,1),(448,7,1,17,0),(458,28,1,4,1),(459,28,1,5,1),(461,29,1,4,1),(462,29,1,5,1),(463,29,1,3,1),(464,29,1,2,1),(465,28,1,2,1),(466,28,1,3,1),(467,28,1,7,1),(468,2,1,17,1);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `CategoryOrderCounts`
--

/*!50001 DROP VIEW IF EXISTS `CategoryOrderCounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CategoryOrderCounts` AS select `MenuCategories`.`CategoryID` AS `CategoryID`,`MenuCategories`.`CategoryName` AS `CategoryName`,sum(`MenuItems`.`order_count`) AS `TotalOrderCount` from (`MenuCategories` join `MenuItems` on((`MenuCategories`.`CategoryID` = `MenuItems`.`CategoryID`))) group by `MenuCategories`.`CategoryID`,`MenuCategories`.`CategoryName` order by `TotalOrderCount` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CustomerAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `CustomerAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CustomerAnalytics` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerName` AS `CustomerName`,`c`.`CustomerEmail` AS `CustomerEmail`,`c`.`order_count` AS `TotalOrders`,`c`.`total_spend` AS `TotalSpend`,`c`.`total_basic_spend` AS `TotalBasicSpend`,(`c`.`total_spend` * 0.1) AS `LoyaltyPoints`,coalesce(`order_summary`.`TotalOrderItems`,0) AS `TotalOrderItems`,coalesce(`order_summary`.`DistinctOrders`,0) AS `DistinctOrders`,coalesce(`frequent_items`.`FrequentlyOrderedItems`,'') AS `FrequentlyOrderedItems` from ((`Customers` `c` left join (select `Orders`.`CustomerID` AS `CustomerID`,count(`OrderItems`.`OrderItemID`) AS `TotalOrderItems`,count(distinct `Orders`.`OrderID`) AS `DistinctOrders` from (`Orders` join `OrderItems` on((`Orders`.`OrderID` = `OrderItems`.`OrderID`))) group by `Orders`.`CustomerID`) `order_summary` on((`c`.`CustomerID` = `order_summary`.`CustomerID`))) left join (select `item_counts`.`CustomerID` AS `CustomerID`,group_concat(`MenuItems`.`ItemName` order by `item_counts`.`item_count` DESC separator ', ') AS `FrequentlyOrderedItems` from ((select `OrderItems`.`ItemID` AS `ItemID`,`Orders`.`CustomerID` AS `CustomerID`,count(`OrderItems`.`OrderItemID`) AS `item_count` from (`OrderItems` join `Orders` on((`Orders`.`OrderID` = `OrderItems`.`OrderID`))) group by `Orders`.`CustomerID`,`OrderItems`.`ItemID`) `item_counts` join `MenuItems` on((`item_counts`.`ItemID` = `MenuItems`.`ItemID`))) group by `item_counts`.`CustomerID`) `frequent_items` on((`c`.`CustomerID` = `frequent_items`.`CustomerID`))) order by `c`.`total_spend` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CustomerFinancialAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `CustomerFinancialAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CustomerFinancialAnalytics` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerName` AS `CustomerName`,`c`.`CustomerEmail` AS `CustomerEmail`,`c`.`order_count` AS `TotalOrders`,`c`.`total_spend` AS `TotalSpend`,`c`.`total_basic_spend` AS `TotalBasicSpend`,(`c`.`total_spend` / `c`.`order_count`) AS `AverageOrderValue`,(`c`.`total_spend` * 0.1) AS `LoyaltyPoints`,coalesce(`order_summary`.`TotalOrderItems`,0) AS `TotalOrderItems`,coalesce(`order_summary`.`DistinctOrders`,0) AS `DistinctOrders`,coalesce(`order_summary`.`RepeatOrders`,0) AS `RepeatOrders`,coalesce(`frequent_items`.`FrequentlyOrderedItems`,'') AS `FrequentlyOrderedItems` from ((`Customers` `c` left join (select `Orders`.`CustomerID` AS `CustomerID`,count(`OrderItems`.`OrderItemID`) AS `TotalOrderItems`,count(distinct `Orders`.`OrderID`) AS `DistinctOrders`,sum(if(`Orders`.`OrderID` in (select distinct `o2`.`OrderID` from (`Orders` `o1` join `Orders` `o2` on(((`o1`.`CustomerID` = `o2`.`CustomerID`) and (`o1`.`OrderDate` < `o2`.`OrderDate`))))),1,0)) AS `RepeatOrders` from (`Orders` left join `OrderItems` on((`Orders`.`OrderID` = `OrderItems`.`OrderID`))) group by `Orders`.`CustomerID`) `order_summary` on((`c`.`CustomerID` = `order_summary`.`CustomerID`))) left join (select `item_counts`.`CustomerID` AS `CustomerID`,group_concat(`MenuItems`.`ItemName` order by `item_counts`.`item_count` DESC separator ', ') AS `FrequentlyOrderedItems` from ((select `OrderItems`.`ItemID` AS `ItemID`,`Orders`.`CustomerID` AS `CustomerID`,count(`OrderItems`.`OrderItemID`) AS `item_count` from (`OrderItems` join `Orders` on((`Orders`.`OrderID` = `OrderItems`.`OrderID`))) group by `Orders`.`CustomerID`,`OrderItems`.`ItemID`) `item_counts` join `MenuItems` on((`item_counts`.`ItemID` = `MenuItems`.`ItemID`))) group by `item_counts`.`CustomerID`) `frequent_items` on((`c`.`CustomerID` = `frequent_items`.`CustomerID`))) order by `c`.`total_spend` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CustomerOrdersWithMenuView`
--

/*!50001 DROP VIEW IF EXISTS `CustomerOrdersWithMenuView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CustomerOrdersWithMenuView` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerName` AS `CustomerName`,`c`.`CustomerEmail` AS `CustomerEmail`,`c`.`Phone` AS `Phone`,`o`.`OrderID` AS `OrderID`,`o`.`OrderDate` AS `OrderDate`,`o`.`TotalBill` AS `TotalBill`,`o`.`OrderStatus` AS `OrderStatus`,`oi`.`OrderItemID` AS `OrderItemID`,`oi`.`Quantity` AS `Quantity`,`oi`.`Price` AS `Price`,`oi`.`Options` AS `ItemOptions`,`oi`.`SpiceLevel` AS `SelectedSpiceLevel`,`m`.`ItemID` AS `ItemID`,`m`.`ItemName` AS `ItemName`,`m`.`Description` AS `ItemDescription`,`m`.`Price` AS `ItemPrice`,`m`.`Options` AS `AvailableOptions`,`m`.`ImageURL` AS `ItemImage`,`m`.`SpiceLevel` AS `DefaultSpiceLevel`,`m`.`ShortCode` AS `ShortCode`,`m`.`order_count` AS `ItemOrderCount` from (((`Customers` `c` left join `Orders` `o` on((`c`.`CustomerID` = `o`.`CustomerID`))) left join `OrderItems` `oi` on((`o`.`OrderID` = `oi`.`OrderID`))) left join `MenuItems` `m` on((`oi`.`ItemID` = `m`.`ItemID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CustomerReservationAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `CustomerReservationAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CustomerReservationAnalytics` AS select `c`.`CustomerID` AS `CustomerID`,`c`.`CustomerName` AS `CustomerName`,`c`.`CustomerEmail` AS `CustomerEmail`,count(`r`.`ReservationID`) AS `TotalReservations`,sum(`r`.`NumberOfGuests`) AS `TotalGuestsBooked`,count((case when (`r`.`Status` = 'Cancelled') then 1 end)) AS `CancelledReservations`,count((case when (`r`.`Status` = 'Completed') then 1 end)) AS `CompletedReservations` from (`Customers` `c` left join `Reservations` `r` on((`c`.`CustomerID` = `r`.`CustomerID`))) group by `c`.`CustomerID`,`c`.`CustomerName`,`c`.`CustomerEmail` order by `TotalReservations` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `CustomerSpendingBehavior`
--

/*!50001 DROP VIEW IF EXISTS `CustomerSpendingBehavior`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `CustomerSpendingBehavior` AS select `Orders`.`CustomerID` AS `CustomerID`,count(`Orders`.`OrderID`) AS `TotalOrders`,sum(`Orders`.`TotalBill`) AS `TotalSpend`,sum(`Orders`.`BasePriceBill`) AS `BaseSpend`,sum(`Orders`.`TaxBill`) AS `TotalTax`,count((case when (`Orders`.`TableMode` = 'Dining') then 1 end)) AS `DiningOrders`,count((case when (`Orders`.`TableMode` = 'Takeaway') then 1 end)) AS `TakeawayOrders` from `Orders` group by `Orders`.`CustomerID` order by `TotalSpend` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DashboardSummary`
--

/*!50001 DROP VIEW IF EXISTS `DashboardSummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DashboardSummary` AS select (select count(0) from `MenuItems`) AS `TotalMenuItems`,(select count(0) from `Orders`) AS `TotalOrders`,(select count(0) from `Customers`) AS `TotalCustomers`,(select count(0) from `Reservations`) AS `TotalReservations`,(select count(0) from `Tables`) AS `TotalTables` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `DashboardSummaryByMonth`
--

/*!50001 DROP VIEW IF EXISTS `DashboardSummaryByMonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `DashboardSummaryByMonth` AS with `MonthlyOrders` as (select (date_format(`Orders`.`OrderDate`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,count(distinct `Orders`.`OrderID`) AS `TotalOrders` from `Orders` group by `Month`), `MonthlyCustomers` as (select (date_format(`Customers`.`JoinDate`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,count(distinct `Customers`.`CustomerID`) AS `TotalCustomers` from `Customers` group by `Month`), `MonthlyReservations` as (select (date_format(`Reservations`.`ReservationDate`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,count(distinct `Reservations`.`ReservationID`) AS `TotalReservations` from `Reservations` group by `Month`), `MonthlyMenuItems` as (select (date_format(`MenuItems`.`CreatedAt`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,count(distinct `MenuItems`.`ItemID`) AS `TotalMenuItems` from `MenuItems` group by `Month`), `MonthlyTables` as (select (date_format(`Tables`.`CreatedAt`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,count(distinct `Tables`.`TableID`) AS `TotalTables` from `Tables` group by `Month`), `AllMonths` as (select `MonthlyOrders`.`Month` AS `Month` from `MonthlyOrders` union select `MonthlyCustomers`.`Month` AS `Month` from `MonthlyCustomers` union select `MonthlyReservations`.`Month` AS `Month` from `MonthlyReservations` union select `MonthlyMenuItems`.`Month` AS `Month` from `MonthlyMenuItems` union select `MonthlyTables`.`Month` AS `Month` from `MonthlyTables`) select `A`.`Month` AS `Month`,coalesce(`O`.`TotalOrders`,0) AS `TotalOrders`,coalesce(`C`.`TotalCustomers`,0) AS `TotalCustomers`,coalesce(`R`.`TotalReservations`,0) AS `TotalReservations`,coalesce(`MI`.`TotalMenuItems`,0) AS `TotalMenuItems`,coalesce(`T`.`TotalTables`,0) AS `TotalTables` from (((((`AllMonths` `A` left join `MonthlyOrders` `O` on((`A`.`Month` = `O`.`Month`))) left join `MonthlyCustomers` `C` on((`A`.`Month` = `C`.`Month`))) left join `MonthlyReservations` `R` on((`A`.`Month` = `R`.`Month`))) left join `MonthlyMenuItems` `MI` on((`A`.`Month` = `MI`.`Month`))) left join `MonthlyTables` `T` on((`A`.`Month` = `T`.`Month`))) union all select ('Total' collate utf8mb4_general_ci) AS `Month`,(select count(distinct `Orders`.`OrderID`) from `Orders`) AS `TotalOrders`,(select count(distinct `Customers`.`CustomerID`) from `Customers`) AS `TotalCustomers`,(select count(distinct `Reservations`.`ReservationID`) from `Reservations`) AS `TotalReservations`,(select count(distinct `MenuItems`.`ItemID`) from `MenuItems`) AS `TotalMenuItems`,(select count(distinct `Tables`.`TableID`) from `Tables`) AS `TotalTables` order by str_to_date(`Month`,'%M %Y') desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyAnalytics` AS select date_format(`O`.`OrderDate`,'%Y-%m') AS `Month`,count(`O`.`OrderID`) AS `TotalOrders`,sum(`O`.`BasePriceBill`) AS `TotalBaseRevenue`,sum(`O`.`TaxBill`) AS `TotalTaxCollected`,sum(`O`.`TotalBill`) AS `TotalRevenue`,sum(`O`.`pendingLoyaltyPoints`) AS `TotalPendingLoyaltyPoints`,sum((case when (`O`.`OrderStatus` = 'Pending') then 1 else 0 end)) AS `PendingOrders`,sum((case when (`O`.`OrderStatus` = 'Preparing') then 1 else 0 end)) AS `PreparingOrders`,sum((case when (`O`.`OrderStatus` = 'Completed') then 1 else 0 end)) AS `CompletedOrders`,sum((case when (`O`.`OrderStatus` = 'Cancelled') then 1 else 0 end)) AS `CancelledOrders` from `Orders` `O` group by `Month` order by `Month` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyAnalyticsExtended`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyAnalyticsExtended`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyAnalyticsExtended` AS with `MonthlyData` as (select date_format(`O`.`OrderDate`,'%M %Y') AS `Month`,count(`O`.`OrderID`) AS `TotalOrders`,sum(`O`.`BasePriceBill`) AS `TotalBaseRevenue`,sum(`O`.`TaxBill`) AS `TotalTaxCollected`,sum(`O`.`TotalBill`) AS `TotalRevenue`,avg(`O`.`TotalBill`) AS `AvgOrderValue`,count(distinct `O`.`CustomerID`) AS `UniqueCustomers`,count(distinct (case when (`C`.`JoinDate` >= date_format(`O`.`OrderDate`,'%Y-%m-01')) then `C`.`CustomerID` end)) AS `NewCustomers`,(count(`O`.`CustomerID`) / nullif(count(distinct `O`.`CustomerID`),0)) AS `AvgOrdersPerCustomer`,sum(`O`.`pendingLoyaltyPoints`) AS `TotalPendingLoyaltyPoints`,sum(`C`.`total_used_loyaltyPoints`) AS `TotalLoyaltyPointsRedeemed`,sum((case when (`O`.`OrderStatus` = 'Pending') then 1 else 0 end)) AS `PendingOrders`,sum((case when (`O`.`OrderStatus` = 'Preparing') then 1 else 0 end)) AS `PreparingOrders`,sum((case when (`O`.`OrderStatus` = 'Completed') then 1 else 0 end)) AS `CompletedOrders`,sum((case when (`O`.`OrderStatus` = 'Cancelled') then 1 else 0 end)) AS `CancelledOrders`,sum((case when (`O`.`PaymentMode` = 'Wallet') then 1 else 0 end)) AS `WalletPayments`,sum((case when (`O`.`PaymentMode` = 'Normal') then 1 else 0 end)) AS `NormalPayments`,sum((case when (`O`.`TableMode` = 'Dining') then 1 else 0 end)) AS `DineInOrders`,sum((case when (`O`.`TableMode` = 'Takeaway') then 1 else 0 end)) AS `TakeawayOrders`,count(`R`.`ReservationID`) AS `TotalReservations`,sum((case when (`R`.`Status` = 'Pending') then 1 else 0 end)) AS `PendingReservations`,sum((case when (`R`.`Status` = 'Confirmed') then 1 else 0 end)) AS `ConfirmedReservations`,sum((case when (`R`.`Status` = 'Cancelled') then 1 else 0 end)) AS `CancelledReservations`,sum((case when (`R`.`Status` = 'Completed') then 1 else 0 end)) AS `CompletedReservations`,sum(`R`.`NumberOfGuests`) AS `TotalGuests`,count(distinct `R`.`CustomerID`) AS `CustomersWithReservations` from ((`Orders` `O` left join `Customers` `C` on((`O`.`CustomerID` = `C`.`CustomerID`))) left join `Reservations` `R` on(((`O`.`CustomerID` = `R`.`CustomerID`) and (date_format(`R`.`ReservationDate`,'%M %Y') = date_format(`O`.`OrderDate`,'%M %Y'))))) group by `Month`) select `MonthlyData`.`Month` AS `Month`,`MonthlyData`.`TotalOrders` AS `TotalOrders`,`MonthlyData`.`TotalBaseRevenue` AS `TotalBaseRevenue`,`MonthlyData`.`TotalTaxCollected` AS `TotalTaxCollected`,`MonthlyData`.`TotalRevenue` AS `TotalRevenue`,`MonthlyData`.`AvgOrderValue` AS `AvgOrderValue`,`MonthlyData`.`UniqueCustomers` AS `UniqueCustomers`,`MonthlyData`.`NewCustomers` AS `NewCustomers`,`MonthlyData`.`AvgOrdersPerCustomer` AS `AvgOrdersPerCustomer`,`MonthlyData`.`TotalPendingLoyaltyPoints` AS `TotalPendingLoyaltyPoints`,`MonthlyData`.`TotalLoyaltyPointsRedeemed` AS `TotalLoyaltyPointsRedeemed`,`MonthlyData`.`PendingOrders` AS `PendingOrders`,`MonthlyData`.`PreparingOrders` AS `PreparingOrders`,`MonthlyData`.`CompletedOrders` AS `CompletedOrders`,`MonthlyData`.`CancelledOrders` AS `CancelledOrders`,`MonthlyData`.`WalletPayments` AS `WalletPayments`,`MonthlyData`.`NormalPayments` AS `NormalPayments`,`MonthlyData`.`DineInOrders` AS `DineInOrders`,`MonthlyData`.`TakeawayOrders` AS `TakeawayOrders`,`MonthlyData`.`TotalReservations` AS `TotalReservations`,`MonthlyData`.`PendingReservations` AS `PendingReservations`,`MonthlyData`.`ConfirmedReservations` AS `ConfirmedReservations`,`MonthlyData`.`CancelledReservations` AS `CancelledReservations`,`MonthlyData`.`CompletedReservations` AS `CompletedReservations`,`MonthlyData`.`TotalGuests` AS `TotalGuests`,`MonthlyData`.`CustomersWithReservations` AS `CustomersWithReservations` from `MonthlyData` union all select 'Total' AS `Month`,sum(`MonthlyData`.`TotalOrders`) AS `SUM(TotalOrders)`,sum(`MonthlyData`.`TotalBaseRevenue`) AS `SUM(TotalBaseRevenue)`,sum(`MonthlyData`.`TotalTaxCollected`) AS `SUM(TotalTaxCollected)`,sum(`MonthlyData`.`TotalRevenue`) AS `SUM(TotalRevenue)`,avg(`MonthlyData`.`AvgOrderValue`) AS `AVG(AvgOrderValue)`,sum(`MonthlyData`.`UniqueCustomers`) AS `SUM(UniqueCustomers)`,sum(`MonthlyData`.`NewCustomers`) AS `SUM(NewCustomers)`,sum(`MonthlyData`.`AvgOrdersPerCustomer`) AS `SUM(AvgOrdersPerCustomer)`,sum(`MonthlyData`.`TotalPendingLoyaltyPoints`) AS `SUM(TotalPendingLoyaltyPoints)`,sum(`MonthlyData`.`TotalLoyaltyPointsRedeemed`) AS `SUM(TotalLoyaltyPointsRedeemed)`,sum(`MonthlyData`.`PendingOrders`) AS `SUM(PendingOrders)`,sum(`MonthlyData`.`PreparingOrders`) AS `SUM(PreparingOrders)`,sum(`MonthlyData`.`CompletedOrders`) AS `SUM(CompletedOrders)`,sum(`MonthlyData`.`CancelledOrders`) AS `SUM(CancelledOrders)`,sum(`MonthlyData`.`WalletPayments`) AS `SUM(WalletPayments)`,sum(`MonthlyData`.`NormalPayments`) AS `SUM(NormalPayments)`,sum(`MonthlyData`.`DineInOrders`) AS `SUM(DineInOrders)`,sum(`MonthlyData`.`TakeawayOrders`) AS `SUM(TakeawayOrders)`,sum(`MonthlyData`.`TotalReservations`) AS `SUM(TotalReservations)`,sum(`MonthlyData`.`PendingReservations`) AS `SUM(PendingReservations)`,sum(`MonthlyData`.`ConfirmedReservations`) AS `SUM(ConfirmedReservations)`,sum(`MonthlyData`.`CancelledReservations`) AS `SUM(CancelledReservations)`,sum(`MonthlyData`.`CompletedReservations`) AS `SUM(CompletedReservations)`,sum(`MonthlyData`.`TotalGuests`) AS `SUM(TotalGuests)`,sum(`MonthlyData`.`CustomersWithReservations`) AS `SUM(CustomersWithReservations)` from `MonthlyData` order by str_to_date(`Month`,'%M %Y') desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyCategoryOrderCounts`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyCategoryOrderCounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyCategoryOrderCounts` AS with `RankedCategories` as (select date_format(`o`.`OrderDate`,'%M %Y') AS `Month`,`mc`.`CategoryID` AS `CategoryID`,(`mc`.`CategoryName` collate utf8mb4_general_ci) AS `CategoryName`,sum(`oi`.`Quantity`) AS `TotalOrderCount`,rank() OVER (PARTITION BY date_format(`o`.`OrderDate`,'%M %Y') ORDER BY sum(`oi`.`Quantity`) desc )  AS `RankValue` from (((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) join `MenuCategories` `mc` on((`mi`.`CategoryID` = `mc`.`CategoryID`))) group by `Month`,`mc`.`CategoryID`,`mc`.`CategoryName`) select (`RankedCategories`.`Month` collate utf8mb4_general_ci) AS `Month`,`RankedCategories`.`CategoryID` AS `CategoryID`,`RankedCategories`.`CategoryName` AS `CategoryName`,`RankedCategories`.`TotalOrderCount` AS `TotalOrderCount` from `RankedCategories` where (`RankedCategories`.`RankValue` <= 5) union all select ('Total' collate utf8mb4_general_ci) AS `Month`,`OverallRankedCategories`.`CategoryID` AS `CategoryID`,`OverallRankedCategories`.`CategoryName` AS `CategoryName`,`OverallRankedCategories`.`TotalOrderCount` AS `TotalOrderCount` from (select `mc`.`CategoryID` AS `CategoryID`,(`mc`.`CategoryName` collate utf8mb4_general_ci) AS `CategoryName`,sum(`oi`.`Quantity`) AS `TotalOrderCount`,rank() OVER (ORDER BY sum(`oi`.`Quantity`) desc )  AS `RankValue` from (((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) join `MenuCategories` `mc` on((`mi`.`CategoryID` = `mc`.`CategoryID`))) group by `mc`.`CategoryID`,`mc`.`CategoryName`) `OverallRankedCategories` where (`OverallRankedCategories`.`RankValue` <= 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyOrderModeAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyOrderModeAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyOrderModeAnalytics` AS with `MonthlyData` as (select date_format(`Orders`.`OrderDate`,'%M %Y') AS `Month`,`Orders`.`TableMode` AS `TableMode`,count(`Orders`.`OrderID`) AS `OrderCount`,sum(`Orders`.`TotalBill`) AS `RevenueGenerated` from `Orders` group by `Month`,`Orders`.`TableMode`) select (`MonthlyData`.`Month` collate utf8mb4_general_ci) AS `Month`,`MonthlyData`.`TableMode` AS `TableMode`,`MonthlyData`.`OrderCount` AS `OrderCount`,`MonthlyData`.`RevenueGenerated` AS `RevenueGenerated` from `MonthlyData` union all select ('Total' collate utf8mb4_general_ci) AS `Month`,`OverallData`.`TableMode` AS `TableMode`,`OverallData`.`OrderCount` AS `OrderCount`,`OverallData`.`RevenueGenerated` AS `RevenueGenerated` from (select `Orders`.`TableMode` AS `TableMode`,count(`Orders`.`OrderID`) AS `OrderCount`,sum(`Orders`.`TotalBill`) AS `RevenueGenerated` from `Orders` group by `Orders`.`TableMode`) `OverallData` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyOrderOverview`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyOrderOverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyOrderOverview` AS select (date_format(`Orders`.`OrderDate`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,(cast(count(`Orders`.`OrderID`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `TotalOrders`,(cast(sum(`Orders`.`BasePriceBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `TotalBaseRevenue`,(cast(sum(`Orders`.`TaxBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `TotalTaxCollected`,(cast(sum(`Orders`.`TotalBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `TotalRevenue`,(cast(count((case when (`Orders`.`OrderStatus` = 'Pending') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `PendingOrders`,(cast(count((case when (`Orders`.`OrderStatus` = 'Preparing') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `PreparingOrders`,(cast(count((case when (`Orders`.`OrderStatus` = 'Completed') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CompletedOrders`,(cast(count((case when (`Orders`.`OrderStatus` = 'Cancelled') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CancelledOrders` from `Orders` group by `Month` union all select ('Total' collate utf8mb4_general_ci) AS `Month`,(cast(count(`Orders`.`OrderID`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CAST(COUNT(OrderID) AS CHAR) COLLATE utf8mb4_general_ci`,(cast(sum(`Orders`.`BasePriceBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CAST(SUM(BasePriceBill) AS CHAR) COLLATE utf8mb4_general_ci`,(cast(sum(`Orders`.`TaxBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CAST(SUM(TaxBill) AS CHAR) COLLATE utf8mb4_general_ci`,(cast(sum(`Orders`.`TotalBill`) as char charset utf8mb4) collate utf8mb4_general_ci) AS `CAST(SUM(TotalBill) AS CHAR) COLLATE utf8mb4_general_ci`,(cast(count((case when (`Orders`.`OrderStatus` = 'Pending') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `Name_exp_15`,(cast(count((case when (`Orders`.`OrderStatus` = 'Preparing') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `Name_exp_16`,(cast(count((case when (`Orders`.`OrderStatus` = 'Completed') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `Name_exp_17`,(cast(count((case when (`Orders`.`OrderStatus` = 'Cancelled') then 1 end)) as char charset utf8mb4) collate utf8mb4_general_ci) AS `Name_exp_18` from `Orders` order by str_to_date(`Month`,'%M %Y') desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `MonthlyTopSellingItems`
--

/*!50001 DROP VIEW IF EXISTS `MonthlyTopSellingItems`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `MonthlyTopSellingItems` AS with `RankedItems` as (select date_format(`o`.`OrderDate`,'%M %Y') AS `Month`,`oi`.`ItemID` AS `ItemID`,(convert(`mi`.`ItemName` using utf8mb4) collate utf8mb4_general_ci) AS `ItemName`,count(`oi`.`OrderItemID`) AS `TotalTimesOrdered`,sum(`oi`.`Quantity`) AS `TotalQuantitySold`,sum((`oi`.`Quantity` * `oi`.`Price`)) AS `TotalRevenueGenerated`,rank() OVER (PARTITION BY date_format(`o`.`OrderDate`,'%M %Y') ORDER BY sum((`oi`.`Quantity` * `oi`.`Price`)) desc )  AS `RankValue` from ((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) group by `Month`,`oi`.`ItemID`,`mi`.`ItemName`) select (convert(`RankedItems`.`Month` using utf8mb4) collate utf8mb4_general_ci) AS `Month`,`RankedItems`.`ItemID` AS `ItemID`,`RankedItems`.`ItemName` AS `ItemName`,`RankedItems`.`TotalTimesOrdered` AS `TotalTimesOrdered`,`RankedItems`.`TotalQuantitySold` AS `TotalQuantitySold`,`RankedItems`.`TotalRevenueGenerated` AS `TotalRevenueGenerated` from `RankedItems` where (`RankedItems`.`RankValue` <= 5) union all select (convert('Total' using utf8mb4) collate utf8mb4_general_ci) AS `Month`,`OverallRankedItems`.`ItemID` AS `ItemID`,(convert(`OverallRankedItems`.`ItemName` using utf8mb4) collate utf8mb4_general_ci) AS `ItemName`,`OverallRankedItems`.`TotalTimesOrdered` AS `TotalTimesOrdered`,`OverallRankedItems`.`TotalQuantitySold` AS `TotalQuantitySold`,`OverallRankedItems`.`TotalRevenueGenerated` AS `TotalRevenueGenerated` from (select `oi`.`ItemID` AS `ItemID`,(convert(`mi`.`ItemName` using utf8mb4) collate utf8mb4_general_ci) AS `ItemName`,count(`oi`.`OrderItemID`) AS `TotalTimesOrdered`,sum(`oi`.`Quantity`) AS `TotalQuantitySold`,sum((`oi`.`Quantity` * `oi`.`Price`)) AS `TotalRevenueGenerated`,rank() OVER (ORDER BY sum((`oi`.`Quantity` * `oi`.`Price`)) desc )  AS `RankValue` from ((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) group by `oi`.`ItemID`,`mi`.`ItemName`) `OverallRankedItems` where (`OverallRankedItems`.`RankValue` <= 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderModeAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `OrderModeAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderModeAnalytics` AS select `Orders`.`TableMode` AS `TableMode`,count(`Orders`.`OrderID`) AS `OrderCount`,sum(`Orders`.`TotalBill`) AS `RevenueGenerated` from `Orders` group by `Orders`.`TableMode` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderOverview`
--

/*!50001 DROP VIEW IF EXISTS `OrderOverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderOverview` AS select count(`Orders`.`OrderID`) AS `TotalOrders`,sum(`Orders`.`BasePriceBill`) AS `TotalBaseRevenue`,sum(`Orders`.`TaxBill`) AS `TotalTaxCollected`,sum(`Orders`.`TotalBill`) AS `TotalRevenue`,count((case when (`Orders`.`OrderStatus` = 'Pending') then 1 end)) AS `PendingOrders`,count((case when (`Orders`.`OrderStatus` = 'Preparing') then 1 end)) AS `PreparingOrders`,count((case when (`Orders`.`OrderStatus` = 'Completed') then 1 end)) AS `CompletedOrders`,count((case when (`Orders`.`OrderStatus` = 'Cancelled') then 1 end)) AS `CancelledOrders` from `Orders` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderSummary`
--

/*!50001 DROP VIEW IF EXISTS `OrderSummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderSummary` AS select date_format(`Orders`.`OrderDate`,'%d-%m-%Y') AS `OrdersToday`,count(`Orders`.`OrderID`) AS `TotalOrders`,sum(`Orders`.`BasePriceBill`) AS `TotalBaseRevenue`,sum(`Orders`.`TaxBill`) AS `TotalTaxCollected`,sum(`Orders`.`TotalBill`) AS `TotalRevenue`,sum((case when (`Orders`.`OrderStatus` = 'Pending') then 1 else 0 end)) AS `PendingOrders`,sum((case when (`Orders`.`OrderStatus` = 'Preparing') then 1 else 0 end)) AS `PreparingOrders`,sum((case when (`Orders`.`OrderStatus` = 'Completed') then 1 else 0 end)) AS `CompletedOrders`,sum((case when (`Orders`.`OrderStatus` = 'Cancelled') then 1 else 0 end)) AS `CancelledOrders` from `Orders` group by `Orders`.`OrderDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderTrendsByDate`
--

/*!50001 DROP VIEW IF EXISTS `OrderTrendsByDate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderTrendsByDate` AS select `Orders`.`OrderDate` AS `OrderDate`,count(`Orders`.`OrderID`) AS `DailyOrderCount`,sum(`Orders`.`TotalBill`) AS `DailyRevenue`,sum(`Orders`.`BasePriceBill`) AS `DailyBaseRevenue`,sum(`Orders`.`TaxBill`) AS `DailyTaxCollected`,count((case when (`Orders`.`OrderStatus` = 'Completed') then 1 end)) AS `CompletedOrders`,count((case when (`Orders`.`OrderStatus` = 'Cancelled') then 1 end)) AS `CancelledOrders` from `Orders` group by `Orders`.`OrderDate` order by `Orders`.`OrderDate` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderTrendsByTime`
--

/*!50001 DROP VIEW IF EXISTS `OrderTrendsByTime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderTrendsByTime` AS select hour(`Orders`.`OrderTime`) AS `OrderHour`,count(`Orders`.`OrderID`) AS `OrdersCount`,sum(`Orders`.`TotalBill`) AS `HourlyRevenue` from `Orders` group by hour(`Orders`.`OrderTime`) order by `OrderHour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrderTrendsByTimeMonthly`
--

/*!50001 DROP VIEW IF EXISTS `OrderTrendsByTimeMonthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `OrderTrendsByTimeMonthly` AS with `MonthlyTrends` as (select date_format(`o`.`OrderDate`,'%M %Y') AS `Month`,hour(`o`.`OrderTime`) AS `OrderHour`,count(`o`.`OrderID`) AS `TotalOrders`,sum(`o`.`TotalBill`) AS `TotalRevenue` from `Orders` `o` group by date_format(`o`.`OrderDate`,'%M %Y'),hour(`o`.`OrderTime`)) select (`MonthlyTrends`.`Month` collate utf8mb4_general_ci) AS `Month`,`MonthlyTrends`.`OrderHour` AS `OrderHour`,`MonthlyTrends`.`TotalOrders` AS `TotalOrders`,`MonthlyTrends`.`TotalRevenue` AS `TotalRevenue` from `MonthlyTrends` union all select ('Total' collate utf8mb4_general_ci) AS `Month`,hour(`o`.`OrderTime`) AS `OrderHour`,count(`o`.`OrderID`) AS `TotalOrders`,sum(`o`.`TotalBill`) AS `TotalRevenue` from `Orders` `o` group by hour(`o`.`OrderTime`) order by `Month`,`OrderHour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PeakBookingDays`
--

/*!50001 DROP VIEW IF EXISTS `PeakBookingDays`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PeakBookingDays` AS select dayname(`Reservations`.`ReservationDate`) AS `BookingDay`,count(`Reservations`.`ReservationID`) AS `TotalReservations` from `Reservations` group by `BookingDay` order by `TotalReservations` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `PickupTimeAnalytics`
--

/*!50001 DROP VIEW IF EXISTS `PickupTimeAnalytics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `PickupTimeAnalytics` AS select hour(`Orders`.`PickupTime`) AS `PickupHour`,count(`Orders`.`OrderID`) AS `TakeawayOrders` from `Orders` where (`Orders`.`TableMode` = 'Takeaway') group by hour(`Orders`.`PickupTime`) order by `PickupHour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReservationOverview`
--

/*!50001 DROP VIEW IF EXISTS `ReservationOverview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ReservationOverview` AS select count(`Reservations`.`ReservationID`) AS `TotalReservations`,sum(`Reservations`.`NumberOfGuests`) AS `TotalGuestsServed`,count((case when (`Reservations`.`Status` = 'Pending') then 1 end)) AS `PendingReservations`,count((case when (`Reservations`.`Status` = 'Confirmed') then 1 end)) AS `ConfirmedReservations`,count((case when (`Reservations`.`Status` = 'Cancelled') then 1 end)) AS `CancelledReservations`,count((case when (`Reservations`.`Status` = 'Completed') then 1 end)) AS `CompletedReservations` from `Reservations` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReservationSummary`
--

/*!50001 DROP VIEW IF EXISTS `ReservationSummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ReservationSummary` AS select date_format(`Reservations`.`ReservationDate`,'%d-%m-%Y') AS `ReservationsToday`,count(`Reservations`.`ReservationID`) AS `TotalReservations`,sum(`Reservations`.`NumberOfGuests`) AS `TotalGuests`,sum((case when (`Reservations`.`Reservation_Status` = 'ongoing') then 1 else 0 end)) AS `OngoingReservations`,sum((case when (`Reservations`.`Reservation_Status` = 'Cancelled') then 1 else 0 end)) AS `CancelledReservations`,sum((case when (`Reservations`.`Reservation_Status` = 'Completed') then 1 else 0 end)) AS `CompletedReservations` from `Reservations` group by `Reservations`.`ReservationDate` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReservationTrendsByDate`
--

/*!50001 DROP VIEW IF EXISTS `ReservationTrendsByDate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ReservationTrendsByDate` AS select `Reservations`.`ReservationDate` AS `ReservationDate`,count(`Reservations`.`ReservationID`) AS `DailyReservations`,sum(`Reservations`.`NumberOfGuests`) AS `DailyGuests` from `Reservations` group by `Reservations`.`ReservationDate` order by `Reservations`.`ReservationDate` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ReservationTrendsByTime`
--

/*!50001 DROP VIEW IF EXISTS `ReservationTrendsByTime`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ReservationTrendsByTime` AS select hour(`Reservations`.`ReservationTime`) AS `ReservationHour`,count(`Reservations`.`ReservationID`) AS `TotalReservations` from `Reservations` group by `ReservationHour` order by `ReservationHour` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ShowRoutePaths`
--

/*!50001 DROP VIEW IF EXISTS `ShowRoutePaths`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ShowRoutePaths` AS select `u`.`Email` AS `user_email`,`p`.`pathName` AS `pathName`,`p`.`name` AS `name` from (((`Users` `u` join `Roles` `r` on((`u`.`role_id` = `r`.`id`))) join `permissions` `perm` on((`r`.`id` = `perm`.`role_id`))) join `paths` `p` on((`perm`.`path_id` = `p`.`pathID`))) where (`perm`.`can_access` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `TopSellingItems`
--

/*!50001 DROP VIEW IF EXISTS `TopSellingItems`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dev`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `TopSellingItems` AS select (date_format(`o`.`OrderDate`,'%M %Y') collate utf8mb4_general_ci) AS `Month`,`oi`.`ItemID` AS `ItemID`,`mi`.`ItemName` AS `ItemName`,count(`oi`.`OrderItemID`) AS `TotalTimesOrdered`,sum(`oi`.`Quantity`) AS `TotalQuantitySold`,sum((`oi`.`Quantity` * `oi`.`Price`)) AS `TotalRevenueGenerated` from ((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) group by `Month`,`oi`.`ItemID`,`mi`.`ItemName` union all select ('Total' collate utf8mb4_general_ci) AS `Month`,`oi`.`ItemID` AS `ItemID`,`mi`.`ItemName` AS `ItemName`,count(`oi`.`OrderItemID`) AS `COUNT(oi.OrderItemID)`,sum(`oi`.`Quantity`) AS `SUM(oi.Quantity)`,sum((`oi`.`Quantity` * `oi`.`Price`)) AS `SUM(oi.Quantity * oi.Price)` from ((`OrderItems` `oi` join `Orders` `o` on((`oi`.`OrderID` = `o`.`OrderID`))) join `MenuItems` `mi` on((`oi`.`ItemID` = `mi`.`ItemID`))) group by `oi`.`ItemID`,`mi`.`ItemName` order by str_to_date(`Month`,'%M %Y') desc,`TotalRevenueGenerated` desc */;
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

-- Dump completed on 2025-03-24 11:32:11
