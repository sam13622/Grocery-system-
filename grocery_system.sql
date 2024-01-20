-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: grocery_system
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'2020-05-16 00:46:08','admin@gmail.com','java@1991','admin');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('17105');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount_price` varchar(200) DEFAULT NULL,
  `quantity` int NOT NULL,
  `total_price` varchar(200) DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CART_CUST_FK` (`customer_id`),
  KEY `CART_PROD_FK` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcart`
--

LOCK TABLES `tblcart` WRITE;
/*!40000 ALTER TABLE `tblcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'2020-07-25 14:15:20','kadamk33@gmail.com','Hi, This is testing email contacts.','Kishor Kadam','Testing'),(4,'2020-10-06 04:01:28','javed.tamboli@gmail.com','This is awesome online shopping website.','Javed Tamboli','About website');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `valid` varchar(50) DEFAULT NULL,
  `pin_code` varchar(255) NOT NULL,
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (13962,'Bhalawani, Ahmednagar','2020-09-27 04:01:00','kadamk33@gmail.com','Male','Kishor Kadam','java@1991','+917276763516','6T6','414103'),(17611,'Charoli, Pune.','2020-09-27 04:01:33','javed.tamboli@gmail.com','Male','Javed Tamboli','java@123','8369651475','UZF','411022'),(12618,'Bhandgaon, Ahmednagar','2020-09-27 04:02:00','sagarkharmale@gmail.com','Male','Sagar Kharmale','sagar@123','8456571542','CR5','414103'),(10755,'Akurdi, Pune','2020-09-27 04:02:21','shashibhure33@yahoo.com','Male','Shashi Bhure','shashi@123','9741256358','2UR','411033'),(17279,'Kharwandi, Newasa,Ahmednagar','2020-09-27 04:03:02','30arunpandit@gmail.com','Male','Arun Pandit','arun@1234','8265686325','WSM','411055'),(14206,'Kalkup Road, Bhalawani, Ahmednagar','2020-10-05 13:21:00','aniketkadam33@yahoomail.com','Male','Aniket Kadam','aniket@123','8985236965','IQV','414103'),(12627,'Gevrai, Beed.','2020-10-05 13:16:41','govindraut780@yahoomail.com','Male','Govind Raut','govind@123','9858563214','11G','477502');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_no` int DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `product_selling_price` varchar(100) DEFAULT NULL,
  `product_total_price` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
INSERT INTO `tblorders` VALUES (1,1001,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','salt.jpg','Tata Salt',2,'19','18','36.0','Pending','2022-01-04 10:44:28','COD',1),(2,1002,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','sunflower-oil.jpg','Sunflower Oil',1,'810','795','795','Deliver','2022-01-04 10:44:28','COD',1),(3,1003,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','sugar.png','Sugar',1,'39','38','38','Pending','2022-01-04 10:44:28','COD',1),(4,1004,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','vim-bar.jpeg','Vim Bar',1,'30','29','29','Pending','2022-01-04 10:44:28','COD',1),(5,2005,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','vim-bar.jpeg','Vim Bar',1,'30','29','29','Pending','2022-01-04 11:04:37','COD',2),(6,2006,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','Green Moong.jpg','Green Moong',5,'136','135','675.0','Pending','2022-01-04 11:04:38','COD',2),(7,2007,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','coffee.jpg','Nescafe Coffee',1,'310','308','308','Pending','2022-01-04 11:04:38','COD',2),(8,3008,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','coffee.jpg','Nescafe Coffee',9,'310','308','2772.0','Deliver','2022-01-17 09:12:55','COD',3),(9,3009,'Kishor Kadam','+917276763516','kadamk33@gmail.com','Bhalawani, Ahmednagar','Home','414103','Green Moong.jpg','Green Moong',2,'136','135','270.0','Pending','2022-01-17 09:12:56','COD',3);
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (1,'Active','UU8','2022-01-04 10:15:26','Chana Dal','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/Chana.jpg','Chana.jpg','Chana Dal','108','110','Grocery Product'),(2,'Active','9JO','2022-01-04 10:17:06','Green Moong','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/Green Moong.jpg','Green Moong.jpg','Green Moong','135','136','Grocery Product'),(3,'Active','XW7','2022-01-04 10:21:09','Tea Sugar','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/sugar.png','sugar.png','Sugar','38','39','Grocery Product'),(4,'Active','TP8','2022-01-04 10:23:37','Eating Rice','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/rice.jpeg','rice.jpeg','Rice','80','85','Grocery Product'),(5,'Active','HQZ','2022-01-04 10:25:36','Toor dal','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/toor-dal.jpg','toor-dal.jpg','Toor Dal','114','115','Grocery Product'),(6,'Active','EU5','2022-01-04 10:27:13','Eating oil','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/sunflower-oil.jpg','sunflower-oil.jpg','Sunflower Oil','795','810','Grocery Product'),(7,'Active','61J','2022-01-04 10:28:28','Amol Ghee','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/ghee.jpg','ghee.jpg','Ghee','250','255','Grocery Product'),(8,'Active','W87','2022-01-04 10:29:43','Olive oil','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/Olive-Oil.jpeg','Olive-Oil.jpeg','Olive Oil','190','192','Grocery Product'),(9,'Active','IMQ','2022-01-04 10:30:48','Tata salt','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/salt.jpg','salt.jpg','Tata Salt','18','19','Grocery Product'),(10,'Active','OYG','2022-01-04 10:32:24','Coffee','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/coffee.jpg','coffee.jpg','Nescafe Coffee','308','310','Grocery Product'),(11,'Active','6P2','2022-01-04 10:35:30','Cashews nuts','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/cashews-nuts.jpg','cashews-nuts.jpg','Nuts','950','975','Grocery Product'),(12,'Active','0W2','2022-01-04 10:37:31','Popcorn','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/popcorn.jpg','popcorn.jpg','Popcorn','39','40','Grocery Product'),(13,'Active','0T3','2022-01-04 10:40:42','Pots cleaning soap','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/vim-bar.jpeg','vim-bar.jpeg','Vim Bar','29','30','Grocery Product'),(14,'Active','U96','2022-01-04 10:41:38','Bath soap','F:/project-workspace/OnlineGroceryShopSystem/WebContent/uploads/lux-soap.jpg','lux-soap.jpg','Lux Soap','95','98','Grocery Product');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-15 14:52:04
