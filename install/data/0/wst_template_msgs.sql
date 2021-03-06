SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS `wst_template_msgs`;
CREATE TABLE `wst_template_msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tplType` tinyint(4) NOT NULL DEFAULT '0',
  `tplCode` varchar(50) NOT NULL,
  `tplExternaId` varchar(255) DEFAULT NULL,
  `tplContent` varchar(255) NOT NULL,
  `isEnbale` tinyint(4) DEFAULT '1',
  `tplDesc` text,
  `dataFlag` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tplType` (`tplType`),
  KEY `tplCode` (`tplCode`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4;


INSERT INTO `wst_template_msgs` VALUES ('1', '0', 'USER_REGISTER', null, '欢迎您注册成为${MALL_NAME}会员。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。 ${MALL_NAME}：商城名称。<br/>2.为空则不发送', '1', '1'),
('2', '0', 'ORDER_USER_PAY_TIMEOUT', null, '订单【${ORDER_NO}】因长时间未支付，系统自动取消订单。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('3', '0', 'ORDER_SHOP_PAY_TIMEOUT', null, '订单【${ORDER_NO}】因长时间未支付，系统自动取消订单。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('4', '0', 'ORDER_SUBMIT', null, '您有一笔新的订单【${ORDER_NO}】待处理。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('5', '0', 'ORDER_CANCEL', null, '订单【${ORDER_NO}】用户已取消，取消原因：${REASON}', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON} ：取消原因。<br/>2.为空则不发送。', '1', '1'),
('6', '0', 'ORDER_DELIVERY', null, '您的订单【${ORDER_NO}】已发货啦，快递号：${EXPRESS_NO}，请做好收货准备哦~', '1', '1.变量说明：${ORDER_NO}：订单号。${EXPRESS_NO}：快递号。<br/>2.为空则不发送。', '1', '1'),
('7', '0', 'ORDER_REMINDER', null, '用户【${LOGIN_NAME}】提醒您：订单【${ORDER_NO}】请尽快发货.', '1', '1.变量说明：${LOGIN_NAME}：用户登录名。${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('8', '0', 'ORDER_REJECT', null, '订单【${ORDER_NO}】用户拒收，拒收原因：${REASON}。', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON}：拒收原因。<br/>2.为空则不发送。', '1', '1'),
('9', '0', 'ORDER_RECEIVE', null, '您的订单【${ORDER_NO}】，用户已签收。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('10', '0', 'ORDER_REFUND_CONFER', null, '订单【${ORDER_NO}】用户申请退款，请及时处理。', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('11', '0', 'ORDER_REFUND_SUCCESS', null, '您的退款订单【${ORDER_NO}】已处理，请留意账户到账情况。【退款备注：${REMARK}】', '1', '1.变量说明：${ORDER_NO}：订单号。${REMARK}：退款备注<br/>2.为空则不发送。', '1', '1'),
('12', '0', 'ORDER_REFUND_FAIL', null, '订单【${ORDER_NO}】商家不同意退款，原因：${REASON}。', '1', '1.变量说明：${ORDER_NO}：订单号。${REASON}：不同意原因。<br/>2.为空则不发送。', '1', '1'),
('13', '0', 'ORDER_SHOP_REFUND', null, '退款订单【${ORDER_NO}】已通过，返回商家金额¥${MONEY}，请留意账户情况。', '1', '1.变量说明：${ORDER_NO}：订单号。${MONEY}：补偿金额。<br/>2.为空则不发送。', '1', '1'),
('14', '0', 'CASH_DRAW_SUCCESS', null, '您的提现申请单【${CASH_NO}】已通过，请留意您的到账信息。', '1', '1.变量说明：${CASH_NO}：提现单号<br/>2.为空则不发送。', '1', '1'),
('15', '0', 'CASH_DRAW_FAIL', null, '您的提现申请单【${CASH_NO}】审核不通，原因：${CASH_RESULT}。', '1', '1.变量说明：${CASH_NO}：提现单号。${CASH_RESULT}：不通过原因。<br/>2.为空则不发送。', '1', '1'),
('16', '1', 'EMAIL_BIND', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了邮箱验证的请求,本次进行邮箱验证的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1'),
('17', '1', 'EMAIL_EDIT', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了更改邮箱的请求,本次进行邮箱验证的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1'),
('18', '1', 'EMAIL_FOTGET', null, '您好，会员 ${LOGIN_NAME}：&lt;br /&gt;\n您在${SEND_TIME}发出了重置密码的请求,本次进行密码重置的验证码为:${VERFIY_CODE}&lt;br /&gt;\n该验证邮件有效期为${VERFIY_TIME}分钟，超时请重新发送邮件。&lt;br /&gt;\n&lt;br /&gt;\n*此邮件为系统自动发出的，请勿直接回复。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。${SEND_TIME}：当前时间。<br/>2.为空则不发送。', '1', '1'),
('19', '2', 'PHONE_BIND', null, '欢迎您${LOGIN_NAME}会员，正在操作绑定手机，您的校验码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1'),
('20', '2', 'PHONE_EDIT', null, '欢迎您${LOGIN_NAME}会员，正在操作修改手机，您的校验码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1'),
('21', '2', 'PHONE_FOTGET', null, '您正在重置登录密码，验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1'),
('23', '2', 'PHONE_USER_SHOP_OPEN_SUCCESS', null, '会员${LOGIN_NAME}，您申请成为${MALL_NAME}商家的请求已通过，赶紧上架商品吧。', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。<br/>2.为空则不发送。', '1', '1'),
('24', '2', 'PHONE_SHOP_OPEN_FAIL', null, '您申请成为${MALL_NAME}商家的请求未通过。原因：${REASON}', '1', '1.变量说明：${MALL_NAME}：商城名称。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1'),
('25', '0', 'SHOP_OPEN_SUCCESS', null, '${LOGIN_NAME}会员，您申请成为${MALL_NAME}商家的请求已通过。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${MALL_NAME}：商城名称。<br/>2.为空则不发送。', '1', '1'),
('26', '0', 'SHOP_OPEN_FAIL', null, '${LOGIN_NAME}会员，您申请成为${MALL_NAME}商家的请求失败，原因：${REASON} 。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${MALL_NAME}：商城名称。${REASON} ：失败原因。<br/>2.为空则不发送。', '1', '1'),
('27', '2', 'PHONE_USER_REGISTER_VERFIY', null, '欢迎您注册成为${MALL_NAME}会员，您的注册验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${MALL_NAME}：商城名称。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1'),
('46', '0', 'GOODS_ALLOW', null, '您的商品${GOODS}【${GOODS_SN}】已审核通过。', '1', '1.变量说明：${GOODS}：商品名称。${GOODS_SN}：商品编号。${TIME} ：当前时间。<br/>2.为空则不发送。', '1', '1'),
('48', '0', 'GOODS_REJECT', null, '您的商品${GOODS}【${GOODS_SN}】因【${REASON}】审核不通过。', '1', '1.变量说明：${GOODS}：商品名称。${GOODS_SN}：商品编号。${TIME} ：当前时间。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1'),
('49', '0', 'ORDER_USER_AUTO_DELIVERY', null, '订单【${ORDER_NO}】${GOODS}商家已发货，请留意订单信息哦~', '1', '1.变量说明：${ORDER_NO}：订单编号。${GOODS}：商品名称。<br/>2.为空则不发送。', '1', '1'),
('50', '0', 'ORDER_SHOP_AUTO_DELIVERY', null, '订单【${ORDER_NO}】${GOODS}已自动发货，请留意商品库存哦~', '1', '1.变量说明：${ORDER_NO}：订单编号。${GOODS}：商品名称。<br/>2.为空则不发送。', '1', '1'),
('51', '0', 'ORDER_APPRAISES', '', '您的订单【${ORDER_NO}】商品【${GOODS}】已有新的用户评价。', '1', '1.变量说明：${GOODS}：商品名称 ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('52', '2', 'PHONE_FOTGET_PAY', null, '您正在重置支付密码，验证码为:${VERFIY_CODE}，请在${VERFIY_TIME}分钟内输入。', '1', '1.变量说明：${LOGIN_NAME}：会员账号。${VERFIY_CODE}：验证码。${VERFIY_TIME}：有效期。<br/>2.为空则不发送。', '1', '1'),
('53', '1', 'EMAIL_USER_SHOP_OPEN_SUCCESS', null, '&lt;p&gt;\n	会员${LOGIN_NAME}:\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;您的开店申请已通过审核，赶紧上架商品吧。\n&lt;/p&gt;', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。<br/>2.为空则不发送', '1', '1'),
('54', '1', 'EMAIL_SHOP_OPEN_FAIL', null, '&lt;p&gt;\n	会员${LOGIN_NAME}:\n&lt;/p&gt;\n&lt;p&gt;\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;您的开店申请因${REASON}申请不通过哦。\n&lt;/p&gt;', '1', '1.变量说明：${MALL_NAME}：商城名称。${LOGIN_NAME}：会员账号。${REASON}：不通过原因。<br/>2.为空则不发送。', '1', '1'),
('55', '2', 'PHONE_SHOP_SUBMIT_ORDER', '', '有新的订单[${ORDER_NO}]，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('56', '2', 'PHONE_SHOP_PAY_ORDER', '', '订单[${ORDER_NO}]用户已支付完成，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('57', '2', 'PHONE_SHOP_CANCEL_ORDER', '', '订单[${ORDER_NO}]已被用户取消，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('58', '2', 'PHONE_SHOP_REJECT_ORDER', '', '订单[${ORDER_NO}]已被用户拒收，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('59', '2', 'PHONE_ADMIN_REFUND_ORDER', '', '用户申请订单[${ORDER_NO}]退款，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('60', '2', 'PHONE_ADMIN_COMPLAINT_ORDER', '', '用户投诉订单[${ORDER_NO}]，请留意~', '1', '1.变量说明：${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('61', '2', 'PHONE_ADMIN_CASH_DRAWS', '', '有用户申请提现，请留意~', '1', '1.变量说明：${CASH_NO}：提现编号。<br/>2.为空则不发送。', '1', '1'),
('62', '0', 'ORDER_NEW_COMPLAIN', '', '您有新的被投诉订单【${ORDER_NO}】，请及时回应以免影响您的店铺评分。', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('63', '0', 'ORDER_HANDLED_COMPLAIN', '', '您的订单投诉【${ORDER_NO}】已仲裁，请查看订单投诉详情。', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('64', '0', 'SHOP_SETTLEMENT', '', '您有新的结算单【${SETTLEMENT_NO}】生成，请留意结算信息~', '1', '1.变量说明： ${SETTLEMENT_NO}：结算单号。<br/>2.为空则不发送。', '1', '1'),
('65', '0', 'ORDER_HASPAY', '', '订单【${ORDER_NO}】用户已支付完成，请尽快发货哦~', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('66', '0', 'ORDER_AUTO_RECEIVE', '', '您的订单【${ORDER_NO}】已自动确认收货~', '1', '1.变量说明： ${ORDER_NO}：订单号。<br/>2.为空则不发送。', '1', '1'),
('67', '0', 'FEEDBACK_REPLY', '', '您提交的反馈问题，内容为【${CONTENT}】已处理，处理结果：【${HANDLE_CONTENT}】。', '1', '1.变量说明： ${CONTENT}：反馈内容。${HANDLE_CONTENT}：处理结果。', '1', '1'),
('68', '2', 'PHONE_COMMON_VERFIY', null, '您的验证码为：${VERFIY_CODE}，请勿向任何人提供此验证码。如非本人操作，请忽略本短信。', '1', '1.变量说明：${VERFIY_CODE}：验证码。<br/>2.为空则不发送。', '1', '1'),
('69', '2', 'PHONE_USER_ORDER_VERIFICATCODE', null, '${MALL_NAME}提醒您，请凭核销码：${ORDER_CODE}，到商家门店${SHOP_NAME}（地址：${SHOP_ADDRESS}）处核销您的订单。', '1', '1.变量说明：${MALL_NAME}：商城名称；${ORDER_CODE}：订单核验码，${SHOP_NAME}：门店名称，${SHOP_ADDRESS}：地址；。<br/>2.为空则不发送。', '1', '1'),
('70', '2', 'PHONE_USER_ORDER_VERIFICAT', null, '您的订单[${ORDER_NO}]已核销提货，请留意。', '1', '1.变量说明：${ORDER_NO}：订单编号。<br/>2.为空则不发送。', '1', '1'),
('71', '0', 'ORDER_SERVICE_TIPS', null, '售后申请状态已更新为【${SERVICE_STATUS}】，请及时查看处理。', '1', '1.变量说明：${SERVICE_STATUS}：售后单状态。2.为空则不发送', '1', '1'),
('72', '0', 'GIVE_USER_COUPON', null, '尊敬的用户，${MALL_NAME}送您优惠券一张，请到个人中心-我的优惠券查看。', '1', '1.变量说明：${MALL_NAME}：商城名称。<br/>2.为空则不发送。', '1', '1');
