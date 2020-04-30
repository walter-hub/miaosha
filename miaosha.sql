-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: miaosha
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '"',
  `price` double NOT NULL DEFAULT '0',
  `description` varchar(500) NOT NULL DEFAULT '"',
  `sales` int(11) NOT NULL DEFAULT '0',
  `img_url` varchar(500) NOT NULL DEFAULT '"',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'iphone9',6000,'特别优惠',103,'https://bkimg.cdn.bcebos.com/pic/9213b07eca8065380cd75aa81395b644ad345982247d?x-bce-process=image/resize,m_lfit,w_220,h_220,limit_1'),(2,'iphone8',5610,'特别优惠',88,'https://2a.zol-img.com.cn/product/186_320x240/516/ceiRalwS6Cv2.jpg'),(3,'小米10',4000,'超级牛逼',77,'http://cdn.cnbj1.fds.api.mi-img.com/mi-mall/b24947bb9bc861edcd6a6603c35a1005.jpg?w=800&h=532');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stock`
--

DROP TABLE IF EXISTS `item_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stock`
--

LOCK TABLES `item_stock` WRITE;
/*!40000 ALTER TABLE `item_stock` DISABLE KEYS */;
INSERT INTO `item_stock` VALUES (1,798,1),(2,100,2),(3,500,3);
/*!40000 ALTER TABLE `item_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_info` (
  `id` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  `item_price` double NOT NULL DEFAULT '0',
  `amount` int(64) NOT NULL DEFAULT '0',
  `order_price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES ('2020042300000000',9,1,1,200,0,0),('2020042300000100',9,1,1,200,0,0),('2020043000000200',10,1,1,200,1,200),('2020043000000300',14,1,1,200,1,200);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo`
--

DROP TABLE IF EXISTS `promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_name` varchar(255) NOT NULL DEFAULT '"',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `promo_item_price` double NOT NULL DEFAULT '0',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `promo_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo`
--

LOCK TABLES `promo` WRITE;
/*!40000 ALTER TABLE `promo` DISABLE KEYS */;
INSERT INTO `promo` VALUES (1,'iphone9抢购',1,200,'2020-04-22 00:00:00','2021-04-25 00:00:00',0),(2,'iphone8抢购',2,300,'2020-04-22 00:00:00','2021-04-25 00:00:00',0),(3,'小米9',3,500,'2020-04-22 00:00:00','2021-04-25 00:00:00',0);
/*!40000 ALTER TABLE `promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_info`
--

DROP TABLE IF EXISTS `sequence_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence_info` (
  `name` varchar(255) NOT NULL,
  `current_value` int(11) NOT NULL DEFAULT '0',
  `step` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_info`
--

LOCK TABLES `sequence_info` WRITE;
/*!40000 ALTER TABLE `sequence_info` DISABLE KEYS */;
INSERT INTO `sequence_info` VALUES ('order_info',4,1);
/*!40000 ALTER TABLE `sequence_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_log`
--

DROP TABLE IF EXISTS `stock_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_log` (
  `stock_log_id` varchar(64) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1表示初始状态\n2表示下单扣减成功\n3表示下单回滚',
  PRIMARY KEY (`stock_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_log`
--

LOCK TABLES `stock_log` WRITE;
/*!40000 ALTER TABLE `stock_log` DISABLE KEYS */;
INSERT INTO `stock_log` VALUES ('09de788dbb6e467090f6d1cdca532816',1,1,1),('218d37c65a9144b29a3505a7c11a6e80',1,1,1),('2d1d63b21c65449982fdf877ce27b4dc',1,1,1),('4e600b06714b45268b0aba7831e90fc4',1,1,1);
/*!40000 ALTER TABLE `stock_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '1' COMMENT '1代表男性2代表女性',
  `name` varchar(64) NOT NULL DEFAULT '"',
  `telphone` varchar(255) NOT NULL DEFAULT '"',
  `register_mode` varchar(255) NOT NULL DEFAULT '"',
  `third_party_id` varchar(64) NOT NULL DEFAULT '"',
  PRIMARY KEY (`id`),
  UNIQUE KEY `telephone_UNIQUE` (`telphone`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (1,1,30,'yuqi','13667144936','bytelephong',''),(2,1,23,'2313','13667144930','byphone','\"'),(7,1,21,'wqwe','13667144939','byphone','\"'),(8,1,33,'scs','13667144931','byphone','\"'),(9,1,21,'3221','12345678123','byTelephone','\"'),(10,1,21,'qwd','12345654321','byphone','\"'),(12,1,2,'fe','12341234123','byphone','\"'),(14,1,12,'dwq','12345123451','byphone','\"');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_password`
--

DROP TABLE IF EXISTS `user_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrpt_password` varchar(128) CHARACTER SET latin1 NOT NULL DEFAULT '"' COMMENT '"',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_password`
--

LOCK TABLES `user_password` WRITE;
/*!40000 ALTER TABLE `user_password` DISABLE KEYS */;
INSERT INTO `user_password` VALUES (1,'iuhyugutf',1),(2,'NTYxNjU=',2),(5,'MTIzNA==',7),(6,'MTIzNDU=',8),(7,'MTIz',9),(8,'ICy5YqxZB1uWSwcVLSNLcA==',10),(9,'ICy5YqxZB1uWSwcVLSNLcA==',12),(10,'ICy5YqxZB1uWSwcVLSNLcA==',14);
/*!40000 ALTER TABLE `user_password` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 11:27:20
