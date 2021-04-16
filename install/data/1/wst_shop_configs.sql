SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `wst_shop_configs`;
CREATE TABLE `wst_shop_configs` (
  `configId` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL,
  `shopTitle` varchar(255) DEFAULT NULL,
  `shopKeywords` varchar(255) DEFAULT NULL,
  `shopDesc` varchar(500) DEFAULT NULL,
  `shopBanner` varchar(150) DEFAULT NULL,
  `shopAds` text,
  `shopAdsUrl` text,
  `shopServicer` varchar(100) DEFAULT NULL,
  `shopHotWords` varchar(255) DEFAULT NULL,
  `shopStreetImg` varchar(150) DEFAULT '' COMMENT '店铺街背景',
  `shopMoveBanner` varchar(150) DEFAULT NULL,
  `shopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '店铺风格',
  `mobileShopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '手机端店铺风格',
  `wechatShopHomeTheme` varchar(200) NOT NULL DEFAULT 'shop_home' COMMENT '微信端店铺风格',
  `shopTitleWords` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`configId`),
  KEY `shopId` (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;


INSERT INTO `wst_shop_configs` VALUES ('1', '1', '', 'WSTMart官方自营', '', '', '', '', '', 'wstmart自营,维达纸巾,美食', '', '', 'shop_floor', 'shop_floor', 'shop_floor', null),
('2', '2', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('3', '3', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('4', '4', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('5', '5', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('6', '6', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('7', '7', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('8', '8', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('9', '9', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('10', '10', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('11', '11', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null),
('12', '12', null, null, null, null, null, null, null, null, '', null, 'shop_home', 'shop_home', 'shop_home', null);
