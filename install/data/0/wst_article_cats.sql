SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `wst_article_cats`;
CREATE TABLE `wst_article_cats` (
  `catId` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '0',
  `catType` tinyint(4) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `catName` varchar(20) NOT NULL,
  `catSort` int(11) NOT NULL DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`catId`),
  KEY `isShow` (`catType`,`dataFlag`,`isShow`) USING BTREE,
  KEY `parentId` (`dataFlag`,`parentId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8mb4;


INSERT INTO `wst_article_cats` VALUES ('1', '7', '1', '1', '支付方式', '2', '1', '2016-08-16 00:09:50'),
('5', '7', '1', '1', '购物指南', '0', '1', '2016-08-25 09:45:45'),
('6', '7', '1', '1', '商城快讯', '5', '1', '2016-09-06 15:21:09'),
('7', '0', '1', '1', '帮助中心', '6', '1', '2016-09-06 15:21:24'),
('8', '0', '0', '1', '商城快讯', '4', '1', '2016-09-06 15:21:51'),
('9', '7', '1', '1', '售后服务', '1', '1', '2016-09-06 15:22:00'),
('10', '7', '1', '1', '商务合作', '3', '1', '2016-09-06 15:24:35'),
('11', '8', '0', '1', '商城公告', '0', '1', '2016-09-26 23:04:18'),
('12', '8', '0', '1', '促销信息', '0', '1', '2016-09-26 23:04:25'),
('50', '52', '1', '1', '注册协议', '0', '1', '2017-06-29 14:48:16'),
('51', '200', '1', '1', '商家公告', '0', '1', '2017-06-29 14:48:16'),
('52', '0', '1', '1', '用户帮助', '0', '1', '2017-06-29 14:48:16'),
('53', '200', '1', '1', '商家入驻指南', '0', '1', '2017-06-29 14:48:16'),
('200', '0', '1', '1', '商家帮助', '0', '1', '2017-01-01 09:12:20'),
('300', '200', '1', '1', '商家帮助', '1', '1', '2017-09-01 23:10:24'),
('400', '0', '1', '1', '供货商帮助', '0', '1', '2020-03-18 18:43:07'),
('401', '400', '1', '1', '供货商入驻指南', '1', '1', '2020-03-18 18:43:43');
