-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootzpl96
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
-- Current Database: `springbootzpl96`
--

/*!40000 DROP DATABASE IF EXISTS `springbootzpl96`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootzpl96` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootzpl96`;

--
-- Table structure for table `biyezige`
--

DROP TABLE IF EXISTS `biyezige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biyezige` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `biyeqingkuang` varchar(200) NOT NULL COMMENT '毕业情况',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='毕业资格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biyezige`
--

LOCK TABLES `biyezige` WRITE;
/*!40000 ALTER TABLE `biyezige` DISABLE KEYS */;
INSERT INTO `biyezige` VALUES (51,'2023-04-03 08:15:33','学号1','姓名1','院系1','专业1','班级1','身份证1','毕业','年份1','2023-04-03 16:15:33','教师工号1','教师姓名1','是',''),(52,'2023-04-03 08:15:33','学号2','姓名2','院系2','专业2','班级2','身份证2','毕业','年份2','2023-04-03 16:15:33','教师工号2','教师姓名2','是',''),(53,'2023-04-03 08:15:33','学号3','姓名3','院系3','专业3','班级3','身份证3','毕业','年份3','2023-04-03 16:15:33','教师工号3','教师姓名3','是',''),(54,'2023-04-03 08:15:33','学号4','姓名4','院系4','专业4','班级4','身份证4','毕业','年份4','2023-04-03 16:15:33','教师工号4','教师姓名4','是',''),(55,'2023-04-03 08:15:33','学号5','姓名5','院系5','专业5','班级5','身份证5','毕业','年份5','2023-04-03 16:15:33','教师工号5','教师姓名5','是',''),(56,'2023-04-03 08:15:33','学号6','姓名6','院系6','专业6','班级6','身份证6','毕业','年份6','2023-04-03 16:15:33','教师工号6','教师姓名6','是',''),(57,'2023-04-03 08:15:33','学号7','姓名7','院系7','专业7','班级7','身份证7','毕业','年份7','2023-04-03 16:15:33','教师工号7','教师姓名7','是',''),(58,'2023-04-03 08:15:33','学号8','姓名8','院系8','专业8','班级8','身份证8','毕业','年份8','2023-04-03 16:15:33','教师工号8','教师姓名8','是','');
/*!40000 ALTER TABLE `biyezige` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhuahaoma` varchar(200) NOT NULL COMMENT '电话号码',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2023-04-03 08:15:33','教师工号1','123456','教师姓名1','男','职称1','13823888881','upload/jiaoshi_touxiang1.jpg'),(22,'2023-04-03 08:15:33','教师工号2','123456','教师姓名2','男','职称2','13823888882','upload/jiaoshi_touxiang2.jpg'),(23,'2023-04-03 08:15:33','教师工号3','123456','教师姓名3','男','职称3','13823888883','upload/jiaoshi_touxiang3.jpg'),(24,'2023-04-03 08:15:33','教师工号4','123456','教师姓名4','男','职称4','13823888884','upload/jiaoshi_touxiang4.jpg'),(25,'2023-04-03 08:15:33','教师工号5','123456','教师姓名5','男','职称5','13823888885','upload/jiaoshi_touxiang5.jpg'),(26,'2023-04-03 08:15:33','教师工号6','123456','教师姓名6','男','职称6','13823888886','upload/jiaoshi_touxiang6.jpg'),(27,'2023-04-03 08:15:33','教师工号7','123456','教师姓名7','男','职称7','13823888887','upload/jiaoshi_touxiang7.jpg'),(28,'2023-04-03 08:15:33','教师工号8','123456','教师姓名8','男','职称8','13823888888','upload/jiaoshi_touxiang8.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peiyangfangan`
--

DROP TABLE IF EXISTS `peiyangfangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peiyangfangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fanganbianhao` varchar(200) DEFAULT NULL COMMENT '方案编号',
  `yuanxi` varchar(200) NOT NULL COMMENT '院系',
  `zhuanye` varchar(200) NOT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `peiyangleixing` varchar(200) NOT NULL COMMENT '培养类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleibie` varchar(200) DEFAULT NULL COMMENT '课程类别',
  `xuefen` varchar(200) DEFAULT NULL COMMENT '学分',
  `zongxueshi` varchar(200) DEFAULT NULL COMMENT '总学时',
  `kaohefangshi` varchar(200) DEFAULT NULL COMMENT '考核方式',
  `xueqi` varchar(200) NOT NULL COMMENT '学期',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fanganbianhao` (`fanganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='培养方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peiyangfangan`
--

LOCK TABLES `peiyangfangan` WRITE;
/*!40000 ALTER TABLE `peiyangfangan` DISABLE KEYS */;
INSERT INTO `peiyangfangan` VALUES (41,'2023-04-03 08:15:33','1111111111','院系1','专业1','班级1','理论课程','学号1','姓名1','课程名称1','课程类别1','学分1','总学时1','考核方式1','第一学期','年份1','教师工号1','教师姓名1'),(42,'2023-04-03 08:15:33','2222222222','院系2','专业2','班级2','理论课程','学号2','姓名2','课程名称2','课程类别2','学分2','总学时2','考核方式2','第一学期','年份2','教师工号2','教师姓名2'),(43,'2023-04-03 08:15:33','3333333333','院系3','专业3','班级3','理论课程','学号3','姓名3','课程名称3','课程类别3','学分3','总学时3','考核方式3','第一学期','年份3','教师工号3','教师姓名3'),(44,'2023-04-03 08:15:33','4444444444','院系4','专业4','班级4','理论课程','学号4','姓名4','课程名称4','课程类别4','学分4','总学时4','考核方式4','第一学期','年份4','教师工号4','教师姓名4'),(45,'2023-04-03 08:15:33','5555555555','院系5','专业5','班级5','理论课程','学号5','姓名5','课程名称5','课程类别5','学分5','总学时5','考核方式5','第一学期','年份5','教师工号5','教师姓名5'),(46,'2023-04-03 08:15:33','6666666666','院系6','专业6','班级6','理论课程','学号6','姓名6','课程名称6','课程类别6','学分6','总学时6','考核方式6','第一学期','年份6','教师工号6','教师姓名6'),(47,'2023-04-03 08:15:33','7777777777','院系7','专业7','班级7','理论课程','学号7','姓名7','课程名称7','课程类别7','学分7','总学时7','考核方式7','第一学期','年份7','教师工号7','教师姓名7'),(48,'2023-04-03 08:15:33','8888888888','院系8','专业8','班级8','理论课程','学号8','姓名8','课程名称8','课程类别8','学分8','总学时8','考核方式8','第一学期','年份8','教师工号8','教师姓名8');
/*!40000 ALTER TABLE `peiyangfangan` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','4tuxn8yud06n1c7oeb5g5h2umwk5ay6r','2023-04-03 08:18:35','2023-04-03 09:18:36');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-03 08:15:33');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `touxiang` longtext COMMENT '头像',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-04-03 08:15:33','学号1','姓名1','123456','男','440300199101010001','13823888881','专业1','班级1','upload/xuesheng_touxiang1.jpg','院系1'),(12,'2023-04-03 08:15:33','学号2','姓名2','123456','男','440300199202020002','13823888882','专业2','班级2','upload/xuesheng_touxiang2.jpg','院系2'),(13,'2023-04-03 08:15:33','学号3','姓名3','123456','男','440300199303030003','13823888883','专业3','班级3','upload/xuesheng_touxiang3.jpg','院系3'),(14,'2023-04-03 08:15:33','学号4','姓名4','123456','男','440300199404040004','13823888884','专业4','班级4','upload/xuesheng_touxiang4.jpg','院系4'),(15,'2023-04-03 08:15:33','学号5','姓名5','123456','男','440300199505050005','13823888885','专业5','班级5','upload/xuesheng_touxiang5.jpg','院系5'),(16,'2023-04-03 08:15:33','学号6','姓名6','123456','男','440300199606060006','13823888886','专业6','班级6','upload/xuesheng_touxiang6.jpg','院系6'),(17,'2023-04-03 08:15:33','学号7','姓名7','123456','男','440300199707070007','13823888887','专业7','班级7','upload/xuesheng_touxiang7.jpg','院系7'),(18,'2023-04-03 08:15:33','学号8','姓名8','123456','男','440300199808080008','13823888888','专业8','班级8','upload/xuesheng_touxiang8.jpg','院系8');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengchengji`
--

DROP TABLE IF EXISTS `xueshengchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianfen` varchar(200) NOT NULL COMMENT '年份',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `kemu` varchar(200) DEFAULT NULL COMMENT '科目',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shifouhege` varchar(200) DEFAULT NULL COMMENT '是否合格',
  `xuefen` int(11) DEFAULT NULL COMMENT '学分',
  `chengji` int(11) DEFAULT NULL COMMENT '成绩',
  `pingyu` varchar(200) DEFAULT NULL COMMENT '评语',
  `dengjishijian` varchar(200) DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学生成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengchengji`
--

LOCK TABLES `xueshengchengji` WRITE;
/*!40000 ALTER TABLE `xueshengchengji` DISABLE KEYS */;
INSERT INTO `xueshengchengji` VALUES (31,'2023-04-03 08:15:33','年份1','第一学期','学号1','科目1','姓名1','院系1','专业1','教师工号1','教师姓名1','合格',1,1,'评语1','登记时间1'),(32,'2023-04-03 08:15:33','年份2','第一学期','学号2','科目2','姓名2','院系2','专业2','教师工号2','教师姓名2','合格',2,2,'评语2','登记时间2'),(33,'2023-04-03 08:15:33','年份3','第一学期','学号3','科目3','姓名3','院系3','专业3','教师工号3','教师姓名3','合格',3,3,'评语3','登记时间3'),(34,'2023-04-03 08:15:33','年份4','第一学期','学号4','科目4','姓名4','院系4','专业4','教师工号4','教师姓名4','合格',4,4,'评语4','登记时间4'),(35,'2023-04-03 08:15:33','年份5','第一学期','学号5','科目5','姓名5','院系5','专业5','教师工号5','教师姓名5','合格',5,5,'评语5','登记时间5'),(36,'2023-04-03 08:15:33','年份6','第一学期','学号6','科目6','姓名6','院系6','专业6','教师工号6','教师姓名6','合格',6,6,'评语6','登记时间6'),(37,'2023-04-03 08:15:33','年份7','第一学期','学号7','科目7','姓名7','院系7','专业7','教师工号7','教师姓名7','合格',7,7,'评语7','登记时间7'),(38,'2023-04-03 08:15:33','年份8','第一学期','学号8','科目8','姓名8','院系8','专业8','教师工号8','教师姓名8','合格',8,8,'评语8','登记时间8');
/*!40000 ALTER TABLE `xueshengchengji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-04 15:27:47
