SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `wst_goods_specs`;
CREATE TABLE `wst_goods_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopId` int(11) NOT NULL DEFAULT '0',
  `goodsId` int(11) NOT NULL DEFAULT '0',
  `productNo` varchar(20) NOT NULL,
  `specIds` varchar(255) NOT NULL,
  `marketPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `specPrice` decimal(11,2) NOT NULL DEFAULT '0.00',
  `specStock` int(11) NOT NULL DEFAULT '0',
  `warnStock` int(11) NOT NULL DEFAULT '0',
  `saleNum` int(11) NOT NULL DEFAULT '0',
  `isDefault` tinyint(4) DEFAULT '0',
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `specWeight` decimal(11,2) DEFAULT '0.00' COMMENT '商品重量',
  `specVolume` decimal(11,2) DEFAULT '0.00' COMMENT '商品体积',
  PRIMARY KEY (`id`),
  KEY `shopId` (`goodsId`,`dataFlag`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;


INSERT INTO `wst_goods_specs` VALUES ('1', '3', '75', '155088901270120-1', '1:2', '599.00', '538.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('2', '3', '75', '155088901270120-2', '1:3', '639.00', '588.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('3', '3', '75', '155088901270120-3', '1:4', '689.00', '615.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('4', '3', '75', '155088901270120-4', '5:2', '599.00', '528.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('5', '3', '75', '155088901270120-5', '5:3', '639.00', '615.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('6', '3', '75', '155088901270120-6', '5:4', '689.00', '588.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('7', '3', '75', '155088901270120-7', '6:2', '599.00', '538.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('8', '3', '75', '155088901270120-8', '6:3', '639.00', '588.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('9', '3', '75', '155088901270120-9', '6:4', '689.00', '615.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('10', '3', '76', '155088981799538-1', '7:8', '3100.00', '3088.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('11', '3', '76', '155088981799538-2', '7:9', '3200.00', '3088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('12', '3', '76', '155088981799538-3', '10:8', '3100.00', '2999.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('13', '3', '76', '155088981799538-4', '10:9', '3200.00', '3088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('14', '3', '76', '155088981799538-5', '11:8', '3100.00', '2999.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('15', '3', '76', '155088981799538-6', '11:9', '31200.00', '3088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('16', '3', '77', '155089011352225-1', '12:13', '4999.00', '4799.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('17', '3', '77', '155089011352225-2', '12:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('18', '3', '77', '155089011352225-3', '15:13', '4999.00', '4799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('19', '3', '77', '155089011352225-4', '15:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('20', '3', '77', '155089011352225-5', '16:13', '4999.00', '4799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('21', '3', '77', '155089011352225-6', '16:14', '5199.00', '5099.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('22', '3', '78', '155089055208436-1', '17:18', '3188.00', '3088.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('23', '3', '78', '155089055208436-2', '17:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('24', '3', '78', '155089055208436-3', '17:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('25', '3', '78', '155089055208436-4', '21:18', '3188.00', '3088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('26', '3', '78', '155089055208436-5', '21:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('27', '3', '78', '155089055208436-6', '21:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('28', '3', '78', '155089055208436-7', '22:18', '3188.00', '3088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('29', '3', '78', '155089055208436-8', '22:19', '3288.00', '3188.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('30', '3', '78', '155089055208436-9', '22:20', '3388.00', '3288.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('31', '3', '79', '155089084437307-1', '23:24', '2800.00', '1979.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('32', '3', '79', '155089084437307-2', '23:25', '2900.00', '2079.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('33', '3', '79', '155089084437307-3', '23:26', '3000.00', '2179.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('34', '3', '79', '155089084437307-4', '27:24', '2800.00', '1979.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('35', '3', '79', '155089084437307-5', '27:25', '2900.00', '2079.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('36', '3', '79', '155089084437307-6', '27:26', '3000.00', '2179.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('37', '5', '80', '155089130317321-1', '28:29', '5000.00', '4799.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('38', '5', '80', '155089130317321-2', '28:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('39', '5', '80', '155089130317321-3', '31:29', '5000.00', '4799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('40', '5', '80', '155089130317321-4', '31:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('41', '5', '80', '155089130317321-5', '32:29', '5000.00', '4799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('42', '5', '80', '155089130317321-6', '32:30', '6000.00', '5799.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('43', '5', '81', '155089160666265-1', '33:34', '4000.00', '3699.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('44', '5', '81', '155089160666265-2', '33:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('45', '5', '81', '155089160666265-3', '36:34', '4000.00', '3699.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('46', '5', '81', '155089160666265-4', '36:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('47', '5', '81', '155089160666265-5', '37:34', '4000.00', '3699.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('48', '5', '81', '155089160666265-6', '37:35', '6000.00', '5699.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('49', '5', '82', '155089192280471-1', '38:39', '8088.00', '8088.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('50', '5', '82', '155089192280471-2', '38:40', '9088.00', '9088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('51', '5', '82', '155089192280471-3', '41:39', '8088.00', '8088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('52', '5', '82', '155089192280471-4', '41:40', '9088.00', '9088.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('53', '1', '93', '155089430080877-1', '42:43', '799.00', '688.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('54', '1', '93', '155089430080877-2', '42:44', '899.00', '788.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('55', '1', '93', '155089430080877-3', '45:43', '799.00', '688.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('56', '1', '93', '155089430080877-4', '45:44', '899.00', '788.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('57', '1', '93', '155089430080877-5', '46:43', '799.00', '688.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('58', '1', '93', '155089430080877-6', '46:44', '899.00', '788.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('59', '1', '94', '155089461089448-1', '47:48', '799.00', '688.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('60', '1', '94', '155089461089448-2', '47:49', '899.00', '788.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('61', '1', '94', '155089461089448-3', '50:48', '799.00', '688.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('62', '1', '94', '155089461089448-4', '50:49', '899.00', '788.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('63', '1', '95', '155089483928854-1', '51:52', '2999.00', '2599.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('64', '1', '95', '155089483928854-2', '51:53', '3299.00', '2899.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('65', '1', '95', '155089483928854-3', '54:52', '2999.00', '2599.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('66', '1', '95', '155089483928854-4', '54:53', '3299.00', '2899.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('67', '1', '96', '155089506757352-1', '55:56', '999.00', '899.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('68', '1', '96', '155089506757352-2', '55:57', '1099.00', '999.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('69', '1', '96', '155089506757352-3', '58:56', '999.00', '899.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('70', '1', '96', '155089506757352-4', '58:57', '1099.00', '999.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('71', '1', '97', '155089535937627-1', '59:60', '1099.00', '1099.00', '100000', '10', '0', '1', '1', '0.00', '0.00'),
('72', '1', '97', '155089535937627-2', '59:61', '1299.00', '1299.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('73', '1', '97', '155089535937627-3', '62:60', '1499.00', '1499.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('74', '1', '97', '155089535937627-4', '62:61', '1099.00', '1099.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('75', '1', '97', '155089535937627-5', '63:60', '1299.00', '1299.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('76', '1', '97', '155089535937627-6', '63:61', '1499.00', '1499.00', '100000', '10', '0', '0', '1', '0.00', '0.00'),
('77', '1', '98', '155089572512326-1', '64:65', '3799.00', '3700.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('78', '1', '98', '155089572512326-2', '64:66', '3999.00', '3900.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('79', '1', '98', '155089572512326-3', '67:65', '3799.00', '3700.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('80', '1', '98', '155089572512326-4', '67:66', '3999.00', '3900.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('81', '1', '99', '155089600732131-1', '68:69', '2719.00', '2719.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('82', '1', '99', '155089600732131-2', '68:70', '2919.00', '2919.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('83', '1', '99', '155089600732131-3', '71:69', '2719.00', '2719.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('84', '1', '99', '155089600732131-4', '71:70', '2919.00', '2919.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('85', '1', '100', '155089624395287-1', '72:73', '1300.00', '1198.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('86', '1', '100', '155089624395287-2', '72:74', '1500.00', '1398.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('87', '1', '100', '155089624395287-3', '75:73', '1300.00', '1198.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('88', '1', '100', '155089624395287-4', '75:74', '1500.00', '1398.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('89', '1', '101', '155089643205863-1', '76:77', '2799.00', '2799.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('90', '1', '101', '155089643205863-2', '78:77', '2799.00', '2799.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('91', '1', '101', '155089643205863-3', '79:77', '2799.00', '2799.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('92', '1', '102', '155089674864371-1', '80:81', '1199.00', '1199.00', '10000', '10', '0', '1', '1', '0.00', '0.00'),
('93', '1', '102', '155089674864371-2', '80:82', '1399.00', '1399.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('94', '1', '102', '155089674864371-3', '83:81', '1199.00', '1199.00', '10000', '10', '0', '0', '1', '0.00', '0.00'),
('95', '1', '102', '155089674864371-4', '83:82', '1399.00', '1399.00', '10000', '10', '0', '0', '1', '0.00', '0.00');
