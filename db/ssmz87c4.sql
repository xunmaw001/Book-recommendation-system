-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmz87c4
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssmz87c4`
--

/*!40000 DROP DATABASE IF EXISTS `ssmz87c4`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmz87c4` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmz87c4`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897321077 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-04-25 14:31:21',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-04-25 14:31:21',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-04-25 14:31:21',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-04-25 14:31:21',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-04-25 14:31:21',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-04-25 14:31:21',16,'宇宙银河系月球1号','月某','13823888886','是'),(1650897321076,'2022-04-25 14:35:20',1650897202017,'北京市朝阳区**小区25栋1803房','李密','15807550000','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'rementushu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897259300 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1650897552455.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussrementushu`
--

DROP TABLE IF EXISTS `discussrementushu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussrementushu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='热门图书评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussrementushu`
--

LOCK TABLES `discussrementushu` WRITE;
/*!40000 ALTER TABLE `discussrementushu` DISABLE KEYS */;
INSERT INTO `discussrementushu` VALUES (101,'2022-04-25 14:31:21',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-25 14:31:21',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-25 14:31:21',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-25 14:31:21',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-25 14:31:21',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-25 14:31:21',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussrementushu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshuji`
--

DROP TABLE IF EXISTS `discussshuji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshuji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897639628 DEFAULT CHARSET=utf8 COMMENT='书籍评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshuji`
--

LOCK TABLES `discussshuji` WRITE;
/*!40000 ALTER TABLE `discussshuji` DISABLE KEYS */;
INSERT INTO `discussshuji` VALUES (91,'2022-04-25 14:31:21',1,1,'用户名1','评论内容1','回复内容1'),(92,'2022-04-25 14:31:21',2,2,'用户名2','评论内容2','回复内容2'),(93,'2022-04-25 14:31:21',3,3,'用户名3','评论内容3','回复内容3'),(94,'2022-04-25 14:31:21',4,4,'用户名4','评论内容4','回复内容4'),(95,'2022-04-25 14:31:21',5,5,'用户名5','评论内容5','回复内容5'),(96,'2022-04-25 14:31:21',6,6,'用户名6','评论内容6','回复内容6'),(1650897639627,'2022-04-25 14:40:39',22,1650897202017,'11','测试',NULL);
/*!40000 ALTER TABLE `discussshuji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'rementushu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `goodtype` varchar(200) DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897338011 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1650897337577,'2022-04-25 14:35:37','202242522353570614323','shuji',1650897202017,22,'书籍名称2','upload/shuji_fengmian2.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','北京市朝阳区**小区25栋1803房','15807550000','李密',NULL,'作者2'),(1650897337964,'2022-04-25 14:35:36','202242522353566784611','shuji',1650897202017,21,'书籍名称1','upload/shuji_fengmian1.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','北京市朝阳区**小区25栋1803房','15807550000','李密',NULL,'作者1'),(1650897338010,'2022-04-25 14:35:37','202242522353575601090','rementushu',1650897202017,42,'书籍名称2','upload/rementushu_fengmian2.jpg',1,99.9,99.9,99.9,99.9,1,'已完成','北京市朝阳区**小区25栋1803房','15807550000','李密',NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rementushu`
--

DROP TABLE IF EXISTS `rementushu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rementushu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) NOT NULL COMMENT '书籍名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shujifenlei` varchar(200) NOT NULL COMMENT '书籍分类',
  `bufenneirong` longtext COMMENT '部分内容',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shangshishijian` date DEFAULT NULL COMMENT '上市时间',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='热门图书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rementushu`
--

LOCK TABLES `rementushu` WRITE;
/*!40000 ALTER TABLE `rementushu` DISABLE KEYS */;
INSERT INTO `rementushu` VALUES (41,'2022-04-25 14:31:21','书籍名称1','upload/rementushu_fengmian1.jpg','经济','<p>部分内容1</p>','作者1','出版社1','数量1','2022-04-25','评分1',1,1,2,99.9),(42,'2022-04-25 14:31:21','书籍名称2','upload/rementushu_fengmian2.jpg','书籍分类2','部分内容2','作者2','出版社2','数量2','2022-04-25','评分2',2,2,5,99.9),(43,'2022-04-25 14:31:21','书籍名称3','upload/rementushu_fengmian3.jpg','书籍分类3','部分内容3','作者3','出版社3','数量3','2022-04-25','评分3',3,3,3,99.9),(44,'2022-04-25 14:31:21','书籍名称4','upload/rementushu_fengmian4.jpg','书籍分类4','部分内容4','作者4','出版社4','数量4','2022-04-25','评分4',4,4,4,99.9),(45,'2022-04-25 14:31:21','书籍名称5','upload/rementushu_fengmian5.jpg','书籍分类5','部分内容5','作者5','出版社5','数量5','2022-04-25','评分5',5,5,5,99.9),(46,'2022-04-25 14:31:21','书籍名称6','upload/rementushu_fengmian6.jpg','书籍分类6','部分内容6','作者6','出版社6','数量6','2022-04-25','评分6',6,6,6,99.9);
/*!40000 ALTER TABLE `rementushu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shuji`
--

DROP TABLE IF EXISTS `shuji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shuji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujimingcheng` varchar(200) NOT NULL COMMENT '书籍名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shujifenlei` varchar(200) NOT NULL COMMENT '书籍分类',
  `bufenneirong` longtext COMMENT '部分内容',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `pingjia` varchar(200) DEFAULT NULL COMMENT '评价',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897471194 DEFAULT CHARSET=utf8 COMMENT='书籍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shuji`
--

LOCK TABLES `shuji` WRITE;
/*!40000 ALTER TABLE `shuji` DISABLE KEYS */;
INSERT INTO `shuji` VALUES (21,'2022-04-25 14:31:21','书籍名称1','upload/shuji_fengmian1.jpg','经济','<p>部分内容1</p>','作者1','出版社1','数量1','2022-04-25','评价1',2,1,'2022-04-25 22:38:32',8,99.9),(22,'2022-04-25 14:31:21','书籍名称2','upload/shuji_fengmian2.jpg','书籍分类2','部分内容2','作者2','出版社2','数量2','2022-04-25','评价2',2,2,'2022-04-25 22:40:43',7,99.9),(23,'2022-04-25 14:31:21','书籍名称3','upload/shuji_fengmian3.jpg','书籍分类3','部分内容3','作者3','出版社3','数量3','2022-04-25','评价3',3,3,'2022-04-25 22:31:21',3,99.9),(24,'2022-04-25 14:31:21','书籍名称4','upload/shuji_fengmian4.jpg','书籍分类4','部分内容4','作者4','出版社4','数量4','2022-04-25','评价4',4,4,'2022-04-25 22:31:21',4,99.9),(25,'2022-04-25 14:31:21','书籍名称5','upload/shuji_fengmian5.jpg','书籍分类5','部分内容5','作者5','出版社5','数量5','2022-04-25','评价5',5,5,'2022-04-25 22:31:21',5,99.9),(26,'2022-04-25 14:31:21','书籍名称6','upload/shuji_fengmian6.jpg','书籍分类6','部分内容6','作者6','出版社6','数量6','2022-04-25','评价6',6,6,'2022-04-25 22:31:21',6,99.9),(1650897471193,'2022-04-25 14:37:50','测试','upload/1650897449701.jpg','书籍分类1','<p>测试</p>','测试','测试','2','2022-04-25','测试',0,0,NULL,0,25);
/*!40000 ALTER TABLE `shuji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shujifenlei`
--

DROP TABLE IF EXISTS `shujifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shujifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shujifenlei` varchar(200) DEFAULT NULL COMMENT '书籍分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='书籍分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shujifenlei`
--

LOCK TABLES `shujifenlei` WRITE;
/*!40000 ALTER TABLE `shujifenlei` DISABLE KEYS */;
INSERT INTO `shujifenlei` VALUES (31,'2022-04-25 14:31:21','仙侠'),(32,'2022-04-25 14:31:21','言情'),(33,'2022-04-25 14:31:21','经济'),(34,'2022-04-25 14:31:21','书籍分类4'),(35,'2022-04-25 14:31:21','书籍分类5'),(36,'2022-04-25 14:31:21','书籍分类6');
/*!40000 ALTER TABLE `shujifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897254590 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1650897220933,'2022-04-25 14:33:40',1650897202017,21,'shuji','书籍名称1','upload/shuji_fengmian1.jpg','1','作者1'),(1650897226825,'2022-04-25 14:33:46',1650897202017,21,'shuji','书籍名称1','upload/shuji_fengmian1.jpg','21',NULL),(1650897241672,'2022-04-25 14:34:01',1650897202017,22,'shuji','书籍名称2','upload/shuji_fengmian2.jpg','1','作者2'),(1650897243280,'2022-04-25 14:34:02',1650897202017,22,'shuji','书籍名称2','upload/shuji_fengmian2.jpg','21',NULL),(1650897254589,'2022-04-25 14:34:14',1650897202017,42,'rementushu','书籍名称2','upload/rementushu_fengmian2.jpg','1',NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1650897202017,'11','yonghu','用户','z0f5w6sutcwnqpirtrza1xmmwhy5kk8p','2022-04-25 14:33:31','2022-04-25 15:40:00'),(2,1,'abo','users','管理员','5cpipye8xjqty14roswxwdc99m6xtwwe','2022-04-25 14:36:23','2022-04-25 15:36:24');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-25 14:31:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650897202018 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (12,'2022-04-25 14:31:21','用户账号2','用户姓名2','123456','女','13823888882','upload/yonghu_touxiang2.jpg',100),(13,'2022-04-25 14:31:21','用户账号3','用户姓名3','123456','男','13823888883','upload/yonghu_touxiang3.jpg',100),(14,'2022-04-25 14:31:21','用户账号4','用户姓名4','123456','男','13823888884','upload/yonghu_touxiang4.jpg',100),(15,'2022-04-25 14:31:21','用户账号5','用户姓名5','123456','男','13823888885','upload/yonghu_touxiang5.jpg',100),(16,'2022-04-25 14:31:21','用户账号6','用户姓名6','123456','男','13823888886','upload/yonghu_touxiang6.jpg',100),(1650897202017,'2022-04-25 14:33:22','11','李密','11','男','15807550000','',9700.3);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02 14:32:25
