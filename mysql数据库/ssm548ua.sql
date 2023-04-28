-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm548ua
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-11 05:28:57',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-11 05:28:57',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-11 05:28:57',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-11 05:28:57',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-11 05:28:57',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-11 05:28:57',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm548ua/upload/1615441132342.jpg'),(2,'picture2','http://localhost:8080/ssm548ua/upload/1615441141402.jpeg'),(3,'picture3','http://localhost:8080/ssm548ua/upload/1615441150060.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingleixing`
--

DROP TABLE IF EXISTS `dianyingleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615440991491 DEFAULT CHARSET=utf8 COMMENT='电影类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingleixing`
--

LOCK TABLES `dianyingleixing` WRITE;
/*!40000 ALTER TABLE `dianyingleixing` DISABLE KEYS */;
INSERT INTO `dianyingleixing` VALUES (31,'2021-03-11 05:28:57','爱情片'),(32,'2021-03-11 05:28:57','动作片'),(33,'2021-03-11 05:28:57','动漫片'),(34,'2021-03-11 05:28:57','文艺片'),(1615440991490,'2021-03-11 05:36:30','喜剧片');
/*!40000 ALTER TABLE `dianyingleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingpingjia`
--

DROP TABLE IF EXISTS `dianyingpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dianyingpingfen` varchar(200) DEFAULT NULL COMMENT '电影评分',
  `dianyingpingjia` longtext COMMENT '电影评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441747906 DEFAULT CHARSET=utf8 COMMENT='电影评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingpingjia`
--

LOCK TABLES `dianyingpingjia` WRITE;
/*!40000 ALTER TABLE `dianyingpingjia` DISABLE KEYS */;
INSERT INTO `dianyingpingjia` VALUES (61,'2021-03-11 05:28:57','订单编号1','电影名称1','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian1.jpg','1','电影评价1','2021-03-11','用户名1','是','',1),(62,'2021-03-11 05:28:57','订单编号2','电影名称2','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian2.jpg','1','电影评价2','2021-03-11','用户名2','是','',2),(63,'2021-03-11 05:28:57','订单编号3','电影名称3','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian3.jpg','1','电影评价3','2021-03-11','用户名3','是','',3),(64,'2021-03-11 05:28:57','订单编号4','电影名称4','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian4.jpg','1','电影评价4','2021-03-11','用户名4','是','',4),(65,'2021-03-11 05:28:57','订单编号5','电影名称5','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian5.jpg','1','电影评价5','2021-03-11','用户名5','是','',5),(66,'2021-03-11 05:28:57','订单编号6','电影名称6','http://localhost:8080/ssm548ua/upload/dianyingpingjia_tupian6.jpg','1','电影评价6','2021-03-11','用户名6','是','',6),(1615441274481,'2021-03-11 05:41:14','202131113393367625863 ','你好，李焕英','http://localhost:8080/ssm548ua/upload/1615441264200.jpg','10','很感人的电影','2021-03-11','1','是','感谢支持',1615440893512),(1615441747905,'2021-03-11 05:49:06','202131113465099005379 ','你好，李焕英','http://localhost:8080/ssm548ua/upload/1615441709995.jpg','10','前面喝水笑喷把口罩打湿，后面眼泪打湿口罩，太感人了。','2021-03-12','3','是','感谢支持',1615441422953);
/*!40000 ALTER TABLE `dianyingpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dianyingxinxi`
--

DROP TABLE IF EXISTS `dianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `yingyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '影院名称',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441077980 DEFAULT CHARSET=utf8 COMMENT='电影信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dianyingxinxi`
--

LOCK TABLES `dianyingxinxi` WRITE;
/*!40000 ALTER TABLE `dianyingxinxi` DISABLE KEYS */;
INSERT INTO `dianyingxinxi` VALUES (51,'2021-03-11 05:28:57','电影名称1','动作片','http://localhost:8080/ssm548ua/upload/1615440741135.jpg','导演1','主演1','2021-03-11 13:28:57','片长1','','<p>电影简介1</p>','影院名称1','放映厅1','2021-03-11 13:28:57','2021-03-11 13:32:09',2,99.9,20,'1,3,5,7,9'),(53,'2021-03-11 05:28:57','电影名称3','动漫片','http://localhost:8080/ssm548ua/upload/1615440764237.jpg','导演3','主演3','2021-03-11 13:28:57','片长3','','<p>电影简介3</p>','影院名称3','放映厅3','2021-03-11 13:28:57','2021-03-11 13:32:37',4,99.9,20,'1,3,5,7,9'),(54,'2021-03-11 05:28:57','电影名称4','文艺片','http://localhost:8080/ssm548ua/upload/1615440776191.jpg','导演4','主演4','2021-03-11 13:28:57','片长4','','<p>电影简介4</p>','影院名称4','放映厅4','2021-03-11 13:28:57','2021-03-11 13:32:49',5,99.9,20,'1,3,5,7,9'),(55,'2021-03-11 05:28:57','电影名称5','文艺片','http://localhost:8080/ssm548ua/upload/1615440787277.jpg','导演5','主演5','2021-03-11 13:28:57','片长5','','<p>电影简介5</p>','影院名称5','放映厅5','2021-03-11 13:28:57','2021-03-11 13:45:22',12,99.9,20,'1,3,5,7,9'),(56,'2021-03-11 05:28:57','电影名称6','爱情片','http://localhost:8080/ssm548ua/upload/1615440799716.jpg','导演6','主演6','2021-03-11 13:28:57','片长6','','<p>电影简介6</p>','影院名称6','放映厅6','2021-03-11 13:28:57','2021-03-11 13:33:11',7,99.9,20,'1,3,5,7,9'),(1615441077979,'2021-03-11 05:37:56','你好，李焕英','喜剧片','http://localhost:8080/ssm548ua/upload/1615441014316.jpg','贾玲','贾玲，张小斐','2021-02-12 08:00:00','128分钟','http://localhost:8080/ssm548ua/upload/1615441040110.mp4','<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>','大地影院','1号厅','2021-03-12 10:00:00','2021-03-11 13:49:15',5,45,30,'1,2,3,,4,11,12,14,15,17,18');
/*!40000 ALTER TABLE `dianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdianyingxinxi`
--

DROP TABLE IF EXISTS `discussdianyingxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdianyingxinxi`
--

LOCK TABLES `discussdianyingxinxi` WRITE;
/*!40000 ALTER TABLE `discussdianyingxinxi` DISABLE KEYS */;
INSERT INTO `discussdianyingxinxi` VALUES (121,'2021-03-11 05:28:57',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-11 05:28:57',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-11 05:28:57',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-11 05:28:57',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-11 05:28:57',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-11 05:28:57',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussdianyingxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyingyuanxinxi`
--

DROP TABLE IF EXISTS `discussyingyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441554772 DEFAULT CHARSET=utf8 COMMENT='影院信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyingyuanxinxi`
--

LOCK TABLES `discussyingyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussyingyuanxinxi` DISABLE KEYS */;
INSERT INTO `discussyingyuanxinxi` VALUES (111,'2021-03-11 05:28:57',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-11 05:28:57',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-11 05:28:57',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-11 05:28:57',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-11 05:28:57',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-11 05:28:57',6,6,'用户名6','评论内容6','回复内容6'),(1615441554771,'2021-03-11 05:45:53',1615440984220,1615441422953,'3','很不错的影院','');
/*!40000 ALTER TABLE `discussyingyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyingting`
--

DROP TABLE IF EXISTS `fangyingting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441000070 DEFAULT CHARSET=utf8 COMMENT='放映厅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyingting`
--

LOCK TABLES `fangyingting` WRITE;
/*!40000 ALTER TABLE `fangyingting` DISABLE KEYS */;
INSERT INTO `fangyingting` VALUES (41,'2021-03-11 05:28:57','放映厅1'),(42,'2021-03-11 05:28:57','放映厅2'),(43,'2021-03-11 05:28:57','放映厅3'),(44,'2021-03-11 05:28:57','放映厅4'),(45,'2021-03-11 05:28:57','放映厅5'),(46,'2021-03-11 05:28:57','放映厅6'),(1615441000069,'2021-03-11 05:36:39','1号厅');
/*!40000 ALTER TABLE `fangyingting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441121496 DEFAULT CHARSET=utf8 COMMENT='电影资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-11 05:28:57','标题1','简介1','http://localhost:8080/ssm548ua/upload/1615440811395.jpg','<p>内容1</p>'),(102,'2021-03-11 05:28:57','标题2','简介2','http://localhost:8080/ssm548ua/upload/1615440821550.jpg','<p>内容2</p>'),(103,'2021-03-11 05:28:57','标题3','简介3','http://localhost:8080/ssm548ua/upload/1615440831604.jpg','<p>内容3</p>'),(105,'2021-03-11 05:28:57','标题5','简介5','http://localhost:8080/ssm548ua/upload/1615440848370.jpg','<p>内容5</p>'),(106,'2021-03-11 05:28:57','标题6','简介6','http://localhost:8080/ssm548ua/upload/1615440856521.jpg','<p>内容6</p>'),(1615441121495,'2021-03-11 05:38:40','新片上映资讯','新片上映','http://localhost:8080/ssm548ua/upload/1615441109479.jpg','<p>资讯内容</p><p><img src=\"http://localhost:8080/ssm548ua/upload/1615441119593.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441611922 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1615441174524,'2021-03-11 05:39:33','202131113393367625863','dianyingxinxi',1615440893512,1615441077979,'你好，李焕英','http://localhost:8080/ssm548ua/upload/1615441014316.jpg',2,45,45,90,90,1,'已完成','14,15'),(1615441611921,'2021-03-11 05:46:51','202131113465099005379','dianyingxinxi',1615441422953,1615441077979,'你好，李焕英','http://localhost:8080/ssm548ua/upload/1615441014316.jpg',2,45,45,90,90,1,'已完成','17,18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441572723 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615441572722,'2021-03-11 05:46:12',1615441422953,1615441077979,'dianyingxinxi','你好，李焕英','http://localhost:8080/ssm548ua/upload/1615441014316.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','2c63un6ot8imjglz2j82p2s48j55ja35','2021-03-11 05:30:12','2021-03-11 06:35:30'),(2,1615440893512,'1','yonghu','用户','c0q5e8bbhjl8jwnsvz8epz0ijj3y0fk1','2021-03-11 05:34:59','2021-03-11 06:34:59'),(3,1615441422953,'3','yonghu','用户','tkjruhgi769kg6mni0r3lmuk0mzqa22w','2021-03-11 05:44:18','2021-03-11 06:44:18');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-11 05:28:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yingyuanxinxi`
--

DROP TABLE IF EXISTS `yingyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yingyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yingyuanmingcheng` varchar(200) NOT NULL COMMENT '影院名称',
  `yingyuanguimo` varchar(200) DEFAULT NULL COMMENT '影院规模',
  `yingyuantupian` varchar(200) DEFAULT NULL COMMENT '影院图片',
  `yingtingshuliang` int(11) DEFAULT NULL COMMENT '影厅数量',
  `yingyuanjieshao` longtext COMMENT '影院介绍',
  `yingyuandizhi` varchar(200) DEFAULT NULL COMMENT '影院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615440984221 DEFAULT CHARSET=utf8 COMMENT='影院信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yingyuanxinxi`
--

LOCK TABLES `yingyuanxinxi` WRITE;
/*!40000 ALTER TABLE `yingyuanxinxi` DISABLE KEYS */;
INSERT INTO `yingyuanxinxi` VALUES (21,'2021-03-11 05:28:57','影院名称1','小型','http://localhost:8080/ssm548ua/upload/yingyuanxinxi_yingyuantupian1.jpg',1,'影院介绍1','影院地址1','联系电话1'),(23,'2021-03-11 05:28:57','影院名称3','小型','http://localhost:8080/ssm548ua/upload/yingyuanxinxi_yingyuantupian3.jpg',3,'影院介绍3','影院地址3','联系电话3'),(24,'2021-03-11 05:28:57','影院名称4','小型','http://localhost:8080/ssm548ua/upload/yingyuanxinxi_yingyuantupian4.jpg',4,'影院介绍4','影院地址4','联系电话4'),(25,'2021-03-11 05:28:57','影院名称5','小型','http://localhost:8080/ssm548ua/upload/yingyuanxinxi_yingyuantupian5.jpg',5,'影院介绍5','影院地址5','联系电话5'),(26,'2021-03-11 05:28:57','影院名称6','小型','http://localhost:8080/ssm548ua/upload/yingyuanxinxi_yingyuantupian6.jpg',6,'影院介绍6','影院地址6','联系电话6'),(1615440984220,'2021-03-11 05:36:23','大地影院','中型','http://localhost:8080/ssm548ua/upload/1615440955491.jpg',6,'<p>影院介绍</p><p><img src=\"http://localhost:8080/ssm548ua/upload/1615440981877.jpg\"></p>','广州市增城区荔城街挂绿广场5楼','020-12345678');
/*!40000 ALTER TABLE `yingyuanxinxi` ENABLE KEYS */;
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
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615441422954 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-11 05:28:57','用户1','123456','姓名1','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang1.jpg','13823888881',100),(12,'2021-03-11 05:28:57','用户2','123456','姓名2','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang2.jpg','13823888882',100),(13,'2021-03-11 05:28:57','用户3','123456','姓名3','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang3.jpg','13823888883',100),(14,'2021-03-11 05:28:57','用户4','123456','姓名4','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang4.jpg','13823888884',100),(15,'2021-03-11 05:28:57','用户5','123456','姓名5','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang5.jpg','13823888885',100),(16,'2021-03-11 05:28:57','用户6','123456','姓名6','男','http://localhost:8080/ssm548ua/upload/yonghu_touxiang6.jpg','13823888886',100),(1615440893512,'2021-03-11 05:34:53','1','1','陈一','女','http://localhost:8080/ssm548ua/upload/1615440908127.jpg','12312312312',410),(1615441422953,'2021-03-11 05:43:42','3','3','陈陈','女','http://localhost:8080/ssm548ua/upload/1615441467674.jpeg','12345678978',910);
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

-- Dump completed on 2021-03-12  9:34:50
