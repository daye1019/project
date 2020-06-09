/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 5.5.28 : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(28) NOT NULL,
  `memo` varchar(500) NOT NULL,
  `writeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `starPoint` int(5) NOT NULL,
  `Filename` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `board` */

insert  into `board`(`idx`,`id`,`memo`,`writeDate`,`starPoint`,`Filename`) values 
(5,'id','완전 맛있어요 굿굿','2020-02-24 13:08:19',4,'images/side3_off.jpg'),
(6,'id','존맛','2020-02-24 13:57:36',5,'images/burger1_off.png'),
(7,'id','치즈가 좔좔 녹아요','2020-02-24 13:58:20',5,'images/burger4_on.png'),
(8,'id','겁나 맛있어요\n다음에 또올게요\n감튀 짱','2020-02-24 14:00:38',5,'images/side2_on.png'),
(9,'id','진짜 맛있어요','2020-02-24 14:01:18',3,'images/null'),
(10,'ghkdud7913','옆에서 까요','2020-02-24 14:35:00',3,'images/null');

/*Table structure for table `list` */

DROP TABLE IF EXISTS `list`;

CREATE TABLE `list` (
  `idx` int(100) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `count` char(20) NOT NULL,
  `price` char(20) NOT NULL,
  `writeDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

/*Data for the table `list` */

insert  into `list`(`idx`,`name`,`count`,`price`,`writeDate`) values 
(63,'한우불고기 버거 세트','1','8400','2020-02-24 18:35:04'),
(64,'한우불고기 버거 세트','1','8400','2020-02-24 19:10:58'),
(65,'에그불고기 버거 세트','1','9800','2020-02-24 19:10:59'),
(66,'에그불고기 버거 세트','1','9800','2020-02-24 19:11:04'),
(67,'치킨 버거 세트','1','7500','2020-02-24 19:11:05'),
(68,'나만의버거','4','7000','2020-02-24 19:11:20'),
(69,'치즈스틱','1','1800','2020-02-24 19:13:39'),
(70,'에그불고기 버거 세트','1','9800','2020-02-24 19:13:40'),
(71,'통새우버거','4','23600','2020-02-24 19:13:43'),
(72,'나만의버거','3','7000','2020-02-24 19:13:49'),
(73,'나만의버거','3','5000','2020-02-24 19:14:34'),
(74,'나만의버거','0','5000','2020-02-24 19:18:36'),
(75,'통새우 버거 세트','1','8900','2020-02-24 19:47:09'),
(76,'에그불고기 버거 세트','1','9800','2020-02-24 19:47:10'),
(77,'한우불고기 버거 세트','1','8400','2020-02-25 09:45:07'),
(78,'통새우 버거 세트','1','8900','2020-02-25 09:45:07'),
(79,'통새우버거','3','17700','2020-02-25 09:45:07'),
(80,'치킨 버거 세트','1','7500','2020-02-25 09:45:38'),
(81,'한우불고기 버거 세트','1','8400','2020-04-15 16:25:58'),
(82,'한우불고기버거','1','5400','2020-04-15 16:25:58'),
(83,'감자튀김','1','1500','2020-04-15 16:25:58');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(12) NOT NULL,
  `PASSWORD` char(20) NOT NULL,
  `NAME` char(20) NOT NULL,
  `TEL` char(11) NOT NULL,
  `EMAIL` char(30) NOT NULL,
  `CARD` char(30) NOT NULL,
  `YYMM` char(10) NOT NULL,
  `CVC` char(3) NOT NULL,
  PRIMARY KEY (`IDX`,`ID`,`TEL`,`EMAIL`,`CARD`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `member` */

insert  into `member`(`IDX`,`ID`,`PASSWORD`,`NAME`,`TEL`,`EMAIL`,`CARD`,`YYMM`,`CVC`) values 
(4,'ghkdud7913','abcd1234!','이화영','01044324017','ghkdud7913@naver.com','1111222233334444','1022','202'),
(5,'dlghkdud123','dlghkdud23@','홍길동','01023413845','sdjsadkj@naver.com','1234098756785432','1024','102'),
(6,'ghkdud79131','abcd1234!!','삼화영','01044324018','eha0zz@naver.com','1234123412341234','0822','282');

/*Table structure for table `member2` */

DROP TABLE IF EXISTS `member2`;

CREATE TABLE `member2` (
  `IDX` int(11) NOT NULL AUTO_INCREMENT,
  `ID` char(12) NOT NULL,
  `PASSWORD` char(20) NOT NULL,
  `NAME` char(20) NOT NULL,
  `TEL` char(11) NOT NULL,
  `EMAIL` char(30) NOT NULL,
  PRIMARY KEY (`IDX`,`ID`,`TEL`,`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `member2` */

insert  into `member2`(`IDX`,`ID`,`PASSWORD`,`NAME`,`TEL`,`EMAIL`) values 
(4,'ghkdud7913','abcd1234!','이화영','01044324017','ghkdud7913@naver.com'),
(5,'dlghkddud123','dlghk135@','홍길동','01043219876','sjdsakl@naver.com'),
(6,'eha0zz','abcd1234!','이화영','01044324017','ghkdud7913@naver.com');

/*Table structure for table `today` */

DROP TABLE IF EXISTS `today`;

CREATE TABLE `today` (
  `idx` int(30) NOT NULL AUTO_INCREMENT,
  `number` char(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `today` */

insert  into `today`(`idx`,`number`) values 
(3,'2'),
(4,'3'),
(5,'1'),
(6,'2'),
(7,'2'),
(8,'2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
