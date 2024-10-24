/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequbangfuduixiangguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequbangfuduixiangguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequbangfuduixiangguanli`;

/*Table structure for table `bangfuduixiang` */

DROP TABLE IF EXISTS `bangfuduixiang`;

CREATE TABLE `bangfuduixiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bangfuduixiang_types` int(11) DEFAULT NULL COMMENT '帮扶类型 Search111',
  `bangfuduixiang_content` longtext COMMENT '帮扶详情 ',
  `bangfuduixiang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='帮扶对象';

/*Data for the table `bangfuduixiang` */

insert  into `bangfuduixiang`(`id`,`yonghu_id`,`bangfuduixiang_types`,`bangfuduixiang_content`,`bangfuduixiang_delete`,`insert_time`,`create_time`) values (1,1,2,'帮扶详情1',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,2,2,'帮扶详情2',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,3,2,'帮扶详情3',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,3,1,'帮扶详情4',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,2,1,'帮扶详情5',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,2,1,'帮扶详情6',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,1,3,'帮扶详情7',2,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,2,1,'帮扶详情8',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,2,2,'帮扶详情9',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,2,3,'帮扶详情10',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,3,2,'帮扶详情11',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,3,2,'帮扶详情12',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,2,1,'帮扶详情13',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,3,1,'帮扶详情14',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(15,1,3,'<p>审核通过后可以添加详情</p>',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(16,3,1,NULL,2,'2023-03-22 10:37:42','2023-03-22 10:37:42'),(17,1,2,NULL,1,'2023-03-22 10:38:04','2023-03-22 10:38:04');

/*Table structure for table `bangfushenqing` */

DROP TABLE IF EXISTS `bangfushenqing`;

CREATE TABLE `bangfushenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bangfushenqing_text` longtext COMMENT '申请原因',
  `bangfushenqing_file` varchar(200) DEFAULT NULL COMMENT '凭证文件',
  `bangfuduixiang_types` int(11) DEFAULT NULL COMMENT '帮扶类型 Search111',
  `bangfushenqing_yesno_types` int(11) DEFAULT NULL COMMENT '交换状态 Search111 ',
  `bangfushenqing_yesno_text` longtext COMMENT '回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='帮扶申请';

/*Data for the table `bangfushenqing` */

insert  into `bangfushenqing`(`id`,`yonghu_id`,`bangfushenqing_text`,`bangfushenqing_file`,`bangfuduixiang_types`,`bangfushenqing_yesno_types`,`bangfushenqing_yesno_text`,`insert_time`,`create_time`) values (1,1,'申请原因1','upload/file.rar',1,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,1,'申请原因2','upload/file.rar',1,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,3,'申请原因3','upload/file.rar',2,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,2,'申请原因4','upload/file.rar',1,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,2,'申请原因5','upload/file.rar',3,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,1,'申请原因6','upload/file.rar',2,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,2,'申请原因7','upload/file.rar',3,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,2,'申请原因8','upload/file.rar',3,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,1,'申请原因9','upload/file.rar',3,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,2,'申请原因10','upload/file.rar',3,1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,1,'申请原因11','upload/file.rar',2,2,'123123123','2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,2,'申请原因12','upload/file.rar',3,3,'123123','2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,3,'申请原因14','upload/file.rar',1,2,'123132221312','2023-03-22 09:49:24','2023-03-22 09:49:24'),(15,1,'123123','upload/1679452071890.rar',3,2,'123123','2023-03-22 10:27:54','2023-03-22 10:27:54');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dangan_name` varchar(200) DEFAULT NULL COMMENT '档案标题  Search111 ',
  `dangan_types` int(11) DEFAULT NULL COMMENT '档案类型 Search111',
  `dangan_file` varchar(200) DEFAULT NULL COMMENT '基础病史',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangan_content` longtext COMMENT '档案详情',
  `dangan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='档案';

/*Data for the table `dangan` */

insert  into `dangan`(`id`,`dangan_name`,`dangan_types`,`dangan_file`,`yonghu_id`,`dangan_content`,`dangan_delete`,`insert_time`,`create_time`) values (1,'档案标题1',2,'upload/file.rar',3,'档案详情1',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,'档案标题2',1,'upload/file.rar',2,'档案详情2',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,'档案标题3',1,'upload/file.rar',1,'档案详情3',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,'档案标题4',3,'upload/file.rar',3,'档案详情4',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,'档案标题5',3,'upload/file.rar',3,'档案详情5',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,'档案标题6',1,'upload/file.rar',1,'档案详情6',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,'档案标题7',3,'upload/file.rar',3,'档案详情7',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,'档案标题8',1,'upload/file.rar',3,'档案详情8',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,'档案标题9',1,'upload/file.rar',3,'档案详情9',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,'档案标题10',2,'upload/file.rar',3,'档案详情10',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,'档案标题11',3,'upload/file.rar',2,'档案详情11',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,'档案标题12',2,'upload/file.rar',3,'档案详情12',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,'档案标题13',1,'upload/file.rar',1,'档案详情13',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,'档案标题14',3,'upload/file.rar',1,'档案详情14',2,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(15,'123',2,'upload/1679452030310.rar',1,'123',1,'2023-03-22 10:27:11','2023-03-22 10:27:11');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'juankuanxiangm_types','项目类型',1,'项目类型1',NULL,NULL,'2023-03-22 09:47:43'),(2,'juankuanxiangm_types','项目类型',2,'项目类型2',NULL,NULL,'2023-03-22 09:47:43'),(3,'juankuanxiangm_types','项目类型',3,'项目类型3',NULL,NULL,'2023-03-22 09:47:43'),(4,'juankuanxiangm_yesno_types','项目审核',1,'待审核',NULL,NULL,'2023-03-22 09:47:43'),(5,'juankuanxiangm_yesno_types','项目审核',2,'同意',NULL,NULL,'2023-03-22 09:47:43'),(6,'juankuanxiangm_yesno_types','项目审核',3,'拒绝',NULL,NULL,'2023-03-22 09:47:43'),(7,'wupin_types','物品类型',1,'物品类型1',NULL,NULL,'2023-03-22 09:47:43'),(8,'wupin_types','物品类型',2,'物品类型2',NULL,NULL,'2023-03-22 09:47:43'),(9,'wupin_types','物品类型',3,'物品类型3',NULL,NULL,'2023-03-22 09:47:43'),(10,'wupin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-22 09:47:43'),(11,'wupin_yuyue_yesno_types','报名状态',1,'待处理',NULL,NULL,'2023-03-22 09:47:43'),(12,'wupin_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-22 09:47:43'),(13,'wupin_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-22 09:47:43'),(14,'bangfushenqing_yesno_types','申请状态',1,'待处理',NULL,NULL,'2023-03-22 09:47:43'),(15,'bangfushenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-22 09:47:43'),(16,'bangfushenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-22 09:47:43'),(17,'dangan_types','档案类型',1,'档案类型1',NULL,NULL,'2023-03-22 09:47:43'),(18,'dangan_types','档案类型',2,'档案类型2',NULL,NULL,'2023-03-22 09:47:43'),(19,'dangan_types','档案类型',3,'档案类型3',NULL,NULL,'2023-03-22 09:47:43'),(20,'bangfuduixiang_types','帮扶类型',1,'帮扶类型1',NULL,NULL,'2023-03-22 09:47:43'),(21,'bangfuduixiang_types','帮扶类型',2,'帮扶类型2',NULL,NULL,'2023-03-22 09:47:43'),(22,'bangfuduixiang_types','帮扶类型',3,'帮扶类型3',NULL,NULL,'2023-03-22 09:47:43'),(23,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-22 09:47:43'),(24,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-22 09:47:43'),(25,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-22 09:47:43'),(26,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-22 09:47:44'),(27,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-22 09:47:44'),(28,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-22 09:47:44'),(29,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-22 09:47:44');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `zhiyuanzhe_id` int(11) DEFAULT NULL COMMENT '志愿者',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`zhiyuanzhe_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,1,NULL,'发布内容1',26,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,'帖子标题2',NULL,2,NULL,'发布内容2',327,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',186,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',459,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,'帖子标题5',NULL,1,NULL,'发布内容5',347,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,'帖子标题6',NULL,1,NULL,'发布内容6',15,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',74,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,'帖子标题8',NULL,1,NULL,'发布内容8',8,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,'帖子标题9',NULL,1,NULL,'发布内容9',222,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,'帖子标题10',NULL,3,NULL,'发布内容10',121,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,'帖子标题11',NULL,3,NULL,'发布内容11',318,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,'帖子标题12',NULL,1,NULL,'发布内容12',116,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,'帖子标题13',NULL,1,NULL,'发布内容13',170,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',345,1,'2023-03-22 09:49:24','2023-03-22 09:49:24','2023-03-22 09:49:24'),(15,NULL,NULL,1,NULL,'123',14,2,'2023-03-22 10:30:44',NULL,'2023-03-22 10:30:44'),(16,NULL,1,NULL,NULL,'123123123',14,2,'2023-03-22 10:37:24',NULL,'2023-03-22 10:37:24'),(17,NULL,NULL,NULL,1,'123123',14,2,'2023-03-22 10:38:40',NULL,'2023-03-22 10:38:40');

/*Table structure for table `juankuanxiangm` */

DROP TABLE IF EXISTS `juankuanxiangm`;

CREATE TABLE `juankuanxiangm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `juankuanxiangm_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `juankuanxiangm_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhiyuanzhe_id` int(11) DEFAULT NULL COMMENT '志愿者',
  `juankuanxiangm_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `juankuanxiangm_xuqiu` int(11) DEFAULT NULL COMMENT '捐款数值',
  `juankuanxiangm_qudao` varchar(200) DEFAULT NULL COMMENT '捐款渠道',
  `juankuanxiangm_content` longtext COMMENT '项目介绍 ',
  `juankuanxiangm_yesno_types` int(11) DEFAULT NULL COMMENT '项目审核 Search111 ',
  `juankuanxiangm_yesno_text` longtext COMMENT '审核回复',
  `juankuanxiangm_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='捐款项目';

/*Data for the table `juankuanxiangm` */

insert  into `juankuanxiangm`(`id`,`juankuanxiangm_name`,`juankuanxiangm_photo`,`zhiyuanzhe_id`,`juankuanxiangm_types`,`juankuanxiangm_xuqiu`,`juankuanxiangm_qudao`,`juankuanxiangm_content`,`juankuanxiangm_yesno_types`,`juankuanxiangm_yesno_text`,`juankuanxiangm_delete`,`insert_time`,`create_time`) values (1,'项目名称1','upload/juankuanxiangm1.jpg',2,3,169,'捐款渠道1','项目介绍1',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,'项目名称2','upload/juankuanxiangm2.jpg',3,2,326,'捐款渠道2','项目介绍2',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,'项目名称3','upload/juankuanxiangm3.jpg',3,2,187,'捐款渠道3','项目介绍3',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,'项目名称4','upload/juankuanxiangm4.jpg',3,3,275,'捐款渠道4','项目介绍4',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,'项目名称5','upload/juankuanxiangm5.jpg',3,1,492,'捐款渠道5','项目介绍5',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,'项目名称6','upload/juankuanxiangm6.jpg',1,1,95,'捐款渠道6','项目介绍6',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,'项目名称7','upload/juankuanxiangm7.jpg',3,1,488,'捐款渠道7','项目介绍7',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,'项目名称8','upload/juankuanxiangm1.jpg',3,3,281,'捐款渠道8','项目介绍8',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,'项目名称9','upload/juankuanxiangm2.jpg',3,2,167,'捐款渠道9','项目介绍9',2,'通过',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,'项目名称10','upload/juankuanxiangm3.jpg',3,1,340,'捐款渠道10','项目介绍10',1,NULL,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,'项目名称11','upload/juankuanxiangm4.jpg',3,1,77,'捐款渠道11','项目介绍11',1,NULL,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,'项目名称12','upload/juankuanxiangm5.jpg',1,3,327,'捐款渠道12','项目介绍12',1,NULL,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,'项目名称13','upload/juankuanxiangm6.jpg',1,3,204,'捐款渠道13','<p>项目介绍13 志愿者添加捐款信息 管理审核通过后才能在前台展示</p>',1,NULL,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,'项目名称14','upload/juankuanxiangm7.jpg',3,2,263,'捐款渠道14','项目介绍14',2,'通过321123',1,'2023-03-22 09:49:24','2023-03-22 09:49:24');

/*Table structure for table `juankuanxiangm_liuyan` */

DROP TABLE IF EXISTS `juankuanxiangm_liuyan`;

CREATE TABLE `juankuanxiangm_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `juankuanxiangm_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `juankuanxiangm_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='捐款项目留言';

/*Data for the table `juankuanxiangm_liuyan` */

insert  into `juankuanxiangm_liuyan`(`id`,`juankuanxiangm_id`,`yonghu_id`,`juankuanxiangm_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-22 09:49:24','回复信息1','2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,2,1,'留言内容2','2023-03-22 09:49:24','回复信息2','2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,3,1,'留言内容3','2023-03-22 09:49:24','回复信息3','2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,4,2,'留言内容4','2023-03-22 09:49:24','回复信息4','2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,5,1,'留言内容5','2023-03-22 09:49:24','回复信息5','2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,6,1,'留言内容6','2023-03-22 09:49:24','回复信息6','2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,7,1,'留言内容7','2023-03-22 09:49:24','回复信息7','2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,8,1,'留言内容8','2023-03-22 09:49:24','回复信息8','2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,9,2,'留言内容9','2023-03-22 09:49:24','回复信息9','2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,10,3,'留言内容10','2023-03-22 09:49:24','回复信息10','2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,11,2,'留言内容11','2023-03-22 09:49:24','回复信息11','2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,12,3,'留言内容12','2023-03-22 09:49:24','回复信息12','2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,13,3,'留言内容13','2023-03-22 09:49:24','回复信息13回复1312312','2023-03-22 10:37:13','2023-03-22 09:49:24'),(14,14,1,'留言内容14','2023-03-22 09:49:24','回复信息14','2023-03-22 09:49:24','2023-03-22 09:49:24'),(15,4,1,'通过审核才能在前台展示','2023-03-22 10:23:34',NULL,NULL,'2023-03-22 10:23:34');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='社区公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-03-22 09:49:24','公告详情1','2023-03-22 09:49:24'),(2,'公告标题2',3,'upload/news2.jpg','2023-03-22 09:49:24','公告详情2','2023-03-22 09:49:24'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-22 09:49:24','公告详情3','2023-03-22 09:49:24'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-22 09:49:24','公告详情4','2023-03-22 09:49:24'),(5,'公告标题5',2,'upload/news5.jpg','2023-03-22 09:49:24','公告详情5','2023-03-22 09:49:24'),(6,'公告标题6',2,'upload/news6.jpg','2023-03-22 09:49:24','公告详情6','2023-03-22 09:49:24'),(7,'公告标题7',3,'upload/news7.jpg','2023-03-22 09:49:24','公告详情7','2023-03-22 09:49:24'),(8,'公告标题8',3,'upload/news8.jpg','2023-03-22 09:49:24','公告详情8','2023-03-22 09:49:24'),(9,'公告标题9',1,'upload/news9.jpg','2023-03-22 09:49:24','公告详情9','2023-03-22 09:49:24'),(10,'公告标题10',2,'upload/news10.jpg','2023-03-22 09:49:24','公告详情10','2023-03-22 09:49:24'),(11,'公告标题11',3,'upload/news11.jpg','2023-03-22 09:49:24','公告详情11','2023-03-22 09:49:24'),(12,'公告标题12',3,'upload/news12.jpg','2023-03-22 09:49:24','公告详情12','2023-03-22 09:49:24'),(13,'公告标题13',3,'upload/news13.jpg','2023-03-22 09:49:24','公告详情13','2023-03-22 09:49:24'),(14,'公告标题14',3,'upload/news14.jpg','2023-03-22 09:49:24','公告详情14','2023-03-22 09:49:24');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '医院id',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','a3gg1cw60u3j703oz0pnxnbqu98yen4s','2023-03-22 09:52:06','2023-03-22 11:23:21'),(2,1,'admin','users','管理员','0mipnf7wue91dd5klcihz2kkcrqqq6m9','2023-03-22 10:00:05','2023-03-22 11:39:47'),(3,3,'a3','yonghu','用户','3926zmj8hoqr190ew2zewukqv4p0a17i','2023-03-22 10:30:54','2023-03-22 11:30:54'),(4,1,'a1','zhiyuanzhe','志愿者','0ti8tum3qqdornt34ikkme2dnvp26vse','2023-03-22 10:34:34','2023-03-22 11:34:35');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-22 09:47:43');

/*Table structure for table `wupin` */

DROP TABLE IF EXISTS `wupin`;

CREATE TABLE `wupin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wupin_name` varchar(200) DEFAULT NULL COMMENT '物品名称  Search111 ',
  `wupin_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `wupin_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `wupin_xuqiu` varchar(200) DEFAULT NULL COMMENT '交换需求',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_content` longtext COMMENT '物品介绍 ',
  `wupin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物品交换';

/*Data for the table `wupin` */

insert  into `wupin`(`id`,`wupin_name`,`wupin_photo`,`wupin_types`,`wupin_xuqiu`,`yonghu_id`,`wupin_content`,`wupin_delete`,`insert_time`,`create_time`) values (1,'物品名称1','upload/wupin1.jpg',3,'交换需求1',2,'物品介绍1',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,'物品名称2','upload/wupin2.jpg',2,'交换需求2',2,'物品介绍2',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,'物品名称3','upload/wupin3.jpg',2,'交换需求3',3,'物品介绍3',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,'物品名称4','upload/wupin4.jpg',3,'交换需求4',3,'物品介绍4',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,'物品名称5','upload/wupin5.jpg',1,'交换需求5',2,'物品介绍5',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,'物品名称6','upload/wupin6.jpg',1,'交换需求6',1,'物品介绍6',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,'物品名称7','upload/wupin7.jpg',3,'交换需求7',3,'物品介绍7',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,'物品名称8','upload/wupin8.jpg',1,'交换需求8',3,'物品介绍8',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,'物品名称9','upload/wupin9.jpg',2,'交换需求9',2,'物品介绍9',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,'物品名称10','upload/wupin10.jpg',2,'交换需求10',1,'物品介绍10',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,'物品名称11','upload/wupin11.jpg',2,'交换需求11',1,'物品介绍11',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,'物品名称12','upload/wupin12.jpg',1,'交换需求12',1,'物品介绍12',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(13,'物品名称13','upload/wupin13.jpg',2,'交换需求13',1,'物品介绍13',1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,'物品名称14','upload/wupin14.jpg',1,'交换需求14',3,'物品介绍14',1,'2023-03-22 09:49:24','2023-03-22 09:49:24');

/*Table structure for table `wupin_collection` */

DROP TABLE IF EXISTS `wupin_collection`;

CREATE TABLE `wupin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wupin_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物品收藏';

/*Data for the table `wupin_collection` */

insert  into `wupin_collection`(`id`,`wupin_id`,`yonghu_id`,`wupin_collection_types`,`insert_time`,`create_time`) values (3,3,3,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,4,3,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(6,6,2,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,7,2,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,8,3,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,9,2,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(11,11,1,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(12,12,1,1,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(14,14,2,1,'2023-03-22 09:49:24','2023-03-22 09:49:24');

/*Table structure for table `wupin_liuyan` */

DROP TABLE IF EXISTS `wupin_liuyan`;

CREATE TABLE `wupin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wupin_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物品留言';

/*Data for the table `wupin_liuyan` */

insert  into `wupin_liuyan`(`id`,`wupin_id`,`yonghu_id`,`wupin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-22 09:49:24','回复信息1','2023-03-22 09:49:24','2023-03-22 09:49:24'),(2,2,3,'留言内容2','2023-03-22 09:49:24','回复信息2','2023-03-22 09:49:24','2023-03-22 09:49:24'),(3,3,3,'留言内容3','2023-03-22 09:49:24','回复信息3','2023-03-22 09:49:24','2023-03-22 09:49:24'),(4,4,1,'留言内容4','2023-03-22 09:49:24','回复信息4','2023-03-22 09:49:24','2023-03-22 09:49:24'),(5,5,3,'留言内容5','2023-03-22 09:49:24','回复信息5','2023-03-22 09:49:24','2023-03-22 09:49:24'),(7,7,1,'留言内容7','2023-03-22 09:49:24','回复信息7','2023-03-22 09:49:24','2023-03-22 09:49:24'),(8,8,3,'留言内容8','2023-03-22 09:49:24','回复信息8','2023-03-22 09:49:24','2023-03-22 09:49:24'),(9,9,2,'留言内容9','2023-03-22 09:49:24','回复信息9','2023-03-22 09:49:24','2023-03-22 09:49:24'),(10,10,1,'留言内容10','2023-03-22 09:49:24','回复信息10123','2023-03-22 10:25:50','2023-03-22 09:49:24');

/*Table structure for table `wupin_yuyue` */

DROP TABLE IF EXISTS `wupin_yuyue`;

CREATE TABLE `wupin_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wupin_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wupin_yuyue_text` longtext COMMENT '交换物品详情',
  `wupin_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '交换状态 Search111 ',
  `wupin_yuyue_yesno_text` longtext COMMENT '回复',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='申请交换';

/*Data for the table `wupin_yuyue` */

insert  into `wupin_yuyue`(`id`,`wupin_id`,`yonghu_id`,`wupin_yuyue_text`,`wupin_yuyue_yesno_types`,`wupin_yuyue_yesno_text`,`insert_time`,`create_time`) values (2,2,2,'交换物品详情2',1,NULL,'2023-03-22 09:49:24','2023-03-22 09:49:24'),(16,14,1,'你要交换的物品信息',2,'123123','2023-03-22 10:24:04','2023-03-22 10:24:04');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaren_phone` varchar(200) DEFAULT NULL COMMENT '家人联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`jiaren_phone`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'17703786911','1@qq.com','2023-03-22 09:49:24'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'17703786922','2@qq.com','2023-03-22 09:49:24'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'17703786933','3@qq.com','2023-03-22 09:49:24');

/*Table structure for table `zhiyuanzhe` */

DROP TABLE IF EXISTS `zhiyuanzhe`;

CREATE TABLE `zhiyuanzhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhiyuanzhe_name` varchar(200) DEFAULT NULL COMMENT '志愿者姓名 Search111 ',
  `zhiyuanzhe_phone` varchar(200) DEFAULT NULL COMMENT '志愿者手机号',
  `zhiyuanzhe_id_number` varchar(200) DEFAULT NULL COMMENT '志愿者身份证号',
  `zhiyuanzhe_photo` varchar(200) DEFAULT NULL COMMENT '志愿者头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhiyuanzhe_email` varchar(200) DEFAULT NULL COMMENT '志愿者邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='志愿者';

/*Data for the table `zhiyuanzhe` */

insert  into `zhiyuanzhe`(`id`,`username`,`password`,`zhiyuanzhe_name`,`zhiyuanzhe_phone`,`zhiyuanzhe_id_number`,`zhiyuanzhe_photo`,`sex_types`,`zhiyuanzhe_email`,`create_time`) values (1,'a1','123456','志愿者姓名1','17703786901','410224199010102001','upload/zhiyuanzhe1.jpg',2,'1@qq.com','2023-03-22 09:49:24'),(2,'a2','123456','志愿者姓名2','17703786902','410224199010102002','upload/zhiyuanzhe2.jpg',1,'2@qq.com','2023-03-22 09:49:24'),(3,'a3','123456','志愿者姓名3','17703786903','410224199010102003','upload/zhiyuanzhe3.jpg',2,'3@qq.com','2023-03-22 09:49:24');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
