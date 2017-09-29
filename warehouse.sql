/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.55 : Database - warehouse
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`warehouse` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `warehouse`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `storecode` varchar(50) NOT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `producttime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`,`storecode`),
  KEY `storecode` (`storecode`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`storecode`) REFERENCES `store` (`storecode`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`productid`,`storecode`,`productname`,`producttime`) values (1,'bag001','雪花','2007-10-8'),(2,'bag003','青岛 ','2007-10-8'),(3,'bag006','雪花','2007-10-8'),(4,'bag008','金龙泉 ','2007-10-8'),(5,'bag012','金龙泉','2007-10-8'),(6,'bag007','娃哈哈','2007-10-8'),(7,'bag009','农夫山泉','2007-10-8'),(8,'bag011','娃哈哈','2007-10-8'),(9,'bag002',NULL,'2007-10-8'),(10,'bag004',NULL,'2007-10-8'),(11,'bag005',NULL,'2007-10-8'),(12,'bag010',NULL,'2007-10-8');

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `storeid` int(11) DEFAULT NULL COMMENT '仓库id',
  `storecode` varchar(50) NOT NULL COMMENT '货物编号',
  `storename` varchar(50) DEFAULT NULL COMMENT '货物名称',
  `storetime` varchar(50) DEFAULT NULL COMMENT '到货时间',
  PRIMARY KEY (`storecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `store` */

insert  into `store`(`storeid`,`storecode`,`storename`,`storetime`) values (1,'bag001','啤酒','2006-10-8'),(2,'bag002','可口可乐','2006-10-8'),(3,'bag003','啤酒','2006-10-8'),(4,'bag004','可口可乐','2006-10-8'),(5,'bag005','可口可乐','2006-10-8'),(6,'bag006','啤酒','2006-10-8'),(7,'bag007','矿泉水','2006-10-8'),(8,'bag008','啤酒','2006-10-8'),(9,'bag009','矿泉水','2006-10-8'),(10,'bag010','可口可乐','2006-10-8'),(11,'bag011','矿泉水','2006-10-8'),(12,'bag012','啤酒','2006-10-8');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
