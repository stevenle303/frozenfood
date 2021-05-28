-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: frozenfood
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `citystate`
--

DROP TABLE IF EXISTS `citystate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citystate` (
  `city` varchar(90) NOT NULL,
  `state` char(2) NOT NULL,
  `zipCode` char(5) NOT NULL,
  PRIMARY KEY (`zipCode`),
  UNIQUE KEY `zipCode` (`zipCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citystate`
--

LOCK TABLES `citystate` WRITE;
/*!40000 ALTER TABLE `citystate` DISABLE KEYS */;
INSERT INTO `citystate` VALUES ('Piscataway','NJ','08854'),('Lanham','MD','20706'),('Abingdon','VA','24210'),('Clover','SC','29710'),('Duluth','GA','30096'),('Jupiter','FL','33458'),('Nashville','TN','37205'),('Memphis','TN','38117'),('Willoughby','OH','44094'),('Cuyahoga Falls','OH','44223'),('Battle Creek','MI','49016'),('Jefferson','LA','70121'),('Covington','LA','70433'),('Scottsdale','AZ','85260'),('Ontario','CA','91764'),('San Marcos','CA','92078'),('Huntington Beach','CA','92647');
/*!40000 ALTER TABLE `citystate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Goodman','Yvonne','12 Creekside St','37205','2025550109','ygoodman@isp.com'),(2,'Mackenzie','Dante','137 Wall St','37205','2025550112','dmackenzie@isp.com'),(3,'Rollins','Alysha','411 Shirley St','37205','2025550115','arollins@isp.com'),(4,'Gonzalez','Avaya','7771 Border Court','37205','2025550119','agonzalez@isp.com'),(5,'Kelly','Haniya','6 South Sulphur Springs Street','37205','2025550121','hkelly@isp.com'),(6,'Chambers','Nathalie','942 New Saddle Drive','29710','2025550122','nchambers@isp.com'),(7,'Rollins','Dante','9 Wrangler Ave','29710','2025550124','drollins@isp.com'),(8,'Mckee','Beverley','7319 S. Greenview Drive','29710','2025550125','bmckee@isp.com'),(9,'Lindsey','Paris','763 West Mulberry St','29710','2025550132','plindsey@isp.com'),(10,'Melia','Umaiza','545 Ohio Ave','29710','2025550135','umelia@isp.com'),(11,'Prince','Nico','20 Middle River Street','44094','2025550137','nprince@isp.com'),(12,'Rennie','Javan','8112 North Country St','44094','2025550139','jrennie@isp.com'),(13,'Waters','Ali','83 Rockland Lane','44094','2025550144','awaters@isp.com'),(14,'Clarke','JohnPaul','1 Riverside Lane','44094','2025550153','jpcClarke@isp.com'),(15,'Kaiser','Dane','694 Wall Road','44094','2025550155','kdaiser@isp.com'),(16,'Newman','Hammad','9970 State Court','30096','2025550157','hnewman@isp.com'),(17,'Guthrie','Maha','54 Woodsman Drive','30096','2025550161','mguthrie@isp.com'),(18,'Roberts','Tulisa','7174 Studebaker Street','30096','2025550163','troberts@isp.com'),(19,'Solis','Robin','8474 Wentworth Street','30096','2025550164','rsolis@isp.com'),(20,'Heath','Kavita','796 Hartford St','30096','2025550165','kheath@isp.com'),(21,'White','Meera','484 Bridge St','08854','2025550166','mwhite@isp.com'),(22,'Esparza','Bradlee','7031 Gainsway St','08854','2025550173','besparza@isp.com'),(23,'Leonard','Leilani','37 Monroe Street','08854','2025550175','lleonard@isp.com'),(24,'Brook','Stefanie','7990 West Surrey St','08854','2025550179','sbrook@isp.com'),(25,'Squires','Grover','7618 Madison Court','08854','2025550180','gsquires@isp.com'),(26,'Kumar','Jonathan','25 Annadale Court','33458','2025550182','jkumar@isp.com'),(27,'Neville','Angus','9841 Smith Drive','33458','2025550187','aneville@isp.com'),(28,'Sparrow','Uzair','7999 Hall Street','33458','2025550188','usparrow@isp.com'),(29,'Currie','Amari','8411 Pleasant St','33458','2025550194','acurrie@isp.com'),(30,'Wallace','Imaani','33 Pierce Rd','33458','2025550195','iwallace@isp.com'),(31,'House','Efe','97 High Point Street','20706','2025550196','ehouse@isp.com'),(32,'Atkinson','Atticus','66 Harrison Dr','20706','2025550197','aatkinson@isp.com'),(33,'Ramirez','Michelle','370 Hill Field Ave','20706','2025550198','mramirez@isp.com'),(34,'Hassan','Remy','249 Devon Lane','20706','2025550199','rhassan@isp.com'),(35,'Beck','Jordana','7911 Carson Lane','20706','2025550200','jbeck@isp.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerorder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `orderDate` date NOT NULL,
  `orderStateId` int NOT NULL,
  `total` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `customerId` (`customerId`),
  KEY `productId` (`productId`),
  KEY `orderStateId` (`orderStateId`),
  CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`ID`),
  CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `customerorder_ibfk_3` FOREIGN KEY (`orderStateId`) REFERENCES `orderstate` (`ID`),
  CONSTRAINT `customerorder_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerorder`
--

LOCK TABLES `customerorder` WRITE;
/*!40000 ALTER TABLE `customerorder` DISABLE KEYS */;
INSERT INTO `customerorder` VALUES (1,22,23,2,'2021-04-26',12,3.80),(2,22,24,4,'2021-04-26',12,19.96),(3,33,14,6,'2021-04-26',12,26.94),(4,33,20,4,'2021-04-26',12,51.96),(5,11,34,4,'2021-04-26',12,89.96),(6,11,44,10,'2021-04-26',12,109.90),(7,35,1,4,'2021-04-26',12,39.96),(8,15,10,6,'2021-04-26',12,59.94),(9,25,50,3,'2021-04-26',12,44.97),(10,12,9,8,'2021-04-26',12,103.92);
/*!40000 ALTER TABLE `customerorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerorderdetail`
--

DROP TABLE IF EXISTS `customerorderdetail`;
/*!50001 DROP VIEW IF EXISTS `customerorderdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerorderdetail` AS SELECT 
 1 AS `Custoemr`,
 1 AS `Product`,
 1 AS `Quantity`,
 1 AS `Date Ordered`,
 1 AS `Order Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customerpayment`
--

DROP TABLE IF EXISTS `customerpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpayment` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customerOrderId` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paymentDate` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`ID`),
  KEY `customerOrderId` (`customerOrderId`),
  CONSTRAINT `customerpayment_ibfk_1` FOREIGN KEY (`customerOrderId`) REFERENCES `customerorder` (`ID`),
  CONSTRAINT `customerpayment_chk_1` CHECK ((`total` > 0.0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpayment`
--

LOCK TABLES `customerpayment` WRITE;
/*!40000 ALTER TABLE `customerpayment` DISABLE KEYS */;
INSERT INTO `customerpayment` VALUES (1,1,3.80,'2021-04-26'),(2,2,19.96,'2021-04-26'),(3,3,26.94,'2021-04-26'),(4,4,51.96,'2021-04-26'),(5,5,89.96,'2021-04-26'),(6,6,109.90,'2021-04-26'),(7,7,39.96,'2021-04-26'),(8,8,59.94,'2021-04-26'),(9,9,44.97,'2021-04-26'),(10,10,103.92,'2021-04-26');
/*!40000 ALTER TABLE `customerpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerpaymentdetail`
--

DROP TABLE IF EXISTS `customerpaymentdetail`;
/*!50001 DROP VIEW IF EXISTS `customerpaymentdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerpaymentdetail` AS SELECT 
 1 AS `Customer`,
 1 AS `Custoemr Order`,
 1 AS `Product`,
 1 AS `Product total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Prince','Yvonne','12 Creekside St','92647','2025550109','yprince@frozenfoods.com'),(2,'Rennie','Dante','137 Wall St','38117','2025550112','drennie@frozenfoods.com'),(3,'Waters','Alysha','411 Shirley St','24210','2025550115','awaters@frozenfoods.com'),(4,'Clarke','Avaya','7771 Border Court','92078','2025550119','aclarke@frozenfoods.com'),(5,'Kaiser','Haniya','6 South Sulphur Springs Street','70121','2025550121','hkaiser@frozenfoods.com'),(6,'Newman','Nathalie','942 New Saddle Drive','70433','2025550122','nnewman@frozenfoods.com'),(7,'Guthrie','Dante','9 Wrangler Ave','91764','2025550124','dguthrie@frozenfoods.com'),(8,'Roberts','Beverley','7319 S. Greenview Drive','44223','2025550125','broberts@frozenfoods.com'),(9,'Solis','Paris','763 West Mulberry St','49016','2025550132','psolis@frozenfoods.com'),(10,'Heath','Umaiza','545 Ohio Ave','85260','2025550135','uheath@frozenfoods.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeesupplier`
--

DROP TABLE IF EXISTS `employeesupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeesupplier` (
  `employeeId` int NOT NULL,
  `supplierId` int NOT NULL,
  PRIMARY KEY (`employeeId`,`supplierId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `employeesupplier_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`ID`),
  CONSTRAINT `employeesupplier_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeesupplier`
--

LOCK TABLES `employeesupplier` WRITE;
/*!40000 ALTER TABLE `employeesupplier` DISABLE KEYS */;
INSERT INTO `employeesupplier` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `employeesupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employeesupplierdetail`
--

DROP TABLE IF EXISTS `employeesupplierdetail`;
/*!50001 DROP VIEW IF EXISTS `employeesupplierdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employeesupplierdetail` AS SELECT 
 1 AS `representative`,
 1 AS `supplier`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `orderstate`
--

DROP TABLE IF EXISTS `orderstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstate` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `state` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstate`
--

LOCK TABLES `orderstate` WRITE;
/*!40000 ALTER TABLE `orderstate` DISABLE KEYS */;
INSERT INTO `orderstate` VALUES (1,'New order'),(2,'Buyer contacted'),(3,'Seller contacted'),(4,'Invoice sent'),(5,'Invoice received'),(6,'Payment pending'),(7,'Payment received'),(8,'Shipped'),(9,'Awaiting pickup'),(10,'Cancelled'),(11,'Backordered'),(12,'Completed'),(13,'Payment sent');
/*!40000 ALTER TABLE `orderstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(90) NOT NULL,
  `productType` int NOT NULL,
  `description` varchar(90) NOT NULL,
  `size` decimal(7,2) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `sizeTypeId` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `productType` (`productType`),
  KEY `sizeTypeId` (`sizeTypeId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productType`) REFERENCES `producttype` (`ID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`sizeTypeId`) REFERENCES `sizetype` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'lamb shank',1,'lamb shank in rosemary and mint sauce',10.00,26,9.99,1),(2,'veal',1,'veal osso buco',15.50,30,11.99,1),(3,'short rib',1,'braveheart angus beef boneless short rib',12.00,40,7.99,1),(4,'flank steak',1,'braveheart angus beef flank steak',2.00,30,16.99,2),(5,'chicken',1,'boneless chicken breasts',8.00,56,21.99,3),(6,'pork chops',1,'bacon-wrapped pork chops',4.00,42,19.99,3),(7,'langoustines',2,'medium wild langoustines',7.00,25,20.99,3),(8,'octopus',2,'cooked small octopus tentacles',3.00,30,23.00,3),(9,'shrimp',2,'red shrimp from argentina XL',12.00,42,12.99,3),(10,'clams',2,'coquina clams',12.00,39,9.99,3),(11,'peas',3,'extra fine french peas',2.00,60,5.99,2),(12,'artichoke',3,'artichoke bottoms',2.00,24,17.69,2),(13,'bean',3,'very find yellow wax beans',2.00,30,6.29,2),(14,'broccoli',3,'broccoli florets',2.00,49,4.49,2),(15,'potatoes',3,'family size smashed red potatoes',32.00,55,12.99,1),(16,'potatoes',3,'family size whipped sweet potatoes',32.00,55,14.49,1),(17,'potatoes',3,'potatoes au gratin',3.00,55,8.49,1),(18,'rice',4,'jasmine rice',2.00,45,9.99,2),(19,'rice',4,'brown, red and wild rice medley',2.00,35,9.99,2),(20,'quinoa',4,'organic quinoa',2.00,22,12.99,2),(21,'lentils',4,'black beluga lentils',2.00,30,9.99,2),(22,'pastry',5,'frangipane king cake',19.00,32,19.99,1),(23,'pastry',5,'chocolate croissant',3.00,88,1.90,1),(24,'dessert',5,'tiramisu classico',3.00,56,4.99,1),(25,'dessert',5,'authentic french creme brulee',5.00,54,5.99,1),(26,'pie',5,'cappuccino pie',3.00,30,36.50,2),(27,'cake',5,'red berry cheesecake',3.00,30,36.50,2),(28,'bread',5,'brioche burger buns',4.00,44,4.80,3),(29,'bread',5,'ciabatta sandwich 6 inch',3.00,28,3.29,3),(30,'dough',5,'mini blinis',16.00,26,4.46,3),(31,'steak',1,'Butcher\'s Cut Filet Mignon',10.00,30,33.74,1),(32,'steak',1,'Butcher\'s Cut Top Sirloin',5.00,50,14.99,1),(33,'steak',1,'T-Bone Steak',18.00,40,33.33,1),(34,'bison',1,'Ground Bison',1.00,26,22.49,2),(35,'turkey',1,'Home-Style Roasted Turkey Breast',1.80,45,21.99,2),(36,'turkey',1,'Turkey Burgers',8.00,30,21.99,3),(37,'ham',1,'Spiral Sliced Ham',9.00,30,89.99,2),(38,'pork',1,'Breaded Pork Tenderloin',4.00,25,19.99,3),(39,'salmon',2,'Lemon Dill Salmon Fillets',6.00,30,8.79,1),(40,'seabass',2,'Chilean Sea Bass',5.00,30,19.99,1),(41,'crab',2,'King Crab Legs',2.00,30,109.99,2),(42,'crab',2,'Gourmet Crab Cakes',4.00,26,34.99,3),(43,'lobster',2,'Cold Water Lobster Tails',5.00,35,22.99,1),(44,'bean',3,'Green Beans',6.50,35,10.99,1),(45,'broccoli',3,'Steakhouse Broccoli and Cauliflower Gratin',22.00,35,12.99,1),(46,'brussels sprouts',3,'Brussels Sprouts with Bacon & Shallots',9.50,35,14.99,1),(47,'corn',3,'Steakhouse Creamed Corn',20.00,40,10.99,1),(48,'mixed',3,'Roasted Vegetable Medley',7.00,50,9.99,1),(49,'asparagus',3,'Asparagus Spears With Hollandaise Sauce',12.00,30,15.99,1),(50,'potatoes',3,'Potatoes au Gratin',8.00,52,14.99,3),(51,'risotto',4,'Pepper Jack Risotto Cakes',8.00,25,19.99,3),(52,'rice',4,'Harvest Rice Pilaf',25.00,45,14.99,1),(53,'bread',5,'Mini Baguettes with Garlic Butter',4.00,35,49.99,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productdetail`
--

DROP TABLE IF EXISTS `productdetail`;
/*!50001 DROP VIEW IF EXISTS `productdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productdetail` AS SELECT 
 1 AS `Product ID`,
 1 AS `Product Name`,
 1 AS `Category`,
 1 AS `Description`,
 1 AS `Size`,
 1 AS `In Stock`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `productsupplier`
--

DROP TABLE IF EXISTS `productsupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsupplier` (
  `productId` int NOT NULL,
  `supplierId` int NOT NULL,
  PRIMARY KEY (`productId`,`supplierId`),
  KEY `supplierId` (`supplierId`),
  CONSTRAINT `productsupplier_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `productsupplier_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsupplier`
--

LOCK TABLES `productsupplier` WRITE;
/*!40000 ALTER TABLE `productsupplier` DISABLE KEYS */;
INSERT INTO `productsupplier` VALUES (1,1),(2,1),(3,1),(31,1),(32,1),(33,1),(4,2),(5,2),(6,2),(34,2),(35,2),(7,3),(8,3),(9,3),(36,3),(37,3),(10,4),(11,4),(12,4),(38,4),(39,4),(13,5),(14,5),(15,5),(40,5),(41,5),(16,6),(17,6),(18,6),(42,6),(43,6),(19,7),(20,7),(21,7),(44,7),(45,7),(22,8),(23,8),(24,8),(46,8),(47,8),(25,9),(26,9),(27,9),(48,9),(49,9),(50,9),(28,10),(29,10),(30,10),(51,10),(52,10),(53,10);
/*!40000 ALTER TABLE `productsupplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productsupplierdetail`
--

DROP TABLE IF EXISTS `productsupplierdetail`;
/*!50001 DROP VIEW IF EXISTS `productsupplierdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productsupplierdetail` AS SELECT 
 1 AS `product`,
 1 AS `supplier`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,'meat'),(2,'seafood'),(3,'vegetable'),(4,'grain and rice'),(5,'bakery');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplierId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `orderDate` date NOT NULL,
  `orderStateId` int NOT NULL,
  `total` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `supplierId` (`supplierId`),
  KEY `productId` (`productId`),
  KEY `orderStateId` (`orderStateId`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `supplier` (`ID`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`ID`),
  CONSTRAINT `purchaseorder_ibfk_3` FOREIGN KEY (`orderStateId`) REFERENCES `orderstate` (`ID`),
  CONSTRAINT `purchaseorder_chk_1` CHECK ((`quantity` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,1,1,10,'2021-04-26',12,99.90),(2,1,2,15,'2021-04-26',12,179.85),(3,3,8,15,'2021-04-26',12,345.00),(4,7,21,12,'2021-04-26',12,119.88),(5,9,26,20,'2021-04-26',12,730.00),(6,9,27,18,'2021-04-26',12,657.00),(7,2,34,10,'2021-04-26',12,224.90),(8,3,37,15,'2021-04-26',12,1349.85),(9,4,41,14,'2021-04-26',12,1539.86),(10,5,39,10,'2021-04-26',12,87.90);
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `purchaseorderdetail`
--

DROP TABLE IF EXISTS `purchaseorderdetail`;
/*!50001 DROP VIEW IF EXISTS `purchaseorderdetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `purchaseorderdetail` AS SELECT 
 1 AS `Supplier`,
 1 AS `product`,
 1 AS `Quantity`,
 1 AS `Date Ordered`,
 1 AS `Order Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sizetype`
--

DROP TABLE IF EXISTS `sizetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizetype` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizetype`
--

LOCK TABLES `sizetype` WRITE;
/*!40000 ALTER TABLE `sizetype` DISABLE KEYS */;
INSERT INTO `sizetype` VALUES (1,'ounce'),(2,'pound'),(3,'count');
/*!40000 ALTER TABLE `sizetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplierName` char(50) NOT NULL,
  `address` varchar(90) NOT NULL,
  `zipCode` char(5) NOT NULL,
  `phone` char(10) NOT NULL,
  `email` varchar(90) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `supplierName` (`supplierName`),
  UNIQUE KEY `email` (`email`),
  KEY `zipCode` (`zipCode`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`zipCode`) REFERENCES `citystate` (`zipCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'New Direction Foods','16321 Gothard St. Suite C-F','92647','5626068511','info@new-direction-foods.com'),(2,'Monogram Foods','530 Oak Court Drive Suite 400','38117','9016857167','info@monogram-foods.com'),(3,'Dutt and Wagner of Virginia, Inc','1142 West Main Street','24210','8006882116','info@dutt-wagner-virginia.com'),(4,'Culinary Specialties, Inc','1231 Linda Vista Drive','92078','7607448220','info@culinary-specialties.com'),(5,'John E. Koerner Company','4820 Jefferson Hwy','70121','8003331913','info@koerner-company.com'),(6,'Diversified Foods and Seasonings LLC','1404 Greengate Drive Suite 300','70433','8009142382','info@diversified-foods.com'),(7,'Ajinomoto Foods North America','4200 Concours Street Suite 100','91764','9094774700','info@ajinomoto-foods-na.com'),(8,'Ascot Valley Foods','205 Ascot Pkwy','44223','3303769411','info@ascotvalleyfoods.com'),(9,'Kellogg NA Company','P.O. Box CAMB','49016','8009621413','info@kelloggs.com'),(10,'AppetizersUSA','15210 N. 75th Street Suite A','85260','4804712601','info@appetizers-usa.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliertransaction`
--

DROP TABLE IF EXISTS `suppliertransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliertransaction` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `purchaseOrderId` int NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `paymentDate` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`ID`),
  KEY `purchaseOrderId` (`purchaseOrderId`),
  CONSTRAINT `suppliertransaction_ibfk_1` FOREIGN KEY (`purchaseOrderId`) REFERENCES `purchaseorder` (`ID`),
  CONSTRAINT `suppliertransaction_chk_1` CHECK ((`total` > 0.0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliertransaction`
--

LOCK TABLES `suppliertransaction` WRITE;
/*!40000 ALTER TABLE `suppliertransaction` DISABLE KEYS */;
INSERT INTO `suppliertransaction` VALUES (1,3,345.00,'2021-04-26'),(2,5,730.00,'2021-04-26'),(3,6,657.00,'2021-04-26'),(4,8,1349.85,'2021-04-26'),(5,9,1539.86,'2021-04-26');
/*!40000 ALTER TABLE `suppliertransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `suppliertransactiondetail`
--

DROP TABLE IF EXISTS `suppliertransactiondetail`;
/*!50001 DROP VIEW IF EXISTS `suppliertransactiondetail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `suppliertransactiondetail` AS SELECT 
 1 AS `Supplier`,
 1 AS `Purchase Order`,
 1 AS `product`,
 1 AS `Product Total`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'frozenfood'
--
/*!50003 DROP PROCEDURE IF EXISTS `DecreaseInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DecreaseInventory`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE theProduct INT DEFAULT 0;
    DECLARE theQuantity INT DEFAULT 0;
    DECLARE ship_cursor CURSOR FOR
        SELECT productid, quantity
            FROM customerOrder
            WHERE orderStateId = 
                (SELECT id
                 FROM orderState
                 WHERE state = "Shipped");
                 
    DECLARE CONTINUE HANDLER
        FOR NOT FOUND SET done = 1;
    
    OPEN ship_cursor;
    
    ship_product: LOOP
        FETCH ship_cursor INTO theProduct, theQuantity; 
        
        IF done = 1 THEN
        LEAVE ship_product;
        END IF;
        
        UPDATE product
        SET quantity = (quantity - theQuantity) 
        WHERE id = theProduct;
        END LOOP ship_product;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IncreaseInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IncreaseInventory`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE theProduct INT DEFAULT 0;
    DECLARE theQuantity INT DEFAULT 0;
    DECLARE receive_cursor CURSOR FOR
        SELECT productId, quantity
            FROM purchaseOrder
            WHERE orderStateId = 
                (SELECT id
                 FROM orderState
                 WHERE state = "Shipped");
                 
    DECLARE CONTINUE HANDLER
        FOR NOT FOUND SET done = 1;
    
    OPEN receive_cursor;
    
    receive_product: LOOP
        FETCH receive_cursor INTO theProduct, theQuantity; 
        
        IF done = 1 THEN
        LEAVE receive_product;
        END IF;
        
        UPDATE product
        SET quantity = (quantity + theQuantity) 
        WHERE id = theProduct;
        END LOOP receive_product;
        
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ReceivePurchaseOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ReceivePurchaseOrder`()
BEGIN
    
    DECLARE done INT DEFAULT 0;
    DECLARE theId INT DEFAULT 0;
        
        DECLARE id_cursor CURSOR FOR
            SELECT DISTINCT ID
            FROM purchaseOrder
            WHERE orderStateId = 
                (SELECT id
                 FROM orderState
                 WHERE state = "Payment sent");
                 
    DECLARE CONTINUE HANDLER
        FOR NOT FOUND SET done = 1;
    
    OPEN id_cursor;
    
    get_id: LOOP
        FETCH id_cursor INTO theId;
        
        IF done = 1 THEN
            LEAVE get_id;
        END IF;
        
        UPDATE purchaseOrder
        SET orderStateId = 
            (SELECT id
            FROM orderstate
            WHERE state = "Shipped")
        WHERE ID = theId;
    END LOOP get_id;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShipCustomerOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShipCustomerOrder`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE theId INT DEFAULT 0;
 /* declare cursor for column ID where column orderStateId equals "Payment received" */
 DECLARE id_cursor CURSOR FOR 
SELECT DISTINCT ID
  FROM customerOrder
  WHERE orderStateId =
(SELECT id
   FROM orderState
  WHERE state = "Payment received");
  
 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET done = 1;
OPEN id_cursor;
get_id: LOOP
FETCH id_cursor INTO theId;
 IF done = 1 THEN 
LEAVE get_id;
 END IF;
/* update customerOrder set column orderStateId equal to "Shipped" */ 
UPDATE customerOrder
SET orderStateId =
(SELECT id
FROM orderState
WHERE state = "Shipped")
WHERE ID = theId; 
 END LOOP get_id;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateInventory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateInventory`()
BEGIN
    
    CALL ShipCustomerOrder();
    CALL ReceivePurchaseOrder();
    CALL DecreaseInventory();
    CALL IncreaseInventory();
    
    UPDATE customerOrder
        SET orderStateId =
        (SELECT id
        FROM orderState
        WHERE state = "Completed")
    
        WHERE orderStateId =
        (SELECT id
        FROM orderState
        WHERE state = "Shipped");
    
    UPDATE purchaseOrder
        SET orderStateId =
        (SELECT id
        FROM orderState
        WHERE state = "Completed")
    
        WHERE orderStateId =
        (SELECT id
        FROM orderState
        WHERE state = "Shipped");
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customerorderdetail`
--

/*!50001 DROP VIEW IF EXISTS `customerorderdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerorderdetail` AS select concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Custoemr`,`p`.`description` AS `Product`,`co`.`quantity` AS `Quantity`,`co`.`orderDate` AS `Date Ordered`,`o`.`state` AS `Order Status` from (((`customerorder` `co` join `product` `p`) join `customer` `c`) join `orderstate` `o`) where ((`co`.`customerId` = `c`.`ID`) and (`co`.`productId` = `p`.`ID`) and (`co`.`orderStateId` = `o`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerpaymentdetail`
--

/*!50001 DROP VIEW IF EXISTS `customerpaymentdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerpaymentdetail` AS select concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Customer`,`cp`.`customerOrderId` AS `Custoemr Order`,`p`.`description` AS `Product`,`co`.`total` AS `Product total` from (((`customerpayment` `cp` join `customerorder` `co`) join `customer` `c`) join `product` `p`) where ((`cp`.`customerOrderId` = `co`.`ID`) and (`co`.`customerId` = `c`.`ID`) and (`co`.`productId` = `p`.`ID`)) order by `c`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employeesupplierdetail`
--

/*!50001 DROP VIEW IF EXISTS `employeesupplierdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employeesupplierdetail` AS select concat(`e`.`firstName`,' ',`e`.`lastName`) AS `representative`,`s`.`supplierName` AS `supplier` from ((`employee` `e` join `supplier` `s`) join `employeesupplier` `es`) where ((`es`.`supplierId` = `s`.`ID`) and (`es`.`employeeId` = `e`.`ID`)) order by `e`.`lastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productdetail`
--

/*!50001 DROP VIEW IF EXISTS `productdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productdetail` AS select `p`.`ID` AS `Product ID`,`p`.`productName` AS `Product Name`,`pt`.`type` AS `Category`,`p`.`description` AS `Description`,concat(`p`.`size`,' ',`st`.`size`) AS `Size`,`p`.`quantity` AS `In Stock`,concat('$',`p`.`price`) AS `Cost` from ((`product` `p` join `producttype` `pt`) join `sizetype` `st`) where ((`p`.`productType` = `pt`.`ID`) and (`p`.`sizeTypeId` = `st`.`ID`)) order by `p`.`productName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productsupplierdetail`
--

/*!50001 DROP VIEW IF EXISTS `productsupplierdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productsupplierdetail` AS select `p`.`description` AS `product`,`s`.`supplierName` AS `supplier` from ((`productsupplier` `ps` join `product` `p`) join `supplier` `s`) where ((`ps`.`supplierId` = `s`.`ID`) and (`ps`.`productId` = `p`.`ID`)) order by `s`.`supplierName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `purchaseorderdetail`
--

/*!50001 DROP VIEW IF EXISTS `purchaseorderdetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `purchaseorderdetail` AS select `s`.`supplierName` AS `Supplier`,`p`.`description` AS `product`,`po`.`quantity` AS `Quantity`,`po`.`orderDate` AS `Date Ordered`,`o`.`state` AS `Order Status` from (((`purchaseorder` `po` join `product` `p`) join `supplier` `s`) join `orderstate` `o`) where ((`po`.`supplierId` = `s`.`ID`) and (`po`.`productId` = `p`.`ID`) and (`po`.`orderStateId` = `o`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `suppliertransactiondetail`
--

/*!50001 DROP VIEW IF EXISTS `suppliertransactiondetail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `suppliertransactiondetail` AS select `s`.`supplierName` AS `Supplier`,`st`.`purchaseOrderId` AS `Purchase Order`,`p`.`description` AS `product`,`po`.`total` AS `Product Total` from (((`suppliertransaction` `st` join `purchaseorder` `po`) join `supplier` `s`) join `product` `p`) where ((`s`.`ID` = `po`.`supplierId`) and (`p`.`ID` = `po`.`productId`) and (`po`.`ID` = `st`.`purchaseOrderId`)) order by `s`.`supplierName` */;
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

-- Dump completed on 2021-04-26 20:25:00
