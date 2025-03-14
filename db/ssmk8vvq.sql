-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmk8vvq
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610338036589 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-11 03:37:28',1,1,'提问1','回复1',1),(82,'2021-01-11 03:37:28',2,2,'提问2','回复2',2),(83,'2021-01-11 03:37:28',3,3,'提问3','回复3',3),(84,'2021-01-11 03:37:28',4,4,'提问4','回复4',4),(85,'2021-01-11 03:37:28',5,5,'提问5','回复5',5),(86,'2021-01-11 03:37:28',6,6,'提问6','回复6',6),(1610337630231,'2021-01-11 04:00:30',1610337184772,NULL,'这里可以向管理员咨询',NULL,0),(1610338036588,'2021-01-11 04:07:15',1610337184772,1,NULL,'这里回复用户的咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmk8vvq/upload/1610336548161.png'),(2,'picture2','http://localhost:8080/ssmk8vvq/upload/1610336556300.png'),(3,'picture3','http://localhost:8080/ssmk8vvq/upload/1610336564794.png'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskebizhanqu`
--

DROP TABLE IF EXISTS `discusskebizhanqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskebizhanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337388456 DEFAULT CHARSET=utf8 COMMENT='科比展区评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskebizhanqu`
--

LOCK TABLES `discusskebizhanqu` WRITE;
/*!40000 ALTER TABLE `discusskebizhanqu` DISABLE KEYS */;
INSERT INTO `discusskebizhanqu` VALUES (131,'2021-01-11 03:37:28',1,1,'评论内容1','回复内容1'),(132,'2021-01-11 03:37:28',2,2,'评论内容2','回复内容2'),(133,'2021-01-11 03:37:28',3,3,'评论内容3','回复内容3'),(134,'2021-01-11 03:37:28',4,4,'评论内容4','回复内容4'),(135,'2021-01-11 03:37:28',5,5,'评论内容5','回复内容5'),(136,'2021-01-11 03:37:28',6,6,'评论内容6','回复内容6'),(1610337388455,'2021-01-11 03:56:27',31,1610337184772,'这里给科比战区做了个视频功能  可以上传一些科比跟他球鞋的故事   技术这里没有科比视频  先放了这个',NULL);
/*!40000 ALTER TABLE `discusskebizhanqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremenjingpai`
--

DROP TABLE IF EXISTS `discussremenjingpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremenjingpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337233813 DEFAULT CHARSET=utf8 COMMENT='热门竞拍评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremenjingpai`
--

LOCK TABLES `discussremenjingpai` WRITE;
/*!40000 ALTER TABLE `discussremenjingpai` DISABLE KEYS */;
INSERT INTO `discussremenjingpai` VALUES (121,'2021-01-11 03:37:28',1,1,'评论内容1','回复内容1'),(122,'2021-01-11 03:37:28',2,2,'评论内容2','回复内容2'),(123,'2021-01-11 03:37:28',3,3,'评论内容3','回复内容3'),(124,'2021-01-11 03:37:28',4,4,'评论内容4','回复内容4'),(125,'2021-01-11 03:37:28',5,5,'评论内容5','回复内容5'),(126,'2021-01-11 03:37:28',6,6,'评论内容6','回复内容6'),(1610337233812,'2021-01-11 03:53:53',26,1610337184772,'用户登录后可以评论  收藏 竞拍 等操作','这里回复用户在前台的【评论');
/*!40000 ALTER TABLE `discussremenjingpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337607496 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1610337515738,'2021-01-11 03:58:35','给个后卫就三连，三连冠的科比，是怎样的存在！','<p class=\"ql-align-justify\">在很多球迷的记忆中，2000年初湖人3连冠时期，奥尼尔在碾压联盟效力的所有内线球员中，布莱恩特是湖人队的第2号前锋，但是也有不少人评价说，布莱恩特为球队做出的贡献不亚于鲨鱼奥尼尔，例如杜兰特说：“人们总是觉得湖人三连冠，奥尼尔的福，布莱恩特没有多贡献，如果没有科比，奥尼尔将这些题目的手没能”。</p><p class=\"ql-align-justify\"><br></p><p><span style=\"color: rgb(51, 51, 51);\">当时的奥尼尔依然是联盟最佳中锋，处于巅峰的他是一个开放的存在，科比也从替补成长为攻守一体的全明星级球员，虽然进攻的效率没有后面那么出色，但是这个时候的科比的防守确实是出类拔萃的，就这样，ok组合的湖人紫金王朝到来了，但是湖人队进军季后赛并不轻松。</span></p><p><span style=\"color: rgb(51, 51, 51);\"><img src=\"../../..//upload/1610337513669.jpg\"></span></p><p><span style=\"color: rgb(51, 51, 51);\">这里可以管理员用户帖子  针对敏感话题之类  可以修改或者删除</span></p>',0,1610337184772,'666','开放'),(1610337545506,'2021-01-11 03:59:05','瓦妮莎晒视频思念科比 发文：想念你和Gigi','<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\">科比</p>\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">新浪娱乐讯 1月8日，科比老婆瓦妮莎（Vanessa Laine）在社交平台晒出一段科比的视频，她表示很是想念，发文称：&ldquo;我爱你，非常想念你和Gigi&rdquo;。视频中，科比表示：幸福是一段美丽的旅程，生活充满起伏，不管是婚姻还是事业，事情不会永远完美，但是爱可以让你继续持之以恒，向前发展。爱是一种决心，坚持从一次到许多次，不论是对于一个人还是一件事，这就是真爱。</span></p>\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\"><img src=\"../../..//upload/1610337544799.jpg\" /></span></p>',0,1610337184772,'666','开放'),(1610337580174,'2021-01-11 03:59:39',NULL,'做了个论坛功能  可以相互讨论  回帖',1610337515738,1610337184772,'666',NULL),(1610337607495,'2021-01-11 04:00:06','这里可以发帖','<p>纪念科比</p>\n<p><img src=\"../../..//upload/1610337605371.jpg\" /></p>',0,1610337184772,'666','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingpaixinxi`
--

DROP TABLE IF EXISTS `jingpaixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingpaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaidanhao` varchar(200) DEFAULT NULL COMMENT '竞拍单号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `jingpaidijia` int(11) DEFAULT NULL COMMENT '竞拍底价',
  `shishijiage` int(11) DEFAULT NULL COMMENT '实时价格',
  `yonghuchujia` int(11) DEFAULT NULL COMMENT '用户出价',
  `jingpaishijian` datetime DEFAULT NULL COMMENT '竞拍时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouhuodizhi` varchar(200) NOT NULL COMMENT '收货地址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingpaidanhao` (`jingpaidanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337320952 DEFAULT CHARSET=utf8 COMMENT='竞拍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingpaixinxi`
--

LOCK TABLES `jingpaixinxi` WRITE;
/*!40000 ALTER TABLE `jingpaixinxi` DISABLE KEYS */;
INSERT INTO `jingpaixinxi` VALUES (1610336468571,'2021-01-11 03:41:07','202111111364087065042','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','品牌1','型号1',100,150,160,'2021-01-11 11:36:46','','001','小吴','13823888881','440300199101010001','121','是','11'),(1610337320951,'2021-01-11 03:55:20','20211111150052421053','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','品牌1','型号1',100,150,200,'2021-01-18 00:00:00','1','666','小吴','16459878989','468978984565987898','环市北路165号','是','收到竞拍价');
/*!40000 ALTER TABLE `jingpaixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kebizhanqu`
--

DROP TABLE IF EXISTS `kebizhanqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kebizhanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiuxiemingcheng` varchar(200) NOT NULL COMMENT '球鞋名称',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `faxingriqi` date DEFAULT NULL COMMENT '发行日期',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `qiuxiejieshao` longtext COMMENT '球鞋介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='科比展区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kebizhanqu`
--

LOCK TABLES `kebizhanqu` WRITE;
/*!40000 ALTER TABLE `kebizhanqu` DISABLE KEYS */;
INSERT INTO `kebizhanqu` VALUES (31,'2021-01-11 03:37:28','球鞋名称1','型号1','类型1','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian1.jpg','品牌1','2019-01-07','http://localhost:8080/ssmk8vvq/upload/1610336791851.mp4','<p>球鞋介绍1</p>'),(32,'2021-01-11 03:37:28','球鞋名称2','型号2','类型2','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian2.jpg','品牌2','2021-01-11','','球鞋介绍2'),(33,'2021-01-11 03:37:28','球鞋名称3','型号3','类型3','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian3.jpg','品牌3','2021-01-11','','球鞋介绍3'),(34,'2021-01-11 03:37:28','球鞋名称4','型号4','类型4','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian4.jpg','品牌4','2021-01-11','','球鞋介绍4'),(35,'2021-01-11 03:37:28','球鞋名称5','型号5','类型5','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian5.jpg','品牌5','2021-01-11','','球鞋介绍5'),(36,'2021-01-11 03:37:28','球鞋名称6','型号6','类型6','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian6.jpg','品牌6','2021-01-11','','球鞋介绍6');
/*!40000 ALTER TABLE `kebizhanqu` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='球鞋资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-11 03:37:28',' 最独特的“Bred Toe”篮球鞋，AJ1系列球鞋经典中的经典！','http://localhost:8080/ssmk8vvq/upload/news_picture1.jpg','<p>在延续 9 孔 OG 造型轮廓的基础上，选用黑、白、红三色装扮示人，从鞋身前后的角度分别来看，颇有一丝经典黑红 “Bred” 和黑脚趾 “Black Toe” 相结合的独特韵味。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/13024119252/1000\">Air Jordan 1于1985年推出,是耐克第一双以乔丹名字命名的篮球鞋,正是这双鞋,开启了一个时代。Air Jordan 1外形的灵感来自于在当年风靡一时的Air Force 1,同时降低中底厚度,减轻重量,增加贴地感,并采用了后掌Air Sole气垫;最经典的飞翼 Logo来自于当时的Nike创意总监 Peter Moore。</p>'),(112,'2021-01-11 03:37:28','国产实战篮球鞋，颜值在线配置良心，学生党考虑考虑','http://localhost:8080/ssmk8vvq/upload/news_picture2.jpg','<p class=\"ql-align-justify\">首先，我要感谢先锋7项运动得到了媒体的认可，请先评价一下鞋子，但是，请放心，这双鞋的开箱和实战都没有充钱，请先把鞋子送过来。</p><p class=\"ql-align-justify\"><br></p><p><img src=\"https://pics1.baidu.com/feed/8326cffc1e178a82449e771b1eb4938aa877e82f.jpeg?token=650d584187c7c5dc14eba2ebedd20f81&amp;s=BA80306C3840E559582B4D9C0300D082\"></p><p class=\"ql-align-justify\">也就是说，我们来谈谈先锋7项运动吧，是16年9月23日创立的鞋子品牌，创业者自己也是虎的JRS，装备区常年错综复杂，我熟悉实战篮球鞋，他也在福建的普京，是的，这是大家经常说的鞋子的普京，但是，这些兄弟姐妹有点理想，我想像我这样的90后不服输地创业，我打鼓了，专业制作篮球鞋的品牌是这个先驱。</p><p><br></p>'),(113,'2021-01-11 03:37:28','晒一晒你的第一双篮球鞋 说说你和它的故事','http://localhost:8080/ssmk8vvq/upload/news_picture3.jpg','<p class=\"ql-align-justify\">直播吧1月9日讯 每天看着NBA球星穿着各种酷炫的球鞋，曾经的你，是否曾经幻想着拥有一双属于自己的篮球鞋？</p><p class=\"ql-align-justify\">晒一晒你拥有的第一双篮球鞋，说说你和这双宝贝战靴的故事。</p><p><br></p>'),(114,'2021-01-11 03:37:28','NBA 球星上脚这5 双篮球鞋拼战，鞋迷：这也太顶了','http://localhost:8080/ssmk8vvq/upload/1610336957902.jpg','<p class=\"ql-align-justify\">全新一季NBA 2020-2021赛季正在激战，除了球星表现相当出色，一扫「疫情」阴霾之外，球星们的足下球鞋更是大家关注焦点！Fragment x AJ 3、AJ 13特制版本回就来看看各大明星球员都换上了哪几双最新的实战篮球鞋吧！</p><p><br></p>'),(115,'2021-01-11 03:37:28','姚明：儿时梦想是当考古学家，进国家队是为了有篮球鞋穿','http://localhost:8080/ssmk8vvq/upload/news_picture5.jpg','<p class=\"ql-align-justify\">姚明是中国篮球史上最优秀的运动员，这句话后面可以不用加“之一”。而且在可以预见的很多年之内，估计中国篮坛也出不了第二个能够与姚明相提并论的人。虽然现在大姚早已离开球场，但他却依旧在为中国篮球做贡献，姚明实行的一系列改革措施，都为我们的男篮国家队、CBA联赛带来了改变。</p><p class=\"ql-align-justify\"><br></p><p><br></p><p class=\"ql-align-justify\">姚明的身高是2米26，也有人说他身高2米29，这个身材天生就是用来打篮球的，说实在的，如果姚明当初不是选择成为运动员，以他的身体条件来讲，可能当个普通人都费劲。但让人意外的是，姚明小时候的梦想并不是成为篮球运动员，他甚至根本不爱打篮球，这是怎么一回事呢？</p><p><br></p>'),(116,'2021-01-11 03:37:28','aj绿粉超适合女生穿的篮球鞋百搭显腿长鞋','http://localhost:8080/ssmk8vvq/upload/news_picture6.jpg','<p class=\"ql-align-justify\"><strong>aj1mid绿粉一双超适合女生穿的篮球鞋,超级百搭上脚显腿长不挑人穿。秋冬鞋柜必备的一双百搭高颜值篮球鞋。</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>这个颜色真的太好看了强烈推荐给姐妹们,鞋子上脚好看极了,秋冬就是穿aj的最佳季节啦,保暖又好看当然不能错过了,随意搭配小脚裤牛仔脚休闲工装裤等都很好看哦,真的无敌百搭的</strong></p><p><br></p><p><br></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiuxiefenlei`
--

DROP TABLE IF EXISTS `qiuxiefenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiuxiefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337672017 DEFAULT CHARSET=utf8 COMMENT='球鞋分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiuxiefenlei`
--

LOCK TABLES `qiuxiefenlei` WRITE;
/*!40000 ALTER TABLE `qiuxiefenlei` DISABLE KEYS */;
INSERT INTO `qiuxiefenlei` VALUES (11,'2021-01-11 03:37:28','AIR'),(12,'2021-01-11 03:37:28','复古'),(13,'2021-01-11 03:37:28','前锋鞋'),(14,'2021-01-11 03:37:28','后卫鞋'),(15,'2021-01-11 03:37:28','中锋鞋'),(16,'2021-01-11 03:37:28','分类6'),(1610337672016,'2021-01-11 04:01:11','这里添加球鞋分类');
/*!40000 ALTER TABLE `qiuxiefenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remenjingpai`
--

DROP TABLE IF EXISTS `remenjingpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remenjingpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `qiuxiezhuangtai` varchar(200) DEFAULT NULL COMMENT '球鞋状态',
  `jingpaidijia` int(11) NOT NULL COMMENT '竞拍底价',
  `shishijiage` int(11) NOT NULL COMMENT '实时价格',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337776851 DEFAULT CHARSET=utf8 COMMENT='热门竞拍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remenjingpai`
--

LOCK TABLES `remenjingpai` WRITE;
/*!40000 ALTER TABLE `remenjingpai` DISABLE KEYS */;
INSERT INTO `remenjingpai` VALUES (21,'2021-01-11 03:37:28','商品名称1','分类3','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','规格1','型号1','品牌1','竞拍中',100,200,'<p>详情1</p>','2021-01-11 12:03:50','2021-01-14 00:00:00',7),(22,'2021-01-11 03:37:28','商品名称2','AIR','http://localhost:8080/ssmk8vvq/upload/1610336675784.jpg','双','121','耐克','竞拍中',190,210,'<p><img src=\"http://localhost:8080/ssmk8vvq/upload/1610336698571.jpg\"></p>','2021-01-11 11:44:19','2021-01-16 00:00:00',3),(23,'2021-01-11 03:37:28','商品名称3','分类3','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian3.jpg','规格3','型号3','品牌3','竞拍中',3,3,'详情3','2021-01-11 11:37:28','2021-01-12 00:00:00',3),(24,'2021-01-11 03:37:28','商品名称4','后卫鞋','http://localhost:8080/ssmk8vvq/upload/1610336713200.jpg','规格4','型号4','品牌4','已结束',180,320,'<p><img src=\"http://localhost:8080/ssmk8vvq/upload/1610336733464.jpg\"></p>','2021-01-11 11:45:07','2021-01-07 00:00:00',5),(25,'2021-01-11 03:37:28','商品名称5','分类5','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian5.jpg','规格5','型号5','品牌5','竞拍中',5,5,'详情5','2021-01-11 11:45:04','2021-01-12 00:00:00',6),(26,'2021-01-11 03:37:28','商品名称6','分类6','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian6.jpg','规格6','型号6','品牌6','已结束',190,580,'<p><img src=\"http://localhost:8080/ssmk8vvq/upload/1610336760519.jpg\"></p>','2021-01-11 11:53:56','2021-01-03 00:00:00',9),(1610337776850,'2021-01-11 04:02:56','这里可以添加新的竞拍球鞋','后卫鞋','http://localhost:8080/ssmk8vvq/upload/1610337763700.jpeg','1','1','1','已结束',160,200,'<p>这里倒计时结束有一个倒计时的效果</p><p><img src=\"http://localhost:8080/ssmk8vvq/upload/1610337747177.jpeg\"></p>',NULL,'2021-01-23 00:00:00',0);
/*!40000 ALTER TABLE `remenjingpai` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1610337356691 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1610336453172,'2021-01-11 03:40:52',41,21,'remenjingpai','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg'),(1610337240404,'2021-01-11 03:53:59',1610337184772,26,'remenjingpai','商品名称6','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian6.jpg'),(1610337250302,'2021-01-11 03:54:10',1610337184772,21,'remenjingpai','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg'),(1610337356690,'2021-01-11 03:55:56',1610337184772,31,'kebizhanqu','球鞋名称1','http://localhost:8080/ssmk8vvq/upload/kebizhanqu_tupian1.jpg');
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','7gldtgc9j3z634neynldwtx2g7k733li','2021-01-11 03:39:12','2021-01-11 05:04:53'),(2,41,'001','yonghu','用户','dsee8jg25r5cr6o7opc8lamt0asiqhje','2021-01-11 03:40:13','2021-01-11 04:52:00'),(3,1610337184772,'666','yonghu','用户','aw2p6ln9uxs9ul3ygflgep035jdvymu9','2021-01-11 03:53:11','2021-01-11 05:07:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-11 03:37:28'),(2,'000','000','管理员','2021-01-11 04:06:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoxitongzhi`
--

DROP TABLE IF EXISTS `xiaoxitongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoxitongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingpaidanhao` varchar(200) DEFAULT NULL COMMENT '竞拍单号',
  `xiaoxibiaoti` varchar(200) NOT NULL COMMENT '消息标题',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xinghao` varchar(200) DEFAULT NULL COMMENT '型号',
  `yonghuchujia` varchar(200) DEFAULT NULL COMMENT '用户出价',
  `xiaoxineirong` longtext COMMENT '消息内容',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337848061 DEFAULT CHARSET=utf8 COMMENT='消息通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoxitongzhi`
--

LOCK TABLES `xiaoxitongzhi` WRITE;
/*!40000 ALTER TABLE `xiaoxitongzhi` DISABLE KEYS */;
INSERT INTO `xiaoxitongzhi` VALUES (1610336494934,'2021-01-11 03:41:34','202111111364087065042','1212','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','型号1','160','<p>111</p>','已送达','001','小吴','13823888881','121','已支付'),(1610337848060,'2021-01-11 04:04:08','20211111150052421053','竞拍成功','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','型号1','200','<p>1212</p>','已送达','666','小吴','16459878989','环市北路165号','已支付');
/*!40000 ALTER TABLE `xiaoxitongzhi` ENABLE KEYS */;
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
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337184773 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2021-01-11 03:37:28','001','001','小吴','女','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001'),(42,'2021-01-11 03:37:28','用户2','123456','姓名2','男','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002'),(43,'2021-01-11 03:37:28','用户3','123456','姓名3','男','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003'),(44,'2021-01-11 03:37:28','用户4','123456','姓名4','男','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','440300199404040004'),(45,'2021-01-11 03:37:28','用户5','123456','姓名5','男','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','440300199505050005'),(46,'2021-01-11 03:37:28','用户6','123456','姓名6','男','http://localhost:8080/ssmk8vvq/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','440300199606060006'),(1610337184772,'2021-01-11 03:53:04','666','666','小吴','男','http://localhost:8080/ssmk8vvq/upload/1610337207703.jpg','16459878989','1353@123.com','468978984565987898');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghupingjia`
--

DROP TABLE IF EXISTS `yonghupingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghupingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinpingfen` varchar(200) DEFAULT NULL COMMENT '商品评分',
  `shangpinpingjia` longtext COMMENT '商品评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610337887550 DEFAULT CHARSET=utf8 COMMENT='用户评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghupingjia`
--

LOCK TABLES `yonghupingjia` WRITE;
/*!40000 ALTER TABLE `yonghupingjia` DISABLE KEYS */;
INSERT INTO `yonghupingjia` VALUES (71,'2021-01-11 03:37:28','商品名称1','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian1.jpg','1','商品评价1','2021-01-11','用户名1','姓名1','手机1','否',''),(72,'2021-01-11 03:37:28','商品名称2','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian2.jpg','1','商品评价2','2021-01-11','用户名2','姓名2','手机2','否',''),(73,'2021-01-11 03:37:28','商品名称3','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian3.jpg','1','商品评价3','2021-01-11','用户名3','姓名3','手机3','否',''),(74,'2021-01-11 03:37:28','商品名称4','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian4.jpg','1','商品评价4','2021-01-11','用户名4','姓名4','手机4','否',''),(75,'2021-01-11 03:37:28','商品名称5','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian5.jpg','1','商品评价5','2021-01-11','用户名5','姓名5','手机5','否',''),(76,'2021-01-11 03:37:28','商品名称6','http://localhost:8080/ssmk8vvq/upload/yonghupingjia_tupian6.jpg','1','商品评价6','2021-01-11','用户名6','姓名6','手机6','否',''),(1610336518040,'2021-01-11 03:41:58','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','5','<p>1212</p>','2021-01-27','001','小吴','13823888881','否',''),(1610337887549,'2021-01-11 04:04:46','商品名称1','http://localhost:8080/ssmk8vvq/upload/remenjingpai_tupian1.jpg','5','<p>666</p>','2021-01-28','666','小吴','16459878989','是','这里回复用户评价');
/*!40000 ALTER TABLE `yonghupingjia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-14  9:49:28
