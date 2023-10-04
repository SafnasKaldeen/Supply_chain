-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: supply_chain
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Admin_ID` mediumint NOT NULL,
  `Username` varchar(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin01','$2a$10$mwkzH7c6T1AO7g0hPej.kOo/qRvtI2nmHnVXPhzXDwRqVXBES8ehq'),(2,'Admin02','$2a$10$J9XZ2/c2sXEOPmhwj2yihOOd6g9LHVcK2AGcIKA8W2VUErXhHIBvS'),(3,'Admin03','$2a$10$6Bmeh4Lba6prCYAhh4zkG.myOT.RRd8lH1LffcF6IiMR6Sh/tA2gO');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` mediumint NOT NULL AUTO_INCREMENT,
  `Customer_Type` varchar(15) DEFAULT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Contact_Number` varchar(10) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  KEY `Customer_Type` (`Customer_Type`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Customer_Type`) REFERENCES `customer_type` (`Type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'wholesaler','Kasun','146, Karadiyana Rd, Piliyandala','0712046838','$2a$10$KjHGAvo9MNMLgGNYYdzh8.WeEnc65htzaQR4puaKWJnCWNwMdf1Zm'),(2,'end customer','Saman','20/7, Joseph Street, Maradana','0112592333','$2a$10$ZoZpnuYmf7irhkJuV2nIseWVI7uxkIkrzoSgz9L2VYLGTyHwnJl8u'),(3,'retailer','Piyal','70 C, Deerok Place, Moratuwa','0780313798','$2a$10$/YgOdXtvEGoYT3X3lSyWIOi4hEruzg5MsF1QPn/Gij.Qtth.WNNzO'),(4,'wholesaler','Kumari','74, Weerawatte Road, Kurana','0772717179','$2a$10$B9ZvWVX1fPcZvg9TNoPFDOdmiZ7bxYPcCXYOqUU8DtnOv3t935feK'),(5,'retailer','Chalana','21, Suneth Lane, Rahula Mawatha, Katunayake','0724434357','$2a$10$INZOzliWLHpjap6GYbpBQONylX/KuRB.3x4loj7JdQODg8DbfIzYO'),(6,'end customer','Manat','15, Sir Thomas Terrance Street, Chillaw','0700205360','$2a$10$jaYJRgbLjK.Fjw9M30UYyOFIsTeOQ415O00KowGvwdkV9Wu.7/6MC'),(7,'end customer','Safnas','172, Welleweriya Road, Galle','0112919101','$2a$10$C.1TXdOuV8XYPBdEHgLKHe7VpZ5KUZ9CWQr3d3oO0tlSnLUUzFN9u'),(8,'retailer','Piyath','19/10, Jayawardhara Viharaya Rd, Hikkaduwa','0766451611','$2a$10$GHDBocODtVJQeZb0PDN2j.6GqeXpOx0VtKW7m1IFLO98ikAS2NH1y'),(9,'wholesaler','Wimal','285, Burumadama Rd, Katubeddha, Ambalantota','0514072500','$2a$10$iiP0VglKVj0WjHqdStO8Zuu8/YtbyqoIY3UZn6yO6GVaK2GcwGifa'),(10,'wholesaler','Janith','174, Thammennawa Watte, Egodauyana, Matara','0706388898','$2a$10$elmjT7HbGkEmCrT4abt3gOUL9pUqS2T0N12c6cxv9eua1NqgjR13m'),(11,'end customer','Jagath','926, Polhengoda Rd, Weligama','0112453611','$2a$10$3NowYs.hCBK9K6cp4qjT/OFDOEEyo7BUhnArvhbPoSdXJG3oIW.pO'),(12,'retailer','Kamal','96, Dharmapala Mawatha, Hambantota','0816400372','$2a$10$rmBcGmRYa7y.erhuzEQs5.xWrN5QD6QsCUXY3fK.Q9SKOI.r/2l9O'),(13,'wholesaler','Nuwan','86, Northern Street, Jaffna','0775641123','$2a$10$WjFMLXf4oLSSHt4zBJRQvum9cJlunwWJ0I92kin7j2Fm5Jn1KnBq.'),(14,'end customer','Iman','229, Virahaliya Rd, Jaffna','0112469412','$2a$10$W9U16PKKo8UKFhT1L24fq..mIXLG.Pj9/Y1.r0KDjVuJDqFkzuYue'),(15,'retailer','Yumeth','229, Virahaliya Rd, Jaffna','0112863133','$2a$10$sLYA1l8DerDHDlNDWCNceuC0Io0TYqYZEgS9Sz2RSGtwR0eTo05Ly'),(16,'retailer','Ashen','21/B, Sri Rahula Road, Trincomalee','0813195137','$2a$10$5dOq.vzpChDtdM2BRR8N4u7l2RgBDA/QxxzTrsrkibvjYCRiCQEf2'),(17,'end customer','Praveen','39, Chandimandira Lane, Nilaveli','0718838814','$2a$10$Vgldgv8CFtkc3q/Xma0Py.ZTbkP7YjNhnBqaevulFsJhhUQ0zFpK2'),(18,'wholesaler','Bilal','12/7, Waishrama Junction, Kalkudah','0714648463','$2a$10$js5koGKsuyLeKOH9.0fN5.NXJKF7Jgc4F4PWkoQWb1YCTiAJnwfzG'),(19,'retailer','Thisaru','463, Singarathna Mawatha, Kandy','0722251088','$2a$10$VUKUtQUC93UhbBySV21C/OgWxlurN9sosIaRK3J6ThMyPhjgTzCPq'),(20,'end customer','Gayani','49, Anagarika Dharmapala Mawatha, Peradeniya','0652235705','$2a$10$y4xMFDlWGErmoGECO8LVAuFXarjF/A/n.saOmNKUY7LvnaJt67Vrq'),(41,'retailer','Althaf','100,Kannangara road, Malabe','0112222345','$2b$10$G46viI0drS2uN01C/iG8G.C8BORQOAFl3R2bNryjY5WPxLnH25U2y');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_type`
--

DROP TABLE IF EXISTS `customer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_type` (
  `Type` varchar(15) NOT NULL,
  `Discount` decimal(3,3) DEFAULT NULL,
  PRIMARY KEY (`Type`),
  UNIQUE KEY `Type_UNIQUE` (`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_type`
--

LOCK TABLES `customer_type` WRITE;
/*!40000 ALTER TABLE `customer_type` DISABLE KEYS */;
INSERT INTO `customer_type` VALUES ('end customer',0.000),('retailer',0.125),('wholesaler',0.250);
/*!40000 ALTER TABLE `customer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_ID` varchar(5) NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Store_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Driver_ID`),
  KEY `Store_ID_idx` (`Store_ID`),
  CONSTRAINT `Store_ID` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('00001','Kusal','00001'),('00002','Asanka','00001'),('00003','Sajani','00001'),('00004','Rangana','00002'),('00005','Ahmad','00002'),('00006','Nimeshi','00003'),('00007','Sujith','00003'),('00008','Harsha','00003'),('00009','Aravinda','00004'),('00010','Sameera','00004'),('00011','Suresh','00005'),('00012','Varun','00005'),('00013','Kobinath','00005'),('00014','Nirosh','00006'),('00015','Ali','00006'),('00016','Hiran','00007'),('00017','Udaya','00007');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_assistant`
--

DROP TABLE IF EXISTS `driver_assistant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_assistant` (
  `Asst_ID` varchar(5) NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Store_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Asst_ID`),
  KEY `Store_ID_idx` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_assistant`
--

LOCK TABLES `driver_assistant` WRITE;
/*!40000 ALTER TABLE `driver_assistant` DISABLE KEYS */;
INSERT INTO `driver_assistant` VALUES ('00001','Indika','00001'),('00002','Azam','00001'),('00003','Gayan','00001'),('00004','Nirmal','00002'),('00005','Chamin','00002'),('00006','Pubudu','00003'),('00007','Madhawa','00003'),('00008','Pavani','00004'),('00009','Tharaka','00004'),('00010','Pravin','00005'),('00011','Lankesh','00005'),('00012','Jagan','00005'),('00013','Sripawan','00006'),('00014','Nawas','00006'),('00015','Nipuna','00007'),('00016','Oshada','00007');
/*!40000 ALTER TABLE `driver_assistant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order_ID` mediumint NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Customer_ID` mediumint DEFAULT NULL,
  `Route_ID` varchar(5) DEFAULT NULL,
  `Total_Price` decimal(9,2) DEFAULT NULL,
  `Total_Capacity` decimal(6,3) DEFAULT NULL,
  `Train_Scheduled` tinyint DEFAULT NULL,
  `Truck_Scheduled` tinyint DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Route_ID` (`Route_ID`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`Route_ID`) REFERENCES `truck_route` (`Route_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2022-06-07',1,'00001',440000.00,0.600,1,1),(2,'2022-07-15',2,'00002',10000.00,0.080,1,1),(3,'2022-11-22',3,'00003',171250.00,1.250,1,1),(4,'2022-12-10',4,'00007',160000.00,0.700,1,1),(5,'2023-01-07',5,'00008',215000.00,1.000,1,1),(6,'2023-01-07',6,'00009',4400.00,0.006,1,1),(7,'2023-01-07',7,'00012',4000.00,0.020,1,1),(8,'2023-01-07',8,'00013',178750.00,0.900,1,1),(9,'2023-01-08',9,'00014',122500.00,0.800,1,1),(10,'2023-01-08',10,'00018',120000.00,1.000,1,1),(11,'2023-01-08',11,'00019',9300.00,0.053,1,1),(12,'2023-01-08',12,'00020',90000.00,0.290,1,1),(13,'2023-01-08',13,'00023',175000.00,1.200,1,1),(14,'2023-01-08',14,'00024',11000.00,0.055,1,1),(15,'2023-01-08',15,'00025',142500.00,1.250,1,1),(16,'2023-01-08',16,'00029',78125.00,0.725,1,1),(17,'2023-01-09',17,'00030',11000.00,0.020,1,1),(18,'2023-01-09',18,'00031',140000.00,0.900,1,1),(19,'2023-01-09',19,'00033',110000.00,0.690,NULL,1),(20,'2023-01-09',20,'00034',8125.00,0.065,NULL,1),(21,'2023-01-09',1,'00004',140000.00,0.800,1,1),(22,'2023-01-09',2,'00005',3575.00,0.019,1,1),(23,'2023-01-09',3,'00006',26250.00,0.150,1,1),(24,'2023-01-09',4,'00010',222000.00,1.620,1,1),(25,'2023-01-10',5,'00011',102625.00,0.817,1,1),(26,'2023-01-10',6,'00008',6750.00,0.055,1,1),(27,'2023-01-10',7,'00015',4700.00,0.019,1,1),(28,'2023-01-10',8,'00016',60000.00,0.490,1,1),(29,'2023-01-10',9,'00017',358500.00,2.745,1,1),(30,'2023-01-10',10,'00021',150000.00,1.200,1,1),(31,'2023-01-10',11,'00022',192500.00,1.335,1,1),(32,'2023-01-10',12,'00020',4000.00,0.004,1,1),(33,'2023-01-11',13,'00026',140000.00,0.550,1,1),(34,'2023-01-11',14,'00027',6750.00,0.060,1,1),(35,'2023-01-11',15,'00028',32625.00,0.285,1,1),(36,'2023-01-11',16,'00032',12000.00,0.012,1,1),(37,'2023-01-11',17,'00029',11000.00,0.078,1,1),(38,'2023-01-11',18,'00030',224500.00,1.940,1,1),(39,'2023-01-11',19,'00035',89000.00,0.625,NULL,1),(40,'2023-01-11',20,'00036',9250.00,0.050,NULL,1),(54,'2023-01-14',1,'00005',8250.00,0.052,1,1),(55,'2023-09-20',1,'00026',16900.00,0.108,0,0);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_ID` varchar(5) NOT NULL,
  `Price` decimal(7,2) DEFAULT NULL,
  `Capacity_consumption` decimal(4,3) DEFAULT NULL,
  `Product_Name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('00001',1000.00,0.001,'Bottle'),('00002',1250.00,0.010,'Bucket'),('00003',1500.00,0.015,'Dust Bin'),('00004',1200.00,0.002,'Box'),('00005',3000.00,0.025,'Table'),('00006',500.00,0.001,'Cup'),('00007',1375.00,0.015,'Basin'),('00008',2000.00,0.010,'Mop & Bucket');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_order` (
  `Product_ID` varchar(5) DEFAULT NULL,
  `Order_ID` mediumint DEFAULT NULL,
  `Quantity` smallint DEFAULT NULL,
  KEY `Order_ID` (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`),
  CONSTRAINT `product_order_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
INSERT INTO `product_order` VALUES ('00001',1,200),('00004',1,200),('00003',2,4),('00008',2,2),('00002',3,40),('00007',3,30),('00008',3,40),('00005',4,20),('00006',4,200),('00004',5,100),('00007',5,40),('00008',5,20),('00001',6,2),('00004',6,2),('00008',7,2),('00001',8,50),('00002',8,30),('00006',8,100),('00007',8,30),('00002',9,50),('00008',9,30),('00005',10,40),('00003',11,3),('00004',11,4),('00001',12,40),('00002',12,20),('00006',12,50),('00007',13,40),('00008',13,60),('00005',14,2),('00001',14,5),('00003',15,50),('00007',15,20),('00008',15,20),('00002',16,35),('00007',16,25),('00004',17,5),('00006',17,10),('00005',18,20),('00008',18,40),('00001',19,40),('00002',19,20),('00003',19,30),('00007',20,3),('00008',20,2),('00001',21,50),('00005',21,30),('00006',22,2),('00004',22,1),('00007',22,1),('00002',23,5),('00008',23,10),('00003',24,100),('00004',24,60),('00007',25,15),('00008',25,8),('00005',25,20),('00006',25,12),('00002',26,3),('00005',26,1),('00001',27,2),('00004',27,1),('00003',27,1),('00002',28,24),('00005',28,10),('00007',29,48),('00008',29,90),('00003',29,75),('00002',30,120),('00005',31,50),('00006',31,85),('00001',32,4),('00008',33,45),('00006',33,100),('00003',34,2),('00002',34,3),('00007',35,15),('00008',35,6),('00001',36,12),('00003',37,1),('00005',37,2),('00006',37,3),('00008',37,1),('00002',38,140),('00007',38,36),('00004',39,10),('00005',39,24),('00001',39,5),('00002',40,1),('00008',40,4),('00001',54,2),('00002',54,5),('00001',55,2),('00002',55,2),('00003',55,2),('00004',55,2),('00005',55,2),('00006',55,2);
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_order_AI` AFTER INSERT ON `product_order` FOR EACH ROW BEGIN
	# set @PID=NEW.Product_ID;
    # set @Q=NEW.Quantity;
	select Price from product where product.product_ID=NEW.Product_ID into @productprice;
    select Capacity_consumption from product where product.product_ID=NEW.Product_ID into @productcapacity;
    
	UPDATE supply_chain.order SET Total_Price=Total_Price+@productprice*NEW.Quantity where order_id=NEW.order_id;
    UPDATE supply_chain.order SET Total_Capacity=Total_Capacity+@productcapacity*NEW.Quantity where order_id=NEW.order_id;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `Store_ID` varchar(5) NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Phone_Number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES ('00001','Colombo','0112934212'),('00002','Negombo','0334568932'),('00003','Galle ','0912343424'),('00004','Matara','0413987456'),('00005','Jaffna','0213689045'),('00006','Trincomalee','0319523652'),('00007','Kandy','0813459876');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_order`
--

DROP TABLE IF EXISTS `train_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_order` (
  `Train_Trip_ID` varchar(5) DEFAULT NULL,
  `Order_ID` mediumint DEFAULT NULL,
  KEY `Train_Trip_ID` (`Train_Trip_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `train_order_ibfk_1` FOREIGN KEY (`Train_Trip_ID`) REFERENCES `train_trip` (`Train_Trip_ID`),
  CONSTRAINT `train_order_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_order`
--

LOCK TABLES `train_order` WRITE;
/*!40000 ALTER TABLE `train_order` DISABLE KEYS */;
INSERT INTO `train_order` VALUES ('00001',1),('00002',2),('00003',3),('00004',4),('00013',5),('00013',6),('00014',7),('00014',8),('00014',9),('00015',10),('00017',21),('00017',22),('00017',23),('00018',24),('00025',25),('00025',26),('00026',27),('00026',28),('00026',29),('00022',30),('00015',11),('00022',31),('00015',12),('00022',32),('00016',13),('00028',33),('00016',14),('00028',34),('00016',15),('00028',35),('00020',16),('00032',36),('00020',17),('00032',37),('00020',18),('00032',38),('00037',54);
/*!40000 ALTER TABLE `train_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `train_order_AI` AFTER INSERT ON `train_order` FOR EACH ROW BEGIN
    call assignToTruckTrip(new.order_id);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `train_trip`
--

DROP TABLE IF EXISTS `train_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_trip` (
  `Train_Trip_ID` varchar(5) NOT NULL,
  `Date` date DEFAULT NULL,
  `Capacity_Left` decimal(5,3) DEFAULT NULL,
  `Store_ID` varchar(5) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `End_Time` time DEFAULT NULL,
  PRIMARY KEY (`Train_Trip_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `train_trip_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_trip`
--

LOCK TABLES `train_trip` WRITE;
/*!40000 ALTER TABLE `train_trip` DISABLE KEYS */;
INSERT INTO `train_trip` VALUES ('00001','2022-06-08',44.400,'00001','10:00:00','13:00:00'),('00002','2022-07-16',44.920,'00001','14:00:00','17:00:00'),('00003','2022-11-23',48.750,'00001','08:00:00','11:00:00'),('00004','2022-12-11',39.300,'00002','15:00:00','19:00:00'),('00005','2023-01-07',50.000,'00001','08:30:00','12:30:00'),('00006','2023-01-07',45.000,'00002','09:30:00','13:00:00'),('00007','2023-01-07',40.000,'00003','10:00:00','17:00:00'),('00008','2023-01-07',45.000,'00004','10:00:00','13:00:00'),('00009','2023-01-08',50.000,'00001','12:00:00','16:00:00'),('00010','2023-01-08',45.000,'00004','08:00:00','16:00:00'),('00011','2023-01-08',45.000,'00005','14:00:00','22:00:00'),('00012','2023-01-08',50.000,'00006','14:00:00','19:00:00'),('00013','2023-01-09',38.994,'00002','13:30:00','16:30:00'),('00014','2023-01-09',43.280,'00003','08:45:00','15:30:00'),('00015','2023-01-09',38.657,'00004','09:00:00','17:00:00'),('00016','2023-01-09',47.495,'00005','04:00:00','12:00:00'),('00017','2023-01-10',49.031,'00001','14:00:00','17:00:00'),('00018','2023-01-10',38.380,'00002','13:30:00','16:30:00'),('00019','2023-01-10',45.000,'00003','12:00:00','17:00:00'),('00020','2023-01-10',38.355,'00006','08:00:00','13:00:00'),('00021','2023-01-11',45.000,'00001','10:45:00','14:30:00'),('00022','2023-01-11',42.461,'00004','09:00:00','17:00:00'),('00023','2023-01-11',50.000,'00005','10:00:00','18:00:00'),('00024','2023-01-11',50.000,'00006','10:00:00','15:00:00'),('00025','2023-01-12',44.128,'00002','09:00:00','12:30:00'),('00026','2023-01-12',41.746,'00003','16:00:00','23:00:00'),('00027','2023-01-12',40.000,'00004','08:00:00','16:00:00'),('00028','2023-01-12',44.105,'00005','13:00:00','21:00:00'),('00029','2023-01-13',45.000,'00001','18:00:00','22:00:00'),('00030','2023-01-13',40.000,'00002','15:00:00','19:00:00'),('00031','2023-01-13',50.000,'00003','10:00:00','17:00:00'),('00032','2023-01-13',47.970,'00006','15:30:00','20:45:00'),('00033','2023-01-14',45.000,'00001','07:00:00','10:30:00'),('00034','2023-01-14',40.000,'00003','12:00:00','19:00:00'),('00035','2023-01-14',50.000,'00005','09:00:00','17:00:00'),('00036','2023-01-14',45.000,'00006','14:00:00','22:00:00'),('00037','2023-01-15',49.948,'00001','10:00:00','13:00:00'),('00038','2023-01-15',40.000,'00002','09:00:00','12:30:00'),('00039','2023-01-15',45.000,'00003','08:45:00','15:30:00'),('00040','2023-01-15',40.000,'00004','09:00:00','17:00:00'),('00041','2023-01-15',50.000,'00005','13:00:00','21:00:00'),('00042','2023-01-15',45.000,'00006','08:00:00','13:00:00'),('00043','2023-01-16',50.000,'00001','10:00:00','13:00:00'),('00044','2023-01-16',40.000,'00002','09:00:00','12:30:00'),('00045','2023-01-16',45.000,'00003','08:45:00','15:30:00'),('00046','2023-01-16',40.000,'00004','09:00:00','17:00:00'),('00047','2023-01-16',50.000,'00005','13:00:00','21:00:00'),('00048','2023-01-16',45.000,'00006','08:00:00','13:00:00');
/*!40000 ALTER TABLE `train_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck` (
  `Truck_ID` varchar(5) NOT NULL,
  `Store_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Truck_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `truck_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES ('00001','00001'),('00002','00001'),('00003','00001'),('00004','00002'),('00005','00002'),('00006','00003'),('00007','00003'),('00008','00003'),('00009','00004'),('00010','00004'),('00011','00005'),('00012','00005'),('00013','00005'),('00014','00006'),('00015','00006'),('00016','00007'),('00017','00007');
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_order`
--

DROP TABLE IF EXISTS `truck_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck_order` (
  `Truck_Trip_ID` mediumint DEFAULT NULL,
  `Order_ID` mediumint DEFAULT NULL,
  KEY `Truck_Trip_ID` (`Truck_Trip_ID`),
  KEY `Order_ID` (`Order_ID`),
  CONSTRAINT `truck_order_ibfk_2` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_order`
--

LOCK TABLES `truck_order` WRITE;
/*!40000 ALTER TABLE `truck_order` DISABLE KEYS */;
INSERT INTO `truck_order` VALUES (64,1),(65,2),(66,3),(67,4),(68,5),(69,6),(70,7),(71,8),(72,9),(73,10),(74,21),(75,22),(76,23),(77,24),(78,25),(79,26),(80,27),(81,28),(82,29),(83,30),(84,11),(85,31),(86,12),(87,32),(88,13),(89,33),(90,14),(91,34),(92,15),(93,35),(94,16),(95,36),(96,17),(97,37),(98,18),(99,38),(100,19),(101,39),(102,20),(103,40),(104,54);
/*!40000 ALTER TABLE `truck_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_route`
--

DROP TABLE IF EXISTS `truck_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck_route` (
  `Route_ID` varchar(5) NOT NULL,
  `Store_ID` varchar(5) DEFAULT NULL,
  `Max_time` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`Route_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `truck_route_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_route`
--

LOCK TABLES `truck_route` WRITE;
/*!40000 ALTER TABLE `truck_route` DISABLE KEYS */;
INSERT INTO `truck_route` VALUES ('00001','00001',1.5),('00002','00001',1.2),('00003','00001',1.6),('00004','00001',2.0),('00005','00001',1.8),('00006','00001',2.2),('00007','00002',1.9),('00008','00002',1.8),('00009','00002',2.2),('00010','00002',1.8),('00011','00002',1.5),('00012','00003',1.9),('00013','00003',2.4),('00014','00003',2.0),('00015','00003',2.5),('00016','00003',1.8),('00017','00003',1.5),('00018','00004',1.9),('00019','00004',1.3),('00020','00004',2.1),('00021','00004',1.8),('00022','00004',1.5),('00023','00005',1.2),('00024','00005',1.7),('00025','00005',1.6),('00026','00005',2.0),('00027','00005',1.8),('00028','00005',2.2),('00029','00006',1.8),('00030','00006',1.5),('00031','00006',2.2),('00032','00006',1.9),('00033','00007',2.4),('00034','00007',2.0),('00035','00007',1.8),('00036','00007',1.4);
/*!40000 ALTER TABLE `truck_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck_trip`
--

DROP TABLE IF EXISTS `truck_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck_trip` (
  `Truck_Trip_ID` mediumint NOT NULL AUTO_INCREMENT,
  `Driver_ID` varchar(5) DEFAULT NULL,
  `Asst_ID` varchar(5) DEFAULT NULL,
  `Truck_ID` varchar(5) DEFAULT NULL,
  `Route_ID` varchar(5) DEFAULT NULL,
  `Start_Time` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Truck_Trip_ID`),
  KEY `Driver_ID` (`Driver_ID`),
  KEY `D.Asst_ID` (`Asst_ID`),
  KEY `Route_ID` (`Route_ID`),
  KEY `Truck_ID` (`Truck_ID`),
  CONSTRAINT `truck_trip_ibfk_1` FOREIGN KEY (`Driver_ID`) REFERENCES `driver` (`Driver_ID`),
  CONSTRAINT `truck_trip_ibfk_2` FOREIGN KEY (`Asst_ID`) REFERENCES `driver_assistant` (`Asst_ID`),
  CONSTRAINT `truck_trip_ibfk_3` FOREIGN KEY (`Route_ID`) REFERENCES `truck_route` (`Route_ID`),
  CONSTRAINT `truck_trip_ibfk_4` FOREIGN KEY (`Truck_ID`) REFERENCES `truck` (`Truck_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck_trip`
--

LOCK TABLES `truck_trip` WRITE;
/*!40000 ALTER TABLE `truck_trip` DISABLE KEYS */;
INSERT INTO `truck_trip` VALUES (64,'00001','00001','00001','00001','08:00:00','2022-06-09'),(65,'00001','00001','00001','00002','08:00:00','2022-07-17'),(66,'00001','00001','00001','00003','08:00:00','2022-11-24'),(67,'00004','00004','00004','00007','08:00:00','2022-12-12'),(68,'00004','00004','00004','00008','08:00:00','2023-01-10'),(69,'00005','00005','00005','00009','08:00:00','2023-01-10'),(70,'00006','00006','00006','00012','08:00:00','2023-01-10'),(71,'00007','00007','00007','00013','08:00:00','2023-01-10'),(72,'00008','00006','00006','00014','10:00:00','2023-01-10'),(73,'00009','00008','00009','00018','08:00:00','2023-01-10'),(74,'00001','00001','00001','00004','08:00:00','2023-01-11'),(75,'00002','00002','00002','00005','08:00:00','2023-01-11'),(76,'00003','00003','00003','00006','08:00:00','2023-01-11'),(77,'00004','00004','00004','00010','08:00:00','2023-01-11'),(78,'00004','00004','00004','00011','08:00:00','2023-01-13'),(79,'00005','00005','00005','00008','08:00:00','2023-01-13'),(80,'00006','00006','00006','00015','08:00:00','2023-01-13'),(81,'00007','00007','00007','00016','08:00:00','2023-01-13'),(82,'00008','00006','00006','00017','10:00:00','2023-01-13'),(83,'00009','00008','00009','00021','08:00:00','2023-01-12'),(84,'00010','00009','00010','00019','08:00:00','2023-01-10'),(85,'00010','00009','00010','00022','08:00:00','2023-01-12'),(86,'00009','00008','00009','00020','12:00:00','2023-01-10'),(87,'00009','00008','00009','00020','12:00:00','2023-01-12'),(88,'00011','00010','00011','00023','08:00:00','2023-01-10'),(89,'00011','00010','00011','00026','08:00:00','2023-01-13'),(90,'00012','00011','00012','00024','08:00:00','2023-01-10'),(91,'00012','00011','00012','00027','08:00:00','2023-01-13'),(92,'00013','00012','00013','00025','08:00:00','2023-01-10'),(93,'00013','00012','00013','00028','08:00:00','2023-01-13'),(94,'00014','00013','00014','00029','08:00:00','2023-01-11'),(95,'00014','00013','00014','00032','08:00:00','2023-01-14'),(96,'00015','00014','00015','00030','08:00:00','2023-01-11'),(97,'00015','00014','00015','00029','08:00:00','2023-01-14'),(98,'00014','00013','00014','00031','12:00:00','2023-01-11'),(99,'00014','00013','00014','00030','12:00:00','2023-01-14'),(100,'00016','00015','00016','00033','08:00:00','2023-01-10'),(101,'00016','00015','00016','00035','08:00:00','2023-01-12'),(102,'00017','00016','00017','00034','08:00:00','2023-01-10'),(103,'00017','00016','00017','00036','08:00:00','2023-01-12'),(104,'00001','00001','00001','00005','08:00:00','2023-01-16');
/*!40000 ALTER TABLE `truck_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'supply_chain'
--

--
-- Dumping routines for database 'supply_chain'
--
/*!50003 DROP FUNCTION IF EXISTS `driverWeeklyHours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `driverWeeklyHours`(typ char(1),ID varchar(5) ,date1 date) RETURNS decimal(3,1)
    DETERMINISTIC
BEGIN
if typ="D" then
  select sum(max_time) from 
  (select Driver_ID,date,Max_time from truck_trip inner join truck_route on truck_trip.route_id=truck_route.route_id) 
  as dmaxtime where Driver_ID=ID and week(date,3)=week(date1,3) into @weeklyWorkingHours;
    return @weeklyWorkingHours;
end if;
if typ="A" then
  select sum(max_time) from 
  (select asst_id,date,Max_time from truck_trip inner join truck_route on truck_trip.route_id=truck_route.route_id) 
  as dmaxtime where asst_ID=ID and week(date,3)=week(date1,3) into @weeklyWorkingHours;
    return @weeklyWorkingHours;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addOrder`(Date1 date, C_ID mediumint, R_ID varchar(5))
begin
  insert into supply_chain.order (date,Customer_ID,Route_ID,Total_Price,Total_Capacity,Train_scheduled,truck_scheduled) values (Date1,C_ID,R_ID,0,0,0,0);
    select  LAST_INSERT_ID() as orderID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assignToTruckTrip` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assignToTruckTrip`( OID mediumint)
BEGIN

  DECLARE done INT DEFAULT FALSE;
  DECLARE TruckTripID mediumint default 0;
    
  DECLARE TruckID varchar(5) default "NA";
  DECLARE DriverID varchar(5) default "NA";
  DECLARE DriverAssID varchar(5) default "NA";
    
    Declare orderRoute varchar(5);
    Declare storeId varchar(5);
    
    # if there already exists a truck trip
    select route_id from supply_chain.order where order_id=OID into orderRoute;
    select store_id from truck_route where route_id=orderRoute into storeId;

    if (OID in (select order_id from train_order) or storeid="00007") and OID not in (select order_id from truck_order) then
    # select * from product;
    select truck_trip_id from truck_trip 
    where route_id = orderRoute
    and date>(select date from train_trip where train_trip_id=(select train_trip_id from train_order where order_id = OID)) limit 1 into TruckTripID;
        # select TruckTripID;
        
    if storeid="00007" then
    select truck_trip_id from truck_trip 
    where route_id = orderRoute
    and date>(select date from supply_chain.order where order_id=oid) limit 1 into TruckTripID;
        end if;
        
      if TruckTripID!= 0 then
      insert into truck_order values(TruckTripID,OID);
      update supply_chain.order set truck_scheduled=1 where order_id=oid;
            set done = True;
        end if;
  end if;
  
    if done=False and OID not in (select order_id from truck_order) then
    # if there is no truck trip
    set @i=8;
    
    select train_trip.date from train_trip where train_trip_id=(select train_trip_id from train_order where order_id = OID ) limit 1 into @TruckTripDate;
        
        if storeid="00007" then
      select date from supply_chain.order where order_id=oid into @TruckTripDate ;
        end if;
        
    set @TruckTripDate=date_add(@TruckTripDate,INTERVAL 1 DAY);

    ScheduleTruckTrip: LOOP
        
          set TruckID ="NA";
      set DriverID ="NA";
      set DriverAssID ="NA";
            
      if @i=20 then
        set @i=8;
        set @TruckTripDate=date_add(@TruckTripDate,INTERVAL 1 DAY);
      end if;
            
            select Driver_ID from driver 
            where Store_ID=storeid and driver_id not in 
            (select driver_id from truck_trip where date=@TruckTripDate and 
            (Start_Time=time(concat(@i-2,":00")) or Start_Time=time(concat(@i,":00")))  or 40< driverWeeklyHours("D",driver_id,date)  ) LIMIT 1 into DriverID;
            
            select Truck_ID from truck 
            where Store_ID=storeId and Truck_ID not in 
            (select Truck_ID from truck_trip where date=@TruckTripDate and Start_Time=time(concat(@i,":00"))) LIMIT 1 into TruckID;
            
            select Asst_ID from driver_assistant
            where Store_ID=storeid and Asst_ID not in
      (select Asst_ID from truck_trip where date=@TruckTripDate and 
            ((Start_Time=time(concat(@i-2,":00")) and Start_Time=time(concat(@i-4,":00"))) or Start_Time=time(concat(@i,":00"))) or 60< driverWeeklyHours("A",Asst_ID,date)  ) LIMIT 1 into DriverAssID;
            
            
            # select truckid, driverid,@i, @trucktripdate;
            
            if TruckID!="NA" and DriverID!="NA" and DriverAssID!="NA" then
      
        insert into truck_trip(Driver_ID,Asst_ID,Truck_ID,Route_ID,Start_Time,Date) values(DriverID,DriverAssID,TruckID,orderRoute,time(concat(@i,":00")), @TruckTripDate);
                insert into truck_order values(last_insert_id(),OID);
                update supply_chain.order set truck_scheduled=1 where order_id=oid;
        # insert into truck_trip values(DriverID,null,TruckID,orderRoute,time(concat(@i,":00")), @TruckTripDate);
                leave ScheduleTruckTrip;
            end if;
      
      set @i=@i+2;
    END LOOP ScheduleTruckTrip;
  end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `assignTrain` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `assignTrain`( OID mediumint )
BEGIN

	DECLARE done INT DEFAULT FALSE;
	DECLARE TrainID varchar(5) default "NA";
	DECLARE Capacityleft decimal(5,3) default 0;
	DECLARE c1 CURSOR FOR
	select Train_Trip_ID, Capacity_Left from train_trip where  store_ID in 
		(select Store_ID from truck_route where Route_ID in(select Route_ID from supply_chain.order where Order_ID=OID)) 
		and train_trip.Date>(Select Date from supply_chain.order where order_id=OID) order by Date;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	set @assignedTrain="NA";
	select total_capacity from Supply_chain.order where order_id=OID into @orderCapacity;
	OPEN c1;
	   
	addToTrainTrip: LOOP
			FETCH c1 INTO TrainID,Capacityleft;
			IF done or OID in (select Order_ID from train_order) THEN 
				LEAVE addToTrainTrip;
			END IF;
			
			if @orderCapacity<=Capacityleft THEN
				insert into train_order values(TrainID,OID);
				set capacityleft=Capacityleft-@ordercapacity;
				update train_trip set Capacity_Left=capacityleft where Train_Trip_ID=TrainID;
                update supply_chain.order set train_scheduled=1 where order_id=oid;
				set done=TRUE;
			end If;
	END LOOP addToTrainTrip;
	CLOSE c1;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `daysTodeliver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `daysTodeliver`(OID mediumint)
begin 
  select date from supply_chain.order where order_id=OID into @orderDate;
  select date from truck_trip where truck_trip_id=(select truck_trip_id from truck_order where order_id=oid) into @deliveryDate;
  
  select datediff(@deliverydate,@orderDate) as "Arrives_In";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `monthlyWorkingHours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `monthlyWorkingHours`(m INT, y char(4), typ char(1))
BEGIN
declare startDate varchar(10);
declare EndDate varchar(10);

set startDate=CONCAT(y,"-01-01"); 
set EndDate=CONCAT(y,"-12-31"); 

if (typ="D") then
  select name as Name,driver.Driver_ID,Working_Hours from (select driver_id, sum(max_time) as Working_Hours from 
    (select driver_id , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where month(date)=m and date>=startdate and date<=enddate  
    group by Driver_ID) as wh left join driver on wh.driver_id=driver.driver_id;
end if;
if (typ="A") then
  select name as Name,driver_assistant.Asst_ID,Working_Hours from (select Asst_ID, sum(max_time) as Working_Hours from 
    (select Asst_ID , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where month(date)=m and date>=startdate and date<=enddate  
    group by Asst_ID) as wh left join driver_assistant on wh.Asst_ID=driver_assistant.Asst_ID;
end if;
if (typ="T") then
  select Truck_ID, sum(max_time) as Working_Hours from 
    (select Truck_ID , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where month(date)=m and date>=startdate and date<=enddate  
    group by Truck_ID;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quarterlySales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quarterlySales`(q INT, y char(4))
BEGIN
declare startDate varchar(10);
declare dateString varchar(10);
declare monthDate varchar(6);

set dateString=y;

if (q=1) then
set startDate=CONCAT(y,"-01-01"); 
set monthdate="-03-31";
end if;

if (q=2) then
set startDate=CONCAT(y,"-04-01"); 
set monthdate="-06-30";
end if;

if (q=3) then
set startDate=CONCAT(y,"-07-01"); 
set monthdate="-09-30";
end if;

if (q=4) then
set startDate=CONCAT(y,"-10-01"); 
set monthdate="-12-31";
end if;


set dateString=CONCAT(dateString,monthdate);
select Product_ID,Product_Name,sum(Quantity) as Quantity,sum(Quantity)*Price as Total_Sales_Price from 
(select Product.Product_ID,Product_Name,Order_id,Quantity,Price from product_order left join product on product.Product_ID=product_order.Product_ID) as tab
where order_id in (select order_id from supply_chain.order where date>=startDate and date<=dateString) group by product_id order by product_id asc; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quarterlyWorkingHours` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quarterlyWorkingHours`(q INT, y char(4), typ char(1))
BEGIN
declare startDate varchar(10);
declare EndDate varchar(10);
declare startweek int;
declare endweek int;

set startDate=CONCAT(y,"-01-01"); 
set EndDate=CONCAT(y,"-12-31"); 

if (q=1) then
set startweek=1; 
set endweek=13;
end if;

if (q=2) then
set startweek=14; 
set endweek=27;
end if;

if (q=3) then
set startweek=28; 
set endweek=40;
end if;

if (q=4) then
set startweek=41; 
set endweek=53;
end if;

if (typ="D") then
	select name as Name,driver.Driver_ID,Working_Hours from (select driver_id, sum(max_time) as Working_Hours from 
    (select driver_id , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where startweek <=week(date,3) and endweek >=week(date,3) and date>=startdate and date<=enddate  
    group by Driver_ID) as wh left join driver on wh.driver_id=driver.driver_id;
end if;
if (typ="A") then
	select name as Name,driver_assistant.Asst_ID,Working_Hours from (select Asst_ID, sum(max_time) as Working_Hours from 
    (select Asst_ID , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where startweek <=week(date,3) and endweek >=week(date,3) and date>=startdate and date<=enddate  
    group by Asst_ID) as wh left join driver_assistant on wh.Asst_ID=driver_assistant.Asst_ID;
end if;
if (typ="T") then
	select Truck_ID, sum(max_time) as Working_Hours from 
    (select Truck_ID , Date, max_time from truck_trip left join truck_route on truck_trip.Route_ID=truck_route.Route_ID) as tab 
    where startweek <=week(date,3) and endweek >=week(date,3) and date>=startdate and date<=enddate  
    group by Truck_ID;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SalesAccordingToCity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SalesAccordingToCity`(y char(4), city varchar(15))
BEGIN
declare startDate varchar(10);
declare enddate varchar(10);
set startDate=CONCAT(y,"-01-01"); 
set endDate=CONCAT(y,"-12-31"); 
if city="Colombo" then set @storeid="00001"; end if;
if city="Negombo" then set @storeid="00002"; end if;
if city="Galle" then set @storeid="00003"; end if;
if city="Matara" then set @storeid="00004"; end if;
if city="Jaffna" then set @storeid="00005"; end if;
if city="Trincomalee" then set @storeid="00006"; end if;
if city="Kandy" then set @storeid="00007"; end if;

select Product_ID, Product_Name, sum(Quantity) as "Quantity", sum(Quantity)*Price as "Total_Sales" from 
(select Product.Product_ID,Product_Name,Order_id,Quantity,Price from product_order left join product on product.Product_ID=product_order.Product_ID) as tab
where order_id in (select order_id from supply_chain.order where date>=startDate and date<=enddate and route_id in (select route_id from truck_route where store_id=@storeid)) group by product_id order by product_id asc; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SalesAccordingToRoute` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SalesAccordingToRoute`(y char(4), rt varchar(5))
BEGIN
declare startDate varchar(10);
declare enddate varchar(10);
set startDate=CONCAT(y,"-01-01"); 
set endDate=CONCAT(y,"-12-31"); 

select Product_ID,Product_Name ,sum(Quantity) as "Quantity",sum(Quantity)*Price as 'Total_Sales' from 
(select Product.Product_ID,Product_Name,Order_id,Quantity,Price from product_order left join product on product.Product_ID=product_order.Product_ID) as tab
where order_id in (select order_id from supply_chain.order where date>=startDate and date<=enddate and route_id=rt) group by product_id; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Schedule_Orders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Schedule_Orders`()
BEGIN
  DECLARE OID mediumint;
    DECLARE done INT DEFAULT FALSE;
  DECLARE c1 CURSOR FOR
  select Order_ID from supply_chain.order;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
  OPEN c1;
     
  L1: LOOP
      FETCH c1 INTO OID;
      IF done THEN 
        LEAVE L1;
      END IF;
      
      if OID not in (select Order_ID from train_order) THEN
        call assignTrain(OID);
      end If;
            
            if (select store_id from truck_route where route_id=(select route_id from supply_chain.order where order_id=OID))="00007" then
                call assignToTruckTrip(OID);
            end if;
            
  END LOOP L1;
  CLOSE c1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setTrain_Order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setTrain_Order`()
BEGIN
	DECLARE OID mediumint;
    DECLARE done INT DEFAULT FALSE;
	DECLARE c1 CURSOR FOR
	select Order_ID from supply_chain.order;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
	OPEN c1;
	   
	L1: LOOP
			FETCH c1 INTO OID;
			IF done THEN 
				LEAVE L1;
			END IF;
			
			if OID not in (select Order_ID from train_order) THEN
				call assignTrain(OID);
			end If;
	END LOOP L1;
	CLOSE c1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-21 22:48:23
